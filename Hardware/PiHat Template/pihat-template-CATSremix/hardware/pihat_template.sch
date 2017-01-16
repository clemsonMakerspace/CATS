EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:pihat_template-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 2
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
L Raspberry_Pi_+_Conn P3
U 1 1 54E92361
P 5750 3900
F 0 "P3" H 4650 5850 60  0000 C CNN
F 1 "Raspberry_Pi_+_Conn" H 6050 2450 60  0000 C CNN
F 2 "w_conn_strip:vasch_strip_20x2" H 5750 3900 60  0001 C CNN
F 3 "" H 5750 3900 60  0000 C CNN
F 4 "517-30340-6002" H 5750 3900 60  0001 C CNN "Mouser Part No."
	1    5750 3900
	-1   0    0    -1  
$EndComp
$Comp
L CAT24C32HU4I-GT3 U2
U 1 1 54E93419
P 3000 4400
F 0 "U2" H 2900 4550 60  0000 C CNN
F 1 "CAT24C32HU4I-GT3" H 3400 3600 60  0000 C CNN
F 2 "w_smd_dil:tssop-8" H 3000 4400 60  0001 C CNN
F 3 "" H 3000 4400 60  0000 C CNN
F 4 "698-CAT24C32YI-GT3" H 3000 4400 60  0001 C CNN "Mouser Part No."
	1    3000 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 54E93493
P 3900 5300
F 0 "#PWR01" H 3900 5300 30  0001 C CNN
F 1 "GND" H 3900 5230 30  0001 C CNN
F 2 "" H 3900 5300 60  0000 C CNN
F 3 "" H 3900 5300 60  0000 C CNN
	1    3900 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 54E93549
P 2400 5300
F 0 "#PWR02" H 2400 5300 30  0001 C CNN
F 1 "GND" H 2400 5230 30  0001 C CNN
F 2 "" H 2400 5300 60  0000 C CNN
F 3 "" H 2400 5300 60  0000 C CNN
	1    2400 5300
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 54E935B8
P 2000 4650
F 0 "R1" V 2080 4650 40  0000 C CNN
F 1 "1k" V 2007 4651 40  0000 C CNN
F 2 "w_smd_resistors:r_0402" V 1930 4650 30  0001 C CNN
F 3 "" H 2000 4650 30  0000 C CNN
F 4 "754-RR0510P-102D" V 2000 4650 60  0001 C CNN "Mouser Part No."
	1    2000 4650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 54E93748
P 950 5000
F 0 "P1" H 950 5150 50  0000 C CNN
F 1 "CONN_01X02" V 1050 5000 50  0000 C CNN
F 2 "w_pin_strip:pin_strip_2" H 950 5000 60  0001 C CNN
F 3 "" H 950 5000 60  0000 C CNN
	1    950  5000
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 54E93A97
P 2000 4150
F 0 "#PWR03" H 2000 4110 30  0001 C CNN
F 1 "+3.3V" H 2000 4260 30  0000 C CNN
F 2 "" H 2000 4150 60  0000 C CNN
F 3 "" H 2000 4150 60  0000 C CNN
	1    2000 4150
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 54E93F03
P 3850 4000
F 0 "R3" V 3930 4000 40  0000 C CNN
F 1 "3.9k" V 3857 4001 40  0000 C CNN
F 2 "w_smd_resistors:r_0402" V 3780 4000 30  0001 C CNN
F 3 "" H 3850 4000 30  0000 C CNN
F 4 "71-CRCW04023K90FKED" V 3850 4000 60  0001 C CNN "Mouser Part No."
	1    3850 4000
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 54E93F5E
P 4100 4000
F 0 "R5" V 4180 4000 40  0000 C CNN
F 1 "3.9k" V 4107 4001 40  0000 C CNN
F 2 "w_smd_resistors:r_0402" V 4030 4000 30  0001 C CNN
F 3 "" H 4100 4000 30  0000 C CNN
F 4 "71-CRCW04023K90FKED" V 4100 4000 60  0001 C CNN "Mouser Part No."
	1    4100 4000
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP1
U 1 1 54E9499A
P 1600 5200
F 0 "JP1" H 1600 5350 60  0000 C CNN
F 1 "JUMPER" H 1600 5120 40  0000 C CNN
F 2 "w_smd_resistors:r_0603" H 1600 5200 60  0001 C CNN
F 3 "" H 1600 5200 60  0000 C CNN
	1    1600 5200
	1    0    0    1   
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 54E95EC8
P 4100 3650
F 0 "#PWR04" H 4100 3610 30  0001 C CNN
F 1 "+3.3V" H 4100 3760 30  0000 C CNN
F 2 "" H 4100 3650 60  0000 C CNN
F 3 "" H 4100 3650 60  0000 C CNN
	1    4100 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 54E963F9
