EESchema Schematic File Version 2
LIBS:GImbal Mastboard Rev-2-rescue
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
LIBS:MRDT_Actives
LIBS:MRDT_Devices
LIBS:MRDT_Drill_Holes
LIBS:MRDT_Headers
LIBS:MRDT_ICs
LIBS:MRDT_Passives
LIBS:MRDT_Shields
LIBS:MRDT_Silkscreens
LIBS:MRDT_Switches
LIBS:MRDT_Connectors
LIBS:GImbal Mastboard Rev-2-cache
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
L JAG_ARM_Connector_10pin U6
U 1 1 5A7CA4FE
P 9450 4750
F 0 "U6" H 9500 4700 60  0001 C CNN
F 1 "JAG_ARM_Connector-10pin" H 9650 5350 60  0000 C CNN
F 2 "MRDT_Connectors:JTAG_ARM_Connector_10_Pin" H 9450 4750 60  0001 C CNN
F 3 "" H 9450 4750 60  0001 C CNN
	1    9450 4750
	1    0    0    -1  
$EndComp
$Comp
L OKI U2
U 1 1 5A7CB182
P 2600 2050
F 0 "U2" H 2450 1800 60  0001 C CNN
F 1 "OKI_12Vto3V3" H 2750 2400 60  0000 C CNN
F 2 "MRDT_Devices:OKI_Horisontal" H 2350 1950 60  0001 C CNN
F 3 "" H 2350 1950 60  0001 C CNN
	1    2600 2050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A7CB1A2
P 2000 2100
F 0 "C1" H 2025 2200 50  0000 L CNN
F 1 "10uF" H 2025 2000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2038 1950 50  0001 C CNN
F 3 "" H 2000 2100 50  0001 C CNN
	1    2000 2100
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A7CB212
P 2000 1700
F 0 "C2" H 2025 1800 50  0000 L CNN
F 1 "10uF" H 2025 1600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2038 1550 50  0001 C CNN
F 3 "" H 2000 1700 50  0001 C CNN
	1    2000 1700
	1    0    0    -1  
$EndComp
$Comp
L Anderson_2 C15
U 1 1 5A7CB8EC
P 2600 1300
F 0 "C15" H 2650 1250 60  0000 C CNN
F 1 "APP_2" H 2700 1800 60  0000 C CNN
F 2 "MRDT_Connectors:Anderson_2_Horisontal_Side_by_Side" H 2650 750 60  0001 C CNN
F 3 "" H 2650 750 60  0001 C CNN
	1    2600 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5A7CBBE1
P 2450 1300
F 0 "#PWR01" H 2450 1050 50  0001 C CNN
F 1 "GND" H 2450 1150 50  0000 C CNN
F 2 "" H 2450 1300 50  0001 C CNN
F 3 "" H 2450 1300 50  0001 C CNN
	1    2450 1300
	1    0    0    -1  
$EndComp
Text Label 2000 950  0    60   ~ 0
12V
Text Label 2250 1200 0    60   ~ 0
GND
Text GLabel 1700 2250 0    60   Input ~ 0
+3V3
$Comp
L Raspberry_Pi U4
U 1 1 5A7CC2AE
P 7300 3200
F 0 "U4" H 7350 3150 60  0001 C CNN
F 1 "Raspberry_Pi_Header" H 7550 5250 60  0000 C CNN
F 2 "MRDT_Shields:RASPBERRY_PI_HEADERS" H 7300 4350 60  0001 C CNN
F 3 "" H 7300 4350 60  0001 C CNN
	1    7300 3200
	1    0    0    -1  
$EndComp
Text GLabel 8100 1450 2    60   UnSpc ~ 0
GND
Text GLabel 7100 1250 0    60   Input ~ 0
+3V3
Text GLabel 7100 1650 0    60   Input ~ 0
GND
Text GLabel 8100 2150 2    60   Input ~ 0
GND
Text GLabel 7100 2450 0    60   Input ~ 0
GND
Text GLabel 7100 3150 0    60   Input ~ 0
GND
Text GLabel 8100 2850 2    60   Input ~ 0
GND
Text GLabel 8100 2650 2    60   Input ~ 0
GND
Text GLabel 9250 1350 0    60   Input ~ 0
+3V3
Text GLabel 10200 1450 2    60   UnSpc ~ 0
GND
Text GLabel 10200 2600 2    60   UnSpc ~ 0
GND
$Comp
L IMU_LSM90S1 U3
U 1 1 5A7CC898
P 6750 5100
F 0 "U3" H 6450 5050 60  0001 C CNN
F 1 "IMU-LSM90S1" H 6750 5850 60  0000 C CNN
F 2 "MRDT_Devices:IMU_LSM90S1" H 6450 5100 60  0001 C CNN
F 3 "" H 6450 5100 60  0001 C CNN
	1    6750 5100
	1    0    0    -1  
