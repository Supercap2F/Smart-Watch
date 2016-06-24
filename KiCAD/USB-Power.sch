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
LIBS:special
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
LIBS:user
LIBS:Hyperdrive!-cache
LIBS:SmartWatch-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title ""
Date "24 jun 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BQ25010 U1
U 1 1 57682786
P 3550 1600
F 0 "U1" H 3950 2150 60  0000 C CNN
F 1 "BQ25010" H 3250 2150 60  0000 C CNN
F 2 "" H 3550 1600 60  0000 C CNN
F 3 "" H 3550 1600 60  0000 C CNN
	1    3550 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5768279B
P 2700 1500
F 0 "#PWR022" H 2700 1500 30  0001 C CNN
F 1 "GND" H 2700 1430 30  0001 C CNN
F 2 "" H 2700 1500 60  0000 C CNN
F 3 "" H 2700 1500 60  0000 C CNN
	1    2700 1500
	1    0    0    -1  
$EndComp
$Comp
L I I1
U 1 1 57682965
P 4700 850
F 0 "I1" H 4700 1000 60  0000 C CNN
F 1 "10uH" H 4700 800 60  0000 C CNN
F 2 "" H 4650 950 60  0000 C CNN
F 3 "" H 4650 950 60  0000 C CNN
	1    4700 850 
	1    0    0    -1  
$EndComp
$Comp
L BATTERY BT1
U 1 1 576828B1
P 5350 2300
F 0 "BT1" H 5350 2500 50  0000 C CNN
F 1 "LiPoly 1S1P" H 5350 2110 50  0000 C CNN
F 2 "~" H 5350 2300 60  0000 C CNN
F 3 "~" H 5350 2300 60  0000 C CNN
	1    5350 2300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR023
U 1 1 576828CE
P 5800 2500
F 0 "#PWR023" H 5800 2500 30  0001 C CNN
F 1 "GND" H 5800 2430 30  0001 C CNN
F 2 "" H 5800 2500 60  0000 C CNN
F 3 "" H 5800 2500 60  0000 C CNN
	1    5800 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 576828D4
P 5350 2650
F 0 "#PWR024" H 5350 2650 30  0001 C CNN
F 1 "GND" H 5350 2580 30  0001 C CNN
F 2 "" H 5350 2650 60  0000 C CNN
F 3 "" H 5350 2650 60  0000 C CNN
	1    5350 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 57682A99
P 1450 2200
F 0 "#PWR025" H 1450 2200 30  0001 C CNN
F 1 "GND" H 1450 2130 30  0001 C CNN
F 2 "" H 1450 2200 60  0000 C CNN
F 3 "" H 1450 2200 60  0000 C CNN
	1    1450 2200
	1    0    0    -1  
$EndComp
Text Label 1600 1650 0    60   ~ 0
USB +5V
Text Label 1550 1750 2    60   ~ 0
D-
Text Label 1550 1850 2    60   ~ 0
D+
$Comp
L CAPPOL C1
U 1 1 57682AE1
P 1800 1850
F 0 "C1" H 1850 1950 50  0000 L CNN
F 1 "10u" H 1850 1700 50  0000 L CNN
F 2 "~" H 1800 1850 60  0000 C CNN
F 3 "~" H 1800 1850 60  0000 C CNN
	1    1800 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 57682B07
P 1800 2050
F 0 "#PWR026" H 1800 2050 30  0001 C CNN
F 1 "GND" H 1800 1980 30  0001 C CNN
F 2 "" H 1800 2050 60  0000 C CNN
F 3 "" H 1800 2050 60  0000 C CNN
	1    1800 2050
	1    0    0    -1  
$EndComp
$Comp
L CAP C2
U 1 1 57682B2A
P 5800 2300
F 0 "C2" H 5800 2400 40  0000 L CNN
F 1 "4.7u" H 5806 2215 40  0000 L CNN
F 2 "~" H 5838 2150 30  0000 C CNN
F 3 "~" H 5800 2300 60  0000 C CNN
	1    5800 2300
	1    0    0    -1  
