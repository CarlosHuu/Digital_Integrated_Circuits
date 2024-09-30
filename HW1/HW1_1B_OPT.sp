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
.param xvdd = 0.9
.param xvss = 0
.param wp = opt1(128n, 64n, 300n, 1n)
.param wn = opt1(64n ,64n, 300n, 1n)
.param lpmin = 32n
.param lnmin = 32n
.param cycle = 1n
.param simtime = 5n

********************************
**     Circuit description    **
********************************

mn_svt vout input vss vss nmos_svt w=wn l=lnmin
mp_svt vout input vdd vdd pmos_svt w=wp l=lpmin
********************************
**     Power declaration      **
********************************

Vvss vss 0 xvss
Vvdd vdd 0 xvdd
********************************
**     Input declaration      **
********************************
vin        input     0    pulse(xvdd 0 1n 0.1n 0.1n 'cycle*0.45' cycle)


.model optX opt itropt = 100

* 
********************************
**    Simulation settings     **
********************************

.dc vin 0 xvdd 0.01 sweep optimize=opt1 results=Vth model=optX

* Measurement: find the voltage where Vin = Vout
.MEASURE dc Vth find v(vout)WHEN V(input)=0.45 goal = 0.45


.END
