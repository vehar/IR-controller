EESchema Schematic File Version 2  date Ср 04 фев 2015 15:06:53
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ft2232
LIBS:my_elements
LIBS:STM32f103
LIBS:vreg
LIBS:open-project
LIBS:ALL-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 12
Title "IR-spectrometer Control System"
Date "4 feb 2015"
Rev ""
Comp "SAO RAS"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GNDPWR #PWR01
U 1 1 53932F70
P 12550 2800
F 0 "#PWR01" H 12550 2850 40  0001 C CNN
F 1 "GNDPWR" H 12550 2720 40  0000 C CNN
F 2 "" H 12550 2800 60  0000 C CNN
F 3 "" H 12550 2800 60  0000 C CNN
	1    12550 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_10X2 XP2
U 1 1 53956EEF
P 9350 2250
F 0 "XP2" V 9350 2250 60  0000 C CNN
F 1 "TRD" V 9350 2550 60  0000 C CNN
F 2 "VASCH10x2" H 9350 2350 60  0001 C CNN
F 3 "" H 9350 2350 60  0000 C CNN
	1    9350 2250
	1    0    0    -1  
$EndComp
Text Notes 8850 1600 0    60   ~ 0
To thermoresistors
Text Notes 3450 4950 0    60   ~ 0
5V ext
$Comp
L +5V #PWR02
U 1 1 5395F26C
P 3850 5350
F 0 "#PWR02" H 3850 5440 20  0001 C CNN
F 1 "+5V" H 3850 5440 30  0000 C CNN
F 2 "" H 3850 5350 60  0000 C CNN
F 3 "" H 3850 5350 60  0000 C CNN
	1    3850 5350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 539A0FC8
P 12550 1650
F 0 "#PWR03" H 12550 1740 20  0001 C CNN
F 1 "+5V" H 12550 1740 30  0000 C CNN
F 2 "" H 12550 1650 60  0000 C CNN
F 3 "" H 12550 1650 60  0000 C CNN
	1    12550 1650
	1    0    0    -1  
$EndComp
Text Label 12650 2550 2    60   ~ 0
+10V
Entry Wire Line
	8600 1800 8700 1900
Entry Wire Line
	8600 2500 8700 2600
Entry Wire Line
	8600 2400 8700 2500
Entry Wire Line
	8600 2300 8700 2400
Entry Wire Line
	8600 2200 8700 2300
Entry Wire Line
	8600 2100 8700 2200
Entry Wire Line
	8600 2000 8700 2100
Entry Wire Line
	8600 1900 8700 2000
Text Label 8700 2000 0    60   ~ 0
T1_1
Text Label 8700 2100 0    60   ~ 0
T1_2
Text Label 8700 2200 0    60   ~ 0
T1_3
Text Label 8700 2300 0    60   ~ 0
T1_4
Text Label 8700 2400 0    60   ~ 0
T1_5
Text Label 8700 2500 0    60   ~ 0
T1_6
Text Label 8700 2600 0    60   ~ 0
T1_7
Text Label 8700 1900 0    60   ~ 0
T1_0
Text Label 12550 1850 2    60   ~ 0
CLK_1
Text Label 12550 2000 2    60   ~ 0
DIR_1
Text Label 12550 2150 2    60   ~ 0
EN_1
Text Label 8250 3750 0    60   ~ 0
CLK_1
Text Label 8250 3850 0    60   ~ 0
CLK_2
Text Label 8250 3950 0    60   ~ 0
CLK_3
Text Label 8250 4050 0    60   ~ 0
CLK_4
Text Label 8250 4150 0    60   ~ 0
CLK_5
$Sheet
S 12750 1600 1000 1200
U 53A910B8
F0 "Turret slits" 50
F1 "motors.sch" 50
F2 "SM_5V" I L 12750 1700 60 
F3 "SM_CLK" I L 12750 1850 60 
F4 "SM_DIR" I L 12750 2000 60 
F5 "SM_EN" I L 12750 2150 60 
F6 "PWR_GND" I L 12750 2700 60 
F7 "A" O R 13750 1800 60 
F8 "A*" O R 13750 1950 60 
F9 "B" O R 13750 2300 60 
F10 "B*" O R 13750 2150 60 
F11 "+10V" I L 12750 2550 60 
F12 "+24V" I L 12750 2400 60 
$EndSheet
$Comp
L PWR_FLAG #FLG04
U 1 1 5396F99E
P 3550 1900
F 0 "#FLG04" H 3550 1995 30  0001 C CNN
F 1 "PWR_FLAG" H 3550 2080 30  0000 C CNN
F 2 "" H 3550 1900 60  0000 C CNN
F 3 "" H 3550 1900 60  0000 C CNN
	1    3550 1900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 539A026E
P 6050 2700
F 0 "#PWR05" H 6050 2790 20  0001 C CNN
F 1 "+5V" H 6050 2790 30  0000 C CNN
F 2 "" H 6050 2700 60  0000 C CNN
F 3 "" H 6050 2700 60  0000 C CNN
	1    6050 2700
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR06
U 1 1 539A446B
P 6050 3150
F 0 "#PWR06" H 6050 3200 40  0001 C CNN
F 1 "GNDPWR" H 6050 3070 40  0000 C CNN
F 2 "" H 6050 3150 60  0000 C CNN
F 3 "" H 6050 3150 60  0000 C CNN
	1    6050 3150
	1    0    0    -1  
$EndComp
Entry Wire Line
	8750 4100 8850 4000
Entry Wire Line
	8750 4200 8850 4100
Entry Wire Line
	8750 4300 8850 4200
Entry Wire Line
	8750 4400 8850 4300
Entry Wire Line
	8750 4500 8850 4400
Text Label 8200 4400 0    61   ~ 0
EN_[1..5]
Text Label 8850 4000 0    61   ~ 0
EN_1
Text Label 8850 4100 0    61   ~ 0
EN_2
Text Label 8850 4200 0    61   ~ 0
EN_3
Text Label 8850 4300 0    61   ~ 0
EN_4
Text Label 8850 4400 0    61   ~ 0
EN_5
Entry Wire Line
	8750 4650 8850 4550
Entry Wire Line
	8750 4750 8850 4650
Entry Wire Line
	8750 4850 8850 4750
Entry Wire Line
	8750 4950 8850 4850
Entry Wire Line
	8750 5050 8850 4950
Text Label 8850 4550 0    61   ~ 0
DIR_1
Text Label 8850 4650 0    61   ~ 0
DIR_2
Text Label 8850 4750 0    61   ~ 0
DIR_3
Text Label 8850 4850 0    61   ~ 0
DIR_4
Text Label 8850 4950 0    61   ~ 0
DIR_5
Text Label 8200 4950 0    61   ~ 0
DIR_[1..5]
Text Notes 4200 4200 0    61   ~ 0
Hall sensors
Entry Wire Line
	4050 3800 4150 3900
Entry Wire Line
	4050 3900 4150 4000
Entry Wire Line
	4050 4000 4150 4100
Entry Wire Line
	4050 4100 4150 4200
Entry Wire Line
	4050 4200 4150 4300
Entry Wire Line
	4050 4300 4150 4400
