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
L Apple2_bus:A2_BUS BUS1
U 1 1 60569223
P 1400 2900
F 0 "BUS1" H 2800 4987 60  0000 C CNN
F 1 "A2_BUS" H 2800 4881 60  0000 C CNN
F 2 "Apple2_bus_pretty:BUS_A2" H 1400 2900 60  0000 C CNN
F 3 "" H 1400 2900 60  0000 C CNN
	1    1400 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x25_Odd_Even J2
U 1 1 6056E2CE
P 7000 3300
F 0 "J2" H 7050 1875 50  0000 C CNN
F 1 "Conn_02x25_Counter_Clockwise" H 7050 1966 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x25_P2.54mm_Vertical" H 7000 3300 50  0001 C CNN
F 3 "~" H 7000 3300 50  0001 C CNN
	1    7000 3300
	-1   0    0    1   
$EndComp
Text GLabel 2000 1100 0    50   Input ~ 0
GND
Text GLabel 2000 1300 0    50   Input ~ 0
DMA_IN
Text GLabel 2000 1500 0    50   Input ~ 0
INT_IN
Text GLabel 2000 1700 0    50   Input ~ 0
NMI
Text GLabel 2000 1900 0    50   Input ~ 0
IRQ
Text GLabel 2000 2100 0    50   Input ~ 0
RES
Text GLabel 2000 2300 0    50   Input ~ 0
INH
Text GLabel 2000 2500 0    50   Input ~ 0
-12V
Text GLabel 2000 2700 0    50   Input ~ 0
-5V
Text GLabel 2000 3100 0    50   Input ~ 0
7M
Text GLabel 2000 3300 0    50   Input ~ 0
Q3
Text GLabel 2000 3500 0    50   Input ~ 0
o1
Text GLabel 2000 3700 0    50   Input ~ 0
M2SEL
Text GLabel 2000 3900 0    50   Input ~ 0
o0
Text GLabel 2000 4100 0    50   Input ~ 0
DEVSEL
Text GLabel 2000 4300 0    50   Input ~ 0
D7
Text GLabel 2000 4500 0    50   Input ~ 0
D6
Text GLabel 2000 4700 0    50   Input ~ 0
D5
Text GLabel 2000 4900 0    50   Input ~ 0
D4
Text GLabel 2000 5100 0    50   Input ~ 0
D3
Text GLabel 2000 5300 0    50   Input ~ 0
D2
Text GLabel 2000 5500 0    50   Input ~ 0
D1
Text GLabel 2000 5700 0    50   Input ~ 0
D0
Text GLabel 2000 5900 0    50   Input ~ 0
+12v
Text GLabel 3600 5900 2    50   Input ~ 0
IO_SEL
Text GLabel 3600 5700 2    50   Input ~ 0
A0
Text GLabel 3600 5500 2    50   Input ~ 0
A1
Text GLabel 3600 5300 2    50   Input ~ 0
A2
Text GLabel 3600 5100 2    50   Input ~ 0
A3
Text GLabel 3600 4900 2    50   Input ~ 0
A4
Text GLabel 3600 4700 2    50   Input ~ 0
A5
Text GLabel 3600 4100 2    50   Input ~ 0
A8
Text GLabel 3600 4500 2    50   Input ~ 0
A6
Text GLabel 3600 4300 2    50   Input ~ 0
A7
Text GLabel 3600 3900 2    50   Input ~ 0
A9
Text GLabel 3600 3700 2    50   Input ~ 0
A10
Text GLabel 3600 3500 2    50   Input ~ 0
A11
Text GLabel 3600 3300 2    50   Input ~ 0
A12
Text GLabel 3600 3100 2    50   Input ~ 0
A13
Text GLabel 3600 2900 2    50   Input ~ 0
A14
Text GLabel 3600 2700 2    50   Input ~ 0
A15
Text GLabel 3600 2500 2    50   Input ~ 0
R_W
Text GLabel 3600 2100 2    50   Input ~ 0
STROBE
Text GLabel 3600 1900 2    50   Input ~ 0
RDY
Text GLabel 3600 1700 2    50   Input ~ 0
DMA
Text GLabel 3600 1500 2    50   Input ~ 0
INT_OUT
Text GLabel 3600 1300 2    50   Input ~ 0
DMA_OUT
Text GLabel 3600 1100 2    50   Input ~ 0
+5V
Text GLabel 7200 4500 2    50   Input ~ 0
IO_SEL
Text GLabel 7200 4400 2    50   Input ~ 0
A0
Text GLabel 7200 4300 2    50   Input ~ 0
A1
Text GLabel 7200 4200 2    50   Input ~ 0
A2
Text GLabel 7200 4100 2    50   Input ~ 0
A3
Text GLabel 7200 4000 2    50   Input ~ 0
A4
Text GLabel 7200 3900 2    50   Input ~ 0
A5
Text GLabel 7200 3600 2    50   Input ~ 0
A8
Text GLabel 7200 3800 2    50   Input ~ 0
A6
Text GLabel 7200 3700 2    50   Input ~ 0
A7
Text GLabel 7200 3500 2    50   Input ~ 0
A9
Text GLabel 7200 3400 2    50   Input ~ 0
A10
Text GLabel 7200 3300 2    50   Input ~ 0
A11
Text GLabel 7200 3200 2    50   Input ~ 0
A12
Text GLabel 7200 3100 2    50   Input ~ 0
A13
Text GLabel 7200 3000 2    50   Input ~ 0
A14
Text GLabel 7200 2900 2    50   Input ~ 0
A15
Text GLabel 7200 2800 2    50   Input ~ 0
R_W
Text GLabel 7200 2600 2    50   Input ~ 0
STROBE
Text GLabel 7200 2500 2    50   Input ~ 0
RDY
Text GLabel 7200 2400 2    50   Input ~ 0
DMA
Text GLabel 7200 2300 2    50   Input ~ 0
INT_OUT
Text GLabel 7200 2200 2    50   Input ~ 0
DMA_OUT
Text GLabel 7200 2100 2    50   Input ~ 0
+5V
Text GLabel 6700 2100 0    50   Input ~ 0
GND
Text GLabel 6700 2200 0    50   Input ~ 0
DMA_IN
Text GLabel 6700 2300 0    50   Input ~ 0
INT_IN
Text GLabel 6700 2400 0    50   Input ~ 0
NMI
Text GLabel 6700 2500 0    50   Input ~ 0
IRQ
Text GLabel 6700 2600 0    50   Input ~ 0
RES
Text GLabel 6700 2700 0    50   Input ~ 0
INH
Text GLabel 6700 2800 0    50   Input ~ 0
-12V
Text GLabel 6700 2900 0    50   Input ~ 0
-5V
Text GLabel 6700 3100 0    50   Input ~ 0
7M
Text GLabel 6700 3200 0    50   Input ~ 0
Q3
Text GLabel 6700 3300 0    50   Input ~ 0
o1
Text GLabel 6700 3400 0    50   Input ~ 0
M2SEL
Text GLabel 6700 3500 0    50   Input ~ 0
o0
Text GLabel 6700 3600 0    50   Input ~ 0
DEVSEL
Text GLabel 6700 3700 0    50   Input ~ 0
D7
Text GLabel 6700 3800 0    50   Input ~ 0
D6
Text GLabel 6700 3900 0    50   Input ~ 0
D5
Text GLabel 6700 4000 0    50   Input ~ 0
D4
Text GLabel 6700 4100 0    50   Input ~ 0
D3
Text GLabel 6700 4200 0    50   Input ~ 0
D2
Text GLabel 6700 4300 0    50   Input ~ 0
D1
Text GLabel 6700 4400 0    50   Input ~ 0
D0
Text GLabel 6700 4500 0    50   Input ~ 0
+12v
NoConn ~ 6700 3000
NoConn ~ 7200 2700
$Comp
L Connector:Conn_01x08_Male J1
U 1 1 60583F17
P 6900 1250
F 0 "J1" H 7008 1731 50  0000 C CNN
F 1 "Conn_01x08_Male" H 7008 1640 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6900 1250 50  0001 C CNN
F 3 "~" H 6900 1250 50  0001 C CNN
	1    6900 1250
	1    0    0    -1  