$EndComp
$Comp
L RES R1
U 1 1 57682D1E
P 4950 2450
F 0 "R1" V 5050 2500 40  0000 C CNN
F 1 "1K" V 4950 2500 40  0000 C CNN
F 2 "~" V 4880 2450 30  0000 C CNN
F 3 "~" H 4950 2450 30  0000 C CNN
	1    4950 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 57682D47
P 4950 2650
F 0 "#PWR027" H 4950 2650 30  0001 C CNN
F 1 "GND" H 4950 2580 30  0001 C CNN
F 2 "" H 4950 2650 60  0000 C CNN
F 3 "" H 4950 2650 60  0000 C CNN
	1    4950 2650
	1    0    0    -1  
$EndComp
Text Notes 850  2500 0    60   ~ 0
ISET1:\nPrecharge current is determined by: \nI = (Vprechg * Kset)/R1\n\nWhere:\n Vprechg = 255mV (typ.)\n Kset = 322 (typ.)\n\nISET2:\nDetermines the battery charge rate:\nAsserted=500mA | De-asserted=100mA | High-Z=disable USB charging \n(remember the battery charge current is equal to the chage rate minus the \ncurrent draw of the rest of the circuit)\n\nSTAT Pins:\nPIC needs to check STAT1 and STAT2 to make sure that the precharge is not \ngoing - If it is it should go into a low power state\n\nOutput Voltage:\nVout=0.5V*(1+(R1/R2))\n\nWhere:\n R1+R2<=1M ohm\n Internal reference voltage Vref=0.5V (typ.)\n\n\n
$Comp
L RES R2
U 1 1 5768316B
P 4450 2550
F 0 "R2" V 4550 2600 40  0000 C CNN
F 1 "0R" V 4450 2600 40  0000 C CNN
F 2 "~" V 4380 2550 30  0000 C CNN
F 3 "~" H 4450 2550 30  0000 C CNN
	1    4450 2550
	1    0    0    -1  
$EndComp
$Comp
L RES R3
U 1 1 57683178
P 4700 2550
F 0 "R3" V 4800 2600 40  0000 C CNN
F 1 "0R" V 4700 2600 40  0000 C CNN
F 2 "~" V 4630 2550 30  0000 C CNN
F 3 "~" H 4700 2550 30  0000 C CNN
	1    4700 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5768317E
P 4450 2750
F 0 "#PWR028" H 4450 2750 30  0001 C CNN
F 1 "GND" H 4450 2680 30  0001 C CNN
F 2 "" H 4450 2750 60  0000 C CNN
F 3 "" H 4450 2750 60  0000 C CNN
	1    4450 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 576835EC
P 4300 1700
F 0 "#PWR029" H 4300 1700 30  0001 C CNN
F 1 "GND" H 4300 1630 30  0001 C CNN
F 2 "" H 4300 1700 60  0000 C CNN
F 3 "" H 4300 1700 60  0000 C CNN
	1    4300 1700
	1    0    0    -1  
$EndComp
$Comp
L VBAT #PWR030
U 1 1 576848F8
P 5350 1900
F 0 "#PWR030" H 5350 1860 30  0001 C CNN
F 1 "VBAT" H 5350 2010 30  0000 C CNN
F 2 "~" H 5350 1900 60  0000 C CNN
F 3 "~" H 5350 1900 60  0000 C CNN
	1    5350 1900
	1    0    0    -1  
$EndComp
$Comp
L VBAT #PWR031
U 1 1 5768492E
P 2400 1900
F 0 "#PWR031" H 2400 1860 30  0001 C CNN
F 1 "VBAT" H 2400 2010 30  0000 C CNN
F 2 "~" H 2400 1900 60  0000 C CNN
F 3 "~" H 2400 1900 60  0000 C CNN
	1    2400 1900
	1    0    0    -1  
$EndComp
Text HLabel 2850 1750 0    60   Input ~ 0
STAT1
Text HLabel 2850 1850 0    60   Input ~ 0
STAT2
$Comp
L GND #PWR032
U 1 1 57684A21
P 4300 2400
F 0 "#PWR032" H 4300 2400 30  0001 C CNN
F 1 "GND" H 4300 2330 30  0001 C CNN
F 2 "" H 4300 2400 60  0000 C CNN
F 3 "" H 4300 2400 60  0000 C CNN
	1    4300 2400
	1    0    0    -1  
