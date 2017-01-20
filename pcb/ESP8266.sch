EESchema Schematic File Version 2
LIBS:remote_switch-rescue
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
LIBS:ESP8266
LIBS:dc-dc
LIBS:relays
LIBS:remote_switch
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:brooktre
LIBS:cmos_ieee
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:ir
LIBS:Lattice
LIBS:logo
LIBS:maxim
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:Zilog
LIBS:remote_switch-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L ESP-13-WROOM-02 U1
U 1 1 572CACB5
P 3200 1650
F 0 "U1" H 3200 1550 50  0000 C CNN
F 1 "ESP-13-WROOM-02" H 3200 2100 50  0000 C CNN
F 2 "ESP8266:ESP-13-WROOM-02" H 3100 1650 50  0001 C CNN
F 3 "" H 3100 1650 50  0001 C CNN
	1    3200 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 572CADD6
P 3200 2800
F 0 "#PWR01" H 3200 2550 50  0001 C CNN
F 1 "GND" H 3200 2650 50  0000 C CNN
F 2 "" H 3200 2800 50  0000 C CNN
F 3 "" H 3200 2800 50  0000 C CNN
	1    3200 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 572CAE4D
P 10400 1250
F 0 "P1" H 10400 1450 50  0000 C CNN
F 1 "PROG_UART" V 10500 1250 50  0000 C CNN
F 2 "Connect:PINHEAD1-3" H 10400 1250 50  0001 C CNN
F 3 "" H 10400 1250 50  0000 C CNN
	1    10400 1250
	1    0    0    -1  
$EndComp
Text Label 4150 1950 0    60   ~ 0
TX
Text Label 4150 2050 0    60   ~ 0
RX
Text Label 10100 1150 2    60   ~ 0
TX
Text Label 10100 1250 2    60   ~ 0
RX
Text Label 10100 1350 2    60   ~ 0
GND
$Comp
L SW_PUSH SW1
U 1 1 5730A0D0
P 6350 2200
F 0 "SW1" H 6500 2310 50  0000 C CNN
F 1 "RESET" H 6350 2120 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3S-1000" H 6350 2200 50  0001 C CNN
F 3 "" H 6350 2200 50  0000 C CNN
	1    6350 2200
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5730A517
P 1200 1700
F 0 "C2" H 1100 1800 50  0000 L CNN
F 1 "1uF" H 1225 1600 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1238 1550 50  0001 C CNN
F 3 "" H 1200 1700 50  0000 C CNN
	1    1200 1700
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5730A620
P 975 1700
F 0 "C1" H 1000 1800 50  0000 L CNN
F 1 "10nF" H 1000 1600 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1013 1550 50  0001 C CNN
F 3 "" H 975 1700 50  0000 C CNN
	1    975  1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5730AD0D
P 6350 2750
F 0 "#PWR02" H 6350 2500 50  0001 C CNN
F 1 "GND" H 6350 2600 50  0000 C CNN
F 2 "" H 6350 2750 50  0000 C CNN
F 3 "" H 6350 2750 50  0000 C CNN
	1    6350 2750
	1    0    0    -1  
$EndComp
Text Label 6200 1800 2    60   ~ 0
RESET
$Comp
L R R2
U 1 1 5730ADAF
P 6350 1500
F 0 "R2" V 6430 1500 50  0000 C CNN
F 1 "10K" V 6350 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6280 1500 50  0001 C CNN
F 3 "" H 6350 1500 50  0000 C CNN
	1    6350 1500
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5730AE16
P 7000 1500
F 0 "R3" V 7080 1500 50  0000 C CNN
F 1 "10K" V 7000 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6930 1500 50  0001 C CNN
F 3 "" H 7000 1500 50  0000 C CNN
	1    7000 1500
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5730AE90
P 1775 1450
F 0 "R1" V 1725 1600 50  0000 C CNN
F 1 "10K" V 1775 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1705 1450 50  0001 C CNN
F 3 "" H 1775 1450 50  0000 C CNN
	1    1775 1450
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 5730B520
P 7000 2200
F 0 "SW2" H 7150 2310 50  0000 C CNN
F 1 "FLASH" H 7000 2120 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3S-1000" H 7000 2200 50  0001 C CNN
F 3 "" H 7000 2200 50  0000 C CNN
	1    7000 2200
	0    1    1    0   
