EESchema Schematic File Version 2
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
LIBS:PiHat_v2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +3.3V #PWR01
U 1 1 588858F3
P 1250 1100
F 0 "#PWR01" H 1250 950 50  0001 C CNN
F 1 "+3.3V" H 1250 1240 50  0000 C CNN
F 2 "" H 1250 1100 50  0000 C CNN
F 3 "" H 1250 1100 50  0000 C CNN
	1    1250 1100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 58885909
P 2000 1100
F 0 "#PWR02" H 2000 950 50  0001 C CNN
F 1 "+5V" H 2000 1240 50  0000 C CNN
F 2 "" H 2000 1100 50  0000 C CNN
F 3 "" H 2000 1100 50  0000 C CNN
	1    2000 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58885944
P 2000 3300
F 0 "#PWR03" H 2000 3050 50  0001 C CNN
F 1 "GND" H 2000 3150 50  0000 C CNN
F 2 "" H 2000 3300 50  0000 C CNN
F 3 "" H 2000 3300 50  0000 C CNN
	1    2000 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58885AD1
P 1300 3300
F 0 "#PWR04" H 1300 3050 50  0001 C CNN
F 1 "GND" H 1300 3150 50  0000 C CNN
F 2 "" H 1300 3300 50  0000 C CNN
F 3 "" H 1300 3300 50  0000 C CNN
	1    1300 3300
	1    0    0    -1  
$EndComp
Text Label 1200 1350 2    60   ~ 0
GPIO2
Text Label 1200 1450 2    60   ~ 0
GPIO3
Text Label 1200 1550 2    60   ~ 0
GPIO4
Text Label 1200 1750 2    60   ~ 0
GPIO17
Text Label 1200 1850 2    60   ~ 0
GPIO27
Text Label 1200 1950 2    60   ~ 0
GPIO22
Text Label 1200 2150 2    60   ~ 0
GPIO10
Text Label 1200 2550 2    60   ~ 0
ID_SD
Text Label 1200 2750 2    60   ~ 0
GPIO6
Text Label 1200 2850 2    60   ~ 0
GPIO13
Text Label 1200 2950 2    60   ~ 0
GPIO19
Text Label 1200 3050 2    60   ~ 0
GPIO26
Text Label 2050 3050 0    60   ~ 0
GPIO20
Text Label 2050 2950 0    60   ~ 0
GPIO16
Text Label 2050 2550 0    60   ~ 0
ID_SC
Text Label 2050 2250 0    60   ~ 0
GPIO25
Text Label 2050 2050 0    60   ~ 0
GPIO24
Text Label 2050 1950 0    60   ~ 0
GPIO23
Text Label 2050 1550 0    60   ~ 0
UART_TXD
Text Notes 850  850  0    60   ~ 0
Raspberry Pi Connection
$Comp
L CAT24C32 ID_EEPROM1
U 1 1 58887B87
P 9200 1700
F 0 "ID_EEPROM1" H 9400 1750 60  0000 C CNN
F 1 "CAT24C32" H 9400 1250 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 9350 1400 60  0001 C CNN
F 3 "" H 9350 1400 60  0001 C CNN
	1    9200 1700
	1    0    0    -1  
$EndComp
Text Label 10600 1950 0    60   ~ 0
ID_SC
Text Label 10600 2050 0    60   ~ 0
ID_SD
$Comp
L GND #PWR05
U 1 1 58887CDD
P 8850 2150
F 0 "#PWR05" H 8850 1900 50  0001 C CNN
F 1 "GND" H 8850 2000 50  0000 C CNN
F 2 "" H 8850 2150 50  0000 C CNN
F 3 "" H 8850 2150 50  0000 C CNN
	1    8850 2150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 58887DFD
P 9900 1100
F 0 "#PWR06" H 9900 950 50  0001 C CNN
F 1 "+3.3V" H 9900 1240 50  0000 C CNN
F 2 "" H 9900 1100 50  0000 C CNN
F 3 "" H 9900 1100 50  0000 C CNN
	1    9900 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 58887E15
P 9500 1350
F 0 "#PWR07" H 9500 1100 50  0001 C CNN
F 1 "GND" H 9500 1200 50  0000 C CNN
F 2 "" H 9500 1350 50  0000 C CNN
F 3 "" H 9500 1350 50  0000 C CNN
	1    9500 1350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 58887E2F
P 9850 2750
F 0 "#PWR08" H 9850 2500 50  0001 C CNN
F 1 "GND" H 9850 2600 50  0000 C CNN
F 2 "" H 9850 2750 50  0000 C CNN
F 3 "" H 9850 2750 50  0000 C CNN
	1    9850 2750
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 58887E47
P 9650 1350
F 0 "C1" H 9675 1450 50  0000 L CNN
F 1 "0.1uF" H 9675 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9688 1200 50  0000 C CNN
F 3 "" H 9650 1350 50  0000 C CNN
	1    9650 1350
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5888803F
P 10050 1350
F 0 "R3" V 10130 1350 50  0000 C CNN
F 1 "1K" V 10050 1350 50  0000 C CNN
F 2 ".pretty:R_0805_HandSoldering" V 9980 1350 50  0000 C CNN
F 3 "" H 10050 1350 50  0000 C CNN
F 4 "1%" V 10050 1350 60  0001 C CNN "Tolerance"
	1    10050 1350
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58888078
P 10300 1350
F 0 "R2" V 10380 1350 50  0000 C CNN
F 1 "3.9K" V 10300 1350 50  0000 C CNN
F 2 ".pretty:R_0805_HandSoldering" V 10230 1350 50  0000 C CNN
F 3 "" H 10300 1350 50  0000 C CNN
	1    10300 1350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 588880A9