P 4500 3600
F 0 "#PWR05" H 4500 3600 30  0001 C CNN
F 1 "GND" H 4500 3530 30  0001 C CNN
F 2 "" H 4500 3600 60  0000 C CNN
F 3 "" H 4500 3600 60  0000 C CNN
	1    4500 3600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 54E96A79
P 3000 2100
F 0 "#PWR06" H 3000 2190 20  0001 C CNN
F 1 "+5V" H 3000 2190 30  0000 C CNN
F 2 "" H 3000 2100 60  0000 C CNN
F 3 "" H 3000 2100 60  0000 C CNN
	1    3000 2100
	0    -1   1    0   
$EndComp
$Comp
L LM3489 U1
U 1 1 54E983ED
P 2850 9000
F 0 "U1" H 2450 9050 60  0000 C CNN
F 1 "LM3489" H 3350 8400 60  0000 C CNN
F 2 "w_smd_dil:msoic-8" H 2850 9000 60  0001 C CNN
F 3 "" H 2850 9000 60  0000 C CNN
F 4 "926-LM3489MM/NOPB" H 2850 9000 60  0001 C CNN "Mouser Part No."
	1    2850 9000
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 54E985D4
P 2000 8700
F 0 "R2" V 2080 8700 40  0000 C CNN
F 1 "24k" V 2007 8701 40  0000 C CNN
F 2 "w_smd_resistors:r_0402" V 1930 8700 30  0001 C CNN
F 3 "" H 2000 8700 30  0000 C CNN
F 4 "71-CRCW0402-24K-E3" V 2000 8700 60  0001 C CNN "Mouser Part No."
	1    2000 8700
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 54E98A38
P 1550 9550
F 0 "C2" H 1550 9650 40  0000 L CNN
F 1 "0.1uf" H 1556 9465 40  0000 L CNN
F 2 "w_smd_cap:c_0402" H 1588 9400 30  0001 C CNN
F 3 "" H 1550 9550 60  0000 C CNN
F 4 "810-C1005X5R1H104K" H 1550 9550 60  0001 C CNN "Mouser Part No."
	1    1550 9550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 54E98C85
P 1550 10100
F 0 "#PWR07" H 1550 10100 30  0001 C CNN
F 1 "GND" H 1550 10030 30  0001 C CNN
F 2 "" H 1550 10100 60  0000 C CNN
F 3 "" H 1550 10100 60  0000 C CNN
	1    1550 10100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 54E98DFB
P 3050 10100
F 0 "#PWR08" H 3050 10100 30  0001 C CNN
F 1 "GND" H 3050 10030 30  0001 C CNN
F 2 "" H 3050 10100 60  0000 C CNN
F 3 "" H 3050 10100 60  0000 C CNN
	1    3050 10100
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 54E990D4
P 1100 8650
F 0 "C1" H 1150 8750 40  0000 L CNN
F 1 "50uf/50v" H 1150 8550 40  0000 L CNN
F 2 "w_smd_cap:c_elec_6.3x7.7" H 1200 8500 30  0001 C CNN
F 3 "" H 1100 8650 300 0000 C CNN
F 4 "647-UUR1H470MCL6GS" H 1100 8650 60  0001 C CNN "Mouser Part No."
	1    1100 8650
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 54E992BB
P 1800 8700
F 0 "C3" H 1800 8800 40  0000 L CNN
F 1 "1nf" H 1806 8615 40  0000 L CNN
F 2 "w_smd_cap:c_0402" H 1838 8550 30  0001 C CNN
F 3 "" H 1800 8700 60  0000 C CNN
F 4 "810-C1005C0G2A102J5C" H 1800 8700 60  0001 C CNN "Mouser Part No."
	1    1800 8700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 54E99B35
