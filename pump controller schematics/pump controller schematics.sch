EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector:Barrel_Jack J4
U 1 1 6352F9CA
P 3550 1750
F 0 "J4" H 3320 1708 50  0000 R CNN
F 1 "Barrel_Jack" H 3320 1799 50  0000 R CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 3600 1710 50  0001 C CNN
F 3 "~" H 3600 1710 50  0001 C CNN
	1    3550 1750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 63533554
P 1400 2050
F 0 "#PWR0102" H 1400 1800 50  0001 C CNN
F 1 "GND" H 1405 1877 50  0000 C CNN
F 2 "" H 1400 2050 50  0001 C CNN
F 3 "" H 1400 2050 50  0001 C CNN
	1    1400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1950 1400 2050
$Comp
L Timer:LM555 U1
U 1 1 63534136
P 3250 4500
F 0 "U1" H 3250 5081 50  0000 C CNN
F 1 "LM555" H 3250 4990 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 3250 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 3250 4500 50  0001 C CNN
	1    3250 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1550 1400 1650
$Comp
L Device:CP C1
U 1 1 63538ED7
P 1950 1800
F 0 "C1" H 2068 1846 50  0000 L CNN
F 1 "100uF" H 2068 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 1988 1650 50  0001 C CNN
F 3 "~" H 1950 1800 50  0001 C CNN
	1    1950 1800
	1    0    0    -1  
$EndComp
Wire Notes Line
	900  900  4300 900 
Wire Notes Line
	4300 900  4300 2550
Wire Notes Line
	4300 2550 900  2550
Wire Notes Line
	900  2550 900  900 
Text Notes 1050 1100 0    50   ~ 0
POWER
Wire Wire Line
	3250 4900 3250 5250
$Comp
L power:GND #PWR0104
U 1 1 63543166
P 3250 5350
F 0 "#PWR0104" H 3250 5100 50  0001 C CNN
F 1 "GND" H 3255 5177 50  0000 C CNN
F 2 "" H 3250 5350 50  0001 C CNN
F 3 "" H 3250 5350 50  0001 C CNN
	1    3250 5350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D6
U 1 1 6354362A
P 2750 5800
F 0 "D6" V 2704 5879 50  0000 L CNN
F 1 "1N4148" V 2795 5879 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2750 5625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2750 5800 50  0001 C CNN
	1    2750 5800
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D5
U 1 1 63545681
P 1450 5800
F 0 "D5" V 1404 5879 50  0000 L CNN
F 1 "1N4148" V 1495 5879 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 5625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 5800 50  0001 C CNN
	1    1450 5800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 63545AD8
P 1650 6150
F 0 "RV1" V 1443 6150 50  0000 C CNN
F 1 "10k" V 1534 6150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1650 6150 50  0001 C CNN
F 3 "~" H 1650 6150 50  0001 C CNN
	1    1650 6150
	0    -1   1    0   
$EndComp
Wire Wire Line
	1450 5950 1450 6150
Wire Wire Line
	1450 6150 1500 6150
Wire Wire Line
	2750 6150 2750 5950
$Comp
L Device:C_Small C3
U 1 1 6354923D
P 2600 5100
F 0 "C3" H 2508 5054 50  0000 R CNN
F 1 "100nF" H 2508 5145 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2600 5100 50  0001 C CNN
F 3 "~" H 2600 5100 50  0001 C CNN
	1    2600 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 5000 2600 4500
Wire Wire Line
	2600 4500 2750 4500
Wire Wire Line
	2750 4300 2150 4300
Wire Wire Line
	2150 4300 2150 4800
$Comp
L Device:C_Small C2
U 1 1 6354EB09
P 2150 4900
F 0 "C2" H 2242 4946 50  0000 L CNN
F 1 "10nF" H 2242 4855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2150 4900 50  0001 C CNN
F 3 "~" H 2150 4900 50  0001 C CNN
	1    2150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5200 2600 5250
Wire Wire Line
	2600 5250 3250 5250
Connection ~ 3250 5250
Wire Wire Line
	3250 5250 3250 5350
Wire Wire Line
	2150 5000 2150 5250
Wire Wire Line
	2150 5250 2600 5250
Connection ~ 2600 5250
Wire Wire Line
	2150 4300 2150 3650
Wire Wire Line
	2150 3650 3950 3650
Wire Wire Line
	3950 3650 3950 4700
Wire Wire Line
	3950 4700 3750 4700
Connection ~ 2150 4300
Wire Wire Line
	3950 6400 3950 4700
Connection ~ 3950 4700
Wire Wire Line
	3250 3450 3250 4100
Wire Wire Line
	1650 3450 1650 4700
