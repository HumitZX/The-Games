   5 RUN 10
  10 REM * DAMAS CHINAS *
  20 POKE 23609,75: POKE 23658,8
  30 INK 0: BORDER 0: PAPER 7: CLS 
  35 REM * REGLAS *
  40 PRINT INVERSE 1; INK 2;AT 1,2;"*REGLAS DE LAS DAMAS CHINAS*"
  50 PRINT INK 1;AT 3,0;"*ESTE JUEGO PUEDE SER JUGADO";AT 4,1;"POR DOS A SEIS JUGADORES."
  60 PRINT INK 1;AT 5,0;"*EL GANADOR ES EL QUE PRIMERO"'" COLOCA UNA FICHA EN LA PUNTA"'" OPUESTA DE LA ESTRELLA"
  70 PRINT INK 1;AT 8,0;"*NADIE PUEDE MANTENER"'" UNA FICHA EN UNA PUNTA"'" PARA QUE GANE EL OPONENTE."
  80 PRINT INK 1;AT 11,0;"*LOS JUGADORES MUEVEN POR"'" TURNOS MARCADOS"'"*SE PUEDEN MOVER LAS FICHAS"
  90 PRINT INK 1;AT 14,1;"EN CUALQUIER DIRECCION"'"A LO LARGO DE UNA LINEA"'"*LAS FICHAS IRAN A AGUJEROS";AT 17,1;"ADYACENTES O A UN AGUJERO"
 100 PRINT INK 1;AT 18,1;"LIBRE SALTANDO SOBRE OTRA."'"*SE PUEDE DAR MAS DE UN SALTO"'"*NO SE COMEN FICHAS."
 110 PAUSE 0: CLS : GO SUB 5000
 200 REM * No. DE JUGADORES *
 210 INPUT "NUMERO DE JUGADORES (2-6):"; LINE J$
 220 IF J$="2" THEN GO TO 500
 230 IF J$="3" THEN GO TO 1000
 240 IF J$="4" THEN GO TO 1500
 250 IF J$="5" THEN GO TO 2000
 260 IF J$="6" THEN GO TO 2500
 270 GO TO 210
 299 STOP 
 500 REM * 2 JUGADORES *
 520 PRINT INK 3;AT 8,22;"Ⓐ";AT 9,24;"Ⓐ";AT 10,22;"Ⓐ";AT 10,26;"Ⓐ";AT 11,24;"Ⓐ";AT 12,22;"Ⓐ"
 530 PRINT INK 6;AT 8,6;"Ⓐ";AT 9,4;"Ⓐ";AT 10,2;"Ⓐ";AT 10,6;"Ⓐ";AT 11,4;"Ⓐ";AT 12,6;"Ⓐ"
 540 PRINT AT 1,22;"2 JUGADO.";AT 2,22;"AMARILLAS";AT 3,22;"MAGENTAS";AT 4,22;"JUGAR";AT 5,22;"EN ESE";AT 6,22;"ORDEN"
 550 IF INKEY$="F" THEN LOAD "M:MENU"
 555 INPUT "AMARILLA DE:";U;V
 560 INPUT "AMARILLA A:";X;Y
 570 PRINT INK 0;AT U,V;"Ⓑ"
 580 PRINT INK 6;AT X,Y;"Ⓐ"
 585 IF INKEY$="F" THEN LOAD "M:MENU"
 590 INPUT "MAGENTA DE:";U;V
 600 INPUT "MAGENTA A:";X;Y
 610 PRINT INK 0;AT U,V;"Ⓑ"
 620 PRINT INK 3;AT X,Y;"Ⓐ"
 640 GO TO 550
 999 STOP 