P 1100 8950
F 0 "#PWR09" H 1100 8950 30  0001 C CNN
F 1 "GND" H 1100 8880 30  0001 C CNN
F 2 "" H 1100 8950 60  0000 C CNN
F 3 "" H 1100 8950 60  0000 C CNN
	1    1100 8950
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 54E99E56
P 3900 8700
F 0 "R4" V 3980 8700 40  0000 C CNN
F 1 "270" V 3907 8701 40  0000 C CNN
F 2 "w_smd_resistors:r_0402" V 3830 8700 30  0001 C CNN
F 3 "" H 3900 8700 30  0000 C CNN
F 4 "667-ERJ-P6WJ271V" V 3900 8700 60  0001 C CNN "Mouser Part No."
	1    3900 8700
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D1
U 1 1 54E9A29D
P 4200 8700
F 0 "D1" H 4200 8800 40  0000 C CNN
F 1 "DIODESCH" H 4200 8600 40  0000 C CNN
F 2 "w_smd_diode:do214aa" H 4200 8700 60  0001 C CNN
F 3 "" H 4200 8700 60  0000 C CNN
F 4 "512-MBRS140" H 4200 8700 60  0001 C CNN "Mouser Part No."
	1    4200 8700
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 54E9A542
P 4600 8200
F 0 "L1" V 4550 8200 40  0000 C CNN
F 1 "22uH" V 4700 8200 40  0000 C CNN
F 2 "w_smd_inductors:inductor_smd_8x5mm" H 4600 8200 60  0001 C CNN
F 3 "" H 4600 8200 60  0000 C CNN
F 4 "652-SRN8040-220M" V 4600 8200 60  0001 C CNN "Mouser Part No."
	1    4600 8200
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 54E9A686
P 5050 8700
F 0 "R6" V 5130 8700 40  0000 C CNN
F 1 "30k" V 5057 8701 40  0000 C CNN
F 2 "w_smd_resistors:r_0402" V 4980 8700 30  0001 C CNN
F 3 "" H 5050 8700 30  0000 C CNN
F 4 "594-MCT06030C3002FP5" V 5050 8700 60  0001 C CNN "Mouser Part No."
	1    5050 8700
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 54E9A704
P 5050 9650
F 0 "R7" V 5130 9650 40  0000 C CNN
F 1 "10k" V 5057 9651 40  0000 C CNN
F 2 "w_smd_resistors:r_0402" V 4980 9650 30  0001 C CNN
F 3 "" H 5050 9650 30  0000 C CNN
F 4 "71-CRCW0603-10K-E3" V 5050 9650 60  0001 C CNN "Mouser Part No."
	1    5050 9650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 54E9A81E
P 5050 10100
F 0 "#PWR010" H 5050 10100 30  0001 C CNN
F 1 "GND" H 5050 10030 30  0001 C CNN
F 2 "" H 5050 10100 60  0000 C CNN
F 3 "" H 5050 10100 60  0000 C CNN
	1    5050 10100
	1    0    0    -1  
$EndComp
$Comp
L FDC5614P U3
U 1 1 54E9C27B
P 3250 8350
F 0 "U3" H 3100 8600 60  0000 C CNN
F 1 "FDC5614P" H 3250 8100 60  0000 C CNN
F 2 "w_smd_trans:sot23-6" H 3100 8500 60  0001 C CNN
F 3 "" H 3100 8500 60  0000 C CNN
F 4 "512-FDC5614P" H 3250 8350 60  0001 C CNN "Mouser Part No."
	1    3250 8350
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 54E9DC45
P 5600 7950
F 0 "#PWR011" H 5600 8040 20  0001 C CNN
F 1 "+5V" H 5600 8040 30  0000 C CNN
F 2 "" H 5600 7950 60  0000 C CNN
F 3 "" H 5600 7950 60  0000 C CNN
	1    5600 7950
	-1   0    0    -1  
$EndComp
$Comp
L +24V #PWR012
U 1 1 54F050C6
P 1100 8050
F 0 "#PWR012" H 1100 8000 20  0001 C CNN
F 1 "+24V" H 1100 8150 30  0000 C CNN
F 2 "" H 1100 8050 60  0000 C CNN
F 3 "" H 1100 8050 60  0000 C CNN
	1    1100 8050
	1    0    0    -1  
