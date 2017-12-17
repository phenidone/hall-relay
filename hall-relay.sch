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
LIBS:wbt-device
LIBS:hall-relay-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Hall Effect Relay"
Date "2017-12-18"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R1
U 1 1 5A362965
P 6100 2250
F 0 "R1" V 6180 2250 50  0000 C CNN
F 1 "47k" V 6100 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6030 2250 50  0001 C CNN
F 3 "" H 6100 2250 50  0000 C CNN
	1    6100 2250
	1    0    0    -1  
$EndComp
$Comp
L HT71xx U1
U 1 1 5A362D13
P 4500 1950
F 0 "U1" H 4650 1754 60  0000 C CNN
F 1 "HT71xx" H 4500 2150 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-89-3" H 4500 1950 60  0001 C CNN
F 3 "" H 4500 1950 60  0000 C CNN
	1    4500 1950
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A362DAE
P 5000 2250
F 0 "C2" H 5025 2350 50  0000 L CNN
F 1 "1u" H 5025 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5038 2100 50  0001 C CNN
F 3 "" H 5000 2250 50  0000 C CNN
	1    5000 2250
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A362F21
P 4000 2250
F 0 "C1" H 4025 2350 50  0000 L CNN
F 1 "1u" H 4025 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4038 2100 50  0001 C CNN
F 3 "" H 4000 2250 50  0000 C CNN
	1    4000 2250
	1    0    0    -1  
$EndComp
Text Label 3450 1900 0    60   ~ 0
12V
Text Label 3650 2900 0    60   ~ 0
GND
$Comp
L D D1
U 1 1 5A363103
P 3350 2400
F 0 "D1" H 3350 2500 50  0000 C CNN
F 1 "LL4148" H 3350 2300 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 3350 2400 50  0001 C CNN
F 3 "" H 3350 2400 50  0000 C CNN
	1    3350 2400
	0    1    1    0   
$EndComp
Text Label 6650 2200 0    60   ~ 0
OD
$Comp
L Hall-A3212 U2
U 1 1 5A363EE7
P 5500 2400
F 0 "U2" H 5600 2150 60  0000 C CNN
F 1 "Hall-A3212" V 5250 2400 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5500 2400 60  0001 C CNN
F 3 "" H 5500 2400 60  0001 C CNN
	1    5500 2400
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x04 J1
U 1 1 5A36274C
P 2800 2200
F 0 "J1" H 2800 2650 50  0000 C TNN
F 1 "Screw_Terminal_1x04" V 2650 2200 50  0000 C TNN
F 2 "Terminals_Phoenix:TerminalBlock_Phoenix_MPT-2.54mm_4pol" H 2800 1775 50  0001 C CNN
F 3 "" H 2775 2400 50  0001 C CNN
	1    2800 2200
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q1
U 1 1 5A364DBD
P 6400 2500
F 0 "Q1" H 6600 2550 50  0000 L CNN
F 1 "AO3400" H 6600 2450 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6600 2600 50  0001 C CNN
F 3 "" H 6400 2500 50  0000 C CNN
	1    6400 2500
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 5A366503
P 6700 1900
F 0 "D2" H 6700 2000 50  0000 C CNN
F 1 "LED" H 6700 1800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 6700 1900 50  0001 C CNN
F 3 "" H 6700 1900 50  0000 C CNN
	1    6700 1900
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5A36658B
P 6300 1900
F 0 "R2" V 6380 1900 50  0000 C CNN
F 1 "1k" V 6300 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6230 1900 50  0001 C CNN
F 3 "" H 6300 1900 50  0000 C CNN
	1    6300 1900
	0    1    1    0   
$EndComp
Connection ~ 4000 1900
Wire Wire Line
	3000 2100 3500 2100
Wire Wire Line
	3500 2100 3500 2900
Wire Wire Line
	6500 2900 6500 2700
Wire Wire Line
	4000 2400 4000 2900
Connection ~ 4000 2900
Wire Wire Line
	3000 2300 3200 2300
Wire Wire Line
	3200 2300 3200 1900
Connection ~ 3200 1900
Wire Wire Line
	6500 2200 7000 2200
Wire Wire Line
	7000 1900 7000 3200
Wire Wire Line
	7000 3200 3200 3200
Wire Wire Line
	3200 3200 3200 2500
Wire Wire Line
	3200 2500 3000 2500
Wire Wire Line
	3000 1900 4100 1900
Wire Wire Line
	4500 2200 4500 2900
Connection ~ 4500 2900
Wire Wire Line
	4900 1900 6150 1900
Wire Wire Line
	5000 1900 5000 2100
Wire Wire Line
	5000 2400 5000 2900
Connection ~ 5000 2900
Connection ~ 5000 1900
Wire Wire Line
	6100 2400 6100 2500
Wire Wire Line
	5900 2500 6200 2500
Wire Wire Line
	5500 1900 5500 2000
Connection ~ 5500 1900
Wire Wire Line
	5900 2400 5900 2500
Connection ~ 6100 2500
Wire Wire Line
	5500 2800 5500 2900
Connection ~ 5500 2900
Wire Wire Line
	3500 2900 6500 2900
Connection ~ 6100 1900
Connection ~ 7000 2200
Wire Wire Line
	3200 2250 3350 2250
Connection ~ 3200 2250
Wire Wire Line
	3200 2550 3350 2550
Connection ~ 3200 2550
Wire Wire Line
	4000 1900 4000 2100
Wire Wire Line
	6500 2200 6500 2300
Wire Wire Line
	6100 2100 6100 1900
Wire Wire Line
	6450 1900 6550 1900
Wire Wire Line
	6850 1900 7000 1900
$EndSCHEMATC