1000 REM * 3 JUGADORES *
1020 PRINT INK 6;AT 8,6;"Ⓐ";AT 9,4;"Ⓐ";AT 10,2;"Ⓐ";AT 10,6;"Ⓐ";AT 11,4;"Ⓐ";AT 12,6;"Ⓐ"
1030 PRINT INK 2;AT 1,20;"Ⓐ";AT 2,18;"Ⓐ";AT 3,16;"Ⓐ";AT 3,20;"Ⓐ";AT 4,18;"Ⓐ";AT 5,20;"Ⓐ"
1040 PRINT INK 4;AT 15,20;"Ⓐ";AT 16,18;"Ⓐ";AT 17,16;"Ⓐ";AT 17,20;"Ⓐ";AT 18,18;"Ⓐ";AT 19,20;"Ⓐ"
1050 PRINT AT 1,22;"3 JUGADO.";AT 2,22;"AMARILLAS";AT 3,22;"ROJAS Y";AT 4,22;"VERDES";AT 5,22;"JUGAR";AT 6,22;"EN ESE";AT 7,22;"ORDEN"
1060 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
1065 INPUT "AMARILLA DE:";U;V
1070 INPUT "AMARILLA A:";X;Y
1080 PRINT INK 0;AT U,V;"Ⓑ"
1090 PRINT INK 6;AT X,Y;"Ⓐ"
1095 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
1100 INPUT "ROJA DE:";U;V
1110 INPUT "ROJA A:";X;Y
1120 PRINT INK 0;AT U,V;"Ⓑ"
1130 PRINT INK 2;AT X,Y;"Ⓐ"
1135 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
1140 INPUT "VERDE DE:";U;V
1150 INPUT "VERDE A:";X;Y
1160 PRINT INK 0;AT U,V;"Ⓑ"
1170 PRINT INK 4;AT X,Y;"Ⓐ"
1200 GO TO 1060
1499 STOP 
1500 REM * 4 JUGADORES *
1510 PRINT INK 1;AT 1,8;"Ⓐ";AT 2,10;"Ⓐ";AT 3,8;"Ⓐ";AT 3,12;"Ⓐ";AT 4,10;"Ⓐ";AT 5,8;"Ⓐ"
1520 PRINT INK 2;AT 1,20;"Ⓐ";AT 2,18;"Ⓐ";AT 3,16;"Ⓐ";AT 3,20;"Ⓐ";AT 4,18;"Ⓐ";AT 5,20;"Ⓐ"
1530 PRINT INK 5;AT 15,8;"Ⓐ";AT 16,10;"Ⓐ";AT 17,8;"Ⓐ";AT 17,12;"Ⓐ";AT 18,10;"Ⓐ";AT 19,8;"Ⓐ"
1540 PRINT INK 4;AT 15,20;"Ⓐ";AT 16,18;"Ⓐ";AT 17,16;"Ⓐ";AT 17,20;"Ⓐ";AT 18,18;"Ⓐ";AT 19,20;"Ⓐ"
1550 PRINT AT 1,22;"4 JUGADO.";AT 2,22;"AZULES,RO";AT 3,22;"JAS,CIAN";AT 4,22;"Y VERDES";AT 5,22;"JUGAR";AT 6,22;"EN ESE";AT 7,24;"ORDEN"
1560 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
1565 INPUT "AZUL DE:";U;V
1570 INPUT "AZUL A:";X;Y
1580 PRINT INK 0;AT U,V;"Ⓑ"
1590 PRINT INK 1;AT X,Y;"Ⓐ"
1595 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
1600 INPUT "ROJA DE:";U;V
1610 INPUT "ROJA A:";X;Y
1620 PRINT INK 0;AT U,V;"Ⓑ"
1630 PRINT INK 2;AT X,Y;"Ⓐ"
1635 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
1640 INPUT "CIAN DE:";U;V
1650 INPUT "CIAN A:";X;Y
1660 PRINT INK 0;AT U,V;"Ⓑ"
1670 PRINT INK 5;AT X,Y;"Ⓐ"
1675 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
1680 INPUT "VERDE DE:";U;V
1690 INPUT "VERDE A:";X;Y
1700 PRINT INK 0;AT U,V;"Ⓑ"
1710 PRINT INK 4;AT X,Y;"Ⓐ"
1720 GO TO 1560
1999 STOP 
2000 REM * 5 JUGADORES *
2010 PRINT INK 6;AT 8,6;"Ⓐ";AT 9,4;"Ⓐ";AT 10,2;"Ⓐ";AT 10,6;"Ⓐ";AT 11,4;"Ⓐ";AT 12,6;"Ⓐ"
2020 PRINT INK 1;AT 1,8;"Ⓐ";AT 2,10;"Ⓐ";AT 3,8;"Ⓐ";AT 3,12;"Ⓐ";AT 4,10;"Ⓐ";AT 5,8;"Ⓐ"
2030 PRINT INK 2;AT 1,20;"Ⓐ";AT 2,18;"Ⓐ";AT 3,16;"Ⓐ";AT 3,20;"Ⓐ";AT 4,18;"Ⓐ";AT 5,20;"Ⓐ"
2040 PRINT INK 3;AT 8,22;"Ⓐ";AT 9,24;"Ⓐ";AT 10,22;"Ⓐ";AT 10,26;"Ⓐ";AT 11,24;"Ⓐ";AT 12,22;"Ⓐ"
2050 PRINT INK 4;AT 15,20;"Ⓐ";AT 16,18;"Ⓐ";AT 17,16;"Ⓐ";AT 17,20;"Ⓐ";AT 18,18;"Ⓐ";AT 19,20;"Ⓐ"
2060 PRINT AT 1,22;"5 JUGADO.";AT 2,22;"AMARILLAS";AT 3,22;"AZULES,RO";AT 4,22;"JAS,MAGEN";AT 5,22;"TA,VERDES";AT 6,22;"JUGAR";AT 7,24;"EN ESE";AT 8,26;"ORDEN"
2070 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
2075 INPUT "AMARILLA DE:";U;V
2080 INPUT "AMARILLA A:";X;Y
2090 PRINT INK 9;AT U,V;"Ⓑ"
2100 PRINT INK 6;AT X,Y;"Ⓐ"
2105 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
2110 INPUT "AZUL DE:";U;V
2120 INPUT "AZUL A:";X;Y
2130 PRINT INK 9;AT U,V;"Ⓑ"
2140 PRINT INK 1;AT X,Y;"Ⓐ"
2145 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
2150 INPUT "ROJA DE:";U;V
2160 INPUT "ROJA A:";X;Y
2170 PRINT INK 9;AT U,V;"Ⓑ"
2180 PRINT INK 2;AT X,Y;"Ⓐ"
2185 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
2190 INPUT "MAGENTA DE:";U;V
2200 INPUT "MAGENTA A:";X;Y
2210 PRINT INK 9;AT U,V;"Ⓑ"
2220 PRINT INK 3;AT X,Y;"Ⓐ"
2225 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
2230 INPUT "VERDE DE:";U;V
2240 INPUT "VERDE A:";X;Y
2250 PRINT INK 9;AT U,V;"Ⓑ"
2260 PRINT INK 4;AT X,Y;"Ⓐ"
2270 GO TO 2070
2499 STOP 
2500 REM * 6 JUGADORES *
2510 PRINT INK 1;AT 1,8;"Ⓐ";AT 2,10;"Ⓐ";AT 3,8;"Ⓐ";AT 3,12;"Ⓐ";AT 4,10;"Ⓐ";AT 5,8;"Ⓐ"
2520 PRINT INK 2;AT 1,20;"Ⓐ";AT 2,18;"Ⓐ";AT 3,16;"Ⓐ";AT 3,20;"Ⓐ";AT 4,18;"Ⓐ";AT 5,20;"Ⓐ"
2530 PRINT INK 3;AT 8,22;"Ⓐ";AT 9,24;"Ⓐ";AT 10,22;"Ⓐ";AT 10,26;"Ⓐ";AT 11,24;"Ⓐ";AT 12,22;"Ⓐ"
2540 PRINT INK 4;AT 15,20;"Ⓐ";AT 16,18;"Ⓐ";AT 17,16;"Ⓐ";AT 17,20;"Ⓐ";AT 18,18;"Ⓐ";AT 19,20;"Ⓐ"
2550 PRINT INK 5;AT 15,8;"Ⓐ";AT 16,10;"Ⓐ";AT 17,8;"Ⓐ";AT 17,12;"Ⓐ";AT 18,10;"Ⓐ";AT 19,8;"Ⓐ"
2560 PRINT INK 6;AT 8,6;"Ⓐ";AT 9,4;"Ⓐ";AT 10,2;"Ⓐ";AT 10,6;"Ⓐ";AT 11,4;"Ⓐ";AT 12,6;"Ⓐ"
2570 PRINT AT 0,22;"6 JUGADO.";AT 1,22;"ROJAS,AZU";AT 2,22;"LES,MAGEN";AT 3,22;"TA,VERDES";AT 4,22;"CIAN Y";AT 5,22;"AMARILLAS";AT 6,22;"JUGAR";AT 7,24;"EN ESE";AT 8,26;"ORDEN"
2580 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
2585 INPUT "AZUL DE:";U;V
2590 INPUT "AZUL A:";X;Y
2600 PRINT INK 0;AT U,V;"Ⓑ"
2610 PRINT INK 1;AT X,Y;"Ⓐ"
2615 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
2620 INPUT "ROJA DE:";U;V
2630 INPUT "ROJA A:";X;Y
2640 PRINT INK 0;AT U,V;"Ⓑ"
2650 PRINT INK 2;AT X,Y;"Ⓐ"
2655 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
2660 INPUT "MAGENTA DE:";U;V
2670 INPUT "MAGENTA A:";X;Y
2680 PRINT INK 0;AT U,V;"Ⓑ"
2690 PRINT INK 3;AT X,Y;"Ⓐ"
2695 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
2700 INPUT "VERDE DE:";U;V
2710 INPUT "VERDE A:";X;Y
2720 PRINT INK 0;AT U,V;"Ⓑ"
2730 PRINT INK 4;AT X,Y;"Ⓐ"
2735 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
2740 INPUT "CIAN DE:";U;V
2750 INPUT "CIAN A:";X;Y
2760 PRINT INK 0;AT U,V;"Ⓑ"
2770 PRINT INK 5;AT X,Y;"Ⓐ"
2775 PAUSE 0: IF INKEY$="F" THEN LOAD "M:MENU"
2780 INPUT "AMARILLO DE:";U;V
2790 INPUT "AMARILLO A:";X;Y
2800 PRINT INK 0;AT U,V;"Ⓑ"
2810 PRINT INK 6;AT X,Y;"Ⓐ"
2820 GO TO 2580
4999 STOP 
5000 REM * DISE\O DEL TABLERO *
5010 FOR X=0 TO 1: FOR Y=0 TO 7: READ Z: POKE USR CHR$ (144+X)+Y,Z: NEXT Y: NEXT X
5020 DATA 60,126,255,255,255,255,126,60,8,137,106,28,60,203,8,8
5030 FOR X=1 TO 33: READ A,B,C,D: PLOT A,B: DRAW C,D: NEXT X
5040 DATA 36,80,0,24,52,72,0,40,68,16,0,152,84,24,0,136,100,32,0,120,116,40,0,104,132,32,0,120,148,24,0,136,164,16,0,152,180,72,0,40,196,80,0,24
5050 DATA 64,146,24,12,64,130,40,20,16,90,152,76,32,82,136,68,48,74,120,60,64,66,104,52,64,50,120,60,64,34,136,68,64,18,152,76,128,34,40,20,144,26,24,12
5060 DATA 144,158,24,-12,128,150,40,-20,64,166,152,-76,64,150,136,-68,64,134,120,-60,64,118,104,-52,48,110,120,-60,32,102,136,-68,16,94,152,-76,64,54,40,-20,64,38,24,-12
5090 PRINT INVERSE 1; INK 1;AT 0,0;"DAMAS CHINAS"
5100 PRINT AT 1,1;"1-----"'" 2------"'" 3-----"'" 4------"'" 5-----"'" 6------"'" 7-----"'" 8---"
5110 PRINT AT 9,1;"9-"'"10"'"11-"'"12---"'"13-----"'"14------"'"15-----"'"16------"'"17-----"'"18------"'"19-----"
5120 PRINT AT 20,2;"A B C D E F G H I J K L M"
5130 LET A=2: LET B=4: LET C=6: LET D=8: LET E=10: LET F=12: LET G=14: LET H=16: LET I=18: LET J=20: LET K=22: LET L=24: LET M=26
5200 PRINT INK 1;AT 14,23;"TECLEAR";AT 15,23;"PRIMERO";AT 16,23;"NUMERO";AT 17,23;"DESPUES";AT 18,23;"LETRA."
5300 RETURN 
9999 SAVE "M:DACHI" LINE 0: PRINT AT 1,0: LOAD ""