$EndComp
$Sheet
S 3100 2000 1250 200 
U 54F145DC
F0 "Back Power Protection" 47
F1 "Ideal_Diode.sch" 47
F2 "5V_SUPPLY" I L 3100 2100 60 
F3 "5V_MCU" I R 4350 2100 60 
$EndSheet
Text Notes 3000 1450 0    157  Italic 31
Raspberry Pi Connection
Text Notes 4900 6850 0    157  Italic 31
Power Managment Module
$Comp
L LM1117IMPX-ADJ U4
U 1 1 54F307E9
P 8100 8300
F 0 "U4" H 7850 8600 60  0000 C CNN
F 1 "LM1117IMPX-ADJ" H 8550 8000 60  0000 C CNN
F 2 "w_smd_trans:sot223" H 8100 8250 60  0001 C CNN
F 3 "" H 8100 8250 60  0000 C CNN
F 4 "926-M1117IMPXADJNOPB" H 8100 8300 60  0001 C CNN "Mouser Part No."
	1    8100 8300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 54F3143A
P 7350 7950
F 0 "#PWR013" H 7350 8040 20  0001 C CNN
F 1 "+5V" H 7350 8040 30  0000 C CNN
F 2 "" H 7350 7950 60  0000 C CNN
F 3 "" H 7350 7950 60  0000 C CNN
	1    7350 7950
	-1   0    0    -1  
$EndComp
$Comp
L CP C6
U 1 1 54F356B7
P 7350 8650
F 0 "C6" H 7400 8750 50  0000 L CNN
F 1 "10uf/6.3V" H 7400 8550 50  0000 L CNN
F 2 "w_smd_cap:c_elec_4x5.3" H 7450 8500 30  0001 C CNN
F 3 "" H 7350 8650 300 0000 C CNN
F 4 "5985-AVS16V100-F" H 7350 8650 60  0001 C CNN "Mouser Part No."
	1    7350 8650
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 54F36302
P 8100 9300
F 0 "R8" V 8180 9300 50  0000 C CNN
F 1 "390" V 8107 9301 50  0000 C CNN
F 2 "w_smd_resistors:r_0402" V 8030 9300 30  0001 C CNN
F 3 "" H 8100 9300 30  0000 C CNN
F 4 "594-MCT06030C3900FP5" V 8100 9300 60  0001 C CNN "Mouser Part No."
	1    8100 9300
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 54F36377
P 9150 8600
F 0 "R9" V 9230 8600 50  0000 C CNN
F 1 "240" V 9157 8601 50  0000 C CNN
F 2 "w_smd_resistors:r_0402" V 9080 8600 30  0001 C CNN
F 3 "" H 9150 8600 30  0000 C CNN
F 4 "754-RR0816P-241D" V 9150 8600 60  0001 C CNN "Mouser Part No."
	1    9150 8600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 54F37150
P 8100 9650
F 0 "#PWR014" H 8100 9650 30  0001 C CNN
F 1 "GND" H 8100 9580 30  0001 C CNN
F 2 "" H 8100 9650 60  0000 C CNN
F 3 "" H 8100 9650 60  0000 C CNN
	1    8100 9650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 54F379A8
P 7350 9050
F 0 "#PWR015" H 7350 9050 30  0001 C CNN
F 1 "GND" H 7350 8980 30  0001 C CNN
F 2 "" H 7350 9050 60  0000 C CNN
F 3 "" H 7350 9050 60  0000 C CNN
	1    7350 9050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 54F3D72C
P 9900 9100
F 0 "#PWR016" H 9900 9100 30  0001 C CNN
F 1 "GND" H 9900 9030 30  0001 C CNN
F 2 "" H 9900 9100 60  0000 C CNN
F 3 "" H 9900 9100 60  0000 C CNN
	1    9900 9100
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 54F3E98A
P 10550 8550
F 0 "D3" H 10550 8650 50  0000 C CNN
F 1 "LED" H 10550 8450 50  0000 C CNN
F 2 "w_smd_leds:Led_0603" H 10550 8550 60  0001 C CNN
F 3 "" H 10550 8550 60  0000 C CNN
F 4 "743-HT-191USD" H 10550 8550 60  0001 C CNN "Mouser Part No."
	1    10550 8550
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 54F40F53
P 10550 9200
F 0 "R10" V 10630 9200 50  0000 C CNN
F 1 "360" V 10557 9201 50  0000 C CNN
F 2 "w_smd_resistors:r_0402" V 10480 9200 30  0001 C CNN
F 3 "" H 10550 9200 30  0000 C CNN
F 4 "71-CRCW0603316RFKEB" V 10550 9200 60  0001 C CNN "Mouser Part No."
	1    10550 9200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 54F4127D