Entry Wire Line
	4050 4400 4150 4500
Entry Wire Line
	4050 4500 4150 4600
Entry Wire Line
	4050 4600 4150 4700
Entry Wire Line
	4050 4700 4150 4800
Text Label 3600 3800 0    61   ~ 0
Hall0
Text Label 3600 3900 0    61   ~ 0
Hall1
Text Label 3600 4000 0    61   ~ 0
Hall2
Text Label 3600 4100 0    61   ~ 0
Hall3
Text Label 3600 4200 0    61   ~ 0
Hall4
Text Label 3600 4300 0    61   ~ 0
Hall5
Text Label 3600 4400 0    61   ~ 0
Hall6
Text Label 3600 4500 0    61   ~ 0
Hall7
Text Label 3600 4600 0    61   ~ 0
Hall8
Text Label 3600 4700 0    61   ~ 0
Hall9
$Sheet
S 6300 2550 1800 4250
U 53973803
F0 "STM32F103 module" 50
F1 "MCU_module.sch" 50
F2 "+5V" I L 6300 2800 60 
F3 "GND" I L 6300 3050 60 
F4 "1-WIRE" B L 6300 3450 60 
F5 "DIR[1..5]" O R 8100 4950 60 
F6 "TIM1" O R 8100 3750 60 
F7 "TIM2" O R 8100 4150 60 
F8 "EN[1..5]" O R 8100 4400 60 
F9 "Hall[0..9]" I L 6300 3850 60 
F10 "EP[0..3]" I L 6300 5150 60 
F11 "POW[0..3]" O L 6300 6050 60 
F12 "ADC[0..7]" I R 8100 2750 60 
F13 "POW3_FEEDBACK" I L 6300 6600 60 
F14 "SHTR" O L 6300 6250 60 
F15 "SHTR_FB" I L 6300 6400 60 
F16 "AGND" O R 8100 3000 60 
F17 "U36" I R 8100 6600 60 
F18 "U10" I R 8100 6250 60 
$EndSheet
Text Label 5600 3850 0    61   ~ 0
Hall[0..9]
Entry Wire Line
	4150 3700 4250 3800
Entry Wire Line
	4150 3600 4250 3700
Entry Wire Line
	4150 3500 4250 3600
Entry Wire Line
	4150 3400 4250 3500
Text Label 3850 3400 0    61   ~ 0
EP0
Text Label 3850 3500 0    61   ~ 0
EP1
Text Label 3850 3600 0    61   ~ 0
EP2
Text Label 3850 3700 0    61   ~ 0
EP3
Text Label 5550 5150 0    61   ~ 0
EP[0..3]
$Comp
L GNDPWR #PWR07
U 1 1 53C54D92
P 4900 8650
F 0 "#PWR07" H 4900 8700 40  0001 C CNN
F 1 "GNDPWR" H 4900 8570 40  0000 C CNN
F 2 "" H 4900 8650 60  0000 C CNN
F 3 "" H 4900 8650 60  0000 C CNN
	1    4900 8650
	1    0    0    -1  
$EndComp
Entry Wire Line
	5800 8450 5900 8550
Entry Wire Line
	5800 9200 5900 9300
Entry Wire Line
	5800 10000 5900 10100
Entry Wire Line
	5800 7350 5900 7450
Text Label 5450 8450 0    61   ~ 0
POW0
Text Label 5450 9200 0    61   ~ 0
POW1
Text Label 5450 10000 0    61   ~ 0
POW2
Text Label 5450 7350 0    61   ~ 0
POW3
Text Label 12650 2400 2    60   ~ 0
+24V
$Comp
L GNDPWR #PWR08
U 1 1 53A58F5E
P 12550 4500
F 0 "#PWR08" H 12550 4550 40  0001 C CNN
F 1 "GNDPWR" H 12550 4420 40  0000 C CNN
F 2 "" H 12550 4500 60  0000 C CNN
F 3 "" H 12550 4500 60  0000 C CNN
	1    12550 4500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 53A58F64
P 12550 3350
F 0 "#PWR09" H 12550 3440 20  0001 C CNN
F 1 "+5V" H 12550 3440 30  0000 C CNN
F 2 "" H 12550 3350 60  0000 C CNN
F 3 "" H 12550 3350 60  0000 C CNN
	1    12550 3350
	1    0    0    -1  
$EndComp
Text Label 12650 4250 2    60   ~ 0
+10V
Text Label 12550 3550 2    60   ~ 0
CLK_2
Text Label 12550 3700 2    60   ~ 0
DIR_2
Text Label 12550 3850 2    60   ~ 0
EN_2
$Sheet
S 12750 3300 1000 1200
U 53A910B7
F0 "Filters slit #1" 50
F1 "motors.sch" 50
F2 "SM_5V" I L 12750 3400 60 
F3 "SM_CLK" I L 12750 3550 60 
F4 "SM_DIR" I L 12750 3700 60 
F5 "SM_EN" I L 12750 3850 60 
F6 "PWR_GND" I L 12750 4400 60 
F7 "A" O R 13750 3500 60 
F8 "A*" O R 13750 3650 60 
F9 "B" O R 13750 4000 60 
F10 "B*" O R 13750 3850 60 
F11 "+10V" I L 12750 4250 60 
F12 "+24V" I L 12750 4100 60 
$EndSheet
Text Label 12650 4100 2    60   ~ 0
+24V
$Comp
L GNDPWR #PWR010
U 1 1 53A5D143
P 12550 6250
F 0 "#PWR010" H 12550 6300 40  0001 C CNN
F 1 "GNDPWR" H 12550 6170 40  0000 C CNN
F 2 "" H 12550 6250 60  0000 C CNN
F 3 "" H 12550 6250 60  0000 C CNN
	1    12550 6250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 53A5D149
P 12550 5100
F 0 "#PWR011" H 12550 5190 20  0001 C CNN
F 1 "+5V" H 12550 5190 30  0000 C CNN
F 2 "" H 12550 5100 60  0000 C CNN
F 3 "" H 12550 5100 60  0000 C CNN
	1    12550 5100
	1    0    0    -1  
$EndComp
Text Label 12650 6000 2    60   ~ 0
+10V
Text Label 12550 5300 2    60   ~ 0
CLK_3
Text Label 12550 5450 2    60   ~ 0
DIR_3
Text Label 12550 5600 2    60   ~ 0
EN_3
$Sheet
S 12750 5050 1000 1200
U 5391724D
F0 "Filters slit #2" 50
F1 "motors.sch" 50
F2 "SM_5V" I L 12750 5150 60 
F3 "SM_CLK" I L 12750 5300 60 
F4 "SM_DIR" I L 12750 5450 60 
F5 "SM_EN" I L 12750 5600 60 
F6 "PWR_GND" I L 12750 6150 60 
F7 "A" O R 13750 5250 60 
F8 "A*" O R 13750 5400 60 
F9 "B" O R 13750 5750 60 
F10 "B*" O R 13750 5600 60 
F11 "+10V" I L 12750 6000 60 
F12 "+24V" I L 12750 5850 60 
$EndSheet
Text Label 12650 5850 2    60   ~ 0
+24V
$Comp
L GNDPWR #PWR012
U 1 1 53A62984
P 12500 8000
F 0 "#PWR012" H 12500 8050 40  0001 C CNN
F 1 "GNDPWR" H 12500 7920 40  0000 C CNN
F 2 "" H 12500 8000 60  0000 C CNN
F 3 "" H 12500 8000 60  0000 C CNN
	1    12500 8000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 53A6298A