$EndComp
Text GLabel 1550 6450 0    60   Input ~ 0
PA6
Text GLabel 1550 6550 0    60   Input ~ 0
PA7
Text GLabel 6200 4650 0    60   Input ~ 0
IMU_SDA
Text GLabel 6200 4550 0    60   Input ~ 0
IMU_SCL
Text GLabel 6200 4450 0    60   Input ~ 0
+3V3
Text GLabel 7300 4500 2    60   Input ~ 0
GND
$Comp
L GND #PWR02
U 1 1 5A7CB122
P 3100 7150
F 0 "#PWR02" H 3100 6900 50  0001 C CNN
F 1 "GND" H 3100 7000 50  0000 C CNN
F 2 "" H 3100 7150 50  0001 C CNN
F 3 "" H 3100 7150 50  0001 C CNN
	1    3100 7150
	1    0    0    -1  
$EndComp
Text GLabel 3450 5950 2    60   Input ~ 0
TCK
Text GLabel 3450 5850 2    60   Input ~ 0
TMS
Text GLabel 3450 5750 2    60   Input ~ 0
TDI
Text GLabel 3450 5650 2    60   Output ~ 0
TDO
Text GLabel 1550 5950 0    60   Output ~ 0
TX_0
Text GLabel 1550 5850 0    60   Input ~ 0
RX_0
$Comp
L Molex_SL_4 U7
U 1 1 5A7CB2F2
P 9450 5600
F 0 "U7" H 9500 5550 60  0001 C CNN
F 1 "Molex_SL-4" H 9650 6050 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_4" H 9450 5600 60  0001 C CNN
F 3 "" H 9450 5600 60  0001 C CNN
	1    9450 5600
	1    0    0    -1  
$EndComp
Text GLabel 9250 5250 0    60   Input ~ 0
GND
Text GLabel 9250 5550 0    60   Input ~ 0
+3V3
Text GLabel 9250 5350 0    60   Input ~ 0
SCL_Out
Text GLabel 9250 5450 0    60   Input ~ 0
SDA_Out
Text GLabel 9250 4300 0    60   Input ~ 0
+3V3
Text GLabel 10100 4300 2    60   Input ~ 0
TMS
Text GLabel 10100 4400 2    60   Input ~ 0
TCK
Text GLabel 10100 4500 2    60   Input ~ 0
TDO
Text GLabel 10100 4600 2    60   Output ~ 0
TDI
$Comp
L R R1
U 1 1 5A7CB655
P 3700 1100
F 0 "R1" V 3780 1100 50  0000 C CNN
F 1 "330" V 3700 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3630 1100 50  0001 C CNN
F 3 "" H 3700 1100 50  0001 C CNN
	1    3700 1100
	1    0    0    -1  
$EndComp
$Comp
L LED POWER1
U 1 1 5A7CB688
P 3700 1450
F 0 "POWER1" H 3700 1550 50  0000 C CNN
F 1 "Green" H 3700 1350 50  0000 C CNN
F 2 "LEDs:LED_1206_HandSoldering" H 3700 1450 50  0001 C CNN
F 3 "" H 3700 1450 50  0001 C CNN
	1    3700 1450
	0    -1   -1   0   
$EndComp
$Comp
L GND #GND03
U 1 1 5A7CB6C5
P 3700 1650
F 0 "#GND03" H 3700 1400 50  0001 C CNN
F 1 "GND" H 3700 1500 50  0000 C CNN
F 2 "" H 3700 1650 50  0001 C CNN
F 3 "" H 3700 1650 50  0001 C CNN
	1    3700 1650
	1    0    0    -1  