P 10550 9600
F 0 "#PWR017" H 10550 9600 30  0001 C CNN
F 1 "GND" H 10550 9530 30  0001 C CNN
F 2 "" H 10550 9600 60  0000 C CNN
F 3 "" H 10550 9600 60  0000 C CNN
	1    10550 9600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR018
U 1 1 54F4475B
P 10550 7950
F 0 "#PWR018" H 10550 7910 30  0001 C CNN
F 1 "+3.3V" H 10550 8060 30  0000 C CNN
F 2 "" H 10550 7950 60  0000 C CNN
F 3 "" H 10550 7950 60  0000 C CNN
	1    10550 7950
	1    0    0    -1  
$EndComp
Text Notes 2800 8000 0    60   ~ 0
5v @ 2.1A DC/DC supply
Text Notes 8450 7900 0    60   ~ 0
3.3v @ 1.5A LDO supply
$Comp
L C C5
U 1 1 54EE7CB1
P 4800 8700
F 0 "C5" H 4800 8800 40  0000 L CNN
F 1 "0.1uf" H 4806 8615 40  0000 L CNN
F 2 "w_smd_cap:c_0402" H 4838 8550 30  0001 C CNN
F 3 "" H 4800 8700 60  0000 C CNN
F 4 "810-C1005X5R1H104K" H 4800 8700 60  0001 C CNN "Mouser Part No."
	1    4800 8700
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 54EE8291
P 9500 8550
F 0 "C7" H 9500 8650 40  0000 L CNN
F 1 "0.1uf" H 9506 8465 40  0000 L CNN
F 2 "w_smd_cap:c_0402" H 9538 8400 30  0001 C CNN
F 3 "" H 9500 8550 60  0000 C CNN
F 4 "810-C1005X5R1H104K" H 9500 8550 60  0001 C CNN "Mouser Part No."
	1    9500 8550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 54F65B78
P 3350 6950
F 0 "P2" H 3350 7100 50  0000 C CNN
F 1 "CONN_01X02" V 3450 6950 50  0000 C CNN
F 2 "w_conn_mkds:mkds_1,5-2" H 3350 6950 60  0001 C CNN
F 3 "" H 3350 6950 60  0000 C CNN
F 4 "651-1904383" H 3350 6950 60  0001 C CNN "Mouser Part No."
	1    3350 6950
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR019
U 1 1 54F662FB
P 3050 6750
F 0 "#PWR019" H 3050 6700 20  0001 C CNN
F 1 "+24V" H 3050 6850 30  0000 C CNN
F 2 "" H 3050 6750 60  0000 C CNN
F 3 "" H 3050 6750 60  0000 C CNN
	1    3050 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 54F66353
P 3050 7150
F 0 "#PWR020" H 3050 7150 30  0001 C CNN
F 1 "GND" H 3050 7080 30  0001 C CNN
F 2 "" H 3050 7150 60  0000 C CNN
F 3 "" H 3050 7150 60  0000 C CNN
	1    3050 7150
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 551D5AC8
P 2350 4700
F 0 "C4" H 2350 4800 40  0000 L CNN
F 1 "0.1uf" H 2356 4615 40  0000 L CNN
F 2 "w_smd_cap:c_0402" H 2388 4550 30  0001 C CNN
F 3 "" H 2350 4700 60  0000 C CNN
F 4 "810-C1005X5R1H104K" H 2350 4700 60  0001 C CNN "Mouser Part No."
	1    2350 4700
	1    0    0    -1  
$EndComp
Connection ~ 4100 3700
Wire Wire Line
	3850 3700 3850 3850
Wire Wire Line
	4100 3700 3850 3700
Wire Wire Line
	4100 3650 4100 3850
Connection ~ 4100 4500
Wire Wire Line
	4100 4150 4100 4500
Connection ~ 3850 4400
Wire Wire Line
	3850 4150 3850 4400
Wire Wire Line
	3750 4500 4350 4500
Wire Wire Line
	4350 4500 4350 4300
Wire Wire Line
	4350 4300 4650 4300
Wire Wire Line
	4250 4200 4650 4200
Wire Wire Line
	4250 4400 4250 4200
Wire Wire Line
	3750 4400 4250 4400