$EndComp
Text Label 6850 1800 2    60   ~ 0
FLASH
Text Label 4150 1650 0    60   ~ 0
RESET
Text Label 2200 2050 2    60   ~ 0
FLASH
Text Label 4150 2150 0    60   ~ 0
RELAY_OUT
Text Label 4150 1750 0    60   ~ 0
PWR_SENSE
$Comp
L ZENER D3
U 1 1 5730C841
P 2200 5200
F 0 "D3" H 2200 5300 50  0000 C CNN
F 1 "BZT52C3" H 2200 5100 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" H 2200 5200 50  0001 C CNN
F 3 "" H 2200 5200 50  0000 C CNN
	1    2200 5200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 5730CD07
P 2200 5550
F 0 "#PWR03" H 2200 5300 50  0001 C CNN
F 1 "GND" H 2200 5400 50  0000 C CNN
F 2 "" H 2200 5550 50  0000 C CNN
F 3 "" H 2200 5550 50  0000 C CNN
	1    2200 5550
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5730CE4F
P 1900 4900
F 0 "R4" V 1980 4900 50  0000 C CNN
F 1 "10K" V 1900 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1830 4900 50  0001 C CNN
F 3 "" H 1900 4900 50  0000 C CNN
	1    1900 4900
	0    1    1    0   
$EndComp
Text Label 2700 4900 0    60   ~ 0
PWR_SENSE
$Comp
L R2-1A05 RL1
U 1 1 5829CB3E
P 7400 4750
F 0 "RL1" H 7850 4900 50  0000 L CNN
F 1 "R2-1A05" H 7850 4800 50  0000 L CNN
F 2 "remote:R2-1A05_2" H 7400 4750 50  0001 C CNN
F 3 "" H 7400 4750 50  0000 C CNN
	1    7400 4750
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5829D767
P 6800 5600
F 0 "R6" V 6880 5600 50  0000 C CNN
F 1 "10k" V 6800 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6730 5600 50  0001 C CNN
F 3 "" H 6800 5600 50  0000 C CNN
	1    6800 5600
	1    0    0    -1  
$EndComp
Text Label 6300 5400 2    60   ~ 0
RELAY_OUT
$Comp
L D_Schottky D2
U 1 1 5829E7DC
P 6750 4750
F 0 "D2" H 6750 4850 50  0000 C CNN
F 1 "CUS520" H 6750 4650 50  0000 C CNN
F 2 "Diodes_SMD:SOD-323_HandSoldering" H 6750 4750 50  0001 C CNN
F 3 "" H 6750 4750 50  0000 C CNN
	1    6750 4750
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5829EC4D
P 6550 5400
F 0 "R5" V 6630 5400 50  0000 C CNN
F 1 "10" V 6550 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6480 5400 50  0001 C CNN
F 3 "" H 6550 5400 50  0000 C CNN
	1    6550 5400
	0    1    1    0   
$EndComp
$Comp
L CONN_01X06 P2
U 1 1 5829F33D
P 10400 2100
F 0 "P2" H 10400 2450 50  0000 C CNN
F 1 "CONN_01X06" V 10500 2100 50  0000 C CNN
F 2 "remote:CON6_1X6_RHK_MINICT" H 10400 2100 50  0001 C CNN
F 3 "" H 10400 2100 50  0000 C CNN
	1    10400 2100
	1    0    0    -1  
$EndComp
Text Label 10100 1950 2    60   ~ 0
GND
Text Label 10100 2050 2    60   ~ 0
POWER_SENSE
Text Label 10100 2150 2    60   ~ 0
REL_OUT1
Text Label 10100 2250 2    60   ~ 0
REL_OUT2
Text Label 8300 4350 0    60   ~ 0
REL_OUT1
Text Label 8300 5150 0    60   ~ 0
REL_OUT2
Text GLabel 10100 1850 0    60   Input ~ 0
VIN
$Comp
L C C14
U 1 1 582A4F46
P 5975 2225
F 0 "C14" H 6000 2325 50  0000 L CNN
F 1 "10nF" H 6000 2125 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6013 2075 50  0001 C CNN
F 3 "" H 5975 2225 50  0000 C CNN
	1    5975 2225
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 582A5117
P 7325 2200
F 0 "C13" H 7350 2300 50  0000 L CNN
F 1 "10nF" H 7350 2100 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7363 2050 50  0001 C CNN
F 3 "" H 7325 2200 50  0000 C CNN
	1    7325 2200
	1    0    0    -1  