Wire Wire Line
	3750 4300 4100 4300
Wire Wire Line
	3750 4500 3850 4500
Wire Wire Line
	3850 4500 3850 5650
Wire Wire Line
	2750 5650 3850 5650
Connection ~ 2750 5650
Wire Wire Line
	1650 6300 1650 6400
$Comp
L power:GND #PWR0107
U 1 1 635695AD
P 4450 5350
F 0 "#PWR0107" H 4450 5100 50  0001 C CNN
F 1 "GND" H 4455 5177 50  0000 C CNN
F 2 "" H 4450 5350 50  0001 C CNN
F 3 "" H 4450 5350 50  0001 C CNN
	1    4450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4500 4450 5250
Wire Notes Line
	900  2850 5750 2850
Wire Notes Line
	5750 2850 5750 6700
Wire Notes Line
	5750 6700 900  6700
Wire Notes Line
	900  6700 900  2850
Text Notes 1050 3050 0    50   ~ 0
PUMP CIRCUIT
$Comp
L Motor:Motor_DC M1
U 1 1 63585A24
P 4450 3750
F 0 "M1" H 4608 3746 50  0000 L CNN
F 1 "370 pump" H 4608 3655 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4450 3660 50  0001 C CNN
F 3 "~" H 4450 3660 50  0001 C CNN
	1    4450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3550 4450 3500
Wire Wire Line
	4450 4100 4450 4050
$Comp
L Diode:1N4001 D1
U 1 1 63588D4C
P 5100 3800
F 0 "D1" V 5054 3879 50  0000 L CNN
F 1 "1N4001" V 5145 3879 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5100 3625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5100 3800 50  0001 C CNN
	1    5100 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 3500 5100 3500
Wire Wire Line
	5100 3500 5100 3650
Connection ~ 4450 3500
Wire Wire Line
	4450 3500 4450 3450
Wire Wire Line
	4450 4100 5100 4100
Wire Wire Line
	5100 4100 5100 3950
Connection ~ 4450 4100
Connection ~ 4100 4300
Wire Wire Line
	4100 4300 4150 4300
Wire Wire Line
	4100 5250 4450 5250
Connection ~ 4450 5250
Wire Wire Line
	4450 5250 4450 5350
$Comp
L Device:LED D4
U 1 1 63594157
P 4050 3650
F 0 "D4" V 4089 3533 50  0000 R CNN
F 1 "LED" V 3998 3533 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4050 3650 50  0001 C CNN
F 3 "~" H 4050 3650 50  0001 C CNN
	1    4050 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 3500 4450 3500
$Comp
L Device:R_Small R4
U 1 1 63597578
P 4050 3950
F 0 "R4" H 4109 3996 50  0000 L CNN
F 1 "680R" H 4109 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4050 3950 50  0001 C CNN
F 3 "~" H 4050 3950 50  0001 C CNN
	1    4050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3850 4050 3800
Wire Wire Line
	4050 4050 4050 4100
Wire Wire Line
	4050 4100 4450 4100
Wire Wire Line
	1400 1950 1950 1950
Wire Wire Line
	3250 1950 3250 1850
Connection ~ 1950 1950
Wire Wire Line
	1950 1950 3250 1950
$Comp
L Switch:SW_DPST_x2 SW1
U 1 1 636736B7
P 2650 1650
F 0 "SW1" H 2650 1885 50  0000 C CNN
F 1 "Switch" H 2650 1794 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2650 1650 50  0001 C CNN
F 3 "~" H 2650 1650 50  0001 C CNN
	1    2650 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 636C3849
P 1650 5400
F 0 "R5" H 1591 5354 50  0000 R CNN
F 1 "330R" H 1591 5445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1650 5400 50  0001 C CNN
F 3 "~" H 1650 5400 50  0001 C CNN
	1    1650 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 1650 1950 1650
Wire Wire Line
	2850 1650 3250 1650
Wire Wire Line
	2450 1650 1950 1650
Connection ~ 1950 1650
Wire Wire Line
	1650 4700 2750 4700
Wire Wire Line
	1450 5650 1650 5650
Wire Wire Line
	1650 4700 1650 5300
Connection ~ 1650 4700
Wire Wire Line
	1650 5500 1650 5650
Connection ~ 1650 5650
Wire Wire Line
	1650 5650 2750 5650
Wire Wire Line
	1650 6400 3950 6400
$Comp
L power:+6V #PWR0101
U 1 1 63B93FD4
P 1650 3450
F 0 "#PWR0101" H 1650 3300 50  0001 C CNN
F 1 "+6V" H 1665 3623 50  0000 C CNN
F 2 "" H 1650 3450 50  0001 C CNN
F 3 "" H 1650 3450 50  0001 C CNN
	1    1650 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+6V #PWR0103