$EndComp
Text Notes 9650 5350 3    60   ~ 0
I2C\n
Text Notes 9650 5850 3    60   ~ 0
Serial\n
$Comp
L Molex_SL_3 U8
U 1 1 5A7CBA7D
P 9450 6150
F 0 "U8" H 9500 6100 60  0001 C CNN
F 1 "Molex_SL-3" H 9650 6500 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_3" H 9450 6150 60  0001 C CNN
F 3 "" H 9450 6150 60  0001 C CNN
	1    9450 6150
	1    0    0    -1  
$EndComp
Text GLabel 9250 5900 0    60   Input ~ 0
TX_Out
Text GLabel 9250 6000 0    60   Input ~ 0
RX_Out
Text GLabel 1550 5550 0    60   Input ~ 0
PC6
Text GLabel 1550 5450 0    60   Input ~ 0
PC7
Text GLabel 3450 6050 2    60   Input ~ 0
PD6
Text GLabel 1550 5350 0    60   Input ~ 0
PD7
Text GLabel 8100 1550 2    60   Output ~ 0
PI_TX
Text GLabel 8100 1650 2    60   Input ~ 0
PI_RX
$Comp
L TM4C123G U1
U 1 1 5A7F83DF
P 1750 6900
F 0 "U1" H 1800 6850 60  0001 C CNN
F 1 "TM4C123G" H 2000 9250 60  0000 C CNN
F 2 "Housings_QFP:TQFP-64_10x10mm_Pitch0.5mm" H 1550 5200 60  0001 C CNN
F 3 "" H 1550 5200 60  0001 C CNN
	1    1750 6900
	1    0    0    -1  
$EndComp
Text GLabel 3450 5450 2    60   Input ~ 0
PB2
Text GLabel 3450 5550 2    60   Input ~ 0
PB3
$Comp
L C_Small C3
U 1 1 5A7F99AD
P 4050 5000
F 0 "C3" H 4060 5070 50  0000 L CNN
F 1 "10pF" H 4060 4920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4050 5000 50  0001 C CNN
F 3 "" H 4050 5000 50  0001 C CNN
	1    4050 5000
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 5A7F99C1
P 4050 4800
F 0 "C4" H 4060 4870 50  0000 L CNN
F 1 "10pF" H 4060 4720 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4050 4800 50  0001 C CNN
F 3 "" H 4050 4800 50  0001 C CNN
	1    4050 4800
	0    1    1    0   
$EndComp
$Comp
L Crystal Y1
U 1 1 5A7F9C53
P 3750 4900
F 0 "Y1" H 3750 5050 50  0000 C CNN
F 1 "16MHz" H 3750 4750 50  0000 C CNN
F 2 "MRDT_Actives:NX5032GA" H 3750 4900 50  0001 C CNN
F 3 "" H 3750 4900 50  0001 C CNN
F 4 "100 OHM, .5pF" H 3750 4900 60  0001 C CNN "Notes"
	1    3750 4900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5A7F9F37
P 4250 4950
F 0 "#PWR04" H 4250 4700 50  0001 C CNN
F 1 "GND" H 4250 4800 50  0000 C CNN
F 2 "" H 4250 4950 50  0001 C CNN
F 3 "" H 4250 4950 50  0001 C CNN
	1    4250 4950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 5A7FA513
P 2100 4250
F 0 "C5" H 2110 4320 50  0000 L CNN
F 1 "1uF" H 2110 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2100 4250 50  0001 C CNN
F 3 "" H 2100 4250 50  0001 C CNN
	1    2100 4250
	-1   0    0    1   
$EndComp
$Comp
L C_Small C6
U 1 1 5A7FA561
P 1900 4250
F 0 "C6" H 1910 4320 50  0000 L CNN
F 1 ".01uF" H 1910 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1900 4250 50  0001 C CNN
F 3 "" H 1900 4250 50  0001 C CNN
	1    1900 4250
	-1   0    0    1   
$EndComp
$Comp
L C_Small C7
U 1 1 5A7FA596
P 1700 4250
F 0 "C7" H 1710 4320 50  0000 L CNN
F 1 ".1uF" H 1710 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1700 4250 50  0001 C CNN
F 3 "" H 1700 4250 50  0001 C CNN
	1    1700 4250
	-1   0    0    1   