$EndComp
$Comp
L CAP C6
U 1 1 57684B1A
P 2100 1850
F 0 "C6" H 2100 1950 40  0000 L CNN
F 1 "100n" H 2106 1765 40  0000 L CNN
F 2 "~" H 2138 1700 30  0000 C CNN
F 3 "~" H 2100 1850 60  0000 C CNN
	1    2100 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 57684B27
P 2100 2050
F 0 "#PWR033" H 2100 2050 30  0001 C CNN
F 1 "GND" H 2100 1980 30  0001 C CNN
F 2 "" H 2100 2050 60  0000 C CNN
F 3 "" H 2100 2050 60  0000 C CNN
	1    2100 2050
	1    0    0    -1  
$EndComp
$Comp
L RES R4
U 1 1 57684C8F
P 5000 1050
F 0 "R4" V 5100 1100 40  0000 C CNN
F 1 "560K" V 5000 1100 40  0000 C CNN
F 2 "~" V 4930 1050 30  0000 C CNN
F 3 "~" H 5000 1050 30  0000 C CNN
	1    5000 1050
	-1   0    0    1   
$EndComp
$Comp
L RES R5
U 1 1 57684E3D
P 5000 1550
F 0 "R5" V 5100 1600 40  0000 C CNN
F 1 "100K" V 5000 1600 40  0000 C CNN
F 2 "~" V 4930 1550 30  0000 C CNN
F 3 "~" H 5000 1550 30  0000 C CNN
	1    5000 1550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR034
U 1 1 57684E61
P 5000 1900
F 0 "#PWR034" H 5000 1900 30  0001 C CNN
F 1 "GND" H 5000 1830 30  0001 C CNN
F 2 "" H 5000 1900 60  0000 C CNN
F 3 "" H 5000 1900 60  0000 C CNN
	1    5000 1900
	1    0    0    -1  
$EndComp
$Comp
L CAPPOL C3
U 1 1 57684F80
P 5600 1050
F 0 "C3" H 5650 1150 50  0000 L CNN
F 1 "10u" H 5600 950 50  0000 L CNN
F 2 "~" H 5600 1050 60  0000 C CNN
F 3 "~" H 5600 1050 60  0000 C CNN
	1    5600 1050
	1    0    0    -1  
$EndComp
$Comp
L CAP C4
U 1 1 57684FAD
P 5250 1100
F 0 "C4" H 5250 1200 40  0000 L CNN
F 1 "27p" H 5256 1015 40  0000 L CNN
F 2 "~" H 5288 950 30  0000 C CNN
F 3 "~" H 5250 1100 60  0000 C CNN
	1    5250 1100
	1    0    0    -1  
$EndComp
$Comp
L CAP C5
U 1 1 57684FBA
P 5250 1600
F 0 "C5" H 5250 1700 40  0000 L CNN
F 1 "180p" H 5256 1515 40  0000 L CNN
F 2 "~" H 5288 1450 30  0000 C CNN
F 3 "~" H 5250 1600 60  0000 C CNN
	1    5250 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 576851D2
P 5600 1250
F 0 "#PWR035" H 5600 1250 30  0001 C CNN
F 1 "GND" H 5600 1180 30  0001 C CNN
F 2 "" H 5600 1250 60  0000 C CNN
F 3 "" H 5600 1250 60  0000 C CNN
	1    5600 1250
	1    0    0    -1  
$EndComp
Text HLabel 4300 1100 1    60   Input ~ 0
nPG
$Comp
L +3.3V #PWR036
U 1 1 576941AF
P 5000 800
F 0 "#PWR036" H 5000 760 30  0001 C CNN
F 1 "+3.3V" H 5000 910 30  0000 C CNN
F 2 "" H 5000 800 60  0000 C CNN
F 3 "" H 5000 800 60  0000 C CNN
	1    5000 800 
	1    0    0    -1  
$EndComp
$Comp
L MIC2290 U2
U 1 1 57694A65
P 7750 1500
F 0 "U2" H 8000 1800 60  0000 C CNN
F 1 "MIC2290" H 7650 1800 60  0000 C CNN
F 2 "" H 7650 1800 60  0000 C CNN
F 3 "" H 7650 1800 60  0000 C CNN
	1    7750 1500
	1    0    0    -1  