U 1 1 63B95671
P 3250 3450
F 0 "#PWR0103" H 3250 3300 50  0001 C CNN
F 1 "+6V" H 3265 3623 50  0000 C CNN
F 2 "" H 3250 3450 50  0001 C CNN
F 3 "" H 3250 3450 50  0001 C CNN
	1    3250 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+6V #PWR0105
U 1 1 63B9651C
P 4450 3450
F 0 "#PWR0105" H 4450 3300 50  0001 C CNN
F 1 "+6V" H 4465 3623 50  0000 C CNN
F 2 "" H 4450 3450 50  0001 C CNN
F 3 "" H 4450 3450 50  0001 C CNN
	1    4450 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+6V #PWR0106
U 1 1 63B98092
P 1400 1550
F 0 "#PWR0106" H 1400 1400 50  0001 C CNN
F 1 "+6V" H 1415 1723 50  0000 C CNN
F 2 "" H 1400 1550 50  0001 C CNN
F 3 "" H 1400 1550 50  0001 C CNN
	1    1400 1550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BS170 Q1
U 1 1 63B9B7E1
P 4350 4300
F 0 "Q1" H 4554 4346 50  0000 L CNN
F 1 "BS170" H 4554 4255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4550 4225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BS/BS170.pdf" H 4350 4300 50  0001 L CNN
	1    4350 4300
	1    0    0    -1  
$EndComp
Wire Notes Line
	5950 2850 10750 2850
Wire Notes Line
	10750 2850 10750 5300
Wire Notes Line
	10750 5300 5950 5300
Wire Notes Line
	5950 5300 5950 2850
Text Notes 6100 3050 0    50   ~ 0
BREAKOUT
$Comp
L Motor:Motor_DC M2
U 1 1 63BD5848
P 7350 3700
F 0 "M2" H 7508 3696 50  0000 L CNN
F 1 "370 pump" H 7508 3605 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7350 3610 50  0001 C CNN
F 3 "~" H 7350 3610 50  0001 C CNN
	1    7350 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3500 7350 3450
Wire Wire Line
	7350 4050 7350 4000
$Comp
L Diode:1N4001 D2
U 1 1 63BD5850
P 8000 3750
F 0 "D2" V 7954 3829 50  0000 L CNN
F 1 "1N4001" V 8045 3829 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8000 3575 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8000 3750 50  0001 C CNN
	1    8000 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 3450 8000 3450
Wire Wire Line
	8000 3450 8000 3600
Connection ~ 7350 3450
Wire Wire Line
	7350 3450 7350 3400
Wire Wire Line
	7350 4050 8000 4050
Wire Wire Line
	8000 4050 8000 3900
Connection ~ 7350 4050
$Comp
L power:+6V #PWR0108
U 1 1 63BD585F
P 7350 3400
F 0 "#PWR0108" H 7350 3250 50  0001 C CNN
F 1 "+6V" H 7365 3573 50  0000 C CNN
F 2 "" H 7350 3400 50  0001 C CNN
F 3 "" H 7350 3400 50  0001 C CNN
	1    7350 3400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BS170 Q2
U 1 1 63BD5865
P 7250 4250
F 0 "Q2" H 7454 4296 50  0000 L CNN
F 1 "BS170" H 7454 4205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7450 4175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BS/BS170.pdf" H 7250 4250 50  0001 L CNN
	1    7250 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 63BD7955
P 6550 4250
F 0 "J2" H 6442 4025 50  0000 C CNN
F 1 "Conn_01x01_Female" H 6442 4116 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6550 4250 50  0001 C CNN
F 3 "~" H 6550 4250 50  0001 C CNN
	1    6550 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 4250 7000 4250
$Comp
L power:GND #PWR0109
U 1 1 63BDA612
P 7350 4800
F 0 "#PWR0109" H 7350 4550 50  0001 C CNN
F 1 "GND" H 7355 4627 50  0000 C CNN
F 2 "" H 7350 4800 50  0001 C CNN
F 3 "" H 7350 4800 50  0001 C CNN
	1    7350 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4450 7350 4700
$Comp
L Device:R_Small R2
U 1 1 63BDCFDE
P 7000 4500
F 0 "R2" H 7059 4546 50  0000 L CNN
F 1 "100k" H 7059 4455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7000 4500 50  0001 C CNN
F 3 "~" H 7000 4500 50  0001 C CNN
	1    7000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4250 7000 4400
Wire Wire Line
	7000 4600 7000 4700
Wire Wire Line
	7000 4700 7350 4700
