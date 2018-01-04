EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:AMS1117-3V3
LIBS:esp-12e
LIBS:blinkenhat-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BlinkenHat"
Date "2018-01-04"
Rev "0.1"
Comp "Retardigrades"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP-12E U2
U 1 1 5A4D6718
P 8250 2500
F 0 "U2" H 8250 2400 50  0000 C CNN
F 1 "ESP-12E" H 8250 2600 50  0000 C CNN
F 2 "ESP8266:ESP-12E" H 8150 2300 50  0001 C CNN
F 3 "" H 8250 2400 50  0001 C CNN
F 4 "Ai-thinker" H 8350 2500 61  0001 C CNN "MFG_NAME"
F 5 "ESP-12E" H 8450 2600 61  0001 C CNN "MPN"
F 6 "ESP-12E WiFi Module" H 8550 2700 61  0001 C CNN "DESC"
	1    8250 2500
	1    0    0    -1  
$EndComp
$Comp
L AMS1117-3V3 U1
U 1 1 5A4D678A
P 9300 4850
F 0 "U1" H 9400 4600 50  0000 C CNN
F 1 "AMS1117-3V3" H 9300 5100 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 9300 4850 50  0001 C CNN
F 3 "" H 9400 4600 50  0000 C CNN
F 4 "LM1117 800-mA Low-Dropout Linear Regulator" H 9700 4900 61  0001 C CNN "DESC"
F 5 "Texas Instruments" H 9500 4700 61  0001 C CNN "MFG_NAME"
F 6 "LM1117" H 9600 4800 61  0001 C CNN "MPN"
	1    9300 4850
	1    0    0    -1  
$EndComp
$Comp
L USB_OTG J5
U 1 1 5A4D6874
P 4250 4100
F 0 "J5" H 4050 4550 50  0000 L CNN
F 1 "USB_OTG" H 4050 4450 50  0000 L CNN
F 2 "Connectors:USB_Micro-B_10103594-0001LF" H 4400 4050 50  0001 C CNN
F 3 "" H 4400 4050 50  0001 C CNN
	1    4250 4100
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J3
U 1 1 5A4D6B9D
P 2000 4250
F 0 "J3" H 2000 4450 50  0000 C CNN
F 1 "Conn_01x03" H 2000 4050 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B03B-XH-A_03x2.50mm_Straight" H 2000 4250 50  0001 C CNN
F 3 "" H 2000 4250 50  0001 C CNN
	1    2000 4250
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x03 J2
U 1 1 5A4D6C34
P 1800 6800
F 0 "J2" H 1800 7000 50  0000 C CNN
F 1 "Conn_01x03" H 1800 6600 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B03B-XH-A_03x2.50mm_Straight" H 1800 6800 50  0001 C CNN
F 3 "" H 1800 6800 50  0001 C CNN
	1    1800 6800
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x03 J1
U 1 1 5A4D6CB3
P 1800 6250
F 0 "J1" H 1800 6450 50  0000 C CNN
F 1 "Conn_01x03" H 1800 6050 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B03B-XH-A_03x2.50mm_Straight" H 1800 6250 50  0001 C CNN
F 3 "" H 1800 6250 50  0001 C CNN
	1    1800 6250
	-1   0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5A4D6D14
P 7000 4150
F 0 "SW1" H 7050 4250 50  0000 L CNN
F 1 "RESET" H 7000 4090 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 7000 4350 50  0001 C CNN
F 3 "" H 7000 4350 50  0001 C CNN
	1    7000 4150
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A4D6FC0
P 7200 1750
F 0 "R2" V 7280 1750 50  0000 C CNN
F 1 "10K" V 7200 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7130 1750 50  0001 C CNN
F 3 "" H 7200 1750 50  0001 C CNN
	1    7200 1750
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR01
U 1 1 5A4D703D
P 9900 4550
F 0 "#PWR01" H 9900 4400 50  0001 C CNN
F 1 "+3V3" H 9900 4690 50  0000 C CNN
F 2 "" H 9900 4550 50  0001 C CNN
F 3 "" H 9900 4550 50  0001 C CNN
	1    9900 4550
	1    0    0    -1  
