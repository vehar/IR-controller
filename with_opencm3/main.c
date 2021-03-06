/*
 * main.c
 *
 * Copyright 2014 Edward V. Emelianov <eddy@sao.ru, edward.emelianoff@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 */

#include "main.h"
#include "hardware_ini.h"
#include "cdcacm.h"
#include "uart.h"
#include "spi.h"
//#include "stepper_motors.h"

#include "sync.h"
#include "flash.h"
#include "AD7794.h"
#include "onewire.h"
#include "stepper_motors.h"
#include "powerhw.h"
#include "init_on_power.h"

volatile uint32_t Timer = 0, tOVRFL = 0; // global timer (milliseconds), overflow counter
usbd_device *usbd_dev;

uint8_t OW_scan = 1;
uint8_t ADC_monitoring = 0; // ==1 to make continuous monitoring

uint32_t ad7794_on = 0;
uint32_t ad7794_values[TRD_NO];
uint8_t doubleconv = 1; // ==0 to single conversion; 1 to double (with currents reversing)
#define ADC_direct()  setup_AD7794(EXTREFIN_1 | REF_DETECTION | UNIPOLAR_CODING, IEXC_DIRECT  | IEXC_1MA)
#define ADC_reverse() setup_AD7794(EXTREFIN_1 | REF_DETECTION | UNIPOLAR_CODING, IEXC_SWAPPED | IEXC_1MA)
#define RESET_ADC()   do{N = 0; ad7794_on = 0; step++; return; }while(0)
/**
 * reads next value of voltage on TRD
 * function calls from anywhere
 * internal counter step counts number of operation: because of very long
 *    work of ADC function should be called several times to measure all
 *
 * @param doubleconv == 1 to do double conversion (with currents reversing)
 */
void read_next_TRD(){
	static uint8_t step = 0;            // step of operation
	static uint8_t N = 0;               // number of current device
	static uint32_t val0 = 0, val1 = 0; // readed values
	// "default" in switch will process last step
	switch (step){ // now we should do something depending on current step value
		case 0: // step 0: set address
			if(N == 0 || !ad7794_on) AD7794_init(); // reset ADC in beginning of each set
//P("Step 0: read_next_TRD, N=", uart1_send);
//print_int(N, uart1_send);
//newline(uart1_send);
			gpio_set(ADC_ADDR_PORT, ADC_SET_ADDR(N) | ADC_EN_PIN); // set address & enable switch
			val0 = val1 = 0;
			step++;
		break;
		case 1: // step 1: prepare reading in 1st current direction or single reading
			if(!val0){ // 1st value isn't ready yet
				if(!ADC_direct()){ // error: we can't setup reading
					// ad7794_values[N] = 0;
					RESET_ADC(); // reset steps counter to re-initialize + mark ad7794_on = 0
				}
				val0 = read_AD7794(0);
				if(!val0) RESET_ADC();
				break;
			}
			if(val0 == AD7794_NOTRDY){ // data not ready yet
				val0 = read_AD7794(0);
				if(!val0 || val0 == AD7794_NOTRDY) break; // we'll process error in next time
				// All OK, prepare second reading
				if(doubleconv){ // double conversion -> prepare
					if(!ADC_reverse()){ // we can't setup it, but we have 1st value
						//ad7794_values[N] = val0 << 1; // double val0
						RESET_ADC();
					}else{
						val1 = read_AD7794(0); // process it later
					}
				}else{ // simply copy value instead of multiplying by 2
					ad7794_values[N] = val0 << 1;
					step++;
				}
			}else{ // val0 ready, check val1; we can go here only when doubleconv != 0
				if(!val1){ // error: on previous step we had to get some value or AD7794_NOTRDY
					//ad7794_values[N] = 0;
					RESET_ADC();
				}
				if(val1 == AD7794_NOTRDY){ // val1 not ready yet
					val1 = read_AD7794(0);
				}else{ // all OK, we can put sum of val0 & val1 into array
					ad7794_values[N] = val0 + val1;
					step++;
				}
			}
		break;
		default: // last step - turn off multiplexer
			step = 0;
			gpio_clear(ADC_ADDR_PORT, ADC_ADDR_MASK | ADC_EN_PIN); // disable com & clear address bytes
			N++; // and increment TRD counter
			if(N == TRD_NO) N = 0;
	}
}

//uint8_t curSPI = 1;

void AD7794_init(){
	uint8_t  i;
	ad7794_on = 0;
	i = reset_AD7794();
	if(i != ADC_NO_ERROR){
		if(i == ADC_ERR_NO_DEVICE){
		//	print_int(curSPI, lastsendfun);
			MSG("ADC signal is absent! Check connection.\n", "[ " STR_EXTADC_INIT " ERR ]\n");
		/*	if(curSPI == 1){
				curSPI = 2;
				switch_SPI(SPI2);
			}else{
				curSPI = 1;
				switch_SPI(SPI1);
			}*/
		}
	}else{
		if(!setup_AD7794(INTREFIN | REF_DETECTION | UNIPOLAR_CODING, IEXC_DIRECT  | IEXC_1MA)
			|| !AD7794_calibration(0)){
			MSG("Error: can't initialize AD7794!\n", "[ " STR_EXTADC_INIT " ERR ]\n");
		}else{
			ad7794_on = 1;
			DBG("ADC ready\n");
		}
	}
}