Connection ~ 7000 4250
Wire Wire Line
	7000 4250 7050 4250
Connection ~ 7350 4700
Wire Wire Line
	7350 4700 7350 4800
$Comp
L Motor:Motor_DC M3
U 1 1 63BEFA91
P 9350 3700
F 0 "M3" H 9508 3696 50  0000 L CNN
F 1 "370 pump" H 9508 3605 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9350 3610 50  0001 C CNN
F 3 "~" H 9350 3610 50  0001 C CNN
	1    9350 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3500 9350 3450
Wire Wire Line
	9350 4050 9350 4000
$Comp
L Diode:1N4001 D3
U 1 1 63BEFA99
P 10000 3750
F 0 "D3" V 9954 3829 50  0000 L CNN
F 1 "1N4001" V 10045 3829 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 10000 3575 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 10000 3750 50  0001 C CNN
	1    10000 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 3450 10000 3450
Wire Wire Line
	10000 3450 10000 3600
Connection ~ 9350 3450
Wire Wire Line
	9350 3450 9350 3400
Wire Wire Line
	9350 4050 10000 4050
Wire Wire Line
	10000 4050 10000 3900
Connection ~ 9350 4050
$Comp
L power:+6V #PWR0110
U 1 1 63BEFAA6
P 9350 3400
F 0 "#PWR0110" H 9350 3250 50  0001 C CNN
F 1 "+6V" H 9365 3573 50  0000 C CNN
F 2 "" H 9350 3400 50  0001 C CNN
F 3 "" H 9350 3400 50  0001 C CNN
	1    9350 3400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BS170 Q3
U 1 1 63BEFAAC
P 9250 4250
F 0 "Q3" H 9454 4296 50  0000 L CNN
F 1 "BS170" H 9454 4205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9450 4175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BS/BS170.pdf" H 9250 4250 50  0001 L CNN
	1    9250 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 63BEFAB2
P 8550 4250
F 0 "J3" H 8442 4025 50  0000 C CNN
F 1 "Conn_01x01_Female" H 8442 4116 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8550 4250 50  0001 C CNN
F 3 "~" H 8550 4250 50  0001 C CNN
	1    8550 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 4250 9000 4250
$Comp
L power:GND #PWR0111
U 1 1 63BEFAB9
P 9350 4800
F 0 "#PWR0111" H 9350 4550 50  0001 C CNN
F 1 "GND" H 9355 4627 50  0000 C CNN
F 2 "" H 9350 4800 50  0001 C CNN
F 3 "" H 9350 4800 50  0001 C CNN
	1    9350 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4450 9350 4700
$Comp
L Device:R_Small R3
U 1 1 63BEFAC0
P 9000 4500
F 0 "R3" H 9059 4546 50  0000 L CNN
F 1 "100k" H 9059 4455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 9000 4500 50  0001 C CNN
F 3 "~" H 9000 4500 50  0001 C CNN
	1    9000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4250 9000 4400
Wire Wire Line
	9000 4600 9000 4700
Wire Wire Line
	9000 4700 9350 4700
Connection ~ 9000 4250
Wire Wire Line
	9000 4250 9050 4250
Connection ~ 9350 4700
Wire Wire Line
	9350 4700 9350 4800
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 63C18583
P 4850 4650
F 0 "J1" H 4878 4676 50  0000 L CNN
F 1 "Conn_01x01_Female" H 4878 4585 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4850 4650 50  0001 C CNN
F 3 "~" H 4850 4650 50  0001 C CNN
	1    4850 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5100 4100 5250
$Comp
L Device:R_Small R1
U 1 1 6358D7C5
P 4100 5000
F 0 "R1" H 4159 5046 50  0000 L CNN
F 1 "100k" H 4159 4955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4100 5000 50  0001 C CNN
F 3 "~" H 4100 5000 50  0001 C CNN
	1    4100 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4300 4100 4650
Wire Wire Line
	4650 4650 4100 4650
Connection ~ 4100 4650
Wire Wire Line
	4100 4650 4100 4900
$Comp
L Device:R_POT RV2
U 1 1 63CDDC69
P 2200 5950
F 0 "RV2" V 1993 5950 50  0000 C CNN
F 1 "1k" V 2084 5950 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 2200 5950 50  0001 C CNN
F 3 "~" H 2200 5950 50  0001 C CNN
	1    2200 5950
	0    -1   1    0   
$EndComp
Wire Wire Line
	2200 6100 2200 6150
Wire Wire Line
	2200 6150 1800 6150
Wire Wire Line
	2350 5950 2350 6150
Wire Wire Line
	2350 6150 2750 6150
$EndSCHEMATC