$EndComp
Text GLabel 7100 950  2    50   Input ~ 0
+5V
Text GLabel 7100 1150 2    50   Input ~ 0
-5V
Text GLabel 7100 1350 2    50   Input ~ 0
+12v
Text GLabel 7100 1550 2    50   Input ~ 0
-12V
Text GLabel 7100 1050 2    50   Input ~ 0
GND
Text GLabel 7100 1250 2    50   Input ~ 0
GND
Text GLabel 7100 1450 2    50   Input ~ 0
GND
Text GLabel 7100 1650 2    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x08_Male J3
U 1 1 6058903F
P 8550 1250
F 0 "J3" H 8658 1731 50  0000 C CNN
F 1 "Conn_01x08_Male" H 8658 1640 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 8550 1250 50  0001 C CNN
F 3 "~" H 8550 1250 50  0001 C CNN
	1    8550 1250
	1    0    0    -1  
$EndComp
Text GLabel 8750 950  2    50   Input ~ 0
+5V
Text GLabel 8750 1150 2    50   Input ~ 0
-5V
Text GLabel 8750 1350 2    50   Input ~ 0
+12v
Text GLabel 8750 1550 2    50   Input ~ 0
-12V
Text GLabel 8750 1050 2    50   Input ~ 0
GND
Text GLabel 8750 1250 2    50   Input ~ 0
GND
Text GLabel 8750 1450 2    50   Input ~ 0
GND
Text GLabel 8750 1650 2    50   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_02x25_Odd_Even J4
U 1 1 6058FE85
P 8700 3300
F 0 "J4" H 8750 1875 50  0000 C CNN
F 1 "Conn_02x25_Counter_Clockwise" H 8750 1966 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x25_P2.54mm_Vertical" H 8700 3300 50  0001 C CNN
F 3 "~" H 8700 3300 50  0001 C CNN
	1    8700 3300
	-1   0    0    1   