P 10550 1350
F 0 "R1" V 10630 1350 50  0000 C CNN
F 1 "3.9K" V 10550 1350 50  0000 C CNN
F 2 ".pretty:R_0805_HandSoldering" V 10480 1350 50  0000 C CNN
F 3 "" H 10550 1350 50  0000 C CNN
	1    10550 1350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 588887AA
P 10150 2500
F 0 "P2" H 10150 2650 50  0000 C CNN
F 1 "CONN_01X02" V 10250 2500 50  0000 C CNN
F 2 ".pretty:Pin_Header_Straight_1x02_Pitch2.54mm" H 10150 2500 50  0001 C CNN
F 3 "" H 10150 2500 50  0000 C CNN
	1    10150 2500
	1    0    0    -1  
$EndComp
Text Notes 8700 850  0    60   ~ 0
ID EEPROM\n
$Comp
L horizTest PP1
U 1 1 5888A3E7
P 9600 2500
F 0 "PP1" H 9610 2620 50  0000 C CNN
F 1 "horizTest" H 9600 2370 50  0000 C CNN
F 2 ".pretty:Test_Point_2Pads" H 9460 2550 50  0001 C CNN
F 3 "" H 9460 2550 50  0000 C CNN
	1    9600 2500
	1    0    0    -1  
$EndComp
Text Label 5600 1100 2    60   ~ 0
PD6
$Comp
L CONN_01X08 P3
U 1 1 5888C29C
P 9350 5400
F 0 "P3" H 9350 5850 50  0000 C CNN
F 1 "CONN_01X08" V 9450 5400 50  0000 C CNN
F 2 ".pretty:Keypad_Ethernet" H 9350 5400 50  0001 C CNN
F 3 "" H 9350 5400 50  0000 C CNN
	1    9350 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5888D240
P 5750 5900
F 0 "#PWR09" H 5750 5650 50  0001 C CNN
F 1 "GND" H 5750 5750 50  0000 C CNN
F 2 "" H 5750 5900 50  0000 C CNN
F 3 "" H 5750 5900 50  0000 C CNN
	1    5750 5900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 5889131A
P 5750 6600
F 0 "#PWR010" H 5750 6350 50  0001 C CNN
F 1 "GND" H 5750 6450 50  0000 C CNN
F 2 "" H 5750 6600 50  0000 C CNN
F 3 "" H 5750 6600 50  0000 C CNN
	1    5750 6600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 58893B93
P 5750 6250
F 0 "#PWR011" H 5750 6000 50  0001 C CNN
F 1 "GND" H 5750 6100 50  0000 C CNN
F 2 "" H 5750 6250 50  0000 C CNN
F 3 "" H 5750 6250 50  0000 C CNN
	1    5750 6250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 58893BEF
P 5750 6950
F 0 "#PWR012" H 5750 6700 50  0001 C CNN
F 1 "GND" H 5750 6800 50  0000 C CNN
F 2 "" H 5750 6950 50  0000 C CNN
F 3 "" H 5750 6950 50  0000 C CNN
	1    5750 6950
	0    1    1    0   
$EndComp
$Comp
L Piezo PB1
U 1 1 5889681E
P 6000 5100
F 0 "PB1" H 6000 5250 50  0000 C CNN
F 1 "Piezo" V 6100 5100 50  0000 C CNN
F 2 ".pretty:Piezo_CT-1205h-smt" H 6000 5100 50  0001 C CNN
F 3 "" H 6000 5100 50  0000 C CNN
	1    6000 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 58896ABB
P 5700 5150
F 0 "#PWR013" H 5700 4900 50  0001 C CNN
F 1 "GND" H 5700 5000 50  0000 C CNN
F 2 "" H 5700 5150 50  0000 C CNN
F 3 "" H 5700 5150 50  0000 C CNN
	1    5700 5150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 5889A2EF
P 9000 4200
F 0 "#PWR014" H 9000 3950 50  0001 C CNN
F 1 "GND" H 9000 4050 50  0000 C CNN
F 2 "" H 9000 4200 50  0000 C CNN
F 3 "" H 9000 4200 50  0000 C CNN
	1    9000 4200
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 5889A329
P 10100 3900
F 0 "#PWR015" H 10100 3750 50  0001 C CNN
F 1 "+3.3V" H 10100 4040 50  0000 C CNN
F 2 "" H 10100 3900 50  0000 C CNN
F 3 "" H 10100 3900 50  0000 C CNN
	1    10100 3900
	0    1    1    0   
$EndComp
Text Label 9000 3900 2    60   ~ 0
GPIO2
Text Label 9000 4000 2    60   ~ 0
GPIO3
Text Notes 5400 850  0    60   ~ 0
Neopixel Chain
Text Notes 8700 4850 0    60   ~ 0
3x4 Keypad
Text Notes 5400 5600 0    60   ~ 0
Aux Switch Connections
Text Notes 5400 4850 0    60   ~ 0
Piezo Buzzer
$Comp
L LM75BD temp1
U 1 1 5889D819
P 9350 3850
F 0 "temp1" H 9550 3900 60  0000 C CNN
F 1 "LM75BD" H 9550 3400 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 9500 3550 60  0001 C CNN
F 3 "" H 9500 3550 60  0001 C CNN
	1    9350 3850
	1    0    0    -1  