void scan_onewire(){
	if(!OW_get_reset_status()){ // try to send read sequence if there wasn't any 1-wire devices
		int i;
		for(i = 0; i < OW_dev_amount; ++i)
			OW_temperature[i] = ERR_TEMP_VAL;
		OW_send_read_seq();
		return;
	}
	if(OW_MEASUREMENTS_DONE()){
		OW_CLEAR_DONE_FLAG();
		OW_read_next_temp();
	}
	if(OW_DATA_READY()){
		OW_CLEAR_READY_FLAG();
		if(OW_current_num() == OW_dev_amount - 1)
			OW_send_read_seq();
		else
			OW_read_next_temp();
	}
}

int main(){
	//int i;
	uint32_t Shtr_blink_timer = 0, Old_timer = 0, lastTRDread = 0, lastTmon = 0, OW_timer = 0;
	int oldusbdatalen = 0;
	//SPI_read_status SPI_stat;

	// RCC clocking: 8MHz oscillator -> 72MHz system
	rcc_clock_setup_in_hse_8mhz_out_72mhz();

	// turn off SWJ/JTAG
	AFIO_MAPR = AFIO_MAPR_SWJ_CFG_JTAG_OFF_SW_OFF;

	// GPIO
	GPIO_init();
	usb_disconnect(); // turn off USB while initializing all

	// init USART3 (master) & USART1 (slave)
	UART_init(USART3);
	UART_init(USART1);

	// USB
	usbd_dev = USB_init();

	// SysTick is a system timer with 1mc period
	SysTick_init();

	// instead of SPI1 we use those pins to control shutter and system state
	// SPI2 used for working with external ADC
	switch_SPI(SPI2); // init SPI2
	SPI_init();

	// wait a little and then turn on USB pullup
//	for (i = 0; i < 0x800000; i++)
//		__asm__("nop");

	// init ADC
	ADC_init();
	ADC_calibrate_and_start();

	steppers_init();

	usb_connect(); // turn on USB
	shutter_init();

	read_stored_data(); // copy stored data into RAM

	init_ow_dmatimer();
	//OW_send_read_seq();

	LED_STATUS_OK(); // All initialized - light up LED
	while(1){
		init_on_poweron_proc();
		usbd_poll(usbd_dev);
		if(oldusbdatalen != usbdatalen){ // there's something in USB buffer
			usbdatalen = parce_incoming_buf(usbdatabuf, usbdatalen, usb_send);
			oldusbdatalen = usbdatalen;
		}
		check_and_parce_UART(USART3); // check data in master UART buffers
		check_and_parce_UART(USART1); // also check data in slave UART buffers
		if(ad7794_on){
			if(Timer != lastTRDread){ // run this not more than once in 1ms
				lastTRDread = Timer;
				read_next_TRD();
			}
		}
		OW_process(); // process 1-wire commands
		// scan 1-wire each 1 second
		if(OW_scan && (Timer - OW_timer > 999 || Timer < OW_timer)){
			OW_timer = Timer;
			scan_onewire();
		}
		process_stepper_motors(); // check flags of motors' timers
		process_shutter(); // shutter state machine

		if(Timer - Shtr_blink_timer > 500 ||  Timer < Shtr_blink_timer){
			Shtr_blink_timer = Timer;
			// shutter LED will be blinking until init occurs
			if(Shutter_State == SHUTTER_NOTREADY)
				gpio_toggle(LED_SHUTTER_PORT, LED_SHUTTER_PIN);
		}

		if(Timer - Old_timer > 999){ // one-second cycle
			Old_timer += 1000;
			// init shutter if error occurs
			if(Shutter_State == SHUTTER_NOTREADY){
				shutter_init();
			}
		}else if(Timer < Old_timer){ // Timer overflow
			Old_timer = 0;
			tOVRFL++; // this is an overflow counter - for workinkg in long-long time interval
		}

		if((Timer - lastTmon > 9999) || (Timer < lastTmon)){ // run constant monitoring of ADC values each 10 seconds
			lastTmon += 10000;
			if(ADC_monitoring){
				print_time(lastsendfun);
				print_int_ad_vals(lastsendfun);
				print_ad_vals(lastsendfun);
			}
		}
	}
}


/**
 * SysTick interrupt: increment global time & send data buffer through USB
 */
void sys_tick_handler(){
	Timer++;
	usbd_poll(usbd_dev);
	usb_send_buffer();
}

// pause function, delay in ms
void Delay(uint16_t _U_ time){
	uint32_t waitto = Timer + time;
	while(Timer < waitto);
}

/**
 * print current time in milliseconds: 4 bytes for ovrvlow + 4 bytes for time
 * with ' ' as delimeter
 */
void print_time(sendfun s){
	if(mode == LINE_MODE) P("[ " STR_PRINT_TIME " ", s);
	print_int(tOVRFL, s);
	s(' ');
	print_int(Timer, s);
	if(mode == LINE_MODE) P(" ]\n", s);
	else if(mode == BYTE_MODE) s(' ');
}