$EndComp
Text GLabel 8900 4500 2    50   Input ~ 0
IO_SEL
Text GLabel 8900 4400 2    50   Input ~ 0
A0
Text GLabel 8900 4300 2    50   Input ~ 0
A1
Text GLabel 8900 4200 2    50   Input ~ 0
A2
Text GLabel 8900 4100 2    50   Input ~ 0
A3
Text GLabel 8900 4000 2    50   Input ~ 0
A4
Text GLabel 8900 3900 2    50   Input ~ 0
A5
Text GLabel 8900 3600 2    50   Input ~ 0
A8
Text GLabel 8900 3800 2    50   Input ~ 0
A6
Text GLabel 8900 3700 2    50   Input ~ 0
A7
Text GLabel 8900 3500 2    50   Input ~ 0
A9
Text GLabel 8900 3400 2    50   Input ~ 0
A10
Text GLabel 8900 3300 2    50   Input ~ 0
A11
Text GLabel 8900 3200 2    50   Input ~ 0
A12
Text GLabel 8900 3100 2    50   Input ~ 0
A13
Text GLabel 8900 3000 2    50   Input ~ 0
A14
Text GLabel 8900 2900 2    50   Input ~ 0
A15
Text GLabel 8900 2800 2    50   Input ~ 0
R_W
Text GLabel 8900 2600 2    50   Input ~ 0
STROBE
Text GLabel 8900 2500 2    50   Input ~ 0
RDY
Text GLabel 8900 2400 2    50   Input ~ 0
DMA
Text GLabel 8900 2300 2    50   Input ~ 0
INT_OUT
Text GLabel 8900 2200 2    50   Input ~ 0
DMA_OUT
Text GLabel 8900 2100 2    50   Input ~ 0
+5V
Text GLabel 8400 2100 0    50   Input ~ 0
GND
Text GLabel 8400 2200 0    50   Input ~ 0
DMA_IN
Text GLabel 8400 2300 0    50   Input ~ 0
INT_IN
Text GLabel 8400 2400 0    50   Input ~ 0
NMI
Text GLabel 8400 2500 0    50   Input ~ 0
IRQ
Text GLabel 8400 2600 0    50   Input ~ 0
RES
Text GLabel 8400 2700 0    50   Input ~ 0
INH
Text GLabel 8400 2800 0    50   Input ~ 0
-12V
Text GLabel 8400 2900 0    50   Input ~ 0
-5V
Text GLabel 8400 3100 0    50   Input ~ 0
7M
Text GLabel 8400 3200 0    50   Input ~ 0
Q3
Text GLabel 8400 3300 0    50   Input ~ 0
o1
Text GLabel 8400 3400 0    50   Input ~ 0
M2SEL
Text GLabel 8400 3500 0    50   Input ~ 0
o0
Text GLabel 8400 3600 0    50   Input ~ 0
DEVSEL
Text GLabel 8400 3700 0    50   Input ~ 0
D7
Text GLabel 8400 3800 0    50   Input ~ 0
D6
Text GLabel 8400 3900 0    50   Input ~ 0
D5
Text GLabel 8400 4000 0    50   Input ~ 0
D4
Text GLabel 8400 4100 0    50   Input ~ 0
D3
Text GLabel 8400 4200 0    50   Input ~ 0
D2
Text GLabel 8400 4300 0    50   Input ~ 0
D1
Text GLabel 8400 4400 0    50   Input ~ 0
D0
Text GLabel 8400 4500 0    50   Input ~ 0
+12v
NoConn ~ 8400 3000
NoConn ~ 8900 2700
Wire Wire Line
	8500 5300 8400 5300
