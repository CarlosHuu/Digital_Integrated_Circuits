********************************
**     Simulator setting      **
********************************
.option accurate
.option post
.option captab             
.op
.TEMP 25.0


********************************
**     Library setting        **
********************************
.protect
.lib '../bulk_32nm.l'TT
.unprotect


********************************
**     Parameter setting      **
********************************
.param xvdd = 0.8
.param xvss = 0

.param wp = 76n
.param wn = 64n


.param lp = 42n
.param ln = 32n

.param xva = 0
********************************
**     Circuit description    **
********************************

.SUBCKT NAND A B Y VDD VSS
*drain, gate, source, body
Mp1 Y A vdd vdd pmos_lvt w=wp l=lp
Mp2 Y B vdd vdd pmos_lvt w=wp l=lp

Mn1 Y A x11 vss nmos_lvt w=wn l=ln
Mn2 x11 B vss vss nmos_lvt w=wn l=ln
Mn3 Y B x22 vss nmos_lvt w=wn l=ln
Mn4 x22 A vss vss nmos_lvt w=wn l=ln
.ENDS NAND
********************************
x1 a b y vdd vss nand
x2 y vdd vout1 vdd vss nand
x3 y vdd vout2 vdd vss nand

********************************
**     Power declaration      **
********************************
vvdd       vdd       0    xvdd
vvss       vss       0    xvss
va         a         0    pulse(xvdd 0 0 0.4n 0.4n  0.6n 2n)
VB         b         0    xvdd
********************************
**     Input declaration      **
********************************


********************************
**     Analysis setting       **
********************************
.TRAN 0.001n 5n   

.measure tran t_df1 trig v(a) val=0.36 rise=1 
+ targ v(y) val=0.4 fall=1
.measure tran t_dr1 trig v(a) val=0.36 fall=1 
+ targ v(y) val=0.4 rise=1

.measure tran t_df2 trig v(y) val=0.36 rise=1 
+ targ v(vout1) val=0.4 fall=1
.measure tran t_dr2 trig v(y) val=0.36 fall=1 
+ targ v(vout1) val=0.4 rise=1

.measure tran t_df3 trig v(y) val=0.36 rise=1 
+ targ v(vout2) val=0.4 fall=1
.measure tran t_dr3 trig v(y) val=0.36 fall=1 
+ targ v(vout2) val=0.4 rise=1

.plot P(x1)
.plot P(x2)
.plot P(x3)

.MEASURE TRAN AVG_POWER1 AVG P(x1)
.MEASURE TRAN PEAK_POWER1 MAX P(x1)

.MEASURE TRAN AVG_POWER2 AVG P(x2)
.MEASURE TRAN PEAK_POWER2 MAX P(x2)

.MEASURE TRAN AVG_POWER3 AVG P(x3)
.MEASURE TRAN PEAK_POWER3 MAX P(x3)

.END