$EndComp
NoConn ~ 4550 4100
NoConn ~ 4550 4200
NoConn ~ 4550 4300
$Comp
L C C4
U 1 1 5A4D72CB
P 7200 3100
F 0 "C4" H 7225 3200 50  0000 L CNN
F 1 "100n" H 7225 3000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7238 2950 50  0001 C CNN
F 3 "" H 7200 3100 50  0001 C CNN
	1    7200 3100
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 5A4D735C
P 8800 5150
F 0 "C2" H 8825 5250 50  0000 L CNN
F 1 "22µ" H 8825 5050 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_5x5.3" H 8838 5000 50  0001 C CNN
F 3 "" H 8800 5150 50  0001 C CNN
	1    8800 5150
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 5A4D74E9
P 9900 5150
F 0 "C3" H 9925 5250 50  0000 L CNN
F 1 "100µ" H 9925 5050 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.8" H 9938 5000 50  0001 C CNN
F 3 "" H 9900 5150 50  0001 C CNN
	1    9900 5150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5A4D7778
P 8250 4550
F 0 "#PWR02" H 8250 4400 50  0001 C CNN
F 1 "+5V" H 8250 4690 50  0000 C CNN
F 2 "" H 8250 4550 50  0001 C CNN
F 3 "" H 8250 4550 50  0001 C CNN
	1    8250 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A4D7B9D
P 9700 5600
F 0 "#PWR03" H 9700 5350 50  0001 C CNN
F 1 "GND" H 9700 5450 50  0000 C CNN
F 2 "" H 9700 5600 50  0001 C CNN
F 3 "" H 9700 5600 50  0001 C CNN
	1    9700 5600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 5A4D82F4
P 4750 3700
F 0 "#PWR04" H 4750 3550 50  0001 C CNN
F 1 "+5V" H 4750 3840 50  0000 C CNN
F 2 "" H 4750 3700 50  0001 C CNN
F 3 "" H 4750 3700 50  0001 C CNN
	1    4750 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A4D832A
P 4250 4700
F 0 "#PWR05" H 4250 4450 50  0001 C CNN
F 1 "GND" H 4250 4550 50  0000 C CNN
F 2 "" H 4250 4700 50  0001 C CNN
F 3 "" H 4250 4700 50  0001 C CNN
	1    4250 4700
	1    0    0    -1  
$EndComp
Text GLabel 6350 5350 0    55   Input ~ 0
RX
Text GLabel 6350 5450 0    55   Input ~ 0
GPIO0
Text GLabel 6350 5550 0    55   Input ~ 0
GPIO2
Text GLabel 7500 5450 2    55   Input ~ 0
RESET
Text GLabel 7500 5550 2    55   Input ~ 0
CH_PD
Text GLabel 7500 5650 2    55   Input ~ 0
TX
Text GLabel 9750 2200 2    55   Input ~ 0
TX
Text GLabel 9750 2300 2    55   Input ~ 0
RX
$Comp
L GND #PWR06
U 1 1 5A4D9236
P 6200 5750
F 0 "#PWR06" H 6200 5500 50  0001 C CNN
F 1 "GND" H 6200 5600 50  0000 C CNN
F 2 "" H 6200 5750 50  0001 C CNN
F 3 "" H 6200 5750 50  0001 C CNN
	1    6200 5750
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR07
U 1 1 5A4D9271
P 7650 5050
F 0 "#PWR07" H 7650 4900 50  0001 C CNN
F 1 "+3V3" H 7650 5190 50  0000 C CNN
F 2 "" H 7650 5050 50  0001 C CNN
F 3 "" H 7650 5050 50  0001 C CNN
	1    7650 5050
	1    0    0    -1  