Wire Wire Line
	8300 5300 8200 5300
Wire Wire Line
	8100 5300 8000 5300
Wire Wire Line
	7900 5300 7800 5300
Wire Wire Line
	7700 5300 7600 5300
Wire Wire Line
	7500 5300 7400 5300
Wire Wire Line
	7300 5300 7200 5300
Wire Wire Line
	7100 5300 7000 5300
Wire Wire Line
	6900 5300 6800 5300
Wire Wire Line
	6700 5300 6600 5300
Wire Wire Line
	6500 5300 6400 5300
Wire Wire Line
	6300 5300 6200 5300
Wire Wire Line
	6100 5300 6000 5300
Wire Wire Line
	5900 5300 5800 5300
Wire Wire Line
	5800 5800 5900 5800
Wire Wire Line
	6000 5800 6100 5800
Wire Wire Line
	6200 5800 6300 5800
Wire Wire Line
	6400 5800 6500 5800
Wire Wire Line
	6600 5800 6700 5800
Wire Wire Line
	6800 5800 6900 5800
Wire Wire Line
	7000 5800 7100 5800
Wire Wire Line
	7200 5800 7300 5800
Wire Wire Line
	7400 5800 7500 5800
Wire Wire Line
	7600 5800 7700 5800
Wire Wire Line
	7800 5800 7900 5800
Wire Wire Line
	8000 5800 8100 5800
Wire Wire Line
	8200 5800 8300 5800
Wire Wire Line
	8400 5800 8500 5800
$Comp
L Connector_Generic:Conn_02x27_Counter_Clockwise J5
U 1 1 60594B8E
P 7200 5500
F 0 "J5" V 7204 3412 50  0000 R CNN
F 1 "Conn_02x40_Top_Bottom" V 7295 3412 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x27_P2.54mm_Vertical" H 7200 5500 50  0001 C CNN
F 3 "~" H 7200 5500 50  0001 C CNN
	1    7200 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 5300 5800 5800
Text GLabel 8500 5800 3    50   Input ~ 0
GND
Wire Wire Line
	8500 6050 8400 6050
Wire Wire Line
	8300 6050 8200 6050
Wire Wire Line
	8100 6050 8000 6050
