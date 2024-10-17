5
DECLARE SUB r (ra, c, tx$)
TYPE Datensatz
   eon AS STRING * 1
END TYPE
DIM mis AS Datensatz
CLS
SCREEN 9
PALETTE
nu$ = CHR$(0)
a$ = CHR$(1)
b$ = CHR$(2)
c$ = CHR$(3)
d$ = CHR$(4)
e$ = CHR$(5)
f$ = CHR$(6)
g$ = CHR$(7)
h$ = CHR$(8)
i$ = CHR$(9)
j$ = CHR$(10)
k$ = CHR$(11)
l$ = CHR$(12)
m$ = CHR$(13)
n$ = CHR$(14)
o$ = CHR$(15)
p$ = CHR$(16)
q$ = CHR$(17)
w$ = CHR$(18)
s$ = CHR$(19)
t$ = CHR$(20)
of$ = CHR$(64)
ve$ = CHR$(128)
as$ = CHR$(192)
lt$ = CHR$(255)
COLOR 15
r 6, 33, "X-Wing Trainer"
COLOR 4
r 9, 30, "ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
r 10, 30, "º    fr X-Wing    º"
r 11, 30, "º Imperial Pursuit º"
r 12, 30, "º    und B-Wing    º"
r 13, 30, "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"
COLOR 2
r 14, 30, "von Sebastian Berger"
200
COLOR 1
LOCATE 20, 5
INPUT "Bitte geben Sie Ihren Pilotnamen ein !  > ", nam$
IF nam$ = "" THEN GOTO 200
nam$ = nam$ + ".plt"
OPEN nam$ FOR BINARY AS #1
GET #1, 745, mis
hm = ASC(mis.eon)
xx = 0
yy = 744
COLOR 4
IF hm = 0 THEN r 22, 25, "Erstelle einen neuen Piloten !"
IF hm = 0 THEN OPEN nam$ FOR BINARY AS #5: FOR i = 1 TO 1706: xx = xx + 1: PUT #5, xx, nu$: NEXT i: FOR i = 1 TO 8: yy = yy + 1: PUT #5, yy, lt$: NEXT i: CLOSE #5
PUT #1, 641, nu$
COLOR 3
LOCATE 1, 1
PRINT "ÚÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄ¿"
PRINT "³Training³His. Missionen³Tour I ³Tour II ³Tour III ³Tour IV ³Tour V ³ Orden   ³"
PRINT "ÀÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÙ"
DIM liste(1 TO 8428) AS INTEGER
GET (0, 0)-(620, 35), liste
training:
90
PALETTE 10, 8
PALETTE 11, 16
PALETTE 12, 8
PALETTE 13, 16
PALETTE 14, 8
PALETTE 15, 16
PALETTE 5, 8
PALETTE 7, 16
LINE (0, 36)-(650, 450), 0, BF
COLOR 3
PUT (0, 0), liste, PSET
r 3, 1, "ÃÄÄÄÄÄÄÄÄÅ"
PRINT "³        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
FOR i = 1 TO 6
PRINT "³"
r i + 4, 36, "³"
NEXT i
PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
COLOR 6
r 2, 2, "Training"
r 5, 23, "( 1-8    )"
COLOR 2
r 5, 3, "Trainingsmissionen"
COLOR 10
r 7, 8, "X-Wing hat Stufe . beendet."
COLOR 12
r 8, 8, "Y-Wing hat Stufe . beendet."
COLOR 14
r 9, 8, "A-Wing hat Stufe . beendet."
COLOR 5
r 10, 8, "B-Wing hat Stufe . beendet."
160
GET #1, 135, mis
x = ASC(mis.eon)
COLOR 11
LOCATE 7, 24
PRINT x
GET #1, 136, mis
y = ASC(mis.eon)
COLOR 13
LOCATE 8, 24
PRINT y
GET #1, 137, mis
z = ASC(mis.eon)
COLOR 15
LOCATE 9, 24
PRINT z
GET #1, 138, mis
bw = ASC(mis.eon)
COLOR 7
LOCATE 10, 24
PRINT bw
170
PALETTE 10, 1
PALETTE 11, 2
PALETTE 12, 8
PALETTE 13, 16
PALETTE 14, 8
PALETTE 15, 16
PALETTE 5, 8
PALETTE 7, 16
DO
COLOR 11
LOCATE 7, 24
v$ = INKEY$
IF v$ = "1" AND x < 1 THEN PUT #1, 135, a$: PRINT 1: x = 1
IF v$ = "2" AND x < 2 THEN PUT #1, 135, b$: PRINT 2: x = 2
IF v$ = "3" AND x < 3 THEN PUT #1, 135, c$: PRINT 3: x = 3
IF v$ = "4" AND x < 4 THEN PUT #1, 135, d$: PRINT 4: x = 4
IF v$ = "5" AND x < 5 THEN PUT #1, 135, e$: PRINT 5: x = 5
IF v$ = "6" AND x < 6 THEN PUT #1, 135, f$: PRINT 6: x = 6
IF v$ = "7" AND x < 7 THEN PUT #1, 135, g$: PRINT 7: x = 7
IF v$ = "8" AND x < 8 THEN PUT #1, 135, h$: PRINT 8: x = 8
IF v$ = CHR$(0) + "K" THEN GOSUB orden
IF v$ = CHR$(0) + "M" THEN GOSUB historisch
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 90
IF v$ = CHR$(0) + "H" THEN GOTO 195
IF v$ = CHR$(0) + "P" THEN GOTO 180
LOOP
180
PALETTE 10, 8
PALETTE 11, 16
PALETTE 12, 1
PALETTE 13, 2
PALETTE 14, 8
PALETTE 15, 16
PALETTE 5, 8
PALETTE 7, 16
DO
COLOR 13
LOCATE 8, 24
v$ = INKEY$
IF v$ = "1" AND y < 1 THEN PUT #1, 136, a$: PRINT 1: y = 1
IF v$ = "2" AND y < 2 THEN PUT #1, 136, b$: PRINT 2: y = 2
IF v$ = "3" AND y < 3 THEN PUT #1, 136, c$: PRINT 3: y = 3
IF v$ = "4" AND y < 4 THEN PUT #1, 136, d$: PRINT 4: y = 4
IF v$ = "5" AND y < 5 THEN PUT #1, 136, e$: PRINT 5: y = 5
IF v$ = "6" AND y < 6 THEN PUT #1, 136, f$: PRINT 6: y = 6
IF v$ = "7" AND y < 7 THEN PUT #1, 136, g$: PRINT 7: y = 7
IF v$ = "8" AND y < 8 THEN PUT #1, 136, h$: PRINT 8: y = 8
IF v$ = CHR$(0) + "K" THEN GOSUB orden
IF v$ = CHR$(0) + "M" THEN GOSUB historisch
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 90
IF v$ = CHR$(0) + "H" THEN GOTO 170
IF v$ = CHR$(0) + "P" THEN GOTO 190
LOOP
190
PALETTE 10, 8
PALETTE 11, 16
PALETTE 12, 8
PALETTE 13, 16
PALETTE 14, 1
PALETTE 15, 2
PALETTE 5, 8
PALETTE 7, 16
DO
COLOR 15
LOCATE 9, 24
v$ = INKEY$
IF v$ = "1" AND z < 1 THEN PUT #1, 137, a$: PRINT 1: z = 1
IF v$ = "2" AND z < 2 THEN PUT #1, 137, b$: PRINT 2: z = 2
IF v$ = "3" AND z < 3 THEN PUT #1, 137, c$: PRINT 3: z = 3
IF v$ = "4" AND z < 4 THEN PUT #1, 137, d$: PRINT 4: z = 4
IF v$ = "5" AND z < 5 THEN PUT #1, 137, e$: PRINT 5: z = 5
IF v$ = "6" AND z < 6 THEN PUT #1, 137, f$: PRINT 6: z = 6
IF v$ = "7" AND z < 7 THEN PUT #1, 137, g$: PRINT 7: z = 7
IF v$ = "8" AND z < 8 THEN PUT #1, 137, h$: PRINT 8: z = 8
IF v$ = CHR$(0) + "K" THEN GOSUB orden
IF v$ = CHR$(0) + "M" THEN GOSUB historisch
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 90
IF v$ = CHR$(0) + "H" THEN GOTO 180
IF v$ = CHR$(0) + "P" THEN GOTO 195
LOOP
195
PALETTE 10, 8
PALETTE 11, 16
PALETTE 12, 8
PALETTE 13, 16
PALETTE 14, 8
PALETTE 15, 16
PALETTE 5, 1
PALETTE 7, 2
DO
COLOR 7
LOCATE 10, 24
v$ = INKEY$
IF v$ = "1" AND bw < 1 THEN PUT #1, 138, a$: PRINT 1: bw = 1
IF v$ = "2" AND bw < 2 THEN PUT #1, 138, b$: PRINT 2: bw = 2
IF v$ = "3" AND bw < 3 THEN PUT #1, 138, c$: PRINT 3: bw = 3
IF v$ = "4" AND bw < 4 THEN PUT #1, 138, d$: PRINT 4: bw = 4
IF v$ = "5" AND bw < 5 THEN PUT #1, 138, e$: PRINT 5: bw = 5
IF v$ = "6" AND bw < 6 THEN PUT #1, 138, f$: PRINT 6: bw = 6
IF v$ = "7" AND bw < 7 THEN PUT #1, 138, g$: PRINT 7: bw = 7
IF v$ = "8" AND bw < 8 THEN PUT #1, 138, h$: PRINT 8: bw = 8
IF v$ = CHR$(0) + "K" THEN GOSUB orden
IF v$ = CHR$(0) + "M" THEN GOSUB historisch
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 90
IF v$ = CHR$(0) + "H" THEN GOTO 190
IF v$ = CHR$(0) + "P" THEN GOTO 170
LOOP
historisch:
100
LINE (0, 36)-(650, 450), 0, BF
COLOR 3
PUT (0, 0), liste, PSET
LOCATE 2, 1
r 3, 10, "ÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅ"
r 4, 5, "ÚÄÄÄÄÙ              ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
FOR i = 1 TO 16
r i + 4, 5, "³"
r i + 4, 51, "³"
NEXT i
r 21, 5, "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
COLOR 6
r 2, 11, "His. Missionen"
r 5, 37, "( 1-6    )"
PALETTE 10, 16
PALETTE 11, 8
PALETTE 12, 16
PALETTE 13, 8
PALETTE 14, 16
PALETTE 15, 8
PALETTE 5, 16
PALETTE 7, 8
COLOR 11
r 6, 9, "Mission 1"
r 6, 33, "Mission 4"
r 7, 9, "Mission 2"
r 7, 33, "Mission 5"
r 8, 9, "Mission 3"
r 8, 33, "Mission 6"
COLOR 13
r 10, 9, "Mission 1"
r 10, 33, "Mission 4"
r 11, 9, "Mission 2"
r 11, 33, "Mission 5"
r 12, 9, "Mission 3"
r 12, 33, "Mission 6"
COLOR 15
r 14, 9, "Mission 1"
r 14, 33, "Mission 4"
r 15, 9, "Mission 2"
r 15, 33, "Mission 5"
r 16, 9, "Mission 3"
r 16, 33, "Mission 6"
COLOR 7
r 18, 9, "Mission 1"
r 18, 33, "Mission 4"
r 19, 9, "Mission 2"
r 19, 33, "Mission 5"
r 20, 9, "Mission 3"
r 20, 33, "Mission 6"
COLOR 10
r 5, 7, "X-Wing Historische Missionen"
GET #1, 545, mis
IF mis.eon = a$ THEN r 6, 20, "erfllt"
GET #1, 546, mis
IF mis.eon = a$ THEN r 7, 20, "erfllt"
GET #1, 547, mis
IF mis.eon = a$ THEN r 8, 20, "erfllt"
GET #1, 548, mis
IF mis.eon = a$ THEN r 6, 43, "erfllt"
GET #1, 549, mis
IF mis.eon = a$ THEN r 7, 43, "erfllt"
GET #1, 550, mis
IF mis.eon = a$ THEN r 8, 43, "erfllt"
COLOR 12
r 9, 7, "Y-Wing Historische Missionen"
GET #1, 561, mis
IF mis.eon = a$ THEN r 10, 20, "erfllt"
GET #1, 562, mis
IF mis.eon = a$ THEN r 11, 20, "erfllt"
GET #1, 563, mis
IF mis.eon = a$ THEN r 12, 20, "erfllt"
GET #1, 564, mis
IF mis.eon = a$ THEN r 10, 43, "erfllt"
GET #1, 565, mis
IF mis.eon = a$ THEN r 11, 43, "erfllt"
GET #1, 566, mis
IF mis.eon = a$ THEN r 12, 43, "erfllt"
COLOR 14
r 13, 7, "A-Wing Historische Missionen"
GET #1, 577, mis
IF mis.eon = a$ THEN r 14, 20, "erfllt"
GET #1, 578, mis
IF mis.eon = a$ THEN r 15, 20, "erfllt"
GET #1, 579, mis
IF mis.eon = a$ THEN r 16, 20, "erfllt"
GET #1, 580, mis
IF mis.eon = a$ THEN r 14, 43, "erfllt"
GET #1, 581, mis
IF mis.eon = a$ THEN r 15, 43, "erfllt"
GET #1, 582, mis
IF mis.eon = a$ THEN r 16, 43, "erfllt"
COLOR 5
r 17, 7, "B-Wing Historische Missionen"
GET #1, 593, mis
IF mis.eon = a$ THEN r 18, 20, "erfllt"
GET #1, 594, mis
IF mis.eon = a$ THEN r 19, 20, "erfllt"
GET #1, 595, mis
IF mis.eon = a$ THEN r 20, 20, "erfllt"
GET #1, 596, mis
IF mis.eon = a$ THEN r 18, 43, "erfllt"
GET #1, 597, mis
IF mis.eon = a$ THEN r 19, 43, "erfllt"
GET #1, 598, mis
IF mis.eon = a$ THEN r 20, 43, "erfllt"
10
PALETTE 10, 2
PALETTE 11, 1
PALETTE 12, 16
PALETTE 13, 8
PALETTE 14, 16
PALETTE 15, 8
PALETTE 5, 16
PALETTE 7, 8
DO
v$ = INKEY$
COLOR 10
IF v$ = "1" THEN PUT #1, 545, a$: r 6, 20, "erfllt"
IF v$ = "2" THEN PUT #1, 546, a$: r 7, 20, "erfllt"
IF v$ = "3" THEN PUT #1, 547, a$: r 8, 20, "erfllt"
IF v$ = "4" THEN PUT #1, 548, a$: r 6, 43, "erfllt"
IF v$ = "5" THEN PUT #1, 549, a$: r 7, 43, "erfllt"
IF v$ = "6" THEN PUT #1, 550, a$: r 8, 43, "erfllt"
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 100
IF v$ = CHR$(0) + "K" THEN GOSUB training
IF v$ = CHR$(0) + "M" THEN GOSUB tour1
IF v$ = CHR$(0) + "P" THEN GOTO 20
IF v$ = CHR$(0) + "H" THEN GOTO 35
LOOP
20
PALETTE 10, 16
PALETTE 11, 8
PALETTE 12, 2
PALETTE 13, 1
PALETTE 14, 16
PALETTE 15, 8
PALETTE 5, 16
PALETTE 7, 8
DO
v$ = INKEY$
COLOR 12
IF v$ = "1" THEN PUT #1, 561, a$: r 10, 20, "erfllt"
IF v$ = "2" THEN PUT #1, 562, a$: r 11, 20, "erfllt"
IF v$ = "3" THEN PUT #1, 563, a$: r 12, 20, "erfllt"
IF v$ = "4" THEN PUT #1, 564, a$: r 10, 43, "erfllt"
IF v$ = "5" THEN PUT #1, 565, a$: r 11, 43, "erfllt"
IF v$ = "6" THEN PUT #1, 566, a$: r 12, 43, "erfllt"
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 100
IF v$ = CHR$(0) + "K" THEN GOSUB training
IF v$ = CHR$(0) + "M" THEN GOSUB tour1
IF v$ = CHR$(0) + "P" THEN GOTO 30
IF v$ = CHR$(0) + "H" THEN GOTO 10
LOOP UNTIL v$ = CHR$(0) + "H"
30
PALETTE 10, 16
PALETTE 11, 8
PALETTE 12, 16
PALETTE 13, 8
PALETTE 14, 2
PALETTE 15, 1
PALETTE 5, 16
PALETTE 7, 8
DO
v$ = INKEY$
COLOR 14
IF v$ = "1" THEN PUT #1, 577, a$: r 14, 20, "erfllt"
IF v$ = "2" THEN PUT #1, 578, a$: r 15, 20, "erfllt"
IF v$ = "3" THEN PUT #1, 579, a$: r 16, 20, "erfllt"
IF v$ = "4" THEN PUT #1, 580, a$: r 14, 43, "erfllt"
IF v$ = "5" THEN PUT #1, 581, a$: r 15, 43, "erfllt"
IF v$ = "6" THEN PUT #1, 582, a$: r 16, 43, "erfllt"
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 100
IF v$ = CHR$(0) + "K" THEN GOSUB training
IF v$ = CHR$(0) + "M" THEN GOSUB tour1
IF v$ = CHR$(0) + "P" THEN GOTO 35
IF v$ = CHR$(0) + "H" THEN GOTO 20
LOOP
35
PALETTE 10, 16
PALETTE 11, 8
PALETTE 12, 16
PALETTE 13, 8
PALETTE 14, 16
PALETTE 15, 8
PALETTE 5, 2
PALETTE 7, 1
DO
v$ = INKEY$
COLOR 5
IF v$ = "1" THEN PUT #1, 593, a$: r 18, 20, "erfllt"
IF v$ = "2" THEN PUT #1, 594, a$: r 19, 20, "erfllt"
IF v$ = "3" THEN PUT #1, 595, a$: r 20, 20, "erfllt"
IF v$ = "4" THEN PUT #1, 596, a$: r 18, 43, "erfllt"
IF v$ = "5" THEN PUT #1, 597, a$: r 19, 43, "erfllt"
IF v$ = "6" THEN PUT #1, 598, a$: r 20, 43, "erfllt"
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 100
IF v$ = CHR$(0) + "K" THEN GOSUB training
IF v$ = CHR$(0) + "M" THEN GOSUB tour1
IF v$ = CHR$(0) + "P" THEN GOTO 10
IF v$ = CHR$(0) + "H" THEN GOTO 30
LOOP
tour1:
220
COLOR 3
LINE (0, 36)-(650, 450), 0, BF
PUT (0, 0), liste, PSET
r 3, 25, "ÅÄÄÄÄÄÄÄÅ"
r 4, 7, "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ       ÀÄÄÄÄÄÄÄÄÄÄÄÄ¿"
FOR i = 1 TO 7
r i + 4, 7, "³"
r i + 4, 46, "³"
NEXT i
r 12, 7, "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
r 6, 11, "Op. 1"
r 6, 30, "Op. 7"
r 7, 11, "Op. 2"
r 7, 30, "Op. 8"
r 8, 11, "Op. 3"
r 8, 30, "Op. 9"
r 9, 11, "Op. 4"
r 9, 30, "Op. 10"
r 10, 11, "Op. 5"
r 10, 30, "Op. 11"
r 11, 11, "Op. 6"
r 11, 30, "Op. 12"
COLOR 2
r 5, 9, "Tour I"
COLOR 6
r 2, 26, "Tour I"
r 5, 37, "( a-l )"
110
GET #1, 753, mis
x = ASC(mis.eon)
COLOR 1
FOR i = 1 TO 6
IF x > i - 1 THEN r i + 5, 18, "erfllt"
NEXT i
FOR i = 1 TO 6
IF x > i + 5 THEN r i + 5, 37, "erfllt"
NEXT i
DO
v$ = INKEY$
IF v$ = "a" THEN IF x < 1 THEN PUT #1, 753, a$: PUT #1, 745, nu$: GOTO 110
IF v$ = "b" THEN IF x < 2 THEN PUT #1, 753, b$: PUT #1, 745, a$: GOTO 110
IF v$ = "c" THEN IF x < 3 THEN PUT #1, 753, c$: PUT #1, 745, b$: GOTO 110
IF v$ = "d" THEN IF x < 4 THEN PUT #1, 753, d$: PUT #1, 745, c$: GOTO 110
IF v$ = "e" THEN IF x < 5 THEN PUT #1, 753, e$: PUT #1, 745, d$: GOTO 110
IF v$ = "f" THEN IF x < 6 THEN PUT #1, 753, f$: PUT #1, 745, e$: GOTO 110
IF v$ = "g" THEN IF x < 7 THEN PUT #1, 753, g$: PUT #1, 745, f$: GOTO 110
IF v$ = "h" THEN IF x < 8 THEN PUT #1, 753, h$: PUT #1, 745, g$: GOTO 110
IF v$ = "i" THEN IF x < 9 THEN PUT #1, 753, i$: PUT #1, 745, h$: GOTO 110
IF v$ = "j" THEN IF x < 10 THEN PUT #1, 753, j$: PUT #1, 745, i$: GOTO 110
IF v$ = "k" THEN IF x < 11 THEN PUT #1, 753, k$: PUT #1, 745, j$: GOTO 110
IF v$ = "l" THEN IF x < 12 THEN PUT #1, 753, l$: PUT #1, 745, k$: PUT #1, 737, c$: GOTO 110
IF v$ = CHR$(0) + "K" THEN GOSUB historisch
IF v$ = CHR$(0) + "M" THEN GOSUB tour2
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 220
LOOP
tour2:
230
COLOR 3
LINE (0, 36)-(650, 450), 0, BF
PUT (0, 0), liste, PSET
r 3, 33, "ÅÄÄÄÄÄÄÄÄÅ"
r 4, 7, "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ        ÀÄÄÄ¿"
FOR i = 1 TO 7
r i + 4, 7, "³"
r i + 4, 46, "³"
NEXT i
r 12, 7, "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
r 6, 11, "Op. 1"
r 6, 30, "Op. 7"
r 7, 11, "Op. 2"
r 7, 30, "Op. 8"
r 8, 11, "Op. 3"
r 8, 30, "Op. 9"
r 9, 11, "Op. 4"
r 9, 30, "Op. 10"
r 10, 11, "Op. 5"
r 10, 30, "Op. 11"
r 11, 11, "Op. 6"
r 11, 30, "Op. 12"
COLOR 2
r 5, 9, "Tour II"
COLOR 6
r 2, 34, "Tour II"
r 5, 37, "( a-l )"
120
GET #1, 754, mis
x = ASC(mis.eon)
COLOR 1
FOR i = 1 TO 6
IF x > i - 1 THEN r i + 5, 18, "erfllt"
NEXT i
FOR i = 1 TO 6
IF x > i + 5 THEN r i + 5, 37, "erfllt"
NEXT i
DO
v$ = INKEY$
IF v$ = "a" THEN IF x < 1 THEN PUT #1, 754, a$: PUT #1, 746, nu$: GOTO 120
IF v$ = "b" THEN IF x < 2 THEN PUT #1, 754, b$: PUT #1, 746, a$: GOTO 120
IF v$ = "c" THEN IF x < 3 THEN PUT #1, 754, c$: PUT #1, 746, b$: GOTO 120
IF v$ = "d" THEN IF x < 4 THEN PUT #1, 754, d$: PUT #1, 746, c$: GOTO 120
IF v$ = "e" THEN IF x < 5 THEN PUT #1, 754, e$: PUT #1, 746, d$: GOTO 120
IF v$ = "f" THEN IF x < 6 THEN PUT #1, 754, f$: PUT #1, 746, e$: GOTO 120
IF v$ = "g" THEN IF x < 7 THEN PUT #1, 754, g$: PUT #1, 746, f$: GOTO 120
IF v$ = "h" THEN IF x < 8 THEN PUT #1, 754, h$: PUT #1, 746, g$: GOTO 120
IF v$ = "i" THEN IF x < 9 THEN PUT #1, 754, i$: PUT #1, 746, h$: GOTO 120
IF v$ = "j" THEN IF x < 10 THEN PUT #1, 754, j$: PUT #1, 746, i$: GOTO 120
IF v$ = "k" THEN IF x < 11 THEN PUT #1, 754, k$: PUT #1, 746, j$: GOTO 120
IF v$ = "l" THEN IF x < 12 THEN PUT #1, 754, l$: PUT #1, 746, k$: PUT #1, 738, c$: GOTO 120
IF v$ = CHR$(0) + "K" THEN GOSUB tour1
IF v$ = CHR$(0) + "M" THEN GOSUB tour3
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 230
LOOP
tour3:
240
COLOR 3
LINE (0, 36)-(650, 450), 0, BF
PUT (0, 0), liste, PSET
r 3, 42, "ÅÄÄÄÄÄÄÄÄÄÅ"
r 4, 13, "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ         ³"
FOR i = 1 TO 8
r i + 4, 13, "³"
r i + 4, 52, "³"
NEXT i
r 13, 13, "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
r 6, 17, "Op. 1"
r 6, 36, "Op. 8"
r 7, 17, "Op. 2"
r 7, 36, "Op. 9"
r 8, 17, "Op. 3"
r 8, 36, "Op. 10"
r 9, 17, "Op. 4"
r 9, 36, "Op. 11"
r 10, 17, "Op. 5"
r 10, 36, "Op. 12"
r 11, 17, "Op. 6"
r 11, 36, "Op. 13"
r 12, 17, "Op. 7"
r 12, 36, "Op. 14"
COLOR 2
r 5, 15, "Tour III"
COLOR 6
r 2, 43, "Tour III"
r 5, 43, "( a-n )"
130
GET #1, 755, mis
x = ASC(mis.eon)
COLOR 1
FOR i = 1 TO 7
IF x > i - 1 THEN r i + 5, 24, "erfllt"
NEXT i
FOR i = 1 TO 7
IF x > i + 6 THEN r i + 5, 43, "erfllt"
NEXT i
DO
v$ = INKEY$
IF v$ = "a" THEN IF x < 1 THEN PUT #1, 755, a$: PUT #1, 747, nu$: GOTO 130
IF v$ = "b" THEN IF x < 2 THEN PUT #1, 755, b$: PUT #1, 747, a$: GOTO 130
IF v$ = "c" THEN IF x < 3 THEN PUT #1, 755, c$: PUT #1, 747, b$: GOTO 130
IF v$ = "d" THEN IF x < 4 THEN PUT #1, 755, d$: PUT #1, 747, c$: GOTO 130
IF v$ = "e" THEN IF x < 5 THEN PUT #1, 755, e$: PUT #1, 747, d$: GOTO 130
IF v$ = "f" THEN IF x < 6 THEN PUT #1, 755, f$: PUT #1, 747, e$: GOTO 130
IF v$ = "g" THEN IF x < 7 THEN PUT #1, 755, g$: PUT #1, 747, f$: GOTO 130
IF v$ = "h" THEN IF x < 8 THEN PUT #1, 755, h$: PUT #1, 747, g$: GOTO 130
IF v$ = "i" THEN IF x < 9 THEN PUT #1, 755, i$: PUT #1, 747, h$: GOTO 130
IF v$ = "j" THEN IF x < 10 THEN PUT #1, 755, j$: PUT #1, 747, i$: GOTO 130
IF v$ = "k" THEN IF x < 11 THEN PUT #1, 755, k$: PUT #1, 747, j$: GOTO 130
IF v$ = "l" THEN IF x < 12 THEN PUT #1, 755, l$: PUT #1, 747, k$: GOTO 130
IF v$ = "m" THEN IF x < 13 THEN PUT #1, 755, m$: PUT #1, 747, l$: GOTO 130
IF v$ = "n" THEN IF x < 14 THEN PUT #1, 755, n$: PUT #1, 747, m$: PUT #1, 739, c$: GOTO 130
IF v$ = CHR$(0) + "K" THEN GOSUB tour2
IF v$ = CHR$(0) + "M" THEN GOSUB tour4
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 240
LOOP
tour4:
250
COLOR 3
LINE (0, 36)-(650, 450), 0, BF
PUT (0, 0), liste, PSET
r 3, 52, "ÅÄÄÄÄÄÄÄÄÅ"
r 4, 22, "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ        ³"
FOR i = 1 TO 11
r i + 4, 22, "³"
r i + 4, 61, "³"
NEXT i
r 16, 22, "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
r 6, 26, "Op. 1"
r 6, 45, "Op. 11"
r 7, 26, "Op. 2"
r 7, 45, "Op. 12"
r 8, 26, "Op. 3"
r 8, 45, "Op. 13"
r 9, 26, "Op. 4"
r 9, 45, "Op. 14"
r 10, 26, "Op. 5"
r 10, 45, "Op. 15"
r 11, 26, "Op. 6"
r 11, 45, "Op. 16"
r 12, 26, "Op. 7"
r 12, 45, "Op. 17"
r 13, 26, "Op. 8"
r 13, 45, "Op. 18"
r 14, 26, "Op. 9"
r 14, 45, "Op. 19"
r 15, 26, "Op. 10"
r 15, 45, "Op. 20"
COLOR 2
r 5, 24, "Tour IV"
COLOR 6
r 2, 53, "Tour IV"
r 5, 52, "( a-t )"
140
GET #1, 756, mis
x = ASC(mis.eon)
COLOR 1
FOR i = 1 TO 10
IF x > i - 1 THEN r i + 5, 33, "erfllt"
NEXT i
FOR i = 1 TO 10
IF x > i + 9 THEN r i + 5, 52, "erfllt"
NEXT i
DO
v$ = INKEY$
IF v$ = "a" THEN IF x < 1 THEN PUT #1, 756, a$: PUT #1, 748, nu$: GOTO 140
IF v$ = "b" THEN IF x < 2 THEN PUT #1, 756, b$: PUT #1, 748, a$: GOTO 140
IF v$ = "c" THEN IF x < 3 THEN PUT #1, 756, c$: PUT #1, 748, b$: GOTO 140
IF v$ = "d" THEN IF x < 4 THEN PUT #1, 756, d$: PUT #1, 748, c$: GOTO 140
IF v$ = "e" THEN IF x < 5 THEN PUT #1, 756, e$: PUT #1, 748, d$: GOTO 140
IF v$ = "f" THEN IF x < 6 THEN PUT #1, 756, f$: PUT #1, 748, e$: GOTO 140
IF v$ = "g" THEN IF x < 7 THEN PUT #1, 756, g$: PUT #1, 748, f$: GOTO 140
IF v$ = "h" THEN IF x < 8 THEN PUT #1, 756, h$: PUT #1, 748, g$: GOTO 140
IF v$ = "i" THEN IF x < 9 THEN PUT #1, 756, i$: PUT #1, 748, h$: GOTO 140
IF v$ = "j" THEN IF x < 10 THEN PUT #1, 756, j$: PUT #1, 748, i$: GOTO 140
IF v$ = "k" THEN IF x < 11 THEN PUT #1, 756, k$: PUT #1, 748, j$: GOTO 140
IF v$ = "l" THEN IF x < 12 THEN PUT #1, 756, l$: PUT #1, 748, k$: GOTO 140
IF v$ = "m" THEN IF x < 13 THEN PUT #1, 756, m$: PUT #1, 748, l$: GOTO 140
IF v$ = "n" THEN IF x < 14 THEN PUT #1, 756, n$: PUT #1, 748, m$: GOTO 140
IF v$ = "o" THEN IF x < 15 THEN PUT #1, 756, o$: PUT #1, 748, n$: GOTO 140
IF v$ = "p" THEN IF x < 16 THEN PUT #1, 756, p$: PUT #1, 748, o$: GOTO 140
IF v$ = "q" THEN IF x < 17 THEN PUT #1, 756, q$: PUT #1, 748, p$: GOTO 140
IF v$ = "r" THEN IF x < 18 THEN PUT #1, 756, w$: PUT #1, 748, q$: GOTO 140
IF v$ = "s" THEN IF x < 19 THEN PUT #1, 756, s$: PUT #1, 748, w$: GOTO 140
IF v$ = "t" THEN IF x < 20 THEN PUT #1, 756, t$: PUT #1, 748, s$: PUT #1, 740, c$: GOTO 140
IF v$ = CHR$(0) + "K" THEN GOSUB tour3
IF v$ = CHR$(0) + "M" THEN GOSUB tour5
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 250
LOOP
tour5:
260
COLOR 3
LINE (0, 36)-(650, 450), 0, BF
PUT (0, 0), liste, PSET
r 3, 61, "ÅÄÄÄÄÄÄÄÅ"
r 4, 30, "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ       ³"
FOR i = 1 TO 11
r i + 4, 30, "³"
r i + 4, 69, "³"
NEXT i
r 16, 30, "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
r 6, 34, "Op. 1"
r 6, 53, "Op. 11"
r 7, 34, "Op. 2"
r 7, 53, "Op. 12"
r 8, 34, "Op. 3"
r 8, 53, "Op. 13"
r 9, 34, "Op. 4"
r 9, 53, "Op. 14"
r 10, 34, "Op. 5"
r 10, 53, "Op. 15"
r 11, 34, "Op. 6"
r 11, 53, "Op. 16"
r 12, 34, "Op. 7"
r 12, 53, "Op. 17"
r 13, 34, "Op. 8"
r 13, 53, "Op. 18"
r 14, 34, "Op. 9"
r 14, 53, "Op. 19"
r 15, 34, "Op. 10"
r 15, 53, "Op. 20"
COLOR 2
r 5, 32, "Tour V"
COLOR 6
r 2, 62, "Tour V"
r 5, 60, "( a-t )"
150
GET #1, 757, mis
x = ASC(mis.eon)
COLOR 1
FOR i = 1 TO 10
IF x > i - 1 THEN r i + 5, 41, "erfllt"
NEXT i
FOR i = 1 TO 10
IF x > i + 9 THEN r i + 5, 60, "erfllt"
NEXT i
DO
v$ = INKEY$
IF v$ = "a" THEN IF x < 1 THEN PUT #1, 757, a$: PUT #1, 749, nu$: GOTO 150
IF v$ = "b" THEN IF x < 2 THEN PUT #1, 757, b$: PUT #1, 749, a$: GOTO 150
IF v$ = "c" THEN IF x < 3 THEN PUT #1, 757, c$: PUT #1, 749, b$: GOTO 150
IF v$ = "d" THEN IF x < 4 THEN PUT #1, 757, d$: PUT #1, 749, c$: GOTO 150
IF v$ = "e" THEN IF x < 5 THEN PUT #1, 757, e$: PUT #1, 749, d$: GOTO 150
IF v$ = "f" THEN IF x < 6 THEN PUT #1, 757, f$: PUT #1, 749, e$: GOTO 150
IF v$ = "g" THEN IF x < 7 THEN PUT #1, 757, g$: PUT #1, 749, f$: GOTO 150
IF v$ = "h" THEN IF x < 8 THEN PUT #1, 757, h$: PUT #1, 749, g$: GOTO 150
IF v$ = "i" THEN IF x < 9 THEN PUT #1, 757, i$: PUT #1, 749, h$: GOTO 150
IF v$ = "j" THEN IF x < 10 THEN PUT #1, 757, j$: PUT #1, 749, i$: GOTO 150
IF v$ = "k" THEN IF x < 11 THEN PUT #1, 757, k$: PUT #1, 749, j$: GOTO 150
IF v$ = "l" THEN IF x < 12 THEN PUT #1, 757, l$: PUT #1, 749, k$: GOTO 150
IF v$ = "m" THEN IF x < 13 THEN PUT #1, 757, m$: PUT #1, 749, l$: GOTO 150
IF v$ = "n" THEN IF x < 14 THEN PUT #1, 757, n$: PUT #1, 749, m$: GOTO 150
IF v$ = "o" THEN IF x < 15 THEN PUT #1, 757, o$: PUT #1, 749, n$: GOTO 150
IF v$ = "p" THEN IF x < 16 THEN PUT #1, 757, p$: PUT #1, 749, o$: GOTO 150
IF v$ = "q" THEN IF x < 17 THEN PUT #1, 757, q$: PUT #1, 749, p$: GOTO 150
IF v$ = "r" THEN IF x < 18 THEN PUT #1, 757, w$: PUT #1, 749, q$: GOTO 150
IF v$ = "s" THEN IF x < 19 THEN PUT #1, 757, s$: PUT #1, 749, w$: GOTO 150
IF v$ = "t" THEN IF x < 20 THEN PUT #1, 757, t$: PUT #1, 749, s$: PUT #1, 741, c$: GOTO 150
IF v$ = CHR$(0) + "K" THEN GOSUB tour4
IF v$ = CHR$(0) + "M" THEN GOSUB orden
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 260
LOOP
orden:
270
LINE (0, 36)-(650, 450), 0, BF
COLOR 3
PUT (0, 0), liste, PSET
r 3, 69, "ÅÄÄÄÄÄÄÄÄÄ´"
r 4, 37, "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ         ³"
FOR i = 1 TO 15
r i + 4, 37, "³"
r i + 4, 79, "³"
NEXT i
r 20, 37, "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
r 11, 42, "Der Kalidor Halbmond ....."
r 12, 42, "Bronzene Traube .........."
r 13, 42, "Silberne F„nge ..........."
r 14, 42, "Silberner S„belzahn ......"
r 15, 42, "Goldene Flgel ..........."
r 16, 42, "Diamantene Augen ........."
COLOR 1
r 6, 42, "Das Corellianische Kreutz"
r 7, 42, "Das Mantooine Medaillon .."
r 8, 42, "Der Stern von Alderaan ..."
r 9, 42, "Das Schild von Yavin ....."
r 10, 42, "Die F„gne von Hoth ......."
r 17, 42, "Rang eines"
r 18, 42, "Erfahrungsgrad"
COLOR 6
r 2, 71, "Orden"
r 5, 58, "( 1-5  a-f +  #  * )"
r 19, 42, "Sie sind"
210
COLOR 2
r 5, 39, "Verdienste"
GET #1, 11, mis
IF mis.eon = a$ THEN r 6, 69, "erhalten"
GET #1, 12, mis
IF mis.eon = a$ THEN r 7, 69, "erhalten"
GET #1, 13, mis
IF mis.eon = a$ THEN r 8, 69, "erhalten"
GET #1, 14, mis
IF mis.eon = a$ THEN r 9, 69, "erhalten"
GET #1, 15, mis
IF mis.eon = a$ THEN r 10, 69, "erhalten"
GET #1, 18, mis
IF mis.eon >= a$ THEN r 11, 69, "erhalten": ka = 1
IF mis.eon >= b$ THEN r 12, 69, "erhalten": ka = 2
IF mis.eon >= c$ THEN r 13, 69, "erhalten": ka = 3
IF mis.eon >= d$ THEN r 14, 69, "erhalten": ka = 4
IF mis.eon >= e$ THEN r 15, 69, "erhalten": ka = 5
IF mis.eon = f$ THEN r 16, 69, "erhalten": ka = 6
GET #1, 4, mis
LOCATE 17, 53
IF mis.eon = nu$ THEN PRINT "Flug Kadett": ra = 0
IF mis.eon = a$ THEN PRINT "Flugoffizier": ra = 1
IF mis.eon = b$ THEN PRINT "Leutnant    ": ra = 2
IF mis.eon = c$ THEN PRINT "Hauptmann": ra = 3
IF mis.eon = d$ THEN PRINT "Oberst   ": ra = 4
IF mis.eon = e$ THEN PRINT "General": ra = 5
GET #1, 10, mis
ef = ASC(mis.eon)
GET #1, 9, mis
ta = ASC(mis.eon)
LOCATE 18, 57
IF ef >= 0 AND ef < 64 THEN PRINT "Rekrut": er = 0
IF ef >= 64 AND ef < 128 THEN PRINT "Offizier": er = 1
IF ef >= 128 AND ef < 192 THEN PRINT "Veteran ": er = 2
IF ef >= 192 AND ta < 255 THEN PRINT "Ass    ": er = 3
IF ef = 255 AND ta = 255 THEN PRINT "Top Ass": er = 4
GET #1, 3, mis
LOCATE 19, 51
IF mis.eon = nu$ THEN PRINT "Aktiv   "
IF mis.eon = a$ THEN PRINT "Gefangen"
IF mis.eon = b$ THEN PRINT "Get”tet"
DO
v$ = INKEY$
IF v$ = "1" THEN PUT #1, 11, a$: GOTO 210
IF v$ = "2" THEN PUT #1, 12, a$: GOTO 210
IF v$ = "3" THEN PUT #1, 13, a$: GOTO 210
IF v$ = "4" THEN PUT #1, 14, a$: GOTO 210
IF v$ = "5" THEN PUT #1, 15, a$: GOTO 210
IF v$ = "a" AND ka < 1 THEN PUT #1, 18, a$: GOTO 210
IF v$ = "b" AND ka < 2 THEN PUT #1, 18, b$: GOTO 210
IF v$ = "c" AND ka < 3 THEN PUT #1, 18, c$: GOTO 210
IF v$ = "d" AND ka < 4 THEN PUT #1, 18, d$: GOTO 210
IF v$ = "e" AND ka < 5 THEN PUT #1, 18, e$: GOTO 210
IF v$ = "f" AND ka < 6 THEN PUT #1, 18, f$: GOTO 210
IF v$ = "*" THEN PUT #1, 3, nu$: GOTO 210
IF v$ = "+" AND ra = 0 THEN PUT #1, 4, a$: GOTO 210
IF v$ = "+" AND ra = 1 THEN PUT #1, 4, b$: GOTO 210
IF v$ = "+" AND ra = 2 THEN PUT #1, 4, c$: GOTO 210
IF v$ = "+" AND ra = 3 THEN PUT #1, 4, d$: GOTO 210
IF v$ = "+" AND ra = 4 THEN PUT #1, 4, e$: GOTO 210
IF v$ = "#" AND er = 0 THEN PUT #1, 10, of$: GOTO 210
IF v$ = "#" AND er = 1 THEN PUT #1, 10, ve$: GOTO 210
IF v$ = "#" AND er = 2 THEN PUT #1, 10, as$: GOTO 210
IF v$ = "#" AND er = 3 THEN PUT #1, 10, lt$: PUT #1, 9, lt$: GOTO 210
IF v$ = CHR$(0) + "K" THEN GOSUB tour5
IF v$ = CHR$(0) + "M" THEN GOSUB training
IF v$ = CHR$(27) THEN GOSUB menue: GOTO 270
LOOP
menue:
LINE (0, 36)-(650, 450), 0, BF
PALETTE 6, 3
PALETTE 7, 16
PALETTE 8, 16
PALETTE 9, 16
COLOR 4
r 11, 20, "ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
r 12, 20, "º"
r 12, 61, "º"
r 13, 20, "º"
r 13, 61, "º"
r 14, 20, "º"
r 14, 61, "º"
r 15, 20, "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"
COLOR 7
r 12, 23, "*  Bring mich bloá wieder zurck.  *"
COLOR 8
r 13, 23, "* Ich h„tte da noch einen Piloten. *"
COLOR 9
r 14, 23, "*     So das reicht erstmal !      *"
PALETTE 7, 2
50
DO
v$ = INKEY$
IF v$ = CHR$(0) + "H" THEN PALETTE 9, 2: PALETTE 7, 16: GOTO 70
IF v$ = CHR$(0) + "P" THEN PALETTE 8, 2: PALETTE 7, 16: GOTO 60
IF v$ = CHR$(13) THEN PALETTE: GOTO 80
LOOP
60
DO
v$ = INKEY$
IF v$ = CHR$(0) + "H" THEN PALETTE 7, 2: PALETTE 8, 16: GOTO 50
IF v$ = CHR$(0) + "P" THEN PALETTE 9, 2: PALETTE 8, 16: GOTO 70
IF v$ = CHR$(13) THEN : CLOSE #1: PALETTE: GOTO 5
LOOP
70
DO
v$ = INKEY$
IF v$ = CHR$(0) + "H" THEN PALETTE 8, 2: PALETTE 9, 16: GOTO 60
IF v$ = CHR$(0) + "P" THEN PALETTE 7, 2: PALETTE 9, 16: GOTO 50
IF v$ = CHR$(13) THEN CLOSE #1: CLS : SCREEN 0: END
LOOP
80
RETURN

SUB r (ra, c, tx$)
LOCATE ra, c
PRINT tx$
END SUB