$EndComp
Text GLabel 9750 2600 2    55   Input ~ 0
GPIO0
Text GLabel 9750 2700 2    55   Input ~ 0
GPIO2
Text GLabel 6700 2200 0    55   Input ~ 0
RESET
Text GLabel 6700 2400 0    55   Input ~ 0
CH_PD
$Comp
L R R3
U 1 1 5A4D9C83
P 9300 1750
F 0 "R3" V 9380 1750 50  0000 C CNN
F 1 "10K" V 9300 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9230 1750 50  0001 C CNN
F 3 "" H 9300 1750 50  0001 C CNN
	1    9300 1750
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5A4D9DAF
P 9500 1750
F 0 "R4" V 9580 1750 50  0000 C CNN
F 1 "10K" V 9500 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9430 1750 50  0001 C CNN
F 3 "" H 9500 1750 50  0001 C CNN
	1    9500 1750
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A4DA038
P 7000 1750
F 0 "R1" V 7080 1750 50  0000 C CNN
F 1 "10K" V 7000 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6930 1750 50  0001 C CNN
F 3 "" H 7000 1750 50  0001 C CNN
	1    7000 1750
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A4DA0A8
P 9350 3150
F 0 "R5" V 9430 3150 50  0000 C CNN
F 1 "10K" V 9350 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9280 3150 50  0001 C CNN
F 3 "" H 9350 3150 50  0001 C CNN
	1    9350 3150
	1    0    0    -1  
$EndComp
NoConn ~ 8000 3400
NoConn ~ 8100 3400
NoConn ~ 8400 3400
NoConn ~ 8500 3400
Text GLabel 6650 4150 0    60   Input ~ 0
RESET
$Comp
L GND #PWR08
U 1 1 5A4DADE1
P 7350 4300
F 0 "#PWR08" H 7350 4050 50  0001 C CNN
F 1 "GND" H 7350 4150 50  0000 C CNN
F 2 "" H 7350 4300 50  0001 C CNN
F 3 "" H 7350 4300 50  0001 C CNN
	1    7350 4300
	1    0    0    -1  
$EndComp
Text GLabel 6700 2700 0    55   Input ~ 0
LED1
Text GLabel 6700 2800 0    55   Input ~ 0
LED2
Text GLabel 6700 2500 0    55   Input ~ 0
INP1
Text GLabel 6700 2600 0    55   Input ~ 0
INP2
Wire Wire Line
	9300 5150 9300 5500
Wire Wire Line
	9900 4550 9900 5000
Wire Wire Line
	9900 4850 9600 4850
Wire Wire Line
	9600 4750 9700 4750
Wire Wire Line
	9700 4750 9700 5600
Connection ~ 9300 5500
Wire Wire Line
	8800 5300 8800 5500
Wire Wire Line
	8800 5500 9900 5500
Connection ~ 8800 4850
Wire Wire Line
	8250 4850 8250 4550
Wire Wire Line
	9900 5500 9900 5300
Connection ~ 9700 5500
Connection ~ 9900 4850
Wire Wire Line
	4250 4500 4250 4700
Wire Wire Line
	4250 4600 4150 4600
Wire Wire Line
	4150 4600 4150 4500
Connection ~ 4250 4600
Wire Wire Line
	4550 3900 4750 3900
Wire Wire Line
	4750 3900 4750 3700
Wire Wire Line
	6200 5650 6700 5650
Wire Wire Line
	7200 5650 7500 5650
Wire Wire Line
	7250 5350 7200 5350
Wire Wire Line
	6200 5650 6200 5750
Wire Wire Line
	9150 2600 9750 2600
Wire Wire Line
	9300 2600 9300 1900
Wire Wire Line
	9500 1900 9500 2700
Wire Wire Line
	9150 2700 9750 2700
Wire Wire Line
	9150 2800 9350 2800
Wire Wire Line
	9350 2800 9350 3000
Wire Wire Line
	9150 2900 9200 2900
Wire Wire Line
	9200 2900 9200 3600
Wire Wire Line
	9350 3300 9350 3500
Connection ~ 9500 2700
Connection ~ 9300 2600
Wire Wire Line
	9150 2200 9750 2200
Wire Wire Line
	9150 2300 9750 2300
Wire Wire Line
	7200 1900 7200 2200
Wire Wire Line
	6700 2200 7350 2200
Wire Wire Line
	7000 1900 7000 2400
Wire Wire Line
	6700 2400 7350 2400
Wire Wire Line
	7000 1600 7000 1550
Wire Wire Line
	6250 1550 9500 1550
Wire Wire Line
	7200 1550 7200 1600
Connection ~ 7000 1550
Connection ~ 7200 2200
Connection ~ 7000 2400
Wire Wire Line
	6800 4150 6650 4150
Wire Wire Line
	7200 4150 7350 4150