$EndComp
$Comp
L I I2
U 1 1 57694A74
P 7750 1000
F 0 "I2" H 7750 950 60  0000 C CNN
F 1 "10uH" H 7750 1150 60  0000 C CNN
F 2 "~" H 7700 1100 60  0000 C CNN
F 3 "~" H 7700 1100 60  0000 C CNN
	1    7750 1000
	1    0    0    -1  
$EndComp
$Comp
L CAPPOL C7
U 1 1 57694BBE
P 6600 1200
F 0 "C7" H 6650 1300 50  0000 L CNN
F 1 "1u" H 6650 1100 50  0000 L CNN
F 2 "~" H 6600 1200 60  0000 C CNN
F 3 "~" H 6600 1200 60  0000 C CNN
	1    6600 1200
	1    0    0    -1  
$EndComp
$Comp
L CAPPOL C8
U 1 1 57694BCB
P 8900 1300
F 0 "C8" H 8950 1400 50  0000 L CNN
F 1 "10u" H 8950 1200 50  0000 L CNN
F 2 "~" H 8900 1300 60  0000 C CNN
F 3 "~" H 8900 1300 60  0000 C CNN
F 4 "X5R" H 8900 1300 60  0001 C CNN "Type"
	1    8900 1300
	1    0    0    -1  
$EndComp
$Comp
L RES R6
U 1 1 57694BD3
P 8600 1400
F 0 "R6" V 8700 1450 40  0000 C CNN
F 1 "27K" V 8600 1450 40  0000 C CNN
F 2 "~" V 8530 1400 30  0000 C CNN
F 3 "~" H 8600 1400 30  0000 C CNN
	1    8600 1400
	1    0    0    -1  
$EndComp
$Comp
L RES R7
U 1 1 57694BE0
P 8600 1900
F 0 "R7" V 8700 1950 40  0000 C CNN
F 1 "2K8" V 8600 1950 40  0000 C CNN
F 2 "~" V 8530 1900 30  0000 C CNN
F 3 "~" H 8600 1900 30  0000 C CNN
	1    8600 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 57694D3E
P 8250 1900
F 0 "#PWR037" H 8250 1900 30  0001 C CNN
F 1 "GND" H 8250 1830 30  0001 C CNN
F 2 "" H 8250 1900 60  0000 C CNN
F 3 "" H 8250 1900 60  0000 C CNN
	1    8250 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 57694D44
P 8600 2100
F 0 "#PWR038" H 8600 2100 30  0001 C CNN
F 1 "GND" H 8600 2030 30  0001 C CNN
F 2 "" H 8600 2100 60  0000 C CNN
F 3 "" H 8600 2100 60  0000 C CNN
	1    8600 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 57694D4A
P 8900 1500
F 0 "#PWR039" H 8900 1500 30  0001 C CNN
F 1 "GND" H 8900 1430 30  0001 C CNN
F 2 "" H 8900 1500 60  0000 C CNN
F 3 "" H 8900 1500 60  0000 C CNN
	1    8900 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 57694D50
P 6600 1400
F 0 "#PWR040" H 6600 1400 30  0001 C CNN
F 1 "GND" H 6600 1330 30  0001 C CNN
F 2 "" H 6600 1400 60  0000 C CNN
F 3 "" H 6600 1400 60  0000 C CNN
	1    6600 1400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR041
U 1 1 57694F9D
P 6600 950
F 0 "#PWR041" H 6600 910 30  0001 C CNN
F 1 "+3.3V" H 6600 1060 30  0000 C CNN
F 2 "" H 6600 950 60  0000 C CNN
F 3 "" H 6600 950 60  0000 C CNN
	1    6600 950 
	1    0    0    -1  
$EndComp
Text Notes 6500 2150 0    60   ~ 0
The output voltage is determined by:\nVout=Vref*((R1/R2)+1)\n\nWhere:\n Vref=1.24V\n R1=R6\n R2=R7\n
$Comp
L +13V #PWR042
U 1 1 576959C4
P 8600 1050
F 0 "#PWR042" H 8600 1010 30  0001 C CNN
F 1 "+13V" H 8600 1160 30  0000 C CNN
F 2 "~" H 8600 1050 60  0000 C CNN
F 3 "~" H 8600 1050 60  0000 C CNN
	1    8600 1050
	1    0    0    -1  