$EndComp
NoConn ~ 2200 1550
NoConn ~ 2200 1650
NoConn ~ 2200 1750
NoConn ~ 4150 1450
NoConn ~ 4150 1550
Text Label 1625 4900 2    60   ~ 0
POWER_SENSE
NoConn ~ 10200 2350
$Comp
L +5V #PWR04
U 1 1 582A4AC7
P 7200 4250
F 0 "#PWR04" H 7200 4100 50  0001 C CNN
F 1 "+5V" H 7200 4390 50  0000 C CNN
F 2 "" H 7200 4250 50  0000 C CNN
F 3 "" H 7200 4250 50  0000 C CNN
	1    7200 4250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 582A6EC4
P 6700 1000
F 0 "#PWR05" H 6700 850 50  0001 C CNN
F 1 "+3.3V" H 6700 1140 50  0000 C CNN
F 2 "" H 6700 1000 50  0000 C CNN
F 3 "" H 6700 1000 50  0000 C CNN
	1    6700 1000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 582A7C7E
P 2200 4175
F 0 "#PWR06" H 2200 4025 50  0001 C CNN
F 1 "+3.3V" H 2200 4315 50  0000 C CNN
F 2 "" H 2200 4175 50  0000 C CNN
F 3 "" H 2200 4175 50  0000 C CNN
	1    2200 4175
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5829D633
P 7200 5900
F 0 "#PWR08" H 7200 5650 50  0001 C CNN
F 1 "GND" H 7200 5750 50  0000 C CNN
F 2 "" H 7200 5900 50  0000 C CNN
F 3 "" H 7200 5900 50  0000 C CNN
	1    7200 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	825  1350 2200 1350
Wire Wire Line
	1925 1450 2200 1450
Wire Wire Line
	7000 1650 7000 1900
Wire Wire Line
	6850 1800 7325 1800
Connection ~ 7000 1800
Wire Wire Line
	6350 1650 6350 1900
Wire Wire Line
	5975 1800 6350 1800
Connection ~ 6350 1800
Wire Wire Line
	6350 1350 6350 1150
Wire Wire Line
	6350 1150 7000 1150
Wire Wire Line
	7000 1150 7000 1350
Wire Wire Line
	6700 1000 6700 1150
Connection ~ 6700 1150
Wire Wire Line
	7000 2500 7000 2650
Wire Wire Line
	5975 2650 7325 2650
Wire Wire Line
	2200 5400 2200 5550
Wire Wire Line
	2200 4650 2200 5000
Connection ~ 2200 4900
Wire Wire Line
	2050 4900 2700 4900
Wire Wire Line
	10100 1150 10200 1150
Wire Wire Line
	10100 1250 10200 1250
Wire Wire Line
	10200 1350 10100 1350
Wire Wire Line
	7200 5550 7200 5900
Wire Wire Line
	6800 5750 6800 5800
Wire Wire Line
	6800 5800 7200 5800
Connection ~ 7200 5800
Wire Wire Line
	6750 4900 6750 5100
Wire Wire Line
	6750 5100 7200 5100
Wire Wire Line
	6700 5400 6900 5400
Wire Wire Line
	6800 5450 6800 5400
Connection ~ 6800 5400
Wire Wire Line
	6400 5400 6300 5400
Wire Wire Line
	10100 1850 10200 1850
Wire Wire Line
	10100 1950 10200 1950
Wire Wire Line
	10100 2050 10200 2050
Wire Wire Line
	10100 2150 10200 2150
Wire Wire Line
	10100 2250 10200 2250
Wire Wire Line
	7700 4450 7700 4350
Wire Wire Line
	7700 4350 8300 4350
Wire Wire Line
	7600 5050 7600 5150