Wire Wire Line
	7350 4150 7350 4300
Wire Wire Line
	6700 2500 7350 2500
Wire Wire Line
	6700 2600 7350 2600
Wire Wire Line
	6700 2700 7350 2700
Wire Wire Line
	6700 2800 7350 2800
Wire Wire Line
	7350 2900 6950 2900
Wire Wire Line
	6950 2900 6950 3100
Wire Wire Line
	6950 3100 6250 3100
Wire Wire Line
	6250 3100 6250 1550
Wire Wire Line
	9300 1450 9300 1600
Connection ~ 7200 1550
Wire Wire Line
	9500 1550 9500 1600
Connection ~ 9300 1550
NoConn ~ 8200 3400
NoConn ~ 8300 3400
NoConn ~ 9150 2400
NoConn ~ 9150 2500
NoConn ~ 7350 2300
Wire Wire Line
	9350 3500 7200 3500
Wire Wire Line
	7200 3500 7200 3250
Wire Wire Line
	7200 2950 7200 2900
Connection ~ 7200 2900
Connection ~ 9200 3500
$Comp
L +3V3 #PWR09
U 1 1 5A4DC963
P 9300 1450
F 0 "#PWR09" H 9300 1300 50  0001 C CNN
F 1 "+3V3" H 9300 1590 50  0000 C CNN
F 2 "" H 9300 1450 50  0001 C CNN
F 3 "" H 9300 1450 50  0001 C CNN
	1    9300 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A4DC9AA
P 9200 3600
F 0 "#PWR010" H 9200 3350 50  0001 C CNN
F 1 "GND" H 9200 3450 50  0000 C CNN
F 2 "" H 9200 3600 50  0001 C CNN
F 3 "" H 9200 3600 50  0001 C CNN
	1    9200 3600
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 5A4DD2C0
P 7450 5150
F 0 "D2" H 7450 5250 50  0000 C CNN
F 1 "D" H 7450 5050 50  0000 C CNN
F 2 "DO214:DO-214AC(SMA)" H 7450 5150 50  0001 C CNN
F 3 "" H 7450 5150 50  0001 C CNN
	1    7450 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7650 5050 7650 5150
Wire Wire Line
	7650 5150 7600 5150
Wire Wire Line
	7300 5150 7250 5150
Wire Wire Line
	7250 5150 7250 5350
Wire Wire Line
	2000 6150 2650 6150
Wire Wire Line
	2000 6700 2650 6700
Wire Wire Line
	2000 6350 2050 6350
Wire Wire Line
	2050 6350 2050 7100
$Comp
L CP C1
U 1 1 5A4DE889
P 2650 6900
F 0 "C1" H 2675 7000 50  0000 L CNN
F 1 "100µ" H 2675 6800 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.8" H 2688 6750 50  0001 C CNN
F 3 "" H 2650 6900 50  0001 C CNN
	1    2650 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6100 2650 6750
Connection ~ 2650 6700
Wire Wire Line
	2050 7100 2650 7100
Wire Wire Line
	2650 7050 2650 7150
Connection ~ 2050 6900
Text GLabel 2150 6250 2    60   Input ~ 0
OUT1
Text GLabel 2150 6800 2    60   Input ~ 0
OUT2
Wire Wire Line
	2150 6250 2000 6250
$Comp
L +5V #PWR011
U 1 1 5A4DEDE2
P 2650 6100
F 0 "#PWR011" H 2650 5950 50  0001 C CNN
F 1 "+5V" H 2650 6240 50  0000 C CNN
F 2 "" H 2650 6100 50  0001 C CNN
F 3 "" H 2650 6100 50  0001 C CNN
	1    2650 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5A4DEE1C
P 2650 7150
F 0 "#PWR012" H 2650 6900 50  0001 C CNN
F 1 "GND" H 2650 7000 50  0000 C CNN
F 2 "" H 2650 7150 50  0001 C CNN
F 3 "" H 2650 7150 50  0001 C CNN
	1    2650 7150
	1    0    0    -1  
$EndComp
Connection ~ 2650 7100
Connection ~ 2650 6150
Wire Wire Line
	2050 6900 2000 6900
Wire Wire Line
	2150 6800 2000 6800