$EndComp
Text HLabel 7250 1400 0    60   Input ~ 0
Boost-En
$Comp
L FT201X U3
U 1 1 576966D0
P 7750 4500
F 0 "U3" H 7650 4700 60  0000 C CNN
F 1 "FT201X" H 7900 4700 60  0000 C CNN
F 2 "~" H 8050 4500 60  0000 C CNN
F 3 "~" H 8050 4500 60  0000 C CNN
	1    7750 4500
	1    0    0    -1  
$EndComp
$Comp
L RES R8
U 1 1 57696875
P 6800 4250
F 0 "R8" V 6900 4300 40  0000 C CNN
F 1 "27R" V 6800 4300 40  0000 C CNN
F 2 "~" V 6730 4250 30  0000 C CNN
F 3 "~" H 6800 4250 30  0000 C CNN
	1    6800 4250
	0    -1   -1   0   
$EndComp
$Comp
L RES R9
U 1 1 57696882
P 6800 4400
F 0 "R9" V 6700 4450 40  0000 C CNN
F 1 "27R" V 6800 4450 40  0000 C CNN
F 2 "~" V 6730 4400 30  0000 C CNN
F 3 "~" H 6800 4400 30  0000 C CNN
	1    6800 4400
	0    -1   -1   0   
$EndComp
$Comp
L CAP C13
U 1 1 57696899
P 6450 4600
F 0 "C13" H 6450 4700 40  0000 L CNN
F 1 "47p" H 6456 4515 40  0000 L CNN
F 2 "~" H 6488 4450 30  0000 C CNN
F 3 "~" H 6450 4600 60  0000 C CNN
	1    6450 4600
	1    0    0    -1  
$EndComp
$Comp
L CAP C12
U 1 1 576968A6
P 6200 4600
F 0 "C12" H 6200 4700 40  0000 L CNN
F 1 "47p" H 6206 4515 40  0000 L CNN
F 2 "~" H 6238 4450 30  0000 C CNN
F 3 "~" H 6200 4600 60  0000 C CNN
	1    6200 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 576968AC
P 6950 5200
F 0 "#PWR043" H 6950 5200 30  0001 C CNN
F 1 "GND" H 6950 5130 30  0001 C CNN
F 2 "" H 6950 5200 60  0000 C CNN
F 3 "" H 6950 5200 60  0000 C CNN
	1    6950 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 576968B2
P 6450 4800
F 0 "#PWR044" H 6450 4800 30  0001 C CNN
F 1 "GND" H 6450 4730 30  0001 C CNN
F 2 "" H 6450 4800 60  0000 C CNN
F 3 "" H 6450 4800 60  0000 C CNN
	1    6450 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 576968B8
P 6200 4800
F 0 "#PWR045" H 6200 4800 30  0001 C CNN
F 1 "GND" H 6200 4730 30  0001 C CNN
F 2 "" H 6200 4800 60  0000 C CNN
F 3 "" H 6200 4800 60  0000 C CNN
	1    6200 4800
	1    0    0    -1  
$EndComp
$Comp
L CAP C14
U 1 1 576968BE
P 6750 4900
F 0 "C14" H 6750 5000 40  0000 L CNN
F 1 "100n" H 6756 4815 40  0000 L CNN
F 2 "~" H 6788 4750 30  0000 C CNN
F 3 "~" H 6750 4900 60  0000 C CNN
	1    6750 4900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR046
U 1 1 57697768
P 6950 3450
F 0 "#PWR046" H 6950 3410 30  0001 C CNN
F 1 "+3.3V" H 6950 3550 30  0000 C CNN
F 2 "" H 6950 3450 60  0000 C CNN
F 3 "" H 6950 3450 60  0000 C CNN
	1    6950 3450
	1    0    0    -1  
$EndComp
$Comp
L CAP C11
U 1 1 57697775
P 6750 3950
F 0 "C11" H 6750 4050 40  0000 L CNN
F 1 "100n" H 6756 3865 40  0000 L CNN
F 2 "~" H 6788 3800 30  0000 C CNN
F 3 "~" H 6750 3950 60  0000 C CNN
	1    6750 3950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR047