$EndComp
Text Notes 8700 3650 0    60   ~ 0
i2c Temperature Sensor
$Comp
L C C2
U 1 1 58938A75
P 6700 1250
F 0 "C2" H 6725 1350 50  0000 L CNN
F 1 "1000uF" H 6725 1150 50  0000 L CNN
F 2 ".pretty:AluCap_8mmDia_Nichicon" H 6738 1100 50  0001 C CNN
F 3 "" H 6700 1250 50  0000 C CNN
	1    6700 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 58938F22
P 5700 1200
F 0 "#PWR016" H 5700 950 50  0001 C CNN
F 1 "GND" H 5700 1050 50  0000 C CNN
F 2 "" H 5700 1200 50  0000 C CNN
F 3 "" H 5700 1200 50  0000 C CNN
	1    5700 1200
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR017
U 1 1 58939111
P 6700 1100
F 0 "#PWR017" H 6700 950 50  0001 C CNN
F 1 "+5V" H 6700 1240 50  0000 C CNN
F 2 "" H 6700 1100 50  0000 C CNN
F 3 "" H 6700 1100 50  0000 C CNN
	1    6700 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 589399F9
P 6700 1400
F 0 "#PWR018" H 6700 1150 50  0001 C CNN
F 1 "GND" H 6700 1250 50  0000 C CNN
F 2 "" H 6700 1400 50  0000 C CNN
F 3 "" H 6700 1400 50  0000 C CNN
	1    6700 1400
	1    0    0    -1  
$EndComp
$Comp
L Neo_LED_RGB_IC led1
U 1 1 5893A761
P 5950 1150
F 0 "led1" H 5950 1300 50  0000 C CNN
F 1 "Neo_LED_RGB_IC" H 5950 1000 50  0000 C CNN
F 2 ".pretty:Neo_RGB_LED" H 5950 -50 50  0001 C CNN
F 3 "" H 5950 -50 50  0000 C CNN
	1    5950 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 589418CC
P 5750 7300
F 0 "#PWR019" H 5750 7050 50  0001 C CNN
F 1 "GND" H 5750 7150 50  0000 C CNN
F 2 "" H 5750 7300 50  0000 C CNN
F 3 "" H 5750 7300 50  0000 C CNN
	1    5750 7300
	0    1    1    0   
$EndComp
Text Label 5750 6500 2    60   ~ 0
GPIO20
Text Label 5750 6850 2    60   ~ 0
GPIO21
Text Label 5750 7200 2    60   ~ 0
GPIO26
Text Label 5750 6150 2    60   ~ 0
PD3
Text Label 5750 5800 2    60   ~ 0
ADC6
Text Label 5700 5050 2    60   ~ 0
PB1
Text Label 9050 5150 2    60   ~ 0
GPIO4
Text Label 9050 5350 2    60   ~ 0
GPIO17
Text Label 9050 5550 2    60   ~ 0
GPIO27
Text Label 9050 5750 2    60   ~ 0
GPIO23
Text Label 9050 5650 2    60   ~ 0
GPIO22
Text Label 9050 5450 2    60   ~ 0
GPIO24
Text Label 9050 5250 2    60   ~ 0
GPIO10
Text Label 9050 5050 2    60   ~ 0
GPIO25
$Comp
L +5V #PWR020
U 1 1 59273D50
P 900 5050
F 0 "#PWR020" H 900 4900 50  0001 C CNN
F 1 "+5V" H 900 5190 50  0000 C CNN
F 2 "" H 900 5050 50  0000 C CNN
F 3 "" H 900 5050 50  0000 C CNN
	1    900  5050
	1    0    0    -1  
$EndComp
Text Label 3500 6700 0    60   ~ 0
UART_TXD
$Comp
L R R7
U 1 1 5927814D
P 3200 6700
F 0 "R7" V 3150 6850 50  0000 C CNN
F 1 "1K" V 3200 6700 50  0000 C CNN
F 2 ".pretty:R_0805_HandSoldering" V 3350 7350 50  0000 C CNN
F 3 "" H 3200 6700 50  0000 C CNN
F 4 "1%" V 3200 6700 60  0001 C CNN "Tolerance"
	1    3200 6700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR021
U 1 1 59274A60
P 900 7450
F 0 "#PWR021" H 900 7200 50  0001 C CNN
F 1 "GND" H 900 7300 50  0000 C CNN
F 2 "" H 900 7450 50  0000 C CNN
F 3 "" H 900 7450 50  0000 C CNN
	1    900  7450
	1    0    0    -1  
$EndComp
Text Label 3500 7300 0    60   ~ 0
PD6
Text Label 3050 5200 0    60   ~ 0
PB1
Text Notes 750  4850 0    60   ~ 0
Microcontroller\n
$Comp
L R R8
U 1 1 592A1176
P 3200 6550
F 0 "R8" V 3100 6550 50  0000 C CNN
F 1 "10K" V 3200 6550 50  0000 C CNN
F 2 ".pretty:R_0805_HandSoldering" V 3050 7200 50  0000 C CNN
F 3 "" H 3200 6550 50  0000 C CNN
F 4 "1%" V 3200 6550 60  0001 C CNN "Tolerance"
	1    3200 6550
	0    1    1    0   
