EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "V-A Meter"
Date "2021-06-10"
Rev "v1"
Comp "Savvas Ntouzepis"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R_US R1
U 1 1 606E7A36
P 9450 1650
F 0 "R1" H 9518 1696 50  0000 L CNN
F 1 "20k" H 9518 1605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9490 1640 50  0001 C CNN
F 3 "~" H 9450 1650 50  0001 C CNN
	1    9450 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1800 9450 1875
$Comp
L power:VCC #PWR015
U 1 1 606EA71E
P 9450 1300
F 0 "#PWR015" H 9450 1150 50  0001 C CNN
F 1 "VCC" H 9465 1473 50  0000 C CNN
F 2 "" H 9450 1300 50  0001 C CNN
F 3 "" H 9450 1300 50  0001 C CNN
	1    9450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1300 9450 1400
Text Notes 9575 1175 0    50   ~ 0
Positive from 0-24 V variable PSU 
Text Notes 9600 2650 0    50   ~ 0
Negative from 0-24 Vvariable PSU 
Wire Wire Line
	5025 3750 5025 3800
Text Notes 4800 1325 0    50   ~ 0
Positive from USB(or small 5v power supply)
Wire Wire Line
	5225 1625 5225 1750
Connection ~ 9450 1875
Text GLabel 8950 1875 0    50   Input ~ 0
DividerValue
Wire Wire Line
	8950 1875 9450 1875
$Comp
L power:GND #PWR013
U 1 1 60BA56DD
P 6850 2225
F 0 "#PWR013" H 6850 1975 50  0001 C CNN
F 1 "GND" H 6855 2052 50  0000 C CNN
F 2 "" H 6850 2225 50  0001 C CNN
F 3 "" H 6850 2225 50  0001 C CNN
	1    6850 2225
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 60BA8BAB
P 9450 2200
F 0 "R3" H 9518 2246 50  0000 L CNN
F 1 "5k" H 9518 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9490 2190 50  0001 C CNN
F 3 "~" H 9450 2200 50  0001 C CNN
	1    9450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1875 9450 2050
$Comp
L power:GND #PWR016
U 1 1 60BA9DC6
P 9450 2375
F 0 "#PWR016" H 9450 2125 50  0001 C CNN
F 1 "GND" H 9455 2202 50  0000 C CNN
F 2 "" H 9450 2375 50  0001 C CNN
F 3 "" H 9450 2375 50  0001 C CNN
	1    9450 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2350 9450 2375
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 606E4ADD
P 5025 2750
F 0 "A1" H 5025 1661 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5025 1570 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5025 2750 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5025 2750 50  0001 C CNN
	1    5025 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60BB426C
P 1750 1150
F 0 "#PWR04" H 1750 900 50  0001 C CNN
F 1 "GND" H 1755 977 50  0000 C CNN
F 2 "" H 1750 1150 50  0001 C CNN
F 3 "" H 1750 1150 50  0001 C CNN
	1    1750 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1150 1750 1150
$Comp
L power:+5V #PWR07
U 1 1 60BB4E55
P 2050 1250
F 0 "#PWR07" H 2050 1100 50  0001 C CNN
F 1 "+5V" H 2065 1423 50  0000 C CNN
F 2 "" H 2050 1250 50  0001 C CNN
F 3 "" H 2050 1250 50  0001 C CNN
	1    2050 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1250 2300 1250
$Comp
L Device:R_POT RV1
U 1 1 60BB7023
P 875 1550
F 0 "RV1" H 805 1596 50  0000 R CNN
F 1 "10k" H 805 1505 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 875 1550 50  0001 C CNN
F 3 "~" H 875 1550 50  0001 C CNN
	1    875  1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60BB8274
P 875 1750
F 0 "#PWR02" H 875 1500 50  0001 C CNN
F 1 "GND" H 880 1577 50  0000 C CNN
F 2 "" H 875 1750 50  0001 C CNN
F 3 "" H 875 1750 50  0001 C CNN
	1    875  1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	875  1750 875  1700
$Comp
L power:+5V #PWR01
U 1 1 60BB8BAD
P 875 1275
F 0 "#PWR01" H 875 1125 50  0001 C CNN
F 1 "+5V" H 890 1448 50  0000 C CNN
F 2 "" H 875 1275 50  0001 C CNN
F 3 "" H 875 1275 50  0001 C CNN
	1    875  1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	875  1400 875  1275
Text GLabel 2200 1450 0    50   Input ~ 0
D7
Wire Wire Line
	2200 1450 2300 1450