P 12500 6850
F 0 "#PWR013" H 12500 6940 20  0001 C CNN
F 1 "+5V" H 12500 6940 30  0000 C CNN
F 2 "" H 12500 6850 60  0000 C CNN
F 3 "" H 12500 6850 60  0000 C CNN
	1    12500 6850
	1    0    0    -1  
$EndComp
Text Label 12600 7750 2    60   ~ 0
+10V
Text Label 12500 7050 2    60   ~ 0
CLK_4
Text Label 12500 7200 2    60   ~ 0
DIR_4
Text Label 12500 7350 2    60   ~ 0
EN_4
$Sheet
S 12700 6800 1000 1200
U 53A910BA
F0 "Long stage" 50
F1 "motors.sch" 50
F2 "SM_5V" I L 12700 6900 60 
F3 "SM_CLK" I L 12700 7050 60 
F4 "SM_DIR" I L 12700 7200 60 
F5 "SM_EN" I L 12700 7350 60 
F6 "PWR_GND" I L 12700 7900 60 
F7 "A" O R 13700 7000 60 
F8 "A*" O R 13700 7150 60 
F9 "B" O R 13700 7500 60 
F10 "B*" O R 13700 7350 60 
F11 "+10V" I L 12700 7750 60 
F12 "+24V" I L 12700 7600 60 
$EndSheet
Text Label 12600 7600 2    60   ~ 0
+24V
$Comp
L GNDPWR #PWR014
U 1 1 53A6C328
P 12500 9650
F 0 "#PWR014" H 12500 9700 40  0001 C CNN
F 1 "GNDPWR" H 12500 9570 40  0000 C CNN
F 2 "" H 12500 9650 60  0000 C CNN
F 3 "" H 12500 9650 60  0000 C CNN
	1    12500 9650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 53A6C32E
P 12500 8500
F 0 "#PWR015" H 12500 8590 20  0001 C CNN
F 1 "+5V" H 12500 8590 30  0000 C CNN
F 2 "" H 12500 8500 60  0000 C CNN
F 3 "" H 12500 8500 60  0000 C CNN
	1    12500 8500
	1    0    0    -1  
$EndComp
Text Label 12600 9400 2    60   ~ 0
+10V
Text Label 12500 8700 2    60   ~ 0
CLK_5
Text Label 12500 8850 2    60   ~ 0
DIR_5
Text Label 12500 9000 2    60   ~ 0
EN_5
$Sheet
S 12700 8450 1000 1200
U 53A910B9
F0 "Short stage" 50
F1 "motors.sch" 50
F2 "SM_5V" I L 12700 8550 60 
F3 "SM_CLK" I L 12700 8700 60 
F4 "SM_DIR" I L 12700 8850 60 
F5 "SM_EN" I L 12700 9000 60 
F6 "PWR_GND" I L 12700 9550 60 
F7 "A" O R 13700 8650 60 
F8 "A*" O R 13700 8800 60 
F9 "B" O R 13700 9150 60 
F10 "B*" O R 13700 9000 60 
F11 "+10V" I L 12700 9400 60 
F12 "+24V" I L 12700 9250 60 
$EndSheet
Text Label 12600 9250 2    60   ~ 0
+24V
Text Label 3700 2100 0    60   ~ 0
+10V
$Comp
L GNDPWR #PWR016
U 1 1 53A2A067
P 5300 1100
F 0 "#PWR016" H 5300 1150 40  0001 C CNN
F 1 "GNDPWR" H 5300 1020 40  0000 C CNN
F 2 "" H 5300 1100 60  0000 C CNN
F 3 "" H 5300 1100 60  0000 C CNN
	1    5300 1100
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR017
U 1 1 53A2A06D
P 6850 950
F 0 "#PWR017" H 6850 1000 40  0001 C CNN
F 1 "GNDPWR" H 6850 870 40  0000 C CNN
F 2 "" H 6850 950 60  0000 C CNN
F 3 "" H 6850 950 60  0000 C CNN
	1    6850 950 
	1    0    0    -1  
$EndComp
Text Label 6700 1150 0    60   ~ 0
+24V
Text Label 5750 1150 2    60   ~ 0
+10V
Text Label 8150 2750 0    60   ~ 0
T1_[0..7]
$Comp
L RO-XX DA5
U 1 1 53AC9E48
P 6200 1100
F 0 "DA5" H 6200 1250 60  0000 C CNN
F 1 "RO-1224" H 6200 950 60  0000 C CNN
F 2 "SIP-4-RO" H 6100 1150 60  0001 C CNN
F 3 "" H 6200 1100 60  0000 C CNN
	1    6200 1100
	1    0    0    -1  
$EndComp
Text Label 6100 6050 2    60   ~ 0
POW[0..3]
Text Notes 2550 8100 0    60   ~ 0
Shutter out
$Sheet
S 3650 8800 1100 600 
U 53A8FBFD
F0 "Power MOSFET module 1" 50
F1 "power_MOSFET.sch" 50
F2 "GND_OUT" O L 3650 9250 60 
F3 "GND" I R 4750 9300 60 
F4 "ON" I R 4750 9200 60 
$EndSheet
$Comp
L GNDPWR #PWR018
U 1 1 53A8FC03
P 4900 9400
F 0 "#PWR018" H 4900 9450 40  0001 C CNN
F 1 "GNDPWR" H 4900 9320 40  0000 C CNN
F 2 "" H 4900 9400 60  0000 C CNN
F 3 "" H 4900 9400 60  0000 C CNN
	1    4900 9400
	1    0    0    -1  
$EndComp
Text Notes 2200 8900 0    60   ~ 0
Power load\n(bottom switches)
$Sheet
S 3650 9600 1100 600 
U 53AA0E2D
F0 "Power MOSFET module 2" 50
F1 "power_MOSFET.sch" 50
F2 "GND_OUT" O L 3650 10050 60 
F3 "GND" I R 4750 10100 60 
F4 "ON" I R 4750 10000 60 
$EndSheet
$Comp
L GNDPWR #PWR019
U 1 1 53A9232C
P 4900 10200
F 0 "#PWR019" H 4900 10250 40  0001 C CNN
F 1 "GNDPWR" H 4900 10120 40  0000 C CNN
F 2 "" H 4900 10200 60  0000 C CNN
F 3 "" H 4900 10200 60  0000 C CNN
	1    4900 10200
	1    0    0    -1  
$EndComp
Text Label 3700 6850 0    60   ~ 0
+10V
Text Notes 750  4700 0    60   ~ 0
Power load\n(top switch)
$Comp
L IPS5451 DA1
U 1 1 53BC4F8D
P 4250 7250
F 0 "DA1" H 3900 7500 60  0000 C CNN
F 1 "IPS5451" H 4400 7500 60  0000 C CNN
F 2 "TO220-5" H 4250 7250 60  0001 C CNN
F 3 "~" H 4250 7250 60  0000 C CNN
	1    4250 7250
	-1   0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR020
