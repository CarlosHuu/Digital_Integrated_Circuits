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
.param xvddP = 0
.param xvssN = 0
.param wp = 64n
.param wn = 64n

.param xvgateN = 0.9
.param xvdrainN = 0.9
.param xvsourceN= 0

.param xvgateP = -0.9
.param xvdrainP = -0.9
.param xvsourceP= 0
********************************
**     Circuit description    **
********************************

m1 drainn gaten sourcen vssN nmos_lvt w=wn l=32n 
m2 drainn gaten sourcen vssN nmos_svt w=wn l=32n
m3 drainn gaten sourcen vssN nmos_hvt w=wn l=32n

m4 drainp gatep sourcep vddP pmos_lvt w=wp l=32n 
m5 drainp gatep sourcep vddP pmos_svt w=wp l=32n
m6 drainp gatep sourcep vddP pmos_hvt w=wp l=32n


********************************
**     Power declaration      **
********************************
vvss       vssN       0    xvssN
vdrain     drainn     0    xvdrainN
vsource   sourcen    0    xvsourceN
vgate     gaten      0    xvgateN

vvdd       vddP       0    xvddP
vgatep    gatep       0     xvgateP
vdrainp     drainp     0    xvdrainP
vsourcep   sourcep    0    xvsourceP


********************************
**     Input declaration      **
********************************


********************************
**     Analysis setting       **
********************************
.dc vdrain 0 0.9 0.01
.plot i(m1) i(m2) i(m3) 


.dc vdrainp 0 -0.9 -0.01
.plot i(m4) i(m5) i(m6) 
.end     