Wire Wire Line
	7600 5150 8300 5150
Wire Wire Line
	1750 4900 1625 4900
Wire Wire Line
	7325 1800 7325 2050
Wire Wire Line
	7325 2650 7325 2350
Connection ~ 7000 2650
Wire Wire Line
	5975 2650 5975 2375
Wire Wire Line
	5975 2075 5975 1800
Wire Wire Line
	4150 1350 4950 1350
Wire Wire Line
	4950 1350 4950 2650
Wire Wire Line
	4150 1850 4950 1850
Connection ~ 4950 1850
Wire Wire Line
	3200 2550 3200 2800
Connection ~ 3200 2650
Wire Wire Line
	7200 4450 7200 4250
Wire Wire Line
	6750 4600 6750 4350
Wire Wire Line
	6750 4350 7200 4350
Connection ~ 7200 4350
Wire Wire Line
	2200 4175 2200 4350
Wire Wire Line
	4950 2650 975  2650
Wire Wire Line
	6350 2500 6350 2750
Connection ~ 6350 2650
Text Notes 8150 3550 0    60   ~ 0
MTDO   GPIO0  GPIO2 Mode 	Description\nGPIO15 	\nL 	        L 	   H 	   UART 	Download code from UART\nL 	        H 	   H 	   Flash 	Boot from SPI Flash\nH 	        x 	   x 	   SDIO 	Boot from SD-card
$Comp
L R R10
U 1 1 5834A764
P 1775 1950
F 0 "R10" V 1725 2100 50  0000 C CNN
F 1 "10K" V 1775 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1705 1950 50  0001 C CNN
F 3 "" H 1775 1950 50  0000 C CNN
	1    1775 1950
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 58356D83
P 1775 1850
F 0 "R9" V 1725 2000 50  0000 C CNN
F 1 "10K" V 1775 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1705 1850 50  0001 C CNN
F 3 "" H 1775 1850 50  0000 C CNN
	1    1775 1850
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 582A6D84
P 825 1250
F 0 "#PWR09" H 825 1100 50  0001 C CNN
F 1 "+3.3V" H 825 1390 50  0000 C CNN
F 2 "" H 825 1250 50  0000 C CNN
F 3 "" H 825 1250 50  0000 C CNN
	1    825  1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	825  1350 825  1250
Wire Wire Line
	1200 1850 1200 2650
Wire Wire Line
	975  2650 975  1850
Wire Wire Line
	1600 1450 1600 1350
Connection ~ 1600 1350
Wire Wire Line
	1925 1950 2200 1950
Wire Wire Line
	1925 1850 2200 1850
Wire Wire Line
	975  1550 975  1350
Connection ~ 975  1350
Wire Wire Line
	1200 1550 1200 1350
Connection ~ 1200 1350
Wire Wire Line
	1425 1950 1425 1350
Connection ~ 1425 1350
Wire Wire Line
	1625 1450 1600 1450
Wire Wire Line
	1625 1950 1425 1950
Wire Wire Line
	1525 1850 1525 2650
Wire Wire Line
	1525 1850 1625 1850
$Comp
L FDN335N Q1
U 1 1 5845FB12
P 7100 5350
F 0 "Q1" H 7300 5425 50  0000 L CNN
F 1 "FDN335N" H 7300 5350 50  0000 L CNN
F 2 "remote:FDN335N" H 7300 5275 50  0001 L CIN
F 3 "" H 7100 5350 50  0000 L CNN
	1    7100 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5050 7200 5150
Connection ~ 7200 5100
$Comp
L BAT17 D1
U 1 1 58472EBD
P 2200 4500
F 0 "D1" H 2200 4600 50  0000 C CNN
F 1 "BAT17" H 2200 4400 50  0000 C CNN
F 2 "_std:SOT-23" H 2200 4500 50  0001 C CNN
F 3 "" H 2200 4500 50  0000 C CNN
	1    2200 4500
	0    1    1    0   
$EndComp
Connection ~ 1200 2650
Connection ~ 1525 2650
Wire Wire Line
	2200 2150 2050 2150
Wire Wire Line
	2050 2150 2050 2650
Connection ~ 2050 2650
$EndSCHEMATC