Connection ~ 1250 4950
Wire Wire Line
	1250 5200 1250 4950
Wire Wire Line
	1300 5200 1250 5200
Connection ~ 2000 5200
Wire Wire Line
	2000 5050 2000 5200
Wire Wire Line
	1150 5050 2000 5050
Connection ~ 2000 4950
Wire Wire Line
	2000 4950 2000 4800
Wire Wire Line
	1150 4950 2550 4950
Connection ~ 2000 4250
Wire Wire Line
	2350 4250 2000 4250
Wire Wire Line
	2350 4250 2350 4550
Wire Wire Line
	2550 4400 2350 4400
Wire Wire Line
	2000 4150 2000 4500
Connection ~ 2400 5200
Wire Wire Line
	1900 5200 2400 5200
Wire Wire Line
	2400 5050 2400 5300
Wire Wire Line
	2350 5050 2550 5050
Connection ~ 3900 4950
Wire Wire Line
	3750 4850 3900 4850
Connection ~ 3900 5050
Wire Wire Line
	3750 4950 3900 4950
Wire Wire Line
	3900 4850 3900 5300
Wire Wire Line
	3750 5050 3900 5050
Wire Wire Line
	4500 3500 4650 3500
Wire Wire Line
	4500 2800 4500 3600
Wire Wire Line
	4650 2800 4500 2800
Connection ~ 4500 3500
Wire Wire Line
	4650 3400 4500 3400
Connection ~ 4500 3400
Connection ~ 4500 3300
Connection ~ 4500 3000
Wire Wire Line
	4650 2900 4500 2900
Connection ~ 4500 2900
Wire Wire Line
	4350 2100 4650 2100
Wire Wire Line
	4550 2200 4650 2200
Wire Wire Line
	4550 1800 4550 2200
Connection ~ 4550 2100
Connection ~ 2350 4400
Wire Wire Line
	2350 4850 2350 5050
Connection ~ 2400 5050
Wire Wire Line
	1800 9100 2100 9100
Wire Wire Line
	2000 8850 2000 9100
Wire Wire Line
	2000 8200 2000 8550
Wire Wire Line
	1100 8200 2950 8200
Wire Wire Line
	1550 8200 1550 9400
Wire Wire Line
	1550 9250 2100 9250
Connection ~ 1550 9250
Wire Wire Line
	1550 9700 1550 10100
Wire Wire Line
	3050 9850 3050 10100
Wire Wire Line
	3800 9400 3900 9400
Wire Wire Line
	3900 9400 3900 9950
Wire Wire Line
	3050 9950 4200 9950
Connection ~ 3050 9950
Wire Wire Line
	1800 8200 1800 8550
Connection ~ 1800 8200
Wire Wire Line
	1800 8850 1800 9100
Connection ~ 2000 9100
Wire Wire Line
	1100 8050 1100 8500
Connection ~ 1550 8200
Wire Wire Line
	1100 8800 1100 8950
Wire Wire Line
	3900 8200 3900 8550
Wire Wire Line
	3900 9100 3800 9100
Wire Wire Line
	3900 8850 3900 9100
Wire Wire Line
	3800 9250 5050 9250
Wire Wire Line
	3550 8200 4300 8200
Wire Wire Line
	4200 8200 4200 8550
Connection ~ 4200 8200
Wire Wire Line
	5050 9800 5050 10100
Wire Wire Line
	5050 8850 5050 9500
Connection ~ 5050 9250
Wire Wire Line
	5050 8200 5050 8550
Wire Wire Line
	4900 8200 5600 8200
Wire Wire Line
	4800 8400 4800 8550
Wire Wire Line
	4800 8400 5050 8400
Connection ~ 5050 8400
Wire Wire Line
	4800 8850 4800 9250
Connection ~ 4800 9250
Wire Wire Line
	4200 9950 4200 8850
Connection ~ 3900 9950
Connection ~ 5050 8200
Wire Wire Line
	2950 8500 2850 8500
Wire Wire Line
	2850 8500 2850 8700
Connection ~ 3900 8200
Wire Wire Line
	3550 8300 3650 8300
Wire Wire Line
	3650 8200 3650 8500
Connection ~ 3650 8200
Wire Wire Line
	3650 8400 3550 8400
Connection ~ 3650 8300
Wire Wire Line
	3650 8500 3550 8500