$EndComp
$Comp
L Piezo OSC1
U 1 1 592A2994
P 3700 5750
F 0 "OSC1" H 3700 5900 50  0000 C CNN
F 1 "16 MHz Crystal" V 3800 5750 50  0000 C CNN
F 2 ".pretty:Crystal_SMD_HC49-SD" H 3700 5750 50  0001 C CNN
F 3 "" H 3700 5750 50  0000 C CNN
	1    3700 5750
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 592A4716
P 4100 5500
F 0 "C3" H 4125 5600 50  0000 L CNN
F 1 "20p" H 4125 5400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4138 5350 50  0001 C CNN
F 3 "" H 4100 5500 50  0000 C CNN
	1    4100 5500
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 592A4B4B
P 4100 5950
F 0 "C4" H 4125 6050 50  0000 L CNN
F 1 "20p" H 4125 5850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4138 5800 50  0001 C CNN
F 3 "" H 4100 5950 50  0000 C CNN
	1    4100 5950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR022
U 1 1 592A4C6F
P 4350 5750
F 0 "#PWR022" H 4350 5500 50  0001 C CNN
F 1 "GND" H 4350 5600 50  0000 C CNN
F 2 "" H 4350 5750 50  0000 C CNN
F 3 "" H 4350 5750 50  0000 C CNN
	1    4350 5750
	0    -1   -1   0   
$EndComp
$Comp
L ATMEGA328P-A ATMEGA1
U 1 1 592A9003
P 1900 6200
F 0 "ATMEGA1" H 1150 7450 50  0000 L BNN
F 1 "ATMEGA328P-A" H 2300 4800 50  0000 L BNN
F 2 ".pretty:ATMEGA328P" H 1900 6200 50  0000 C CIN
F 3 "" H 1900 6200 50  0000 C CNN
	1    1900 6200
	1    0    0    -1  
$EndComp
Text Label 1000 6450 2    60   ~ 0
ADC6
Text Label 3100 7000 0    60   ~ 0
PD3
Text Label 3500 6550 0    60   ~ 0
GPIO16
Text Label 3050 5400 0    60   ~ 0
GPIO6
Text Label 3050 5500 0    60   ~ 0
GPIO13
Text Label 3050 5600 0    60   ~ 0
GPIO19
$Comp
L Neo_LED_RGB_IC led2
U 1 1 5944C5EA
P 5950 1600
F 0 "led2" H 5950 1750 50  0000 C CNN
F 1 "Neo_LED_RGB_IC" H 5950 1450 50  0000 C CNN
F 2 ".pretty:Neo_RGB_LED" H 5950 400 50  0001 C CNN
F 3 "" H 5950 400 50  0000 C CNN
	1    5950 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5944C787
P 5700 1650
F 0 "#PWR023" H 5700 1400 50  0001 C CNN
F 1 "GND" H 5700 1500 50  0000 C CNN
F 2 "" H 5700 1650 50  0000 C CNN
F 3 "" H 5700 1650 50  0000 C CNN
	1    5700 1650
	0    1    1    0   
$EndComp
$Comp
L Neo_LED_RGB_IC led3
U 1 1 5944CA5F
P 5950 2050
F 0 "led3" H 5950 2200 50  0000 C CNN
F 1 "Neo_LED_RGB_IC" H 5950 1900 50  0000 C CNN
F 2 ".pretty:Neo_RGB_LED" H 5950 850 50  0001 C CNN
F 3 "" H 5950 850 50  0000 C CNN
	1    5950 2050
	1    0    0    -1  
$EndComp
$Comp
L Neo_LED_RGB_IC led4
U 1 1 5944CAE1
P 5950 2500
F 0 "led4" H 5950 2650 50  0000 C CNN
F 1 "Neo_LED_RGB_IC" H 5950 2350 50  0000 C CNN
F 2 ".pretty:Neo_RGB_LED" H 5950 1300 50  0001 C CNN
F 3 "" H 5950 1300 50  0000 C CNN
	1    5950 2500
	1    0    0    -1  
$EndComp
$Comp
L Neo_LED_RGB_IC led5
U 1 1 5944CBA5
P 5950 2950
F 0 "led5" H 5950 3100 50  0000 C CNN
F 1 "Neo_LED_RGB_IC" H 5950 2800 50  0000 C CNN
F 2 ".pretty:Neo_RGB_LED" H 5950 1750 50  0001 C CNN
F 3 "" H 5950 1750 50  0000 C CNN
	1    5950 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5944D874
P 5700 2100
F 0 "#PWR024" H 5700 1850 50  0001 C CNN
F 1 "GND" H 5700 1950 50  0000 C CNN
F 2 "" H 5700 2100 50  0000 C CNN
F 3 "" H 5700 2100 50  0000 C CNN
	1    5700 2100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR025
U 1 1 5944D8D3
P 5700 2550
F 0 "#PWR025" H 5700 2300 50  0001 C CNN
F 1 "GND" H 5700 2400 50  0000 C CNN
F 2 "" H 5700 2550 50  0000 C CNN
F 3 "" H 5700 2550 50  0000 C CNN
	1    5700 2550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR026
U 1 1 5944D932
P 5700 3000
F 0 "#PWR026" H 5700 2750 50  0001 C CNN
F 1 "GND" H 5700 2850 50  0000 C CNN
F 2 "" H 5700 3000 50  0000 C CNN
F 3 "" H 5700 3000 50  0000 C CNN
	1    5700 3000
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5944E031
P 3200 7200
F 0 "R5" V 3280 7200 50  0000 C CNN
F 1 "1K" V 3200 7200 50  0000 C CNN
F 2 ".pretty:R_0805_HandSoldering" V 3130 7200 50  0001 C CNN
F 3 "" H 3200 7200 50  0000 C CNN
	1    3200 7200
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 59452773
P 3200 7400
F 0 "R4" V 3280 7400 50  0000 C CNN
F 1 "1K" V 3200 7400 50  0000 C CNN
F 2 ".pretty:R_0805_HandSoldering" V 3130 7400 50  0001 C CNN
F 3 "" H 3200 7400 50  0000 C CNN
	1    3200 7400
	0    1    1    0   