$EndComp
$Comp
L C_Small C8
U 1 1 5A7FA652
P 1500 4250
F 0 "C8" H 1510 4320 50  0000 L CNN
F 1 ".01uF" H 1510 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1500 4250 50  0001 C CNN
F 3 "" H 1500 4250 50  0001 C CNN
	1    1500 4250
	-1   0    0    1   
$EndComp
$Comp
L C_Small C9
U 1 1 5A7FA691
P 1300 4250
F 0 "C9" H 1310 4320 50  0000 L CNN
F 1 ".1uF" H 1310 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1300 4250 50  0001 C CNN
F 3 "" H 1300 4250 50  0001 C CNN
	1    1300 4250
	-1   0    0    1   
$EndComp
$Comp
L C_Small C10
U 1 1 5A7FA6D3
P 1100 4250
F 0 "C10" H 1110 4320 50  0000 L CNN
F 1 ".01uF" H 1110 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1100 4250 50  0001 C CNN
F 3 "" H 1100 4250 50  0001 C CNN
	1    1100 4250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 5A7FACA5
P 800 4400
F 0 "#PWR05" H 800 4150 50  0001 C CNN
F 1 "GND" H 800 4250 50  0000 C CNN
F 2 "" H 800 4400 50  0001 C CNN
F 3 "" H 800 4400 50  0001 C CNN
	1    800  4400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 5A7FBF5E
P 3550 4400
F 0 "C11" H 3560 4470 50  0000 L CNN
F 1 ".1uF" H 3560 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3550 4400 50  0001 C CNN
F 3 "" H 3550 4400 50  0001 C CNN
	1    3550 4400
	-1   0    0    1   
$EndComp
$Comp
L C_Small C12
U 1 1 5A7FC0B6
P 3750 4400
F 0 "C12" H 3760 4470 50  0000 L CNN
F 1 ".1uF" H 3760 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3750 4400 50  0001 C CNN
F 3 "" H 3750 4400 50  0001 C CNN
	1    3750 4400
	-1   0    0    1   
$EndComp
$Comp
L C_Small C13
U 1 1 5A7FC3E9
P 3950 4400
F 0 "C13" H 3960 4470 50  0000 L CNN
F 1 "1uF" H 3960 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3950 4400 50  0001 C CNN
F 3 "" H 3950 4400 50  0001 C CNN
	1    3950 4400
	-1   0    0    1   
$EndComp
$Comp
L C_Small C14
U 1 1 5A7FC437
P 4150 4400
F 0 "C14" H 4160 4470 50  0000 L CNN
F 1 "2.2uF" H 4160 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4150 4400 50  0001 C CNN
F 3 "" H 4150 4400 50  0001 C CNN
	1    4150 4400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 5A7FD627
P 4250 4550
F 0 "#PWR06" H 4250 4300 50  0001 C CNN
F 1 "GND" H 4250 4400 50  0000 C CNN
F 2 "" H 4250 4550 50  0001 C CNN
F 3 "" H 4250 4550 50  0001 C CNN
	1    4250 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5A7FDF03
P 2500 7150
F 0 "#PWR07" H 2500 6900 50  0001 C CNN
F 1 "GND" H 2500 7000 50  0000 C CNN
F 2 "" H 2500 7150 50  0001 C CNN
F 3 "" H 2500 7150 50  0001 C CNN
	1    2500 7150
	1    0    0    -1  