U 1 1 53A954EC
P 1250 5250
F 0 "#PWR020" H 1250 5300 40  0001 C CNN
F 1 "GNDPWR" H 1250 5170 40  0000 C CNN
F 2 "" H 1250 5250 60  0000 C CNN
F 3 "" H 1250 5250 60  0000 C CNN
	1    1250 5250
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR021
U 1 1 53BEC673
P 4300 7800
F 0 "#PWR021" H 4300 7850 40  0001 C CNN
F 1 "GNDPWR" H 4300 7720 40  0000 C CNN
F 2 "" H 4300 7800 60  0000 C CNN
F 3 "" H 4300 7800 60  0000 C CNN
	1    4300 7800
	1    0    0    -1  
$EndComp
$Comp
L R0603 R19
U 1 1 53BEC9FF
P 5100 7350
F 0 "R19" V 5180 7350 40  0000 C CNN
F 1 "4.7k" V 5107 7351 40  0000 C CNN
F 2 "SM0603" V 5030 7350 30  0001 C CNN
F 3 "~" H 5100 7350 30  0000 C CNN
	1    5100 7350
	0    -1   -1   0   
$EndComp
Text Label 3700 1900 0    60   ~ 0
+36V
Text Label 3550 8100 2    60   ~ 0
+36V
$Comp
L DIODESCH VD1
U 1 1 53CDDF73
P 3600 5350
F 0 "VD1" H 3600 5450 40  0000 C CNN
F 1 "B120-E3" H 3600 5250 40  0000 C CNN
F 2 "DO-214" H 3600 5350 60  0001 C CNN
F 3 "~" H 3600 5350 60  0000 C CNN
	1    3600 5350
	1    0    0    -1  
$EndComp
Text Label 13800 1800 0    60   ~ 0
1A
Text Label 13800 1950 0    60   ~ 0
1B
Text Label 13800 2150 0    60   ~ 0
1C
Text Label 13800 2300 0    60   ~ 0
1D
Text Label 13800 3500 0    60   ~ 0
2A
Text Label 13800 3650 0    60   ~ 0
2B
Text Label 13800 3850 0    60   ~ 0
2C
Text Label 13800 4000 0    60   ~ 0
2D
Text Label 13800 5250 0    60   ~ 0
3A
Text Label 13800 5400 0    60   ~ 0
3B
Text Label 13800 5600 0    60   ~ 0
3C
Text Label 13800 5750 0    60   ~ 0
3D
Text Label 13750 7000 0    60   ~ 0
4A
Text Label 13750 7150 0    60   ~ 0
4B
Text Label 13750 7350 0    60   ~ 0
4C
Text Label 13750 7500 0    60   ~ 0
4D
Text Label 13750 8650 0    60   ~ 0
5A
Text Label 13750 8800 0    60   ~ 0
5B
Text Label 13750 9000 0    60   ~ 0
5C
Text Label 13750 9150 0    60   ~ 0
5D
Text Label 2050 3750 2    60   ~ 0
1A
Text Label 2050 3650 2    60   ~ 0
1B
Text Label 2050 3450 2    60   ~ 0
1C
Text Label 2050 3550 2    60   ~ 0
1D
Text Label 2050 3350 2    60   ~ 0
2A
Text Label 2050 3250 2    60   ~ 0
2B
Text Label 2050 3050 2    60   ~ 0
2C
Text Label 2050 3150 2    60   ~ 0
2D
Text Label 2050 2950 2    60   ~ 0
3A
Text Label 2050 2850 2    60   ~ 0
3B
Text Label 2050 2650 2    60   ~ 0
3C
Text Label 2050 2750 2    60   ~ 0
3D
Text Label 2050 2550 2    60   ~ 0
4A
Text Label 2050 2450 2    60   ~ 0
4B
Text Label 2050 2250 2    60   ~ 0
4C
Text Label 2050 2350 2    60   ~ 0
4D
Text Label 2050 2150 2    60   ~ 0
5A
Text Label 2050 2050 2    60   ~ 0
5B
Text Label 2050 1850 2    60   ~ 0
5C
Text Label 2050 1950 2    60   ~ 0
5D
$Comp
L PWR_FLAG #FLG022
U 1 1 53CCC28F
P 3550 2100
F 0 "#FLG022" H 3550 2195 30  0001 C CNN
F 1 "PWR_FLAG" H 3550 2280 30  0000 C CNN
F 2 "" H 3550 2100 60  0000 C CNN
F 3 "" H 3550 2100 60  0000 C CNN
	1    3550 2100
	1    0    0    -1  
$EndComp
Text Label 6150 3450 2    60   ~ 0
1-wire
Text Label 2250 4750 2    60   ~ 0
1-wire
$Comp
L GNDPWR #PWR023
U 1 1 53CE99C9
P 4600 3050
F 0 "#PWR023" H 4600 3100 40  0001 C CNN
F 1 "GNDPWR" H 4600 2970 40  0000 C CNN
F 2 "" H 4600 3050 60  0000 C CNN
F 3 "" H 4600 3050 60  0000 C CNN
	1    4600 3050
	1    0    0    -1  
$EndComp
Text Notes 1850 1750 2    60   ~ 0
Stepper
Text Label 3450 7350 2    60   ~ 0
POW_LOAD
Text Label 1250 4950 2    60   ~ 0
POW_LOAD
Text Notes 3550 3200 0    60   ~ 0
5V out
Text Notes 4300 3450 0    61   ~ 0
End point\nswitches
$Comp
L +5V #PWR024
U 1 1 53C6F9A3
P 4050 3200
F 0 "#PWR024" H 4050 3290 20  0001 C CNN
F 1 "+5V" H 4050 3290 30  0000 C CNN
F 2 "" H 4050 3200 60  0000 C CNN
F 3 "" H 4050 3200 60  0000 C CNN
	1    4050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13750 1800 14050 1800
Wire Wire Line
	13750 1950 14050 1950
Wire Wire Line
	13750 2150 14050 2150
Wire Wire Line
	13750 2300 14050 2300
Wire Wire Line
	12550 2800 12550 2700
Wire Wire Line
	12550 2700 12750 2700
Wire Wire Line
	12650 2550 12750 2550
Wire Wire Line
	12550 1700 12750 1700
Wire Wire Line
	8950 2000 8700 2000
Wire Wire Line
	8700 2100 8950 2100
Wire Wire Line
	8950 2200 8700 2200
Wire Wire Line
	8700 2300 8950 2300
Wire Wire Line
	8950 2400 8700 2400
Wire Wire Line
	8700 2500 8950 2500
Wire Wire Line
	8950 2600 8700 2600
Wire Wire Line
	8700 1900 8950 1900
Wire Wire Line
	12550 1850 12750 1850
Wire Wire Line
	12550 2000 12750 2000
Wire Wire Line
	12550 2150 12750 2150
Wire Wire Line
	12550 1700 12550 1650
Wire Wire Line
	6050 2700 6050 2800
Wire Wire Line
	6050 2800 6300 2800