$EndComp
Text Label 6450 4050 0    60   ~ 0
GPIO6
Text Label 5750 4150 2    60   ~ 0
GPIO16
Text Label 5750 4050 2    60   ~ 0
GPIO19
Text Label 5750 3950 2    60   ~ 0
GPIO13
$Comp
L +5V #PWR027
U 1 1 5945B2FD
P 6450 3850
F 0 "#PWR027" H 6450 3700 50  0001 C CNN
F 1 "+5V" H 6450 3990 50  0000 C CNN
F 2 "" H 6450 3850 50  0000 C CNN
F 3 "" H 6450 3850 50  0000 C CNN
	1    6450 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5945B34F
P 6450 4250
F 0 "#PWR028" H 6450 4000 50  0001 C CNN
F 1 "GND" H 6450 4100 50  0000 C CNN
F 2 "" H 6450 4250 50  0000 C CNN
F 3 "" H 6450 4250 50  0000 C CNN
	1    6450 4250
	1    0    0    -1  
$EndComp
$Comp
L ISP ISP1
U 1 1 594627ED
P 6100 4050
F 0 "ISP1" H 6100 4250 50  0000 C CNN
F 1 "ISP" H 6100 3850 50  0000 C CNN
F 2 ".pretty:Pin_Header_Straight_2x03_Pitch2.54mm" H 6100 2850 50  0001 C CNN
F 3 "" H 6100 2850 50  0000 C CNN
	1    6100 4050
	1    0    0    -1  
$EndComp
Text Notes 5400 3650 0    60   ~ 0
ISP Header
Wire Wire Line
	2900 5200 3050 5200
Wire Wire Line
	3350 6550 3500 6550
Wire Wire Line
	2900 7000 3100 7000
Connection ~ 900  7300
Wire Wire Line
	1000 7200 900  7200
Connection ~ 900  5200
Wire Wire Line
	900  5200 1000 5200
Wire Notes Line
	750  4850 4700 4850
Wire Notes Line
	750  7650 750  4850
Wire Notes Line
	4700 4850 4700 7650
Wire Wire Line
	3500 5800 3500 5950
Wire Wire Line
	2900 5800 3500 5800
Wire Wire Line
	2900 5700 3500 5700
Wire Wire Line
	3500 5950 3950 5950
Wire Wire Line
	3500 5700 3500 5500
Wire Wire Line
	3500 5500 3950 5500
Connection ~ 4250 5750
Wire Wire Line
	4250 5750 4350 5750
Wire Wire Line
	4250 5500 4250 5950
Wire Wire Line
	2900 6550 3050 6550
Wire Wire Line
	2900 6700 3050 6700
Connection ~ 900  7400
Wire Wire Line
	900  7400 1000 7400
Wire Wire Line
	900  7200 900  7450
Wire Wire Line
	1000 7300 900  7300
Connection ~ 900  5400
Connection ~ 900  5100
Wire Wire Line
	900  5400 1000 5400
Wire Wire Line
	1000 5100 900  5100
Connection ~ 9950 4100
Wire Wire Line
	9950 4000 9950 4400
Wire Notes Line
	8700 4500 8700 3650
Wire Notes Line
	10350 3650 10350 4500
Connection ~ 9950 4200
Wire Wire Line
	9950 4400 9150 4400
Wire Wire Line
	9150 4400 9150 4200
Wire Wire Line
	9150 5750 9050 5750
Wire Notes Line
	6200 7400 6200 5600
Wire Notes Line
	5400 7400 6200 7400
Wire Wire Line
	5850 7300 5750 7300
Wire Wire Line
	5750 7200 5850 7200
Wire Wire Line
	5700 1100 5600 1100
Wire Notes Line
	10350 4500 8700 4500
Wire Notes Line
	8700 3650 10350 3650
Wire Notes Line
	5400 5300 5400 4850
Wire Notes Line
	5400 5600 5400 7400
Wire Notes Line
	6200 5600 5400 5600
Wire Notes Line
	9550 4850 9550 5850
Wire Notes Line
	8700 4850 9550 4850
Wire Notes Line
	8700 5850 8700 4850
Wire Notes Line
	9550 5850 8700 5850
Wire Wire Line
	5850 6600 5750 6600
Wire Wire Line
	5850 6250 5750 6250
Wire Wire Line
	9950 3900 10100 3900
Wire Wire Line
	9150 4200 9000 4200
Wire Wire Line
	9000 3900 9150 3900
Wire Wire Line
	9000 4000 9150 4000
Wire Wire Line
	5700 5150 5800 5150
Wire Wire Line
	5700 5050 5800 5050
Wire Wire Line
	5850 6950 5750 6950
Wire Wire Line
	5750 6850 5850 6850
Wire Wire Line
	5750 6150 5850 6150
Wire Wire Line
	5750 6500 5850 6500
Wire Wire Line
	5850 5800 5750 5800
Wire Wire Line
	5750 5900 5850 5900
Wire Wire Line
	9150 5650 9050 5650
Wire Wire Line
	9050 5550 9150 5550