Text GLabel 2450 4250 2    55   Input ~ 0
INP2
Text GLabel 2450 4150 2    55   Input ~ 0
INP1
Wire Wire Line
	2450 4150 2200 4150
Wire Wire Line
	2200 4250 2450 4250
$Comp
L GND #PWR013
U 1 1 5A4DF1F1
P 2400 4400
F 0 "#PWR013" H 2400 4150 50  0001 C CNN
F 1 "GND" H 2400 4250 50  0000 C CNN
F 2 "" H 2400 4400 50  0001 C CNN
F 3 "" H 2400 4400 50  0001 C CNN
	1    2400 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4350 2400 4350
Wire Wire Line
	2400 4350 2400 4400
Wire Wire Line
	7500 5450 7200 5450
Wire Wire Line
	7200 5550 7500 5550
Wire Wire Line
	6700 5550 6350 5550
Wire Wire Line
	6350 5450 6700 5450
Wire Wire Line
	6700 5350 6350 5350
$Comp
L 2N7002 Q1
U 1 1 5A4E2FC3
P 2200 2050
F 0 "Q1" H 2400 2125 50  0000 L CNN
F 1 "2N7002" H 2400 2050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2400 1975 50  0001 L CIN
F 3 "" H 2200 2050 50  0001 L CNN
	1    2200 2050
	0    1    1    0   
$EndComp
$Comp
L 2N7002 Q2
U 1 1 5A4E3170
P 3800 2050
F 0 "Q2" H 4000 2125 50  0000 L CNN
F 1 "2N7002" H 4000 2050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4000 1975 50  0001 L CIN
F 3 "" H 3800 2050 50  0001 L CNN
	1    3800 2050
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5A4E412F
P 1950 1950
F 0 "R6" V 2030 1950 50  0000 C CNN
F 1 "10K" V 1950 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1880 1950 50  0001 C CNN
F 3 "" H 1950 1950 50  0001 C CNN
	1    1950 1950
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A4E4247
P 3550 1950
F 0 "R8" V 3630 1950 50  0000 C CNN
F 1 "10K" V 3550 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3480 1950 50  0001 C CNN
F 3 "" H 3550 1950 50  0001 C CNN
	1    3550 1950
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5A4E4413
P 4050 1950
F 0 "R9" V 4130 1950 50  0000 C CNN
F 1 "3.3K" V 4050 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3980 1950 50  0001 C CNN
F 3 "" H 4050 1950 50  0001 C CNN
	1    4050 1950
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5A4E48A6
P 2450 1950
F 0 "R7" V 2530 1950 50  0000 C CNN
F 1 "3.3K" V 2450 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2380 1950 50  0001 C CNN
F 3 "" H 2450 1950 50  0001 C CNN
	1    2450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2100 3550 2150
Wire Wire Line
	3450 2150 3600 2150
Wire Wire Line
	4000 2150 4150 2150
Wire Wire Line
	4050 2150 4050 2100
Wire Wire Line
	2400 2150 2550 2150
Wire Wire Line
	2450 2150 2450 2100
Wire Wire Line
	1950 2100 1950 2150
Wire Wire Line
	1850 2150 2000 2150
Wire Wire Line
	2200 1850 2200 1750
Wire Wire Line
	2200 1750 1950 1750
Wire Wire Line
	1950 1700 1950 1800
Wire Wire Line
	3800 1850 3800 1750
Wire Wire Line
	3800 1750 3550 1750
Wire Wire Line
	3550 1700 3550 1800
$Comp
L +3V3 #PWR014
U 1 1 5A4E4C36
P 1950 1700
F 0 "#PWR014" H 1950 1550 50  0001 C CNN
F 1 "+3V3" H 1950 1840 50  0000 C CNN
F 2 "" H 1950 1700 50  0001 C CNN
F 3 "" H 1950 1700 50  0001 C CNN
	1    1950 1700
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR015
U 1 1 5A4E4C7C
P 3550 1700
F 0 "#PWR015" H 3550 1550 50  0001 C CNN
F 1 "+3V3" H 3550 1840 50  0000 C CNN
F 2 "" H 3550 1700 50  0001 C CNN
F 3 "" H 3550 1700 50  0001 C CNN
	1    3550 1700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR016
