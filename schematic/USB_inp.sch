EESchema Schematic File Version 2  date Пт 18 июл 2014 12:36:52
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
$Descr A4 11693 8268
encoding utf-8
Sheet 4 12
Title "USB input circuit"
Date "18 jul 2014"
Rev ""
Comp "SAO RAS"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1250 1550 0    60   Input ~ 0
GND
$Comp
L GND #PWR075
U 1 1 53983179
P 1300 1700
F 0 "#PWR075" H 1300 1700 30  0001 C CNN
F 1 "GND" H 1300 1630 30  0001 C CNN
F 2 "" H 1300 1700 60  0000 C CNN
F 3 "" H 1300 1700 60  0000 C CNN
	1    1300 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR076
U 1 1 5398318A
P 1650 4200
F 0 "#PWR076" H 1650 4200 30  0001 C CNN
F 1 "GND" H 1650 4130 30  0001 C CNN
F 2 "" H 1650 4200 60  0000 C CNN
F 3 "" H 1650 4200 60  0000 C CNN
	1    1650 4200
	1    0    0    -1  
$EndComp
$Comp
L USBLC6-2 DA4
U 1 1 5395C045
P 3350 3400
F 0 "DA4" H 3200 3100 60  0000 C CNN
F 1 "USBLC6-2" H 3350 3200 60  0000 C CNN
F 2 "SOT23_6" H 3350 3400 60  0001 C CNN
F 3 "~" H 3350 3400 60  0000 C CNN
	1    3350 3400
	1    0    0    -1  
$EndComp
$Comp
L DTA114Y VT1
U 1 1 5395C059
P 5300 2200
F 0 "VT1" H 5245 2040 40  0000 R CNN
F 1 "DTA114Y" H 5300 2350 40  0000 R CNN
F 2 "SOT323" H 5300 2200 60  0001 C CNN
F 3 "" H 5300 2200 60  0000 C CNN
	1    5300 2200
	-1   0    0    1   
$EndComp
Text HLabel 5850 3250 2    60   Output ~ 0
USB_POWER
$Comp
L R R8
U 1 1 5395CE71
P 2250 2750
F 0 "R8" V 2330 2750 40  0000 C CNN
F 1 "15k" V 2257 2751 40  0000 C CNN
F 2 "SM0603" V 2180 2750 30  0001 C CNN
F 3 "~" H 2250 2750 30  0000 C CNN
	1    2250 2750
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5395CE96
P 1450 2500
F 0 "R7" V 1530 2500 40  0000 C CNN
F 1 "22k" V 1457 2501 40  0000 C CNN
F 2 "SM0603" V 1380 2500 30  0001 C CNN
F 3 "~" H 1450 2500 30  0000 C CNN
	1    1450 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR077
U 1 1 5395CECD
P 1450 2850
F 0 "#PWR077" H 1450 2850 30  0001 C CNN
F 1 "GND" H 1450 2780 30  0001 C CNN
F 2 "" H 1450 2850 60  0000 C CNN
F 3 "" H 1450 2850 60  0000 C CNN
	1    1450 2850
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5395D182
P 5200 2750
F 0 "R9" V 5280 2750 40  0000 C CNN
F 1 "1.5k" V 5207 2751 40  0000 C CNN
F 2 "SM0603" V 5130 2750 30  0001 C CNN
F 3 "~" H 5200 2750 30  0000 C CNN
	1    5200 2750
	1    0    0    -1  
$EndComp
Text HLabel 5850 3100 2    60   Input ~ 0
USB_DISC
$Comp
L GND #PWR078
U 1 1 5395D488
P 2650 3250
F 0 "#PWR078" H 2650 3250 30  0001 C CNN
F 1 "GND" H 2650 3180 30  0001 C CNN
F 2 "" H 2650 3250 60  0000 C CNN
F 3 "" H 2650 3250 60  0000 C CNN
	1    2650 3250
	1    0    0    -1  
$EndComp
Text Label 1250 2250 0    60   ~ 0
USB_POWER
Text Label 5750 3250 2    60   ~ 0
USB_POWER
Text HLabel 5850 3550 2    60   BiDi ~ 0
USB_DP
Text HLabel 5850 3400 2    60   BiDi ~ 0
USB_DM
$Comp
L C C12
U 1 1 5395D7E9
P 3350 3100
F 0 "C12" H 3350 3200 40  0000 L CNN
F 1 "100n" H 3356 3015 40  0000 L CNN
F 2 "SM0805" H 3388 2950 30  0001 C CNN
F 3 "~" H 3350 3100 60  0000 C CNN
	1    3350 3100
	0    -1   -1   0   