Connection ~ 3650 8400
Connection ~ 2000 8200
Wire Wire Line
	3000 2100 3100 2100
Wire Wire Line
	5600 8200 5600 7950
Connection ~ 1100 8200
Wire Wire Line
	7350 7950 7350 8500
Connection ~ 7350 8150
Wire Wire Line
	8750 8150 10550 8150
Wire Wire Line
	9150 8150 9150 8450
Wire Wire Line
	8100 8850 8100 9150
Wire Wire Line
	9150 8750 9150 8950
Connection ~ 8100 8950
Wire Wire Line
	8100 9450 8100 9650
Wire Wire Line
	7350 8800 7350 9050
Wire Wire Line
	9500 8150 9500 8400
Connection ~ 9150 8150
Wire Wire Line
	9500 8700 9500 8950
Wire Wire Line
	9900 8150 9900 8400
Connection ~ 9500 8150
Wire Wire Line
	9150 8950 8100 8950
Wire Wire Line
	9900 8700 9900 9100
Wire Wire Line
	9500 8950 9900 8950
Connection ~ 9900 8950
Wire Wire Line
	10550 7950 10550 8350
Connection ~ 9900 8150
Wire Wire Line
	10550 8750 10550 9050
Wire Wire Line
	10550 9350 10550 9600
Connection ~ 10550 8150
Wire Wire Line
	3150 6900 3050 6900
Wire Wire Line
	3050 6900 3050 6750
Wire Wire Line
	3150 7000 3050 7000
Wire Wire Line
	3050 7000 3050 7150
Wire Notes Line
	600  5550 8150 5550
Wire Notes Line
	8150 5550 8150 850 
Wire Notes Line
	8150 850  600  850 
Wire Notes Line
	600  850  600  5550
Wire Notes Line
	650  6000 650  10950
Wire Notes Line
	650  10950 11050 10950
Wire Notes Line
	11050 10950 11050 6000
Wire Notes Line
	11050 6000 650  6000
$Comp
L C C8
U 1 1 567BDDCB
P 9900 8550
F 0 "C8" H 9900 8650 40  0000 L CNN
F 1 "1uf" H 9906 8465 40  0000 L CNN
F 2 "w_smd_cap:c_0402" H 9938 8400 30  0001 C CNN
F 3 "" H 9900 8550 60  0000 C CNN
F 4 "810-C1005X5R1H104K" H 9900 8550 60  0001 C CNN "Mouser Part No."
	1    9900 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 8150 7350 8150
$Comp
L GND #PWR021
U 1 1 58067A33
P 8100 9650
F 0 "#PWR021" H 8100 9650 30  0001 C CNN
F 1 "GND" H 8100 9580 30  0001 C CNN
F 2 "" H 8100 9650 60  0000 C CNN
F 3 "" H 8100 9650 60  0000 C CNN
	1    8100 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2750 9150 2750
Wire Wire Line
	8800 3050 9150 3050
Text Label 8800 3050 0    60   ~ 0
GPIO19
Text Label 8800 2750 0    60   ~ 0
GPIO26
Wire Wire Line
	8800 3250 9150 3250
Text Label 8800 3250 0    60   ~ 0
GPIO13
Wire Wire Line
	8650 2900 9600 2900
Text Label 8650 2900 2    60   ~ 0
5V
Wire Wire Line
	7200 5100 7450 5100
Wire Wire Line
	7200 4400 7450 4400
Text Label 7450 4400 2    60   ~ 0
GPIO19
Text Label 7450 5100 2    60   ~ 0
GPIO26
Wire Wire Line
	7200 4000 7450 4000
Text Label 7450 4000 2    60   ~ 0
GPIO13
$Comp
L CONN_01X03 P5
U 1 1 5806FFD1
P 9900 5000
F 0 "P5" H 9900 5200 50  0000 C CNN
F 1 "CONN_01X03" V 10000 5000 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 9900 5000 50  0001 C CNN
F 3 "" H 9900 5000 50  0000 C CNN
	1    9900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3850 9700 3850
Wire Wire Line
	9700 3950 9300 3950
Wire Wire Line
	9700 4050 9300 4050
Wire Wire Line
	9700 4150 9300 4150
Wire Wire Line
	9700 4250 9300 4250
Wire Wire Line
	9700 4350 9300 4350
Wire Wire Line
	9700 4450 9300 4450