Wire Wire Line
	9150 5450 9050 5450
Wire Wire Line
	9050 5350 9150 5350
Wire Wire Line
	9150 5250 9050 5250
Wire Wire Line
	9050 5150 9150 5150
Wire Wire Line
	9150 5050 9050 5050
Connection ~ 1300 2450
Wire Wire Line
	1350 2450 1300 2450
Connection ~ 1300 3150
Wire Wire Line
	1350 1650 1300 1650
Wire Wire Line
	1300 1650 1300 3300
Wire Wire Line
	1300 3150 1350 3150
Connection ~ 2000 2850
Connection ~ 2000 2650
Connection ~ 2000 2150
Connection ~ 2000 1850
Wire Wire Line
	2000 1450 2000 3300
Wire Wire Line
	2000 1450 1950 1450
Wire Wire Line
	2000 1850 1950 1850
Wire Wire Line
	2000 2150 1950 2150
Wire Wire Line
	2000 2650 1950 2650
Wire Wire Line
	2000 2850 1950 2850
Wire Wire Line
	1950 1250 2000 1250
Wire Wire Line
	2000 1100 2000 1350
Wire Wire Line
	2000 1350 1950 1350
Connection ~ 2000 1250
Wire Wire Line
	1250 1100 1250 2050
Wire Wire Line
	1250 1250 1350 1250
Connection ~ 1250 1250
Wire Wire Line
	1250 2050 1350 2050
Wire Wire Line
	1200 1350 1350 1350
Wire Wire Line
	1200 1450 1350 1450
Wire Wire Line
	1200 1550 1350 1550
Wire Wire Line
	1200 1750 1350 1750
Wire Wire Line
	1200 1850 1350 1850
Wire Wire Line
	1350 1950 1200 1950
Wire Wire Line
	1200 2150 1350 2150
Wire Wire Line
	1350 2550 1200 2550
Wire Wire Line
	1350 2750 1200 2750
Wire Wire Line
	1200 2850 1350 2850
Wire Wire Line
	1350 2950 1200 2950
Wire Wire Line
	1200 3050 1350 3050
Wire Wire Line
	2050 1550 1950 1550
Wire Wire Line
	1950 1950 2050 1950
Wire Wire Line
	2050 2050 1950 2050
Wire Wire Line
	1950 2250 2050 2250
Wire Wire Line
	2050 2550 1950 2550
Wire Wire Line
	2050 2950 1950 2950
Wire Wire Line
	1950 3050 2050 3050
Wire Wire Line
	2050 3150 1950 3150
Wire Wire Line
	9800 2050 10600 2050
Wire Wire Line
	9800 1950 10600 1950
Wire Wire Line
	9000 1750 8850 1750
Wire Wire Line
	8850 1750 8850 2150
Wire Wire Line
	9000 1850 8850 1850
Connection ~ 8850 1850
Wire Wire Line
	8850 1950 9000 1950
Connection ~ 8850 1950
Wire Wire Line
	8850 2050 9000 2050
Connection ~ 8850 2050
Wire Wire Line
	9900 1100 9900 1750
Wire Wire Line
	9900 1750 9800 1750
Wire Wire Line
	9900 1350 9800 1350
Connection ~ 9900 1350
Wire Wire Line
	10050 1200 10050 1150
Wire Wire Line
	9900 1150 10550 1150
Wire Wire Line
	10300 1150 10300 1200
Connection ~ 10050 1150
Wire Wire Line
	10550 1150 10550 1200
Connection ~ 10300 1150
Connection ~ 9900 1150
Wire Wire Line
	10050 1850 10050 1500
Wire Wire Line
	9800 1850 10050 1850
Wire Wire Line
	10300 1500 10300 1950
Connection ~ 10300 1950
Wire Wire Line
	10550 1500 10550 2050
Connection ~ 10550 2050
Wire Wire Line
	9700 2550 9950 2550
Wire Wire Line
	9850 2550 9850 2750
Wire Wire Line
	9700 2450 9950 2450
Wire Wire Line
	9850 2450 9850 1850
Connection ~ 9850 1850
Connection ~ 9850 2550
Connection ~ 9850 2450
Wire Notes Line
	8700 3000 10950 3000
Wire Notes Line
	10950 3000 10950 850 
Wire Notes Line
	10950 850  8700 850 
Wire Notes Line
	8700 850  8700 3000
Wire Wire Line
	3350 6700 3500 6700
Wire Notes Line
	4700 7650 750  7650
Wire Notes Line
	5400 4850 6200 4850
Wire Notes Line
	6200 4850 6200 5300
Wire Notes Line
	6200 5300 5400 5300
Wire Wire Line
	6200 1200 6300 1200
Wire Wire Line
	6300 1200 6300 1400
Wire Wire Line
	6300 1400 5600 1400
Wire Wire Line
	5600 1400 5600 1550
Wire Wire Line
	5600 1550 5700 1550
Wire Wire Line
	6200 1650 6300 1650
Wire Wire Line
	6300 1650 6300 1850
Wire Wire Line
	6300 1850 5600 1850
Wire Wire Line
	5600 1850 5600 2000
Wire Wire Line
	5600 2000 5700 2000
Wire Wire Line
	6200 2100 6300 2100
Wire Wire Line
	6300 2100 6300 2300
Wire Wire Line
	6300 2300 5600 2300
Wire Wire Line
	5600 2300 5600 2450
Wire Wire Line
	5600 2450 5700 2450
Wire Wire Line
	6200 2550 6300 2550