Wire Wire Line
	6050 3150 6050 3050
Wire Wire Line
	6050 3050 6300 3050
Wire Wire Line
	8100 3750 8250 3750
Wire Wire Line
	8200 3750 8200 3950
Wire Wire Line
	8200 3950 8250 3950
Wire Wire Line
	8250 3850 8200 3850
Connection ~ 8200 3850
Connection ~ 8200 3750
Wire Wire Line
	8100 4150 8250 4150
Wire Wire Line
	8200 4150 8200 4050
Wire Wire Line
	8200 4050 8250 4050
Connection ~ 8200 4150
Wire Bus Line
	8750 4400 8100 4400
Wire Bus Line
	8750 4100 8750 4500
Wire Bus Line
	8750 4950 8100 4950
Wire Bus Line
	8750 4650 8750 5050
Wire Wire Line
	3300 4000 4050 4000
Wire Wire Line
	3300 4100 4050 4100
Wire Wire Line
	3300 4200 4050 4200
Wire Wire Line
	3300 4300 4050 4300
Wire Wire Line
	3300 4400 4050 4400
Wire Wire Line
	3300 4500 4050 4500
Wire Wire Line
	3300 4600 4050 4600
Wire Wire Line
	3300 4700 4050 4700
Wire Wire Line
	3300 3400 4150 3400
Wire Wire Line
	3300 3500 4150 3500
Wire Wire Line
	3300 3600 4150 3600
Wire Wire Line
	3300 3700 4150 3700
Wire Wire Line
	4750 8600 4900 8600
Wire Wire Line
	4900 8600 4900 8650
Wire Wire Line
	4750 8450 5800 8450
Wire Wire Line
	3150 8450 3650 8450
Wire Bus Line
	5900 6050 6300 6050
Wire Wire Line
	12750 2400 12650 2400
Wire Wire Line
	12550 4500 12550 4400
Wire Wire Line
	12550 4400 12750 4400
Wire Wire Line
	12650 4250 12750 4250
Wire Wire Line
	12550 3400 12750 3400
Wire Wire Line
	12550 3550 12750 3550
Wire Wire Line
	12550 3700 12750 3700
Wire Wire Line
	12550 3850 12750 3850
Wire Wire Line
	12550 3400 12550 3350
Wire Wire Line
	12750 4100 12650 4100
Wire Wire Line
	12550 6250 12550 6150
Wire Wire Line
	12550 6150 12750 6150
Wire Wire Line
	12650 6000 12750 6000
Wire Wire Line
	12550 5150 12750 5150
Wire Wire Line
	12550 5300 12750 5300
Wire Wire Line
	12550 5450 12750 5450
Wire Wire Line
	12550 5600 12750 5600
Wire Wire Line
	12550 5150 12550 5100
Wire Wire Line
	12750 5850 12650 5850
Wire Wire Line
	12500 8000 12500 7900
Wire Wire Line
	12500 7900 12700 7900
Wire Wire Line
	12600 7750 12700 7750
Wire Wire Line
	12500 6900 12700 6900
Wire Wire Line
	12500 7050 12700 7050
Wire Wire Line
	12500 7200 12700 7200
Wire Wire Line
	12500 7350 12700 7350
Wire Wire Line
	12500 6900 12500 6850
Wire Wire Line
	12700 7600 12600 7600
Wire Wire Line
	12500 9650 12500 9550
Wire Wire Line
	12500 9550 12700 9550
Wire Wire Line
	12600 9400 12700 9400
Wire Wire Line
	12500 8550 12700 8550
Wire Wire Line
	12500 8700 12700 8700
Wire Wire Line
	12500 8850 12700 8850
Wire Wire Line
	12500 9000 12700 9000
Wire Wire Line
	12500 8550 12500 8500
Wire Wire Line
	12700 9250 12600 9250
Wire Wire Line
	5300 1050 5800 1050
Wire Wire Line
	5300 1050 5300 1100
Wire Wire Line
	6600 1050 6650 1050
Wire Wire Line
	5800 1150 5750 1150
Wire Bus Line
	8600 1800 8600 2750
Wire Bus Line
	8600 2750 8100 2750
Wire Wire Line
	3150 8250 3650 8250
Wire Wire Line
	4750 9300 4900 9300
Wire Wire Line
	4900 9300 4900 9400
Wire Wire Line
	4750 9200 5800 9200
Wire Wire Line
	3150 9250 3650 9250
Wire Wire Line
	4750 10100 4900 10100
Wire Wire Line
	4900 10100 4900 10200
Wire Wire Line
	4750 10000 5800 10000
Wire Wire Line
	3150 10050 3650 10050
Wire Wire Line
	3700 6850 3700 7150
Wire Wire Line
	3450 7350 3700 7350
Wire Wire Line
	4800 7350 4850 7350
Wire Bus Line
	5900 6050 5900 10100
Wire Wire Line
	5350 7350 5800 7350
Wire Wire Line
	4800 6600 6300 6600
Wire Wire Line
	4300 7800 4300 7750
Wire Wire Line
	3550 8100 3650 8100
Wire Wire Line
	4800 6600 4800 7150
Wire Wire Line
	4750 8100 6000 8100
Wire Wire Line
	6000 8100 6000 6400
Wire Wire Line
	6000 6400 6300 6400
Wire Wire Line
	6300 6250 6150 6250
Wire Wire Line
	6150 6250 6150 8350
Wire Wire Line
	6150 8350 4750 8350
Wire Wire Line
	13750 3500 14050 3500
Wire Wire Line
	13750 3650 14050 3650
Wire Wire Line
	13750 3850 14050 3850
Wire Wire Line
	13750 4000 14050 4000
Wire Wire Line
	13750 5250 14050 5250
Wire Wire Line
	13750 5400 14050 5400
Wire Wire Line
	13750 5600 14050 5600
Wire Wire Line
	13750 5750 14050 5750
Wire Wire Line
	13700 7000 14000 7000
Wire Wire Line
	13700 7150 14000 7150
Wire Wire Line
	13700 7350 14000 7350
Wire Wire Line
	13700 7500 14000 7500
Wire Wire Line
	13700 8650 14000 8650
Wire Wire Line
	13700 8800 14000 8800
Wire Wire Line
	13700 9000 14000 9000
Wire Wire Line
	13700 9150 14000 9150
Wire Wire Line
	3300 2100 3700 2100
Wire Wire Line
	3300 1900 3700 1900
Wire Wire Line
	6150 3450 6300 3450
Wire Wire Line
	3850 5350 3800 5350
Wire Wire Line
	3300 3000 4600 3000
Wire Notes Line
	1850 1750 2100 1750
Wire Notes Line
	2100 1750 2100 3800
Wire Wire Line
	4600 3000 4600 3050
Wire Wire Line
	1250 5250 1250 5050
Connection ~ 3550 1900
Connection ~ 3550 2100
Wire Wire Line
	2050 1850 2400 1850
Wire Wire Line
	2050 1950 2400 1950
Wire Wire Line
	2050 2050 2400 2050
Wire Wire Line
	2050 2150 2400 2150
Wire Wire Line
	2050 2250 2400 2250