Wire Wire Line
	9700 4900 9300 4900
Wire Wire Line
	9700 5000 9300 5000
Text Label 9300 3850 0    60   ~ 0
GPIO23
Text Label 9300 3950 0    60   ~ 0
GPIO24
Text Label 9300 4050 0    60   ~ 0
GPIO25
Text Label 9300 4150 0    60   ~ 0
GPIO12
Text Label 9300 4250 0    60   ~ 0
GPIO16
Text Label 9300 4350 0    60   ~ 0
GPIO21
Text Label 9300 4450 0    60   ~ 0
GPIO20
Text Label 9300 4900 0    60   ~ 0
GPIO18
$Comp
L GND #PWR022
U 1 1 58070F97
P 9300 5000
F 0 "#PWR022" H 9300 4750 50  0001 C CNN
F 1 "GND" H 9300 4850 50  0000 C CNN
F 2 "" H 9300 5000 50  0000 C CNN
F 3 "" H 9300 5000 50  0000 C CNN
	1    9300 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 4800 7200 4800
Wire Wire Line
	7200 4900 7600 4900
Wire Wire Line
	7200 5000 7600 5000
Wire Wire Line
	7200 3900 7600 3900
Wire Wire Line
	7200 4100 7600 4100
Wire Wire Line
	7200 4600 7600 4600
Wire Wire Line
	7200 4500 7600 4500
Text Label 7600 4800 2    60   ~ 0
GPIO23
Text Label 7600 4900 2    60   ~ 0
GPIO24
Text Label 7600 5000 2    60   ~ 0
GPIO25
Text Label 7600 3900 2    60   ~ 0
GPIO12
Text Label 7600 4100 2    60   ~ 0
GPIO16
Text Label 7600 4600 2    60   ~ 0
GPIO21
Text Label 7600 4500 2    60   ~ 0
GPIO20
Wire Wire Line
	7200 4300 7600 4300
Text Label 7600 4300 2    60   ~ 0
GPIO18
$Comp
L CONN_01X04 P6
U 1 1 58075F35
P 10100 3100
F 0 "P6" H 10100 3350 50  0000 C CNN
F 1 "CONN_01X04" V 10200 3100 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 10100 3100 50  0001 C CNN
F 3 "" H 10100 3100 50  0000 C CNN
	1    10100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 3250 9900 3250
Wire Wire Line
	9900 3150 9500 3150
Wire Wire Line
	9500 3150 9500 3050
Wire Wire Line
	9500 3050 9450 3050
Wire Wire Line
	9450 2750 9700 2750
Wire Wire Line
	9600 2900 9600 3050
Wire Wire Line
	9600 3050 9900 3050
Wire Wire Line
	9700 2750 9700 2950
Wire Wire Line
	9700 2950 9900 2950
$Comp
L R R13
U 1 1 580A8B38
P 9300 2750
F 0 "R13" V 9380 2750 50  0000 C CNN
F 1 "R" V 9300 2750 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 9230 2750 50  0001 C CNN
F 3 "" H 9300 2750 50  0000 C CNN
	1    9300 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R14
U 1 1 580A8C1D
P 9300 3050
F 0 "R14" V 9380 3050 50  0000 C CNN
F 1 "R" V 9300 3050 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 9230 3050 50  0001 C CNN
F 3 "" H 9300 3050 50  0000 C CNN
	1    9300 3050
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 580A8CC4
P 9300 3250
F 0 "R15" V 9380 3250 50  0000 C CNN
F 1 "R" V 9300 3250 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 9230 3250 50  0001 C CNN
F 3 "" H 9300 3250 50  0000 C CNN
	1    9300 3250
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X08 P4
U 1 1 580B9AA6
P 9900 4100
F 0 "P4" H 9900 4550 50  0000 C CNN
F 1 "CONN_01X08" V 10000 4100 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x08" H 9900 4100 50  0001 C CNN
F 3 "" H 9900 4100 50  0000 C CNN
	1    9900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3000 4650 3000
Wire Wire Line
	4650 3100 4500 3100
Connection ~ 4500 3100
Wire Wire Line
	4650 3200 4500 3200
Connection ~ 4500 3200
Wire Wire Line
	4650 3300 4500 3300
Wire Wire Line
	3600 1800 4550 1800
Text Label 3600 1800 2    60   ~ 0
5V
$EndSCHEMATC