Wire Wire Line
	7900 6050 7800 6050
Wire Wire Line
	7700 6050 7600 6050
Wire Wire Line
	7500 6050 7400 6050
Wire Wire Line
	7300 6050 7200 6050
Wire Wire Line
	7100 6050 7000 6050
Wire Wire Line
	6900 6050 6800 6050
Wire Wire Line
	6700 6050 6600 6050
Wire Wire Line
	6500 6050 6400 6050
Wire Wire Line
	6300 6050 6200 6050
Wire Wire Line
	6100 6050 6000 6050
Wire Wire Line
	5900 6050 5800 6050
Wire Wire Line
	5800 6550 5900 6550
Wire Wire Line
	6000 6550 6100 6550
Wire Wire Line
	6200 6550 6300 6550
Wire Wire Line
	6400 6550 6500 6550
Wire Wire Line
	6600 6550 6700 6550
Wire Wire Line
	6800 6550 6900 6550
Wire Wire Line
	7000 6550 7100 6550
Wire Wire Line
	7200 6550 7300 6550
Wire Wire Line
	7400 6550 7500 6550
Wire Wire Line
	7600 6550 7700 6550
Wire Wire Line
	7800 6550 7900 6550
Wire Wire Line
	8000 6550 8100 6550
Wire Wire Line
	8200 6550 8300 6550
Wire Wire Line
	8400 6550 8500 6550
$Comp
L Connector_Generic:Conn_02x27_Counter_Clockwise J7
U 1 1 605EB323
P 7200 6250
F 0 "J7" V 7204 4162 50  0000 R CNN
F 1 "Conn_02x40_Top_Bottom" V 7295 4162 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x27_P2.54mm_Vertical" H 7200 6250 50  0001 C CNN
F 3 "~" H 7200 6250 50  0001 C CNN
	1    7200 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 6050 5800 6550
Text GLabel 8500 6550 3    50   Input ~ 0
GND
Wire Wire Line
	8500 4550 8400 4550
Wire Wire Line
	8300 4550 8200 4550
Wire Wire Line
	8100 4550 8000 4550
Wire Wire Line
	7900 4550 7800 4550
Wire Wire Line
	7700 4550 7600 4550
Wire Wire Line
	7500 4550 7400 4550
Wire Wire Line
	7300 4550 7200 4550
Wire Wire Line
	7100 4550 7000 4550
Wire Wire Line
	6900 4550 6800 4550
Wire Wire Line
	6700 4550 6600 4550
Wire Wire Line
	6500 4550 6400 4550
Wire Wire Line
	6300 4550 6200 4550
Wire Wire Line
	6100 4550 6000 4550
Wire Wire Line
	5900 4550 5800 4550
Wire Wire Line
	5800 5050 5900 5050
Wire Wire Line
	6000 5050 6100 5050
Wire Wire Line
	6200 5050 6300 5050
Wire Wire Line
	6400 5050 6500 5050
Wire Wire Line
	6600 5050 6700 5050
Wire Wire Line
	6800 5050 6900 5050
Wire Wire Line
	7000 5050 7100 5050
Wire Wire Line
	7200 5050 7300 5050
Wire Wire Line
	7400 5050 7500 5050
Wire Wire Line
	7600 5050 7700 5050
Wire Wire Line
	7800 5050 7900 5050
Wire Wire Line
	8000 5050 8100 5050
Wire Wire Line
	8200 5050 8300 5050
Wire Wire Line
	8400 5050 8500 5050
$Comp
L Connector_Generic:Conn_02x27_Counter_Clockwise J6
U 1 1 605F75D8
P 7200 4750
F 0 "J6" V 7204 2662 50  0000 R CNN
F 1 "Conn_02x40_Top_Bottom" V 7295 2662 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x27_P2.54mm_Vertical" H 7200 4750 50  0001 C CNN
F 3 "~" H 7200 4750 50  0001 C CNN
	1    7200 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 4550 5800 5050
Text GLabel 8500 5050 3    50   Input ~ 0
GND
$EndSCHEMATC