Wire Wire Line
	2050 2350 2400 2350
Wire Wire Line
	2050 2450 2400 2450
Wire Wire Line
	2050 2550 2400 2550
Wire Wire Line
	2050 2650 2400 2650
Wire Wire Line
	2050 2750 2400 2750
Wire Wire Line
	2050 2850 2400 2850
Wire Wire Line
	2050 2950 2400 2950
Wire Wire Line
	2050 3050 2400 3050
Wire Wire Line
	2050 3150 2400 3150
Wire Wire Line
	2050 3250 2400 3250
Wire Wire Line
	2050 3350 2400 3350
Wire Wire Line
	2400 3450 2050 3450
Wire Wire Line
	2050 3550 2400 3550
Wire Wire Line
	2400 3650 2050 3650
Wire Wire Line
	2050 3750 2400 3750
Wire Bus Line
	4150 3900 4150 4800
Wire Wire Line
	3300 3200 4050 3200
Wire Wire Line
	3300 2200 3400 2200
Wire Wire Line
	3400 2100 3400 2400
Connection ~ 3400 2100
NoConn ~ 3300 2000
NoConn ~ 3300 2500
Wire Wire Line
	3400 2300 3300 2300
Connection ~ 3400 2200
Wire Wire Line
	3400 2400 3300 2400
Connection ~ 3400 2300
Wire Wire Line
	3450 2900 3300 2900
Wire Wire Line
	3450 2600 3450 3000
Connection ~ 3450 3000
Wire Wire Line
	3300 2800 3450 2800
Connection ~ 3450 2900
Wire Wire Line
	3300 2700 3450 2700
Connection ~ 3450 2800
Wire Wire Line
	3300 2600 3450 2600
Connection ~ 3450 2700
Text Notes 3550 2800 0    60   ~ 0
Power ground
Text Notes 4300 1800 0    60   ~ 0
Power sources:\n36V - 300mA\n10V - 7.5A\n5V  - 0.5A
Wire Notes Line
	4250 1650 4250 2150
Wire Notes Line
	4250 2150 5050 2150
Wire Notes Line
	5050 2150 5050 1650
Wire Notes Line
	5050 1650 4250 1650
Text Notes 3450 3300 0    60   ~ 0
Signal ground
Text Label 3150 8250 2    60   ~ 0
Shutter1
Text Label 3150 8450 2    60   ~ 0
Shutter2
Text Label 1150 6000 2    60   ~ 0
Shutter1
Text Label 1150 6100 2    60   ~ 0
Shutter2
Wire Notes Line
	2100 3800 1850 3800
Wire Notes Line
	1850 3800 1850 1850
Wire Notes Line
	1850 1850 1400 1850
Wire Notes Line
	1400 1850 1400 1750
Wire Notes Line
	1400 1750 1500 1750
Wire Notes Line
	1300 4700 1400 4700
Wire Notes Line
	1400 4700 1400 5400
Wire Notes Line
	1400 5400 650  5400
Wire Notes Line
	650  5400 650  4700
Wire Notes Line
	650  4700 750  4700
Text Notes 700  5900 0    60   ~ 0
Shutter control
Wire Notes Line
	1400 5900 1400 6150
Wire Notes Line
	1400 6150 650  6150
Wire Notes Line
	650  6150 650  5900
Wire Notes Line
	650  5900 700  5900
Wire Notes Line
	3500 3750 3500 4650
Wire Notes Line
	4300 4250 4300 4650
Wire Notes Line
	4300 4650 4200 4650
Wire Notes Line
	3900 4650 4050 4650
Wire Notes Line
	3550 3750 3500 3750
Wire Notes Line
	3500 4650 3550 4650
Text Label 3150 9250 2    60   ~ 0
POW_GND1
Text Label 3150 10050 2    60   ~ 0
POW_GND2
Text Label 1250 6450 2    60   ~ 0
POW_GND1
Text Notes 700  6850 0    60   ~ 0
Power load\n(bottom switches)
Text Label 1250 6750 2    60   ~ 0
POW_GND2
Text Label 1250 6550 2    60   ~ 0
+10V
Text Label 1250 6650 2    60   ~ 0
+10V
Wire Notes Line
	650  6950 650  6350
Wire Notes Line
	650  6350 1300 6350
Wire Notes Line
	1300 6350 1300 6850
Wire Notes Line
	1300 6850 1350 6850
Connection ~ 4300 3000
Wire Wire Line
	9750 3000 9750 1650
Wire Wire Line
	8100 3000 9750 3000
Wire Wire Line
	8950 2700 8950 3000
Connection ~ 8950 3000
Wire Wire Line
	8950 1800 8950 1650
Wire Wire Line
	8950 1650 9750 1650
Connection ~ 9750 1800
Connection ~ 9750 1900
Connection ~ 9750 2000
Connection ~ 9750 2100
Connection ~ 9750 2200
Connection ~ 9750 2300
Connection ~ 9750 2400
Connection ~ 9750 2500
Connection ~ 9750 2600
Connection ~ 9750 2700
Wire Bus Line
	4150 4050 5600 4050
Wire Wire Line
	3300 3900 4050 3900
Wire Wire Line
	3300 3800 4050 3800
Wire Wire Line
	4300 3000 4300 3300
Wire Wire Line
	4300 3300 3300 3300
Wire Bus Line
	5000 5150 6300 5150
Wire Bus Line
	5000 3800 5000 5150
Wire Bus Line
	4250 3500 4250 3800
Wire Bus Line
	5600 3850 6300 3850
Wire Bus Line
	4250 3800 5000 3800
Wire Wire Line
	1600 4950 1250 4950
Wire Wire Line
	1600 4350 1600 4950
Wire Wire Line
	1700 4550 2400 4550
Wire Wire Line
	1700 4550 1700 5050
Wire Wire Line
	1700 5050 1250 5050
Wire Wire Line
	2250 4750 2400 4750
NoConn ~ 3300 3100
$Comp
L +5V #PWR025
U 1 1 53DFA93F
P 1800 4650
F 0 "#PWR025" H 1800 4740 20  0001 C CNN
F 1 "+5V" H 1800 4740 30  0000 C CNN
F 2 "" H 1800 4650 60  0000 C CNN
F 3 "" H 1800 4650 60  0000 C CNN
	1    1800 4650
	-1   0    0    1   
$EndComp
$Comp
L GNDPWR #PWR026
U 1 1 53DFE593
P 1750 4100
F 0 "#PWR026" H 1750 4150 40  0001 C CNN
F 1 "GNDPWR" H 1750 4020 40  0000 C CNN
F 2 "" H 1750 4100 60  0000 C CNN
F 3 "" H 1750 4100 60  0000 C CNN
	1    1750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4650 1800 4650
Wire Notes Line
	1750 4600 2450 4600
Wire Notes Line
	2450 4600 2450 4950
Wire Notes Line
	2450 4950 1750 4950
Wire Notes Line
	1750 4950 1750 4600
Wire Bus Line
	5600 4050 5600 3850
Wire Wire Line
	3400 4800 3400 5350
Wire Wire Line
	3400 4800 3300 4800
Wire Notes Line
	3150 4850 3150 5050