$EndComp
Text GLabel 9250 1550 0    60   Input ~ 0
LaunchXL_RX
Text GLabel 9250 1650 0    60   Output ~ 0
LaunchXL_TX
Text GLabel 1550 5650 0    60   Input ~ 0
PC5
Text GLabel 1550 5750 0    60   Input ~ 0
PC4
Text GLabel 5850 1900 2    60   Output ~ 0
LaunchXL_RX
Text GLabel 5850 2100 2    60   Input ~ 0
LaunchXL_TX
Text GLabel 3700 900  1    60   Input ~ 0
+3V3
Text GLabel 800  4100 1    60   Input ~ 0
+3V3
Text GLabel 1800 7150 0    60   Input ~ 0
+3V3
Text GLabel 3450 5250 2    60   Input ~ 0
PB0
Text GLabel 3450 5350 2    60   Input ~ 0
PB1
Text GLabel 3450 6150 2    60   Input ~ 0
PB5
Text GLabel 3450 6350 2    60   Input ~ 0
PE4
Text GLabel 3450 6250 2    60   Input ~ 0
PB4
Text GLabel 1550 6350 0    60   Input ~ 0
PA5
Text GLabel 1550 5250 0    60   Input ~ 0
PE0
Text GLabel 1550 6650 0    60   Input ~ 0
PF0
Text GLabel 1550 4750 0    60   Input ~ 0
PB7
Text GLabel 1550 4650 0    60   Input ~ 0
PB6
Text GLabel 1550 6250 0    60   Input ~ 0
PA4
Text GLabel 1550 6150 0    60   Input ~ 0
PA3
Text GLabel 1550 6050 0    60   Input ~ 0
PA2
Text GLabel 3450 6550 2    60   Input ~ 0
PD0
Text GLabel 3450 6650 2    60   Input ~ 0
PD1
Text GLabel 3450 6750 2    60   Input ~ 0
PD2
Text GLabel 3450 6850 2    60   Input ~ 0
PD3
Text GLabel 1550 5150 0    60   Input ~ 0
PE1
Text GLabel 1550 5050 0    60   Input ~ 0
PE2
Text GLabel 1550 4950 0    60   Input ~ 0
PE3
Text GLabel 1550 6750 0    60   Input ~ 0
PF1
Text GLabel 1550 6850 0    60   Input ~ 0
PF2
Text GLabel 3450 4650 2    60   Input ~ 0
PF3
Text GLabel 1550 4850 0    60   Input ~ 0
PF4
Text GLabel 3450 6450 2    60   Input ~ 0
PE5
Text GLabel 5750 2300 2    60   Output ~ 0
IMU_SCL
Text GLabel 5750 2400 2    60   Output ~ 0
IMU_SDA
Text GLabel 5750 1600 2    60   Output ~ 0
TX_Out
Text GLabel 5750 1700 2    60   Input ~ 0
RX_Out
Text GLabel 5750 2600 2    60   Output ~ 0
SCL_Out
Text GLabel 5750 2700 2    60   Output ~ 0
SDA_Out
Text GLabel 9250 4600 0    60   Input ~ 0
TX_0
Text GLabel 9250 4700 0    60   Output ~ 0
RX_0
$Comp
L Jumper JP1
U 1 1 5A87BBB2
P 5450 1900
F 0 "JP1" H 5450 2050 50  0000 C CNN
F 1 "Jumper" H 5450 1820 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5450 1900 50  0001 C CNN
F 3 "" H 5450 1900 50  0001 C CNN
	1    5450 1900
	1    0    0    -1  
$EndComp
$Comp
L Jumper JP2
U 1 1 5A87BBF5
P 5450 2100
F 0 "JP2" H 5450 2250 50  0000 C CNN
F 1 "Jumper" H 5450 2020 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5450 2100 50  0001 C CNN
F 3 "" H 5450 2100 50  0001 C CNN
	1    5450 2100
	1    0    0    -1  
