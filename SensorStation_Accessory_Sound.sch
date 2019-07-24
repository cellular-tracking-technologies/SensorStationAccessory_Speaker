EESchema Schematic File Version 4
LIBS:SensorStation_Accessory_Sound-cache
EELAYER 26 0
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
L Connector:Conn_01x06_Female J1
U 1 1 5D04D3EA
P 2050 1950
F 0 "J1" H 2077 1926 50  0000 L CNN
F 1 "SensorStation Accessory Plug" H 2077 1835 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 2050 1950 50  0001 C CNN
F 3 "~" H 2050 1950 50  0001 C CNN
	1    2050 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D04D4CF
P 1150 1950
F 0 "#PWR0101" H 1150 1700 50  0001 C CNN
F 1 "GND" V 1155 1822 50  0000 R CNN
F 2 "" H 1150 1950 50  0001 C CNN
F 3 "" H 1150 1950 50  0001 C CNN
	1    1150 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 1950 1850 1950
$Comp
L power:+5V #PWR0102
U 1 1 5D04D65E
P 1600 1550
F 0 "#PWR0102" H 1600 1400 50  0001 C CNN
F 1 "+5V" H 1615 1723 50  0000 C CNN
F 2 "" H 1600 1550 50  0001 C CNN
F 3 "" H 1600 1550 50  0001 C CNN
	1    1600 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1550 1600 1750
Wire Wire Line
	1600 1750 1850 1750
$Comp
L power:+3.3V #PWR0103
U 1 1 5D04D7CC
P 1200 1550
F 0 "#PWR0103" H 1200 1400 50  0001 C CNN
F 1 "+3.3V" H 1215 1723 50  0000 C CNN
F 2 "" H 1200 1550 50  0001 C CNN
F 3 "" H 1200 1550 50  0001 C CNN
	1    1200 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1550 1200 1850
Wire Wire Line
	1200 1850 1850 1850
Text GLabel 1850 2150 0    50   Input ~ 0
SDA
Text GLabel 1850 2050 0    50   Input ~ 0
SCL
Text GLabel 1850 2250 0    50   Input ~ 0
CS
Text Notes 700  1100 0    118  ~ 0
Do not change\nSensorStation Accessory\nPort Pinout
Wire Notes Line
	550  2450 3400 2450
Text Notes 600  3450 0    59   ~ 0
Description: SCL and SDA are I2C serial lines. Pullups\nexists on the SensorStation board. The "CS" pin is a \ngeneric, dedicated GPIO from the Raspberry Pi that can \nbe used to enable the device, work as a chip select, or\nperform a function, such as PWM. Both 3.3V and 5V are\navailable to the accessory and are directly connected to\nthe main power bus. No current limiting, other than the \nmain SensorStation polyfuse, is implemented. For more\ndetails, please see the SensorStation Accessory\ndocumentation.
Wire Notes Line
	3400 500  3400 3500
$Comp
L schematic_symbols:MAX4410 U1
U 1 1 5D3B86E4
P 6750 3100
F 0 "U1" H 6850 4315 50  0000 C CNN
F 1 "MAX4410" H 6850 4224 50  0000 C CNN
F 2 "pcb_footprints:TSSOP14" H 6750 3100 50  0001 C CNN
F 3 "" H 6750 3100 50  0001 C CNN
	1    6750 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5D3B880F
P 8500 2350
F 0 "C4" V 8271 2350 50  0000 C CNN
F 1 "1u" V 8362 2350 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_3216Metric" H 8500 2350 50  0001 C CNN
F 3 "~" H 8500 2350 50  0001 C CNN
	1    8500 2350
	0    1    1    0   
$EndComp
Text GLabel 8800 2350 2    50   Input ~ 0
CS
Wire Wire Line
	8000 2350 8400 2350
Wire Wire Line
	8600 2350 8800 2350
$Comp
L Device:R_Small R1
U 1 1 5D3B8E4D
P 7900 2350
F 0 "R1" V 7704 2350 50  0000 C CNN
F 1 "10K" V 7795 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_3216Metric" H 7900 2350 50  0001 C CNN
F 3 "~" H 7900 2350 50  0001 C CNN
	1    7900 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 2350 7650 2350
Wire Wire Line
	7400 2550 8500 2550