$Comp
L power:GND #PWR03
U 1 1 60BBA100
P 1725 1550
F 0 "#PWR03" H 1725 1300 50  0001 C CNN
F 1 "GND" H 1730 1377 50  0000 C CNN
F 2 "" H 1725 1550 50  0001 C CNN
F 3 "" H 1725 1550 50  0001 C CNN
	1    1725 1550
	1    0    0    -1  
$EndComp
Text GLabel 2200 1650 0    50   Input ~ 0
D8
Wire Wire Line
	2200 1650 2300 1650
Wire Wire Line
	1025 1550 1025 1350
Wire Wire Line
	1025 1350 2300 1350
Wire Wire Line
	1725 1550 2300 1550
Wire Wire Line
	2300 2150 2150 2150
Text GLabel 2150 2150 0    50   Input ~ 0
D9
Text GLabel 2150 2250 0    50   Input ~ 0
D10
Wire Wire Line
	2150 2250 2300 2250
Text GLabel 2150 2350 0    50   Input ~ 0
D11
Wire Wire Line
	2150 2350 2300 2350
Text GLabel 2150 2450 0    50   Input ~ 0
D12
Wire Wire Line
	2150 2450 2300 2450
$Comp
L power:+5V #PWR05
U 1 1 60BC12E4
P 1850 2550
F 0 "#PWR05" H 1850 2400 50  0001 C CNN
F 1 "+5V" H 1865 2723 50  0000 C CNN
F 2 "" H 1850 2550 50  0001 C CNN
F 3 "" H 1850 2550 50  0001 C CNN
	1    1850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2550 2300 2550
$Comp
L power:GND #PWR06
U 1 1 60BC2505
P 1850 2625
F 0 "#PWR06" H 1850 2375 50  0001 C CNN
F 1 "GND" H 1855 2452 50  0000 C CNN
F 2 "" H 1850 2625 50  0001 C CNN
F 3 "" H 1850 2625 50  0001 C CNN
	1    1850 2625
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2625 2300 2625
Wire Wire Line
	2300 2625 2300 2650
NoConn ~ 2225 1750
NoConn ~ 2225 1850
NoConn ~ 2225 1950
NoConn ~ 2225 2050
Wire Wire Line
	2225 1950 2300 1950
Wire Wire Line
	2300 1850 2225 1850
Wire Wire Line
	2300 1750 2225 1750
Wire Wire Line
	2300 2050 2225 2050
$Comp
L Connector:Conn_01x16_Female J1
U 1 1 60BB1295
P 2500 1850
F 0 "J1" H 2528 1826 50  0000 L CNN
F 1 "LCD" H 2528 1735 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 2500 1850 50  0001 C CNN
F 3 "~" H 2500 1850 50  0001 C CNN
	1    2500 1850
	1    0    0    -1  
$EndComp
Text GLabel 4400 2850 0    50   Input ~ 0
D7
Text GLabel 4400 2950 0    50   Input ~ 0
D8
Text GLabel 4400 3050 0    50   Input ~ 0
D9
Text GLabel 4400 3150 0    50   Input ~ 0
D10
Text GLabel 4400 3250 0    50   Input ~ 0
D11
Text GLabel 4400 3350 0    50   Input ~ 0
D12
Wire Wire Line
	4400 3050 4525 3050
Wire Wire Line
	4400 2850 4525 2850
Wire Wire Line
	4400 2950 4525 2950
Wire Wire Line
	4400 3150 4525 3150
Wire Wire Line
	4525 3250 4400 3250
Wire Wire Line
	4400 3350 4525 3350
$Comp
L power:GND #PWR011
U 1 1 60BD5279
P 6950 2525
F 0 "#PWR011" H 6950 2275 50  0001 C CNN
F 1 "GND" H 6955 2352 50  0000 C CNN
F 2 "" H 6950 2525 50  0001 C CNN
F 3 "" H 6950 2525 50  0001 C CNN
	1    6950 2525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 2525 6800 2525
$Comp
L power:+5V #PWR010
U 1 1 606ECE89
P 5225 1625
F 0 "#PWR010" H 5225 1475 50  0001 C CNN
F 1 "+5V" H 5240 1798 50  0000 C CNN
F 2 "" H 5225 1625 50  0001 C CNN
F 3 "" H 5225 1625 50  0001 C CNN
	1    5225 1625
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 60BD8380
P 6925 2125
F 0 "#PWR012" H 6925 1975 50  0001 C CNN
F 1 "+5V" H 6940 2298 50  0000 C CNN
F 2 "" H 6925 2125 50  0001 C CNN
F 3 "" H 6925 2125 50  0001 C CNN
	1    6925 2125
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 60BDD391
P 7900 4175
F 0 "R2" H 7968 4221 50  0000 L CNN
F 1 "0.1ohm" H 7968 4130 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0922_L20.0mm_D9.0mm_P25.40mm_Horizontal" V 7940 4165 50  0001 C CNN
F 3 "~" H 7900 4175 50  0001 C CNN
	1    7900 4175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 60BDEF43