$EndComp
Text GLabel 9250 1450 0    60   Input ~ 0
PB5
Text GLabel 9250 1950 0    60   Input ~ 0
PB4
Text GLabel 9250 2050 0    60   Input ~ 0
PA5
Text GLabel 10200 1550 2    60   Input ~ 0
PD0
Text GLabel 10200 1650 2    60   Input ~ 0
PD1
Text GLabel 10200 1750 2    60   Input ~ 0
PD2
Text GLabel 10200 1850 2    60   Input ~ 0
PD3
Text GLabel 10200 1950 2    60   Input ~ 0
PE1
Text GLabel 10200 2050 2    60   Input ~ 0
PE2
Text GLabel 10200 2150 2    60   Input ~ 0
PE3
Text GLabel 10550 2250 2    60   Input ~ 0
PF1
Text GLabel 3450 5150 2    60   Input ~ 0
PD5
Text GLabel 3450 5050 2    60   Input ~ 0
PD4
Text GLabel 5150 1700 0    60   Output ~ 0
PD6
Text GLabel 5150 1600 0    60   Input ~ 0
PD7
Text GLabel 5050 2100 0    60   Output ~ 0
PB0
Text GLabel 5050 1900 0    60   Input ~ 0
PB1
Text GLabel 5150 2600 0    60   Input ~ 0
PA6
Text GLabel 5150 2700 0    60   Input ~ 0
PA7
Text GLabel 5150 2300 0    60   Input ~ 0
PE4
Text GLabel 5150 2400 0    60   Input ~ 0
PE5
Text GLabel 9250 2600 0    60   Input ~ 0
PF2
Text GLabel 9250 2700 0    60   Input ~ 0
PF3
Text GLabel 9250 2800 0    60   Input ~ 0
PB3
Text GLabel 9250 2900 0    60   Input ~ 0
PC4
Text GLabel 9250 3000 0    60   Input ~ 0
PC5
Text GLabel 9250 3100 0    60   Input ~ 0
PC6
Text GLabel 9250 3200 0    60   Input ~ 0
PC7
Text GLabel 9250 3500 0    60   Input ~ 0
PF4
Text GLabel 10200 2700 2    60   Input ~ 0
PB2
Text GLabel 10200 2800 2    60   Input ~ 0
PE0
Text GLabel 10200 2900 2    60   Input ~ 0
PF0
Text GLabel 10200 3100 2    60   Input ~ 0
PB7
Text GLabel 10200 3200 2    60   Input ~ 0
PB6
Text GLabel 10200 3300 2    60   Input ~ 0
PA4
Text GLabel 10200 3400 2    60   Input ~ 0
PA3
Text GLabel 10200 3500 2    60   Input ~ 0
PA2
Text GLabel 5450 3050 3    60   Input ~ 0
PI_TX
Text GLabel 5450 3600 3    60   Output ~ 0
PI_RX
Text GLabel 5150 2950 0    60   Input ~ 0
PD4
Text GLabel 5150 3500 0    60   Input ~ 0
PD5
Text GLabel 5750 2950 2    60   Input ~ 0
PC4
Text GLabel 5750 3500 2    60   Input ~ 0
PC5
$Comp
L Jumper_NC_Dual JP3
U 1 1 5A8911BB
P 5450 2950
F 0 "JP3" H 5500 2850 50  0000 L CNN
F 1 "Jumper_NC_Dual" H 5450 3050 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5450 2950 50  0001 C CNN
F 3 "" H 5450 2950 50  0001 C CNN
	1    5450 2950
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Dual JP4
U 1 1 5A89121D
P 5450 3500
F 0 "JP4" H 5500 3400 50  0000 L CNN
F 1 "Jumper_NC_Dual" H 5450 3600 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5450 3500 50  0001 C CNN
F 3 "" H 5450 3500 50  0001 C CNN
	1    5450 3500
	1    0    0    -1  
$EndComp
Text GLabel 10550 2350 2    60   Input ~ 0
PWM_OUT
Text GLabel 7400 5650 0    60   Input ~ 0
PWM_OUT
$Comp
L Conn_01x03_Female J1
U 1 1 5AA6FEDF
P 7600 5550
F 0 "J1" H 7600 5750 50  0000 C CNN
F 1 "Conn_01x03_Female" H 7600 5350 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 7600 5550 50  0001 C CNN
F 3 "" H 7600 5550 50  0001 C CNN
	1    7600 5550
	1    0    0    -1  
$EndComp
Text GLabel 7400 5450 0    60   UnSpc ~ 0
GND
Text GLabel 7400 5550 0    60   Input ~ 0
+3V3
Wire Wire Line
	2250 1200 2250 1900
Wire Wire Line
	2000 1900 2400 1900
Wire Wire Line
	2450 1200 2450 1300
Connection ~ 2450 1200
Wire Wire Line
	2000 1850 2000 1950
Wire Wire Line
	2000 950  2000 1550
Connection ~ 2000 1900
Connection ~ 2250 1900
Wire Wire Line
	2400 2250 2400 2000
Wire Wire Line
	1700 2250 2400 2250
Wire Wire Line
	2400 1800 2400 1550
Wire Wire Line
	2400 1550 2000 1550
Connection ~ 2000 2250
Wire Wire Line
	3700 1650 3700 1600
Wire Wire Line
	3700 1300 3700 1250
Wire Wire Line
	3700 950  3700 900 
Wire Wire Line
	2600 7100 3100 7100