Wire Notes Line
	3150 5050 3800 5050
Wire Notes Line
	3800 5050 3800 4750
Wire Notes Line
	3800 4750 3350 4750
Wire Notes Line
	3800 3350 3500 3350
Wire Notes Line
	3500 3350 3500 3650
Wire Notes Line
	3500 3650 3800 3650
Wire Notes Line
	4050 3650 4150 3650
Wire Notes Line
	4300 3650 4800 3650
Wire Notes Line
	4800 3650 4800 3350
Wire Notes Line
	4800 3350 4050 3350
Wire Notes Line
	3400 2550 3400 3050
Wire Notes Line
	3400 3050 4150 3050
Wire Notes Line
	4150 3050 4150 2850
Wire Notes Line
	3400 2550 4150 2550
Wire Notes Line
	4150 2550 4150 2700
$Comp
L CONN_10X2 XP7
U 1 1 53CA50BA
P 2300 6400
F 0 "XP7" V 2300 6400 60  0000 C CNN
F 1 "Power" V 2300 6700 60  0000 C CNN
F 2 "VASCH10x2" H 2300 6500 60  0001 C CNN
F 3 "" H 2300 6500 60  0000 C CNN
	1    2300 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6000 1150 6000
Wire Wire Line
	1900 5800 1900 6050
Connection ~ 1900 6000
Wire Wire Line
	2700 5800 2700 6050
Wire Wire Line
	1900 5800 2700 5800
Connection ~ 2700 5950
Connection ~ 1900 5950
Wire Wire Line
	2700 6150 2700 6250
Wire Wire Line
	1150 6100 1750 6100
Wire Wire Line
	1750 5650 1750 6200
Wire Wire Line
	1750 6200 1900 6200
Wire Wire Line
	1900 6150 1900 6250
Connection ~ 1900 6200
Wire Wire Line
	1750 5650 2850 5650
Connection ~ 1750 6100
Wire Wire Line
	2700 6200 2850 6200
Connection ~ 2700 6200
Wire Wire Line
	2850 6200 2850 5650
Wire Wire Line
	1250 6450 1900 6450
Wire Wire Line
	1250 6550 1900 6550
Wire Wire Line
	1400 6750 1900 6750
Wire Wire Line
	1350 6850 1900 6850
Wire Wire Line
	1250 6750 1350 6750
Wire Wire Line
	1350 6750 1350 6850
Wire Wire Line
	1250 6650 1400 6650
Wire Wire Line
	1400 6650 1400 6750
Wire Wire Line
	1900 6850 1900 6950
Wire Wire Line
	1900 6950 2700 6950
Wire Wire Line
	2700 6950 2700 6850
Wire Wire Line
	2700 6750 2750 6750
Wire Wire Line
	2750 6750 2750 7000
Wire Wire Line
	2750 7000 1850 7000
Wire Wire Line
	1850 7000 1850 6750
Connection ~ 1850 6750
Wire Wire Line
	2700 6550 2800 6550
Wire Wire Line
	2800 6550 2800 7050
Wire Wire Line
	2800 7050 1800 7050
Wire Wire Line
	1800 7050 1800 6550
Connection ~ 1800 6550
Wire Wire Line
	2700 6450 2850 6450
Wire Wire Line
	2850 6450 2850 7100
Wire Wire Line
	2850 7100 1750 7100
Wire Wire Line
	1750 7100 1750 6450
Connection ~ 1750 6450
Wire Wire Line
	1600 6550 1600 6750
Connection ~ 1600 6750
Connection ~ 1600 6550
NoConn ~ 1900 6350
NoConn ~ 2700 6350
NoConn ~ 2700 6650
NoConn ~ 1900 6650
Wire Wire Line
	2400 4550 2400 4450
Connection ~ 2400 4550
Connection ~ 2400 4350
Wire Wire Line
	2400 4250 2400 4350
Wire Wire Line
	2400 4350 1600 4350
Wire Wire Line
	1750 4000 1750 4100
$Comp
L GPRM1-61 XP1
U 1 1 53DA1715
P 2850 3300
F 0 "XP1" H 2850 1600 50  0000 C CNN
F 1 "GPRM1-61" V 2850 3300 50  0000 C CNN
F 2 "gprm1-61" H 2850 3300 50  0001 C CNN
F 3 "~" H 2850 3300 50  0001 C CNN
	1    2850 3300
	1    0    0    1   
$EndComp
Wire Wire Line
	2400 3850 2400 4150
Wire Wire Line
	1750 4000 2400 4000
Connection ~ 2400 4000
Connection ~ 2400 4050
Connection ~ 2400 3950
Connection ~ 3300 1900
$Comp
L GNDPWR #PWR027
U 1 1 5466054D
P 7150 1600
F 0 "#PWR027" H 7150 1650 40  0001 C CNN
F 1 "GNDPWR" H 7150 1520 40  0000 C CNN
F 2 "" H 7150 1600 60  0000 C CNN
F 3 "" H 7150 1600 60  0000 C CNN
	1    7150 1600
	1    0    0    -1  
$EndComp
$Sheet
S 3650 8000 1100 650 
U 53AE6F08
F0 "Shutter MOSFET" 50
F1 "Shutter_MOSFET.sch" 50
F2 "GND" I R 4750 8600 60 
F3 "OUT1" O L 3650 8250 60 
F4 "IN1" I R 4750 8450 60 
F5 "IN2" I R 4750 8350 60 
F6 "OUT2" O L 3650 8450 60 
F7 "EF" O R 4750 8100 60 
F8 "+36V" I L 3650 8100 60 
F9 "Sense" O R 4750 8200 60 
$EndSheet
Wire Wire Line
	4750 8200 8250 8200
Wire Wire Line
	8250 8200 8250 6600
Wire Wire Line
	8250 6600 8100 6600
Text Label 9000 5700 0    60   ~ 0
+10V
$Comp
L R0603 R44
U 1 1 546A5949
P 8800 6600
F 0 "R44" V 8880 6600 40  0000 C CNN
F 1 "4.7k" V 8807 6601 40  0000 C CNN
F 2 "SM0603" V 8730 6600 30  0001 C CNN
F 3 "~" H 8800 6600 30  0000 C CNN
	1    8800 6600
	1    0    0    -1  
$EndComp
$Comp
L R0603 R43
U 1 1 546A5B54
P 8800 5950
F 0 "R43" V 8880 5950 40  0000 C CNN
F 1 "12k" V 8807 5951 40  0000 C CNN
F 2 "SM0603" V 8730 5950 30  0001 C CNN
F 3 "~" H 8800 5950 30  0000 C CNN
	1    8800 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5700 9000 5700
$Comp
L GNDPWR #PWR028
U 1 1 546A779C
P 8800 6950
F 0 "#PWR028" H 8800 7000 40  0001 C CNN
F 1 "GNDPWR" H 8800 6870 40  0000 C CNN
F 2 "" H 8800 6950 60  0000 C CNN
F 3 "" H 8800 6950 60  0000 C CNN
	1    8800 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 6950 8800 6850
Wire Wire Line
	8800 6350 8800 6200
Wire Wire Line
	8100 6250 8800 6250