U 1 1 5769777B
P 6550 4000
F 0 "#PWR047" H 6550 4000 30  0001 C CNN
F 1 "GND" H 6550 3930 30  0001 C CNN
F 2 "" H 6550 4000 60  0000 C CNN
F 3 "" H 6550 4000 60  0000 C CNN
	1    6550 4000
	1    0    0    -1  
$EndComp
$Comp
L CAP C10
U 1 1 576978F8
P 6750 3750
F 0 "C10" H 6750 3850 40  0000 L CNN
F 1 "100n" H 6756 3665 40  0000 L CNN
F 2 "~" H 6788 3600 30  0000 C CNN
F 3 "~" H 6750 3750 60  0000 C CNN
	1    6750 3750
	0    1    1    0   
$EndComp
$Comp
L CAPPOL C9
U 1 1 57697900
P 6750 3500
F 0 "C9" H 6800 3600 50  0000 L CNN
F 1 "4.7u" H 6800 3400 50  0000 L CNN
F 2 "~" H 6750 3500 60  0000 C CNN
F 3 "~" H 6750 3500 60  0000 C CNN
	1    6750 3500
	0    1    1    0   
$EndComp
Text Label 6050 4250 0    60   ~ 0
D-
Text Label 6050 4400 0    60   ~ 0
D+
Text HLabel 8650 4050 2    60   Input ~ 0
SDA
Text HLabel 8650 3950 2    60   Input ~ 0
SCL
Text HLabel 8650 4650 2    60   Input ~ 0
CBUS0
Text HLabel 8650 4750 2    60   Input ~ 0
CBUS1
Text HLabel 8650 4850 2    60   Input ~ 0
CBUS2
Text HLabel 8650 4950 2    60   Input ~ 0
CBUS3
Text HLabel 8650 5050 2    60   Input ~ 0
CBUS4
$Comp
L RES R11
U 1 1 57697CDF
P 9200 5350
F 0 "R11" V 9100 5400 40  0000 C CNN
F 1 "10K" V 9200 5400 40  0000 C CNN
F 2 "~" V 9130 5350 30  0000 C CNN
F 3 "~" H 9200 5350 30  0000 C CNN
	1    9200 5350
	-1   0    0    1   
$EndComp
$Comp
L RES R10
U 1 1 57697CE5
P 9200 4850
F 0 "R10" V 9100 4900 40  0000 C CNN
F 1 "4K7" V 9200 4900 40  0000 C CNN
F 2 "~" V 9130 4850 30  0000 C CNN
F 3 "~" H 9200 4850 30  0000 C CNN
	1    9200 4850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR048
U 1 1 57697CEB
P 9200 5650
F 0 "#PWR048" H 9200 5650 30  0001 C CNN
F 1 "GND" H 9200 5580 30  0001 C CNN
F 2 "" H 9200 5650 60  0000 C CNN
F 3 "" H 9200 5650 60  0000 C CNN
	1    9200 5650
	1    0    0    -1  
$EndComp
Text Label 9200 4250 3    60   ~ 0
USB +5V
Text HLabel 8650 4250 2    60   Input ~ 0
FTDI_RST
$Comp
L TP TP10
U 1 1 576CF80F
P 2100 1550
F 0 "TP10" H 2100 1650 60  0000 C CNN
F 1 "TP" H 2200 1550 60  0001 C CNN
F 2 "~" H 2100 1550 60  0000 C CNN
F 3 "~" H 2100 1550 60  0000 C CNN
	1    2100 1550
	1    0    0    -1  
$EndComp
$Comp
L TP TP9
U 1 1 576CF8B6
P 8900 1000
F 0 "TP9" H 8900 1100 60  0000 C CNN
F 1 "TP" H 9000 1000 60  0001 C CNN
F 2 "~" H 8900 1000 60  0000 C CNN
F 3 "~" H 8900 1000 60  0000 C CNN
	1    8900 1000
	1    0    0    -1  
