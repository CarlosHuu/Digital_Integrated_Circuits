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
.include '../../7nm_files/7nm_FF_160803.pm'
.unprotect

********************************
**     Parameter setting      **
********************************
.param xvdd = 0.8
.param xvss = 0

********************************
**     Circuit description    **
********************************
* First inverter
mN1  n1  n3  xvss  xvss  nmos_rvt  nfin=1 
mP1  n1  n3  xvdd  xvdd  pmos_rvt  nfin=1

* Second inverter 
mN2  n2  n1  xvss  xvss  nmos_rvt  nfin=1
mP2  n2  n1  xvdd  xvdd  pmos_rvt  nfin=1

* Third inverter
mN3  n3  n2  xvss  xvss  nmos_rvt  nfin=1
mP3  n3  n2  xvdd  xvdd  pmos_rvt  nfin=1

********************************
**     Power declaration      **
********************************
vvdd  xvdd  0  0.8
vvss  xvss  0  0

********************************
**     Initial Conditions     **
********************************
.ic v(n1)=0.8 v(n2)=0 v(n3)=0.8

********************************
**     Analysis setting       **
********************************
* Transient analysis for oscillation
.tran 0.1p 0.1n 

* Measure oscillation frequency
.measure tran period trig v(n1) val=0.4 rise=2 
+                       targ v(n1) val=0.4 rise=3
.measure tran freq param='1/period'

* Measure average power consumption
.measure tran avg_power avg p(vvdd)
.measure tran peak_power max p(vvdd)

.end