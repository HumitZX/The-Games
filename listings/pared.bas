   5 RUN 10
  10 REM ************
  20 REM * La pared *
  30 REM ************
  33 POKE 23658,8
  35 LET k=0
  37 LET d0=0
  40 LET nb=0
  42 LET r1=0
  45 LET s=0
  50 GO SUB 730
  60 INK 2
  70 PAPER 7
  80 PRINT AT by,bx;n$;
  90 LET bx=bx+dx
 100 LET by=by+dy
 110 IF SCREEN$ (by,bx)<>n$ THEN LET dy=-dy: LET s=s+1: BEEP 0.01,1
 120 PRINT AT by,bx;b$;
 130 IF by=20 AND ABS (bx-rx-3)>1 THEN GO TO 410
 140 IF by=20 AND bx>3 AND bx<28 THEN PRINT AT by,bx;n$;: LET bx=bx+ch
 150 IF by=20 OR by=1 THEN BEEP 0.01,1: LET dy=-dy
 160 IF bx=2 OR bx=29 THEN BEEP 0.01,1: LET dx=-dx
 170 LET d$=INKEY$
 180 LET d=2*((d$="7")-(d$="6"))
 190 IF d<>0 THEN LET d0=d
 200 IF d$="0" THEN LET d0=0
 205 IF d$="F" OR d$="f" THEN LOAD "M:MENU"
 210 LET rx=rx+d0
 220 LET ch=SGN d0
 260 PRINT #0;AT 0,0;"PUNTOS:";s,"RECORD:";r1;
 340 IF rx<0 THEN LET rx=0
 350 IF rx>25 THEN LET rx=25
 360 INK 0
 370 PRINT AT ry,rx;r$;
 390 IF s=156 THEN GO SUB 1210
 400 GO TO 60
 410 LET nb=nb+1
 420 IF nb=11 THEN GO TO 530
 430 PRINT AT by,bx;n$;
 450 FOR i=1 TO 3
 460 BEEP 0.1,6
 470 NEXT i
 500 LET d0=0
 510 GO SUB 1150
 520 GO TO 60
 530 INK 0
 540 LET s=s+256*k
 550 PRINT AT 5,11;"Puntos : ";s;
 570 IF s>r1 THEN LET r1=s
 580 PRINT AT 10,6;"Puntuacion Maxima : ";r1;
 590 PAUSE 0: LOAD "M:MENU"
 730 PAPER 7
 740 BORDER 7
 750 CLS 
 760 FOR i=USR "a" TO USR "e"-1
 770 READ a
 780 POKE i,a
 790 NEXT i
 810 LET e$=CHR$ 146
 820 LET c$=CHR$ 147
 830 LET n$=CHR$ 32
 840 LET r$=n$+n$+CHR$ 144+CHR$ 144+CHR$ 144+n$+n$
 850 LET b$=CHR$ 145
 930 INK 1
 940 FOR i=1 TO 30
 950 PRINT AT 0,i;CHR$ 143;
 970 NEXT i
 980 FOR i=1 TO 20
 990 PRINT AT i,1;CHR$ 143;
1000 PRINT AT i,30;CHR$ 143;
1010 NEXT i
1020 INK 0
1040 FOR i=2 TO 7
1050 PAPER i-1
1060 FOR j=3 TO 27 STEP 2
1070 IF i/2<>INT (i/2) THEN GO TO 1110
1080 PRINT AT i,j;e$;c$;
1090 GO TO 1120
1110 PRINT AT i,j;c$;e$;
1120 NEXT j
1130 NEXT i
1140 LET rx=12
1150 LET ry=21
1160 LET by=19
1170 LET bx=INT (RND*26)+3
1180 LET dy=-1
1190 LET dx=(INT (RND*2)-0.5)*2
1200 RETURN 
1210 LET k=k+1
1220 LET s=0
1230 PRINT AT by,bx;n$;
1250 PRINT AT ry,rx+2;n$+n$+n$;
1270 GO SUB 930
1280 RETURN 
1500 DATA 255,255,255,0,0,0,0,0
1510 DATA 60,126,255,255,255,255,126,60
1520 DATA 8,8,8,8,8,8,8,255
1530 DATA 0,0,0,0,0,0,0,255
9999 SAVE "M:PARED" LINE 0: PRINT AT 1,0: LOAD ""
27392