$EndComp
$Comp
L TP TP11
U 1 1 576CF94C
P 5800 1850
F 0 "TP11" H 5800 1950 60  0000 C CNN
F 1 "TP" H 5900 1850 60  0001 C CNN
F 2 "~" H 5800 1850 60  0000 C CNN
F 3 "~" H 5800 1850 60  0000 C CNN
	1    5800 1850
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P1
U 1 1 576BF0FF
P 1050 1900
F 0 "P1" V 1000 1900 60  0000 C CNN
F 1 "CONN_6" V 1100 1900 60  0000 C CNN
F 2 "" H 1050 1900 60  0000 C CNN
F 3 "" H 1050 1900 60  0000 C CNN
	1    1050 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 1350 4450 1350
Wire Wire Line
	4250 1850 4300 1850
Wire Wire Line
	4300 1850 4300 1950
Wire Wire Line
	5350 2600 5350 2650
Wire Wire Line
	5800 2450 5800 2500
Wire Wire Line
	5350 1900 5350 2000
Connection ~ 4300 1950
Wire Wire Line
	5800 1900 5800 2150
Connection ~ 5350 1950
Wire Wire Line
	1400 1650 2900 1650
Wire Wire Line
	1400 1750 1550 1750
Wire Wire Line
	1400 1850 1550 1850
Wire Wire Line
	1400 2050 1450 2050
Wire Wire Line
	1450 2050 1450 2200
Wire Wire Line
	1800 1700 1800 1650
Connection ~ 1800 1650
Wire Wire Line
	1800 2000 1800 2050
Wire Wire Line
	4250 2150 4950 2150
Wire Wire Line
	4950 2150 4950 2200
Wire Wire Line
	4950 2600 4950 2650
Wire Wire Line
	4250 2250 4600 2250
Wire Wire Line
	4450 2250 4450 2300
Wire Wire Line
	4450 2700 4450 2750
Wire Wire Line
	4600 2250 4600 2750
Wire Wire Line
	4600 2750 4700 2750
Wire Wire Line
	4700 1950 4700 2300
Connection ~ 4700 1950
Connection ~ 4450 2250
Wire Wire Line
	4700 2750 4700 2700
Wire Wire Line
	4250 1650 4300 1650
Wire Wire Line
	4300 1650 4300 1700
Wire Wire Line
	4250 1950 5800 1950
Wire Wire Line
	2400 1950 2900 1950
Wire Wire Line
	2400 1900 2400 1950
Wire Wire Line
	2850 1750 2900 1750
Wire Wire Line
	2900 1850 2850 1850
Wire Wire Line
	4250 2350 4300 2350
Wire Wire Line
	4300 2350 4300 2400
Wire Wire Line
	2100 1600 2100 1700
Connection ~ 2100 1650
Wire Wire Line
	2100 2000 2100 2050
Wire Wire Line
	5000 1800 5000 1900
Wire Wire Line
	5000 1300 5000 1400
Wire Wire Line
	4250 1450 4800 1450
Wire Wire Line
	4800 1450 4800 1350
Wire Wire Line
	4800 1350 5250 1350
Connection ~ 5000 1350
Wire Wire Line
	4450 1350 4450 850 
Wire Wire Line
	4450 850  4500 850 
Wire Wire Line
	4900 850  5600 850 
Wire Wire Line
	5000 800  5000 900 
Wire Wire Line
	5250 1750 5250 1850
Wire Wire Line
	5250 1250 5250 1450
Connection ~ 5250 1350
Wire Wire Line
	5250 850  5250 950 
Connection ~ 5000 850 
Wire Wire Line
	5600 850  5600 900 
Connection ~ 5250 850 
Wire Wire Line
	5250 1850 5000 1850
Connection ~ 5000 1850
Wire Wire Line
	5600 1200 5600 1250
Wire Wire Line
	4300 1150 4250 1150
Wire Wire Line
	4300 1100 4300 1150
Wire Wire Line
	7950 1000 8250 1000
Wire Wire Line
	8250 1000 8250 1300
Wire Wire Line
	8250 1300 8200 1300
Wire Wire Line
	7300 1300 7250 1300
Wire Wire Line
	6600 1000 7550 1000
Wire Wire Line
	7250 1400 7300 1400
Wire Wire Line
	8200 1600 8600 1600
Wire Wire Line
	8600 1550 8600 1650
Connection ~ 8600 1600
Wire Wire Line
	8200 1400 8400 1400
