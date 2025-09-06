********************************
**     Simulator setting      **
********************************
.option accurate
.option post           
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


.param lp = 43n
.param ln = 32n

.param xva = 0
********************************
**     Circuit description    **
********************************

.SUBCKT NAND A B Y VDD VSS
*drain, gate, source, body
Mp1 Y A vdd vdd pmos_lvt w=wp l=lp
Mp2 Y B vdd vdd pmos_lvt w=wp l=lp

Mn1 Y A x1 vss nmos_lvt w=wn l=ln
Mn2 x1 B vss vss nmos_lvt w=wn l=ln
Mn3 Y B x2 vss nmos_lvt w=wn l=ln
Mn4 x2 A vss vss nmos_lvt w=wn l=ln
.ENDS NAND
********************************
x1 a b y vdd vss nand


********************************
**     Power declaration      **
********************************
vvdd       vdd       0    xvdd
vvss       vss       0    xvss
va         a         0    xva
VB         B         A    xvss
********************************
**     Input declaration      **
********************************


********************************
**     Analysis setting       **
********************************
* .TRAN 0.1n 5n   
.dc va 0 0.8 0.00001  
.option captab  




.END