Wire Wire Line
	6300 2550 6300 2750
Wire Wire Line
	6300 2750 5600 2750
Wire Wire Line
	5600 2750 5600 2900
Wire Wire Line
	5600 2900 5700 2900
Wire Wire Line
	6200 1100 6700 1100
Wire Wire Line
	6350 1100 6350 2900
Wire Wire Line
	6350 1550 6200 1550
Connection ~ 6350 1100
Wire Wire Line
	6350 2000 6200 2000
Connection ~ 6350 1550
Wire Wire Line
	6350 2450 6200 2450
Connection ~ 6350 2000
Wire Wire Line
	6350 2900 6200 2900
Connection ~ 6350 2450
Wire Wire Line
	3050 7300 2900 7300
Wire Wire Line
	3350 7300 3500 7300
Wire Wire Line
	3050 7200 3050 7400
Connection ~ 3050 7300
Wire Wire Line
	3350 7200 3350 7400
Connection ~ 3350 7300
Wire Notes Line
	850  3500 2500 3500
Wire Notes Line
	2500 3500 2500 850 
Wire Notes Line
	2500 850  850  850 
Wire Wire Line
	6350 4150 6450 4150
Wire Wire Line
	6450 4150 6450 4250
Wire Wire Line
	6350 3950 6450 3950
Wire Wire Line
	6450 3950 6450 3850
Wire Wire Line
	2900 5400 3050 5400
Wire Wire Line
	3050 5500 2900 5500
Wire Wire Line
	2900 5600 3050 5600
Wire Wire Line
	5750 4150 5850 4150
Wire Wire Line
	5850 4050 5750 4050
Wire Wire Line
	5750 3950 5850 3950
Wire Wire Line
	6350 4050 6450 4050
Wire Notes Line
	5400 4450 6750 4450
Wire Notes Line
	6750 4450 6750 3650
Wire Notes Line
	6750 3650 5400 3650
Wire Notes Line
	5400 3650 5400 4450
Wire Notes Line
	5400 3250 6850 3250
Wire Notes Line
	6850 3250 6850 850 
Wire Notes Line
	6850 850  5400 850 
Wire Notes Line
	5400 850  5400 3250
$Comp
L +5V #PWR029
U 1 1 5946A3FE
P 4050 1050
F 0 "#PWR029" H 4050 900 50  0001 C CNN
F 1 "+5V" H 4050 1190 50  0000 C CNN
F 2 "" H 4050 1050 50  0000 C CNN
F 3 "" H 4050 1050 50  0000 C CNN
	1    4050 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 5946A450
P 4450 1050
F 0 "#PWR030" H 4450 800 50  0001 C CNN
F 1 "GND" H 4450 900 50  0000 C CNN
F 2 "" H 4450 1050 50  0000 C CNN
F 3 "" H 4450 1050 50  0000 C CNN
	1    4450 1050
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG031
U 1 1 5946A549
P 4050 1250
F 0 "#FLG031" H 4050 1345 50  0001 C CNN
F 1 "PWR_FLAG" H 4050 1430 50  0000 C CNN
F 2 "" H 4050 1250 50  0000 C CNN
F 3 "" H 4050 1250 50  0000 C CNN
	1    4050 1250
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG032
U 1 1 5946A59B
P 4450 1250
F 0 "#FLG032" H 4450 1345 50  0001 C CNN
F 1 "PWR_FLAG" H 4450 1430 50  0000 C CNN
F 2 "" H 4450 1250 50  0000 C CNN
F 3 "" H 4450 1250 50  0000 C CNN
	1    4450 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 1050 4050 1250
Wire Wire Line
	4450 1050 4450 1250
$Comp
L aux_conn ADC6
U 1 1 5946D2A9
P 6050 5850
F 0 "ADC6" H 6050 6000 50  0000 C CNN
F 1 "aux_conn" V 6150 5850 50  0000 C CNN
F 2 ".pretty:Pin_Header_Straight_1x02_Pitch2.54mm" H 6050 5850 50  0001 C CNN
F 3 "" H 6050 5850 50  0000 C CNN
	1    6050 5850
	1    0    0    -1  
$EndComp
$Comp
L aux_conn PD3
U 1 1 5946D408
P 6050 6200
F 0 "PD3" H 6050 6350 50  0000 C CNN
F 1 "aux_conn" V 6150 6200 50  0000 C CNN
F 2 ".pretty:Pin_Header_Straight_1x02_Pitch2.54mm" H 6050 6200 50  0001 C CNN
F 3 "" H 6050 6200 50  0000 C CNN
	1    6050 6200
	1    0    0    -1  
$EndComp
$Comp
L aux_conn GPIO20
U 1 1 5946D47A
P 6050 6550
F 0 "GPIO20" H 6050 6700 50  0000 C CNN
F 1 "aux_conn" V 6150 6550 50  0000 C CNN
F 2 ".pretty:Pin_Header_Straight_1x02_Pitch2.54mm" H 6050 6550 50  0001 C CNN
F 3 "" H 6050 6550 50  0000 C CNN
	1    6050 6550
	1    0    0    -1  
$EndComp
$Comp
L aux_conn GPIO21
U 1 1 5946D4EB
P 6050 6900
F 0 "GPIO21" H 6050 7050 50  0000 C CNN
F 1 "aux_conn" V 6150 6900 50  0000 C CNN
F 2 ".pretty:Pin_Header_Straight_1x02_Pitch2.54mm" H 6050 6900 50  0001 C CNN
F 3 "" H 6050 6900 50  0000 C CNN
	1    6050 6900
	1    0    0    -1  