Wire Wire Line
	8400 1400 8400 1100
Wire Wire Line
	8400 1100 8900 1100
Wire Wire Line
	8900 1050 8900 1150
Wire Wire Line
	8600 1050 8600 1150
Connection ~ 8600 1100
Wire Wire Line
	6600 1350 6600 1400
Wire Wire Line
	8600 2050 8600 2100
Wire Wire Line
	8200 1750 8250 1750
Wire Wire Line
	8250 1750 8250 1900
Wire Wire Line
	8200 1850 8250 1850
Connection ~ 8250 1850
Wire Wire Line
	8900 1450 8900 1500
Wire Wire Line
	6600 950  6600 1050
Connection ~ 7250 1000
Connection ~ 6600 1000
Wire Wire Line
	7250 1300 7250 1000
Wire Wire Line
	7000 4650 6750 4650
Wire Wire Line
	6950 4400 7000 4400
Wire Wire Line
	7000 4250 6950 4250
Wire Wire Line
	6050 4250 6550 4250
Wire Wire Line
	6050 4400 6550 4400
Wire Wire Line
	6200 4450 6200 4250
Connection ~ 6200 4250
Wire Wire Line
	6450 4450 6450 4400
Connection ~ 6450 4400
Wire Wire Line
	6450 4750 6450 4800
Wire Wire Line
	6200 4750 6200 4800
Wire Wire Line
	7000 4950 6950 4950
Wire Wire Line
	6950 4950 6950 5200
Wire Wire Line
	6750 5150 7000 5150
Connection ~ 6950 5150
Wire Wire Line
	7000 5050 6950 5050
Connection ~ 6950 5050
Wire Wire Line
	6750 5050 6750 5150
Wire Wire Line
	6750 4650 6750 4750
Wire Wire Line
	6600 3950 6550 3950
Wire Wire Line
	6550 3500 6550 4000
Wire Wire Line
	7000 3950 6900 3950
Wire Wire Line
	6950 3450 6950 3950
Connection ~ 6950 3950
Wire Wire Line
	6600 3500 6550 3500
Connection ~ 6550 3950
Wire Wire Line
	6600 3750 6550 3750
Connection ~ 6550 3750
Wire Wire Line
	6950 3500 6900 3500
Wire Wire Line
	6900 3750 6950 3750
Connection ~ 6950 3750
Connection ~ 6950 3500
Wire Wire Line
	9200 4250 9200 4700
Wire Wire Line
	8600 5150 9200 5150
Wire Wire Line
	9200 5100 9200 5200
Connection ~ 9200 5150
Wire Wire Line
	9200 5600 9200 5650
Wire Wire Line
	8650 5050 8600 5050
Wire Wire Line
	8650 4950 8600 4950
Wire Wire Line
	8650 4850 8600 4850
Wire Wire Line
	8650 4750 8600 4750
Wire Wire Line
	8650 4650 8600 4650
Wire Wire Line
	8650 4050 8600 4050
Wire Wire Line
	8650 3950 8600 3950
Wire Wire Line
	7000 4750 6950 4750
Wire Wire Line
	6950 4750 6950 4650
Connection ~ 6950 4650
Wire Wire Line
	8650 4250 8600 4250
Connection ~ 5800 1950
Connection ~ 8900 1100
Wire Wire Line
	1450 2150 1400 2150
Connection ~ 1450 2150
Wire Wire Line
	2900 1250 2800 1250
Wire Wire Line
	2800 1250 2800 1550
Wire Wire Line
	2800 1550 2900 1550
Wire Wire Line
	2700 1450 2900 1450
Connection ~ 2800 1450
Wire Wire Line
	2900 1350 2800 1350
Connection ~ 2800 1350
Wire Wire Line
	2700 1450 2700 1500
$Comp
L GND #PWR049
U 1 1 576C1AE8
P 7250 1900
F 0 "#PWR049" H 7250 1900 30  0001 C CNN
F 1 "GND" H 7250 1830 30  0001 C CNN
F 2 "" H 7250 1900 60  0000 C CNN
F 3 "" H 7250 1900 60  0000 C CNN
	1    7250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1850 7250 1850
Wire Wire Line
	7250 1850 7250 1900
$EndSCHEMATC