$Comp
L Device:R_Small R5
U 1 1 5D3B93BA
P 9450 2250
F 0 "R5" V 9254 2250 50  0000 C CNN
F 1 "10" V 9345 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_3216Metric" H 9450 2250 50  0001 C CNN
F 3 "~" H 9450 2250 50  0001 C CNN
	1    9450 2250
	0    1    1    0   
$EndComp
$Comp
L Device:L_Small L1
U 1 1 5D3B960E
P 9450 2800
F 0 "L1" V 9635 2800 50  0000 C CNN
F 1 "100uH" V 9544 2800 50  0000 C CNN
F 2 "Inductor_SMD:L_1206_3216Metric" H 9450 2800 50  0001 C CNN
F 3 "~" H 9450 2800 50  0001 C CNN
	1    9450 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:Speaker LS1
U 1 1 5D3B99AC
P 10300 2550
F 0 "LS1" H 10470 2546 50  0000 L CNN
F 1 "Speaker" H 10470 2455 50  0000 L CNN
F 2 "Buzzers_Beepers:Buzzer_12x9.5RM7.6" H 10300 2350 50  0001 C CNN
F 3 "~" H 10290 2500 50  0001 C CNN
	1    10300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2650 9950 3200
Wire Wire Line
	9950 3200 7950 3200
Wire Wire Line
	7400 3200 7400 2850
Wire Wire Line
	9950 2650 10100 2650
Wire Wire Line
	9200 2550 9200 2250
Wire Wire Line
	9200 2250 9350 2250
Wire Wire Line
	9200 2550 9200 2800
Wire Wire Line
	9200 2800 9350 2800
Connection ~ 9200 2550
Wire Wire Line
	9550 2250 9700 2250
Wire Wire Line
	9700 2250 9700 2550
Wire Wire Line
	9700 2800 9550 2800
Wire Wire Line
	10100 2550 9700 2550
Connection ~ 9700 2550
Wire Wire Line
	9700 2550 9700 2800
$Comp
L Device:R_Small R2
U 1 1 5D3BAA18
P 7950 2900
F 0 "R2" H 7891 2854 50  0000 R CNN
F 1 "10K" H 7891 2945 50  0000 R CNN
F 2 "Resistors_SMD:R_1206_3216Metric" H 7950 2900 50  0001 C CNN
F 3 "~" H 7950 2900 50  0001 C CNN
	1    7950 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 2650 7950 2650
Wire Wire Line
	7950 2650 7950 2800
Wire Wire Line
	7950 3000 7950 3200
Connection ~ 7950 3200
Wire Wire Line
	7950 3200 7400 3200
$Comp
L Device:R_Small R3
U 1 1 5D3BB645
P 8200 2650
F 0 "R3" V 8400 2750 50  0000 C CNN
F 1 "10K" V 8300 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_3216Metric" H 8200 2650 50  0001 C CNN
F 3 "~" H 8200 2650 50  0001 C CNN
	1    8200 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 2650 8100 2650
Connection ~ 7950 2650
Wire Wire Line
	8300 2650 8500 2650
Wire Wire Line
	8500 2650 8500 2550
Connection ~ 8500 2550
Wire Wire Line
	8500 2550 9200 2550
Wire Wire Line
	7650 2350 7650 1850
Wire Wire Line
	7650 1850 8650 1850
Connection ~ 7650 2350
Wire Wire Line
	7650 2350 7800 2350
$Comp
L Device:R_Small R4
U 1 1 5D3BCAE4
P 8750 1850
F 0 "R4" V 8554 1850 50  0000 C CNN
F 1 "10K" V 8645 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_3216Metric" H 8750 1850 50  0001 C CNN
F 3 "~" H 8750 1850 50  0001 C CNN
	1    8750 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 2250 9200 1850
Wire Wire Line
	9200 1850 8850 1850
Connection ~ 9200 2250
$Comp
L power:GND #PWR03
U 1 1 5D3BD5C0
P 6300 2550
F 0 "#PWR03" H 6300 2300 50  0001 C CNN
F 1 "GND" V 6305 2422 50  0000 R CNN
F 2 "" H 6300 2550 50  0001 C CNN
F 3 "" H 6300 2550 50  0001 C CNN
	1    6300 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D3BD7FB
P 7400 2250
F 0 "#PWR04" H 7400 2000 50  0001 C CNN
F 1 "GND" V 7405 2122 50  0000 R CNN
F 2 "" H 7400 2250 50  0001 C CNN
F 3 "" H 7400 2250 50  0001 C CNN
	1    7400 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 2350 6050 2350
