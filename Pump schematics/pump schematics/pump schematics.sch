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
L Motor:Motor_DC M?
U 1 1 634A7247
P 2600 3300
F 0 "M?" H 2758 3296 50  0000 L CNN
F 1 "Motor_DC" H 2758 3205 50  0000 L CNN
F 2 "" H 2600 3210 50  0001 C CNN
F 3 "~" H 2600 3210 50  0001 C CNN
	1    2600 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 634A88FF
P 2600 4600
F 0 "#PWR?" H 2600 4350 50  0001 C CNN
F 1 "GND" H 2605 4427 50  0000 C CNN
F 2 "" H 2600 4600 50  0001 C CNN
F 3 "" H 2600 4600 50  0001 C CNN
	1    2600 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 634A8DE1
P 1750 4000
F 0 "RV?" H 1680 4046 50  0000 R CNN
F 1 "10k" H 1680 3955 50  0000 R CNN
F 2 "" H 1750 4000 50  0001 C CNN
F 3 "~" H 1750 4000 50  0001 C CNN
	1    1750 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GDS Q?
U 1 1 634A9749
P 2500 4000
F 0 "Q?" H 2704 4046 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 2704 3955 50  0000 L CNN
F 2 "" H 2700 4100 50  0001 C CNN
F 3 "~" H 2500 4000 50  0001 C CNN
	1    2500 4000
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5820 D?
U 1 1 634AA61E
P 2050 3350
F 0 "D?" V 2004 3429 50  0000 L CNN
F 1 "1N5820" V 2095 3429 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 2050 3175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 2050 3350 50  0001 C CNN
	1    2050 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 2900 1300 3000
Wire Wire Line
	2600 3000 2600 3100
Wire Wire Line
	2600 3600 2600 3700
Wire Wire Line
	2600 4600 2600 4550
Wire Wire Line
	2050 3000 2050 3200
Connection ~ 2050 3000
Wire Wire Line
	2050 3000 2600 3000
Wire Wire Line
	2050 3500 2050 3700
Wire Wire Line
	2050 3700 2600 3700
Connection ~ 2600 3700
Wire Wire Line
	2600 3700 2600 3800
$Comp
L Device:R_Small R?
U 1 1 634B0B46
P 2050 4350
F 0 "R?" H 2109 4396 50  0000 L CNN
F 1 "1k" H 2109 4305 50  0000 L CNN
F 2 "" H 2050 4350 50  0001 C CNN
F 3 "~" H 2050 4350 50  0001 C CNN
	1    2050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4450 2050 4550
Wire Wire Line
	2050 4550 2600 4550
Connection ~ 2600 4550
Wire Wire Line
	2600 4550 2600 4200
Wire Wire Line
	1900 4000 2050 4000
Wire Wire Line
	2050 4000 2050 4250
Connection ~ 2050 4000
Wire Wire Line
	2050 4000 2300 4000
Wire Wire Line
	1750 3850 1750 3000
Connection ~ 1750 3000
Wire Wire Line
	1750 3000 2050 3000
$Comp
L power:+6V #PWR?
U 1 1 634B1DC6
P 1300 2900
F 0 "#PWR?" H 1300 2750 50  0001 C CNN
F 1 "+6V" H 1315 3073 50  0000 C CNN
F 2 "" H 1300 2900 50  0001 C CNN
F 3 "" H 1300 2900 50  0001 C CNN
	1    1300 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Jack-DC J?
U 1 1 634B2AF0
P 2450 1850
F 0 "J?" H 2507 2175 50  0000 C CNN
F 1 "Jack-DC" H 2507 2084 50  0000 C CNN
F 2 "" H 2500 1810 50  0001 C CNN
F 3 "~" H 2500 1810 50  0001 C CNN
	1    2450 1850
	0    -1   -1   0   
$EndComp
Connection ~ 2050 4550
$Comp
L Switch:SW_DIP_x01 SW?
U 1 1 634B6142
P 1950 1250
F 0 "SW?" H 1950 1517 50  0000 C CNN
F 1 "SW_DIP_x01" H 1950 1426 50  0000 C CNN
F 2 "" H 1950 1250 50  0001 C CNN
F 3 "~" H 1950 1250 50  0001 C CNN
	1    1950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4550 2050 4550
$Comp
L Device:CP 330uF
U 1 1 634BA903
P 1300 1400
F 0 "330uF" H 1418 1446 50  0000 L CNN
F 1 "CP" H 1418 1355 50  0000 L CNN
F 2 "" H 1338 1250 50  0001 C CNN
F 3 "~" H 1300 1400 50  0001 C CNN
	1    1300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1250 2550 1250
Wire Wire Line
	1650 1250 1300 1250
$Comp
L power:GND #PWR?
U 1 1 634C6CCA
P 1300 1550
F 0 "#PWR?" H 1300 1300 50  0001 C CNN
F 1 "GND" H 1305 1377 50  0000 C CNN
F 2 "" H 1300 1550 50  0001 C CNN
F 3 "" H 1300 1550 50  0001 C CNN
	1    1300 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1550 1300 1550
Connection ~ 1300 1550
Wire Wire Line
	2550 1550 2550 1250
$Comp
L power:+6V #PWR?
U 1 1 634C844F
P 1300 1250
F 0 "#PWR?" H 1300 1100 50  0001 C CNN
F 1 "+6V" H 1315 1423 50  0000 C CNN
F 2 "" H 1300 1250 50  0001 C CNN
F 3 "" H 1300 1250 50  0001 C CNN
	1    1300 1250
	1    0    0    -1  
$EndComp
Connection ~ 1300 1250
Wire Notes Line
	750  750  3000 750 
Wire Notes Line
	3000 750  3000 2250
Wire Notes Line
	3000 2250 750  2250
Wire Notes Line
	750  2250 750  750 
Text Notes 850  900  0    50   ~ 0
POWER
Wire Wire Line
	1300 3000 1750 3000
Wire Wire Line
	1300 3000 1300 4550
Connection ~ 1300 3000
Wire Notes Line
	750  2500 3400 2500
Wire Notes Line
	3400 2500 3400 4950
Wire Notes Line
	3400 4950 750  4950
Wire Notes Line
	750  4950 750  2500
Text Notes 850  2650 0    50   ~ 0
MOTOR
$EndSCHEMATC