U 1 1 5A4E4CC2
P 4050 1700
F 0 "#PWR016" H 4050 1550 50  0001 C CNN
F 1 "+5V" H 4050 1840 50  0000 C CNN
F 2 "" H 4050 1700 50  0001 C CNN
F 3 "" H 4050 1700 50  0001 C CNN
	1    4050 1700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 5A4E4D08
P 2450 1700
F 0 "#PWR017" H 2450 1550 50  0001 C CNN
F 1 "+5V" H 2450 1840 50  0000 C CNN
F 2 "" H 2450 1700 50  0001 C CNN
F 3 "" H 2450 1700 50  0001 C CNN
	1    2450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1700 4050 1800
Wire Wire Line
	2450 1700 2450 1800
Connection ~ 1950 1750
Connection ~ 3550 1750
Text GLabel 2550 2150 2    55   Input ~ 0
OUT1
Text GLabel 4150 2150 2    55   Input ~ 0
OUT2
Text GLabel 1850 2150 0    55   Input ~ 0
LED1
Text GLabel 3450 2150 0    55   Input ~ 0
LED2
Connection ~ 3550 2150
Connection ~ 4050 2150
Connection ~ 1950 2150
Connection ~ 2450 2150
$Comp
L PWR_FLAG #FLG018
U 1 1 5A4EE1C4
P 5350 7000
F 0 "#FLG018" H 5350 7075 50  0001 C CNN
F 1 "PWR_FLAG" H 5350 7150 50  0000 C CNN
F 2 "" H 5350 7000 50  0001 C CNN
F 3 "" H 5350 7000 50  0001 C CNN
	1    5350 7000
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR019
U 1 1 5A4EE223
P 4450 6950
F 0 "#PWR019" H 4450 6750 50  0001 C CNN
F 1 "GNDPWR" H 4450 6820 50  0000 C CNN
F 2 "" H 4450 6900 50  0001 C CNN
F 3 "" H 4450 6900 50  0001 C CNN
	1    4450 6950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 5A4EE719
P 5700 7000
F 0 "#PWR020" H 5700 6850 50  0001 C CNN
F 1 "+5V" H 5700 7140 50  0000 C CNN
F 2 "" H 5700 7000 50  0001 C CNN
F 3 "" H 5700 7000 50  0001 C CNN
	1    5700 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5A4EE75F
P 4800 6950
F 0 "#PWR021" H 4800 6700 50  0001 C CNN
F 1 "GND" H 4800 6800 50  0000 C CNN
F 2 "" H 4800 6950 50  0001 C CNN
F 3 "" H 4800 6950 50  0001 C CNN
	1    4800 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6950 4800 6900
Wire Wire Line
	4800 6900 4450 6900
Wire Wire Line
	4450 6900 4450 6950
Wire Wire Line
	5350 7000 5350 7050
Wire Wire Line
	5350 7050 5700 7050
Wire Wire Line
	5700 7050 5700 7000
Wire Wire Line
	8800 4750 8800 5000
$Comp
L D D1
U 1 1 5A4EF7CB
P 8550 4850
F 0 "D1" H 8550 4950 50  0000 C CNN
F 1 "D" H 8550 4750 50  0000 C CNN
F 2 "DO214:DO-214AC(SMA)" H 8550 4850 50  0001 C CNN
F 3 "" H 8550 4850 50  0001 C CNN
	1    8550 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 4850 9000 4850
Wire Wire Line
	8400 4850 8250 4850
$Comp
L PWR_FLAG #FLG022
U 1 1 5A4D84B5
P 8800 4750
F 0 "#FLG022" H 8800 4825 50  0001 C CNN
F 1 "PWR_FLAG" H 8800 4900 50  0000 C CNN
F 2 "" H 8800 4750 50  0001 C CNN
F 3 "" H 8800 4750 50  0001 C CNN
	1    8800 4750
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x04_Odd_Even J4
U 1 1 5A4D8F2B
P 6900 5450
F 0 "J4" H 6950 5650 50  0000 C CNN
F 1 "Programmer" H 6950 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 6900 5450 50  0001 C CNN
F 3 "" H 6900 5450 50  0001 C CNN
	1    6900 5450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