Wire Wire Line
	6300 2250 6050 2250
Wire Wire Line
	6050 2250 6050 2350
Connection ~ 6050 2350
Wire Wire Line
	7400 2450 7750 2450
Wire Wire Line
	7750 2450 7750 1700
Wire Wire Line
	7750 1700 6050 1700
Wire Wire Line
	6050 1700 6050 2250
Connection ~ 6050 2250
$Comp
L Device:C_Small C2
U 1 1 5D3BF7C3
P 5500 2550
F 0 "C2" H 5592 2596 50  0000 L CNN
F 1 "2.2u" H 5592 2505 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_3216Metric" H 5500 2550 50  0001 C CNN
F 3 "~" H 5500 2550 50  0001 C CNN
	1    5500 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5D3BFAD1
P 4900 2550
F 0 "C1" H 4992 2596 50  0000 L CNN
F 1 "2.2u" H 4992 2505 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_3216Metric" H 4900 2550 50  0001 C CNN
F 3 "~" H 4900 2550 50  0001 C CNN
	1    4900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2450 5500 2450
Wire Wire Line
	6300 2650 5500 2650
Wire Wire Line
	4900 2350 4900 2450
Wire Wire Line
	4900 2350 6050 2350
$Comp
L power:GND #PWR01
U 1 1 5D3C2D02
P 4900 2650
F 0 "#PWR01" H 4900 2400 50  0001 C CNN
F 1 "GND" H 4905 2477 50  0000 C CNN
F 2 "" H 4900 2650 50  0001 C CNN
F 3 "" H 4900 2650 50  0001 C CNN
	1    4900 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5D3C3016
P 6000 3050
F 0 "C3" H 6092 3096 50  0000 L CNN
F 1 "2.2u" H 6092 3005 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_3216Metric" H 6000 3050 50  0001 C CNN
F 3 "~" H 6000 3050 50  0001 C CNN
	1    6000 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D3C332F
P 6000 3150
F 0 "#PWR02" H 6000 2900 50  0001 C CNN
F 1 "GND" H 6005 2977 50  0000 C CNN
F 2 "" H 6000 3150 50  0001 C CNN
F 3 "" H 6000 3150 50  0001 C CNN
	1    6000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2750 6000 2750
Wire Wire Line
	6000 2750 6000 2850
Wire Wire Line
	6300 2850 6000 2850
Connection ~ 6000 2850
Wire Wire Line
	6000 2850 6000 2950
Wire Wire Line
	7400 2750 7750 2750
Wire Wire Line
	7750 2750 7750 2450
Connection ~ 7750 2450
Text Notes 6050 800  0    118  ~ 0
PZ Speaker Driver
Wire Notes Line
	500  3500 11200 3500
$Comp
L power:+3.3V #PWR0104
U 1 1 5D3C96E6
P 6050 1700
F 0 "#PWR0104" H 6050 1550 50  0001 C CNN
F 1 "+3.3V" H 6065 1873 50  0000 C CNN
F 2 "" H 6050 1700 50  0001 C CNN
F 3 "" H 6050 1700 50  0001 C CNN
	1    6050 1700
	1    0    0    -1  
$EndComp
Connection ~ 6050 1700
$Comp
L Connector:TestPoint TP1
U 1 1 5D3CB964
P 4100 1000
F 0 "TP1" H 4158 1120 50  0000 L CNN
F 1 "TestPoint" H 4158 1029 50  0000 L CNN
F 2 "Measurement_Points:Test_Point_Keystone_5019_Minature" H 4300 1000 50  0001 C CNN
F 3 "~" H 4300 1000 50  0001 C CNN
	1    4100 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5D3CBAB1
P 4650 1000
F 0 "TP2" H 4708 1120 50  0000 L CNN
F 1 "TestPoint" H 4708 1029 50  0000 L CNN
F 2 "Measurement_Points:Test_Point_Keystone_5019_Minature" H 4850 1000 50  0001 C CNN
F 3 "~" H 4850 1000 50  0001 C CNN
	1    4650 1000
	1    0    0    -1  
$EndComp
Text GLabel 4100 1000 3    39   Input ~ 0
SCL
Text GLabel 4650 1000 3    39   Input ~ 0
SDA
Text Notes 6050 1200 0    79   ~ 0
Designed using MAX4410 \nApp Note 2914\nhttps://www.maximintegrated.com/en/app-notes/index.mvp/id/2914
$EndSCHEMATC