$EndComp
$Comp
L aux_conn GPIO26
U 1 1 5946D55F
P 6050 7250
F 0 "GPIO26" H 6050 7400 50  0000 C CNN
F 1 "aux_conn" V 6150 7250 50  0000 C CNN
F 2 ".pretty:Pin_Header_Straight_1x02_Pitch2.54mm" H 6050 7250 50  0001 C CNN
F 3 "" H 6050 7250 50  0000 C CNN
	1    6050 7250
	1    0    0    -1  
$EndComp
$Comp
L RPiGPIO P1
U 1 1 59470B68
P 1650 2200
F 0 "P1" H 1650 3250 50  0000 C CNN
F 1 "RPiGPIO" V 1700 2200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 1700 1250 50  0001 C CNN
F 3 "" H 1700 1250 50  0000 C CNN
	1    1650 2200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR033
U 1 1 5947169C
P 3650 1050
F 0 "#PWR033" H 3650 900 50  0001 C CNN
F 1 "+3.3V" H 3650 1190 50  0000 C CNN
F 2 "" H 3650 1050 50  0000 C CNN
F 3 "" H 3650 1050 50  0000 C CNN
	1    3650 1050
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG034
U 1 1 594716EE
P 3650 1250
F 0 "#FLG034" H 3650 1345 50  0001 C CNN
F 1 "PWR_FLAG" H 3650 1430 50  0000 C CNN
F 2 "" H 3650 1250 50  0000 C CNN
F 3 "" H 3650 1250 50  0000 C CNN
	1    3650 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 1050 3650 1250
NoConn ~ 1350 2250
NoConn ~ 1350 2350
NoConn ~ 1350 2650
NoConn ~ 1950 2750
NoConn ~ 1950 2450
NoConn ~ 1950 2350
NoConn ~ 1950 1750
NoConn ~ 2900 5950
NoConn ~ 2900 6050
NoConn ~ 2900 6150
NoConn ~ 2900 6250
NoConn ~ 2900 6350
NoConn ~ 2900 6450
NoConn ~ 2900 6900
NoConn ~ 2900 7100
NoConn ~ 2900 7200
NoConn ~ 2900 7400
NoConn ~ 2900 5300
NoConn ~ 2900 5100
NoConn ~ 1000 6550
NoConn ~ 9150 4100
NoConn ~ 6200 3000
NoConn ~ 1000 5700
Wire Wire Line
	900  5400 900  5050
Text Label 2050 3150 0    60   ~ 0
GPIO21
Wire Notes Line
	3450 1500 3450 850 
Wire Notes Line
	3450 850  4650 850 
Wire Notes Line
	4650 850  4650 1500
Wire Notes Line
	4650 1500 3450 1500
Text Notes 3450 850  0    60   ~ 0
PWR_FLAGS
Wire Notes Line
	850  850  850  3500
$Comp
L CONN_01X01 MountHole2
U 1 1 59476266
P 3900 2150
F 0 "MountHole2" H 3900 2250 50  0000 C CNN
F 1 "CONN_01X01" V 4000 2150 50  0000 C CNN
F 2 ".pretty:raspiMountingHole" H 3900 2150 50  0001 C CNN
F 3 "" H 3900 2150 50  0000 C CNN
	1    3900 2150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 MountHole4
U 1 1 594763CB
P 3900 2650
F 0 "MountHole4" H 3900 2750 50  0000 C CNN
F 1 "CONN_01X01" V 4000 2650 50  0000 C CNN
F 2 ".pretty:raspiMountingHole" H 3900 2650 50  0001 C CNN
F 3 "" H 3900 2650 50  0000 C CNN
	1    3900 2650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 MountHole1
U 1 1 59476454
P 3350 2150
F 0 "MountHole1" H 3350 2250 50  0000 C CNN
F 1 "CONN_01X01" V 3450 2150 50  0000 C CNN
F 2 ".pretty:raspiMountingHole" H 3350 2150 50  0001 C CNN
F 3 "" H 3350 2150 50  0000 C CNN
	1    3350 2150
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 MountHole3
U 1 1 594764EA
P 3350 2650
F 0 "MountHole3" H 3350 2750 50  0000 C CNN
F 1 "CONN_01X01" V 3450 2650 50  0000 C CNN
F 2 ".pretty:raspiMountingHole" H 3350 2650 50  0001 C CNN
F 3 "" H 3350 2650 50  0000 C CNN
	1    3350 2650
	-1   0    0    1   
$EndComp
NoConn ~ 3550 2150
NoConn ~ 3700 2150
NoConn ~ 3700 2650
NoConn ~ 3550 2650
NoConn ~ 3800 2750
$Comp
L R R6
U 1 1 595347C0
P 3200 6800
F 0 "R6" V 3150 6950 50  0000 C CNN
F 1 "1K" V 3200 6800 50  0000 C CNN
F 2 ".pretty:R_0805_HandSoldering" V 3350 7450 50  0000 C CNN
F 3 "" H 3200 6800 50  0000 C CNN
F 4 "1%" V 3200 6800 60  0001 C CNN "Tolerance"
	1    3200 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 6800 3500 6800
Text Label 3500 6800 0    60   ~ 0
UART_RXD
Wire Wire Line
	1950 1650 2050 1650
Text Label 2050 1650 0    60   ~ 0
UART_RXD
Wire Wire Line
	2900 6800 3050 6800
$EndSCHEMATC