$EndComp
$Comp
L R R35
U 1 1 5395E223
P 4250 3400
F 0 "R35" V 4330 3400 40  0000 C CNN
F 1 "22" V 4257 3401 40  0000 C CNN
F 2 "SM0603" V 4180 3400 30  0001 C CNN
F 3 "~" H 4250 3400 30  0000 C CNN
	1    4250 3400
	0    -1   -1   0   
$EndComp
$Comp
L R R36
U 1 1 5395E230
P 4250 3550
F 0 "R36" V 4330 3550 40  0000 C CNN
F 1 "22" V 4257 3551 40  0000 C CNN
F 2 "SM0603" V 4180 3550 30  0001 C CNN
F 3 "~" H 4250 3550 30  0000 C CNN
	1    4250 3550
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH VD3
U 1 1 539B75AF
P 2500 2750
F 0 "VD3" H 2500 2850 40  0000 C CNN
F 1 "B120-E3" H 2500 2650 40  0000 C CNN
F 2 "DO-214" H 2500 2750 60  0001 C CNN
F 3 "~" H 2500 2750 60  0000 C CNN
	1    2500 2750
	0    -1   -1   0   
$EndComp
Text Label 2500 2450 0    60   ~ 0
USB_+5V
Text Label 5750 3750 2    60   ~ 0
USB_+5V
Text HLabel 5850 3750 2    61   Output ~ 0
USB_+5V
$Comp
L USB-MICRO-B CON1
U 1 1 53BE6988
P 1700 3550
F 0 "CON1" H 1450 4000 60  0000 C CNN
F 1 "USB-MICRO-B" H 1650 3050 60  0000 C CNN
F 2 "MINI-B-USB" H 1700 3550 60  0001 C CNN
F 3 "~" H 1700 3550 60  0000 C CNN
	1    1700 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 3250 1150 4150
Connection ~ 1150 3400
Connection ~ 1150 3700
Wire Wire Line
	1250 1550 1300 1550
Wire Wire Line
	1300 1550 1300 1700
Connection ~ 1150 3850
Wire Wire Line
	1150 4150 2250 4150
Wire Wire Line
	1650 4150 1650 4200
Wire Wire Line
	2250 4150 2250 3700
Connection ~ 1650 4150
Connection ~ 2250 3850
Wire Wire Line
	2250 3400 2800 3400
Wire Wire Line
	2250 3550 2800 3550
Wire Wire Line
	2800 3550 2800 3500
Wire Wire Line
	2250 3000 2250 3250
Wire Wire Line
	1250 2250 2250 2250
Wire Wire Line
	2250 2250 2250 2500
Connection ~ 1450 2250
Wire Wire Line
	1450 2850 1450 2750
Wire Wire Line
	5200 2500 5200 2400
Wire Wire Line
	5200 3000 5200 3550
Wire Wire Line
	2650 3250 2650 3150
Wire Wire Line
	2650 3150 2800 3150
Wire Wire Line
	2800 3100 2800 3300
Wire Wire Line
	4500 3400 5850 3400
Wire Wire Line
	5750 3250 5850 3250
Wire Wire Line
	4500 3550 5850 3550
Wire Wire Line
	3550 3100 3900 3100
Wire Wire Line
	2800 3100 3150 3100
Connection ~ 2800 3150
Wire Wire Line
	5750 3100 5850 3100
Wire Wire Line
	5550 2200 5750 2200
Wire Wire Line
	5750 2200 5750 3100
Wire Wire Line
	3900 3400 4000 3400
Wire Wire Line
	3900 3500 4000 3500
Wire Wire Line
	4000 3500 4000 3550
Connection ~ 5200 3550
Wire Wire Line
	2250 3100 2500 3100
Wire Wire Line
	2500 3100 2500 2950
Connection ~ 2250 3100
Wire Wire Line
	2500 2550 2500 2450
Wire Wire Line
	5750 3750 5850 3750
Wire Wire Line
	3900 2500 2500 2500
Connection ~ 2500 2500
Connection ~ 3900 2500
Wire Wire Line
	5200 2000 3900 2000
Wire Wire Line
	3900 2000 3900 3300
Connection ~ 3900 3100
$EndSCHEMATC