Connection ~ 8800 6250
$Comp
L +5V #PWR029
U 1 1 54778633
P 7150 1950
F 0 "#PWR029" H 7150 2040 20  0001 C CNN
F 1 "+5V" H 7150 2040 30  0000 C CNN
F 2 "" H 7150 1950 60  0000 C CNN
F 3 "" H 7150 1950 60  0000 C CNN
	1    7150 1950
	1    0    0    -1  
$EndComp
$Comp
L RO-XX DA3
U 1 1 5477C0AD
P 6150 1750
F 0 "DA3" H 6150 1900 60  0000 C CNN
F 1 "RO-1205" H 6150 1600 60  0000 C CNN
F 2 "SIP-4-RO" H 6050 1800 60  0001 C CNN
F 3 "" H 6150 1750 60  0000 C CNN
	1    6150 1750
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR030
U 1 1 5478010D
P 5300 1750
F 0 "#PWR030" H 5300 1800 40  0001 C CNN
F 1 "GNDPWR" H 5300 1670 40  0000 C CNN
F 2 "" H 5300 1750 60  0000 C CNN
F 3 "" H 5300 1750 60  0000 C CNN
	1    5300 1750
	1    0    0    -1  
$EndComp
Text Label 5700 1800 2    60   ~ 0
+10V
Wire Wire Line
	5300 1700 5750 1700
Wire Wire Line
	5300 1700 5300 1750
Wire Wire Line
	5750 1800 5700 1800
Wire Wire Line
	6650 900  6850 900 
Wire Wire Line
	6850 900  6850 950 
Wire Wire Line
	6650 1050 6650 900 
Wire Wire Line
	6600 1150 6700 1150
$Comp
L PWR_FLAG #FLG031
U 1 1 547C68DB
P 1750 4000
F 0 "#FLG031" H 1750 4095 30  0001 C CNN
F 1 "PWR_FLAG" H 1750 4180 30  0000 C CNN
F 2 "" H 1750 4000 60  0000 C CNN
F 3 "" H 1750 4000 60  0000 C CNN
	1    1750 4000
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 547DB437
P 6850 1750
F 0 "C19" H 6850 1850 40  0000 L CNN
F 1 "1u" H 6856 1665 40  0000 L CNN
F 2 "SM0805" H 6888 1600 30  0001 C CNN
F 3 "~" H 6850 1750 60  0000 C CNN
	1    6850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1700 6550 1550
Wire Wire Line
	6550 1550 7150 1550
Wire Wire Line
	6550 1800 6550 2150
Wire Wire Line
	6550 1950 7150 1950
Wire Wire Line
	7150 1550 7150 1600
Connection ~ 6850 1550
Connection ~ 6850 1950
$Comp
L CONN_1 P2
U 1 1 5474762D
P 6850 2100
F 0 "P2" H 6930 2100 40  0000 L CNN
F 1 "CONN_1" H 6850 2155 30  0001 C CNN
F 2 "" H 6850 2100 60  0000 C CNN
F 3 "" H 6850 2100 60  0000 C CNN
	1    6850 2100
	0    1    1    0   
$EndComp
Text Notes 6900 2150 0    60   ~ 0
TEST5
$Comp
L CONN_1 P1
U 1 1 5474C8E5
P 6650 1300
F 0 "P1" H 6730 1300 40  0000 L CNN
F 1 "CONN_1" H 6650 1355 30  0001 C CNN
F 2 "" H 6650 1300 60  0000 C CNN
F 3 "" H 6650 1300 60  0000 C CNN
	1    6650 1300
	0    1    1    0   
$EndComp
Text Notes 6700 1350 0    60   ~ 0
TEST24
Connection ~ 6650 1150
Wire Wire Line
	3300 1900 3300 1800
$Comp
L HOLE HOLE1
U 1 1 54770F82
P 750 600
F 0 "HOLE1" H 750 600 60  0000 C CNN
F 1 "3mm" H 750 500 60  0000 C CNN
F 2 "" H 750 600 60  0000 C CNN
F 3 "" H 750 600 60  0000 C CNN
	1    750  600 
	1    0    0    -1  
$EndComp
$Comp
L HOLE HOLE3
U 1 1 54774C57
P 1100 600
F 0 "HOLE3" H 1100 600 60  0000 C CNN
F 1 "3mm" H 1100 500 60  0000 C CNN
F 2 "" H 1100 600 60  0000 C CNN
F 3 "" H 1100 600 60  0000 C CNN
	1    1100 600 
	1    0    0    -1  
$EndComp
$Comp
L HOLE HOLE5
U 1 1 547759FC
P 1450 600
F 0 "HOLE5" H 1450 600 60  0000 C CNN
F 1 "3mm" H 1450 500 60  0000 C CNN
F 2 "" H 1450 600 60  0000 C CNN
F 3 "" H 1450 600 60  0000 C CNN
	1    1450 600 
	1    0    0    -1  
$EndComp
$Comp
L HOLE HOLE2
U 1 1 54775C06
P 750 800
F 0 "HOLE2" H 750 800 60  0000 C CNN
F 1 "3mm" H 750 700 60  0000 C CNN
F 2 "" H 750 800 60  0000 C CNN
F 3 "" H 750 800 60  0000 C CNN
	1    750  800 
	1    0    0    -1  
$EndComp
$Comp
L HOLE HOLE4
U 1 1 54775C0C
P 1100 800
F 0 "HOLE4" H 1100 800 60  0000 C CNN
F 1 "3mm" H 1100 700 60  0000 C CNN
F 2 "" H 1100 800 60  0000 C CNN
F 3 "" H 1100 800 60  0000 C CNN
	1    1100 800 
	1    0    0    -1  
$EndComp
$Comp
L HOLE HOLE6
U 1 1 54775C12
P 1450 800
F 0 "HOLE6" H 1450 800 60  0000 C CNN
F 1 "3mm" H 1450 700 60  0000 C CNN
F 2 "" H 1450 800 60  0000 C CNN
F 3 "" H 1450 800 60  0000 C CNN
	1    1450 800 
	1    0    0    -1  
$EndComp
$Comp
L LM7805CT U1
U 1 1 547C3BA5
P 5700 2200
F 0 "U1" H 5500 2400 40  0000 C CNN
F 1 "LM7805CT" H 5700 2400 40  0000 L CNN
F 2 "TO-220" H 5700 2300 30  0000 C CIN
F 3 "" H 5700 2200 60  0000 C CNN
	1    5700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2150 5300 1900
Wire Wire Line
	5300 1900 5750 1900
Wire Wire Line
	5750 1900 5750 1800
Text Notes 5350 1500 0    60   ~ 0
Place DA3 OR U1
Wire Wire Line
	6550 2150 6100 2150
Connection ~ 6550 1950
$Comp
L GNDPWR #PWR032
U 1 1 547C9E3C
P 5700 2550
F 0 "#PWR032" H 5700 2600 40  0001 C CNN
F 1 "GNDPWR" H 5700 2470 40  0000 C CNN
F 2 "" H 5700 2550 60  0000 C CNN
F 3 "" H 5700 2550 60  0000 C CNN
	1    5700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2550 5700 2450
$EndSCHEMATC