P 7900 4525
F 0 "#PWR014" H 7900 4275 50  0001 C CNN
F 1 "GND" H 7905 4352 50  0000 C CNN
F 2 "" H 7900 4525 50  0001 C CNN
F 3 "" H 7900 4525 50  0001 C CNN
	1    7900 4525
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4525 7900 4425
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 60BE1561
P 8600 3425
F 0 "J3" H 8680 3417 50  0000 L CNN
F 1 "PSU Shunt" H 8680 3326 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 8600 3425 50  0001 C CNN
F 3 "~" H 8600 3425 50  0001 C CNN
	1    8600 3425
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3425 7900 3425
Wire Wire Line
	8400 3525 8400 4425
Wire Wire Line
	8400 4425 7900 4425
Connection ~ 7900 4425
Wire Wire Line
	7900 4425 7900 4325
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 60BE5A2D
P 10500 1575
F 0 "J4" H 10580 1567 50  0000 L CNN
F 1 "PSU Voltmeter" H 10580 1476 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 10500 1575 50  0001 C CNN
F 3 "~" H 10500 1575 50  0001 C CNN
	1    10500 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1575 10125 1575
Wire Wire Line
	10125 1575 10125 1400
Wire Wire Line
	10125 1400 9450 1400
Connection ~ 9450 1400
Wire Wire Line
	9450 1400 9450 1500
Wire Wire Line
	10300 1675 10300 2350
Wire Wire Line
	10300 2350 9450 2350
Connection ~ 9450 2350
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 60C0DC8E
P 4225 1000
F 0 "J2" V 4189 812 50  0000 R CNN
F 1 "12V" V 4098 812 50  0000 R CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 4225 1000 50  0001 C CNN
F 3 "~" H 4225 1000 50  0001 C CNN
	1    4225 1000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60C0F291
P 4350 1275
F 0 "#PWR08" H 4350 1025 50  0001 C CNN
F 1 "GND" H 4355 1102 50  0000 C CNN
F 2 "" H 4350 1275 50  0001 C CNN
F 3 "" H 4350 1275 50  0001 C CNN
	1    4350 1275
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 1275 4325 1275
Wire Wire Line
	4325 1275 4325 1200
Wire Wire Line
	4225 1200 4225 1750
Wire Wire Line
	4225 1750 4925 1750
$Comp
L power:GND #PWR09
U 1 1 60C4C522
P 5025 3800
F 0 "#PWR09" H 5025 3550 50  0001 C CNN
F 1 "GND" H 5030 3627 50  0000 C CNN
F 2 "" H 5025 3800 50  0001 C CNN
F 3 "" H 5025 3800 50  0001 C CNN
	1    5025 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J5
U 1 1 60C551FB
P 6600 2525
F 0 "J5" H 6708 3106 50  0000 C CNN
F 1 "ADC" H 6708 3015 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 6600 2525 50  0001 C CNN
F 3 "~" H 6600 2525 50  0001 C CNN
	1    6600 2525
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2125 6925 2125
Wire Wire Line
	6800 2225 6850 2225
Text GLabel 5600 3250 2    50   Input ~ 0
SCL
Wire Wire Line
	5525 3250 5600 3250
Wire Wire Line
	5525 3150 5625 3150
Text GLabel 5625 3150 2    50   Input ~ 0
SDA
Text GLabel 6825 2325 2    50   Input ~ 0
SCL
Wire Wire Line
	6800 2325 6825 2325
Text GLabel 6825 2425 2    50   Input ~ 0
SDA
Wire Wire Line
	6800 2425 6825 2425
Text GLabel 7050 2725 2    50   Input ~ 0
DividerValue
Wire Wire Line
	7050 2725 6800 2725
Text GLabel 7150 3775 1    50   Input ~ 0
Shunt
Wire Wire Line
	7900 3425 7900 3775
Wire Wire Line
	7150 3775 7900 3775
Connection ~ 7900 3775
Wire Wire Line
	7900 3775 7900 4025
Text GLabel 8275 1450 2    50   Input ~ 0
Shunt
Wire Wire Line
	6800 2825 7075 2825
NoConn ~ 6800 3025
NoConn ~ 6800 2925
NoConn ~ 6800 2625
$EndSCHEMATC