Connection ~ 2700 7100
Connection ~ 2800 7100
Connection ~ 2900 7100
Wire Wire Line
	3100 7100 3100 7150
Connection ~ 3000 7100
Wire Wire Line
	2900 4400 3000 4400
Wire Wire Line
	2300 4400 2700 4400
Connection ~ 2600 4400
Connection ~ 2500 4400
Connection ~ 2400 4400
Wire Wire Line
	2300 4150 2300 4400
Wire Wire Line
	3450 4850 3500 4850
Wire Wire Line
	3500 4850 3500 4750
Wire Wire Line
	3500 4750 3900 4750
Wire Wire Line
	3450 4950 3750 4950
Wire Wire Line
	3750 4950 3750 5050
Wire Wire Line
	3750 5050 3900 5050
Wire Wire Line
	3900 4750 3900 4800
Wire Wire Line
	3900 4800 3950 4800
Connection ~ 3750 4750
Connection ~ 3750 5050
Wire Wire Line
	3900 5050 3900 5000
Wire Wire Line
	3900 5000 3950 5000
Wire Wire Line
	4150 4800 4150 5000
Wire Wire Line
	4150 4900 4250 4900
Wire Wire Line
	4250 4900 4250 4950
Connection ~ 4150 4900
Wire Wire Line
	800  4150 800  4100
Wire Wire Line
	800  4150 2300 4150
Connection ~ 1100 4150
Connection ~ 1300 4150
Connection ~ 1500 4150
Connection ~ 1700 4150
Connection ~ 1900 4150
Wire Wire Line
	800  4350 2100 4350
Connection ~ 1900 4350
Connection ~ 1700 4350
Connection ~ 1500 4350
Connection ~ 1300 4350
Wire Wire Line
	800  4350 800  4400
Connection ~ 1100 4350
Connection ~ 2100 4150
Connection ~ 3950 4300
Connection ~ 3750 4300
Connection ~ 3550 4300
Wire Wire Line
	3550 4500 4250 4500
Connection ~ 3950 4500
Connection ~ 3750 4500
Wire Wire Line
	3000 4400 3000 4300
Wire Wire Line
	4250 4500 4250 4550
Connection ~ 4150 4500
Connection ~ 3550 4500
Connection ~ 2100 4350
Wire Wire Line
	2500 7100 2500 7150
Wire Wire Line
	1800 7150 2000 7150
Wire Wire Line
	2000 7150 2000 7100
Connection ~ 2300 4400
Connection ~ 3000 4400
Connection ~ 2900 4400
Connection ~ 2700 4400
Connection ~ 4150 4300
Wire Wire Line
	5150 1600 5750 1600
Wire Wire Line
	5150 1700 5750 1700
Wire Wire Line
	5150 2300 5750 2300
Wire Wire Line
	5150 2400 5750 2400
Wire Wire Line
	5850 1900 5750 1900
Wire Wire Line
	5850 2100 5750 2100
Wire Wire Line
	5150 1900 5050 1900
Wire Wire Line
	5050 2100 5150 2100
Wire Wire Line
	5750 2950 5700 2950
Wire Wire Line
	5750 3500 5700 3500
Wire Wire Line
	5200 3500 5150 3500
Wire Wire Line
	5150 2950 5200 2950
Wire Wire Line
	10200 2250 10550 2250
Wire Wire Line
	10550 2250 10550 2350
Wire Wire Line
	2250 1200 2500 1200
Wire Wire Line
	2500 950  2000 950 
Wire Wire Line
	5150 2600 5750 2600
Wire Wire Line
	5150 2700 5750 2700
Text GLabel 9250 2150 0    60   Input ~ 0
PA6
Text GLabel 9250 2250 0    60   Input ~ 0
PA7
$Comp
L TM4C123G_Launchpad_Shield-RESCUE-GImbal_Mastboard_Rev-2 U5
U 1 1 5AADBC87
P 9450 3550
F 0 "U5" H 9550 4750 60  0001 C CNN
F 1 "TM4C123G_Launchpad_Shield" H 9700 5950 60  0000 C CNN
F 2 "MRDT_Shields:TM4C123G_Booster" H 9450 4800 60  0001 C CNN
F 3 "" H 9450 4800 60  0001 C CNN
	1    9450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4300 4150 4300
$EndSCHEMATC
