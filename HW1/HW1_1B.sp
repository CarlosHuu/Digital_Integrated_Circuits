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
.param wp = 118n
.param wn = 66n
.param cycle = 1n
.param simtime = 5n

********************************
**     Circuit description    **
********************************
.subckt inv in out vdd vss
m1 out in vdd vdd pmos_svt w=wp l=32n
m2 out in vss vss nmos_svt w=wn l=32n
.ends

xinv_1 input output vdd vss inv
* cload  output vss 5f

********************************
**     Power declaration      **
********************************
vvdd       vdd       0    xvdd
vvss       vss       0    xvss

********************************
**     Input declaration      **
********************************
vin        input     0    


********************************
**     Analysis setting       **
********************************


.dc vin 0 0.9 0.01 
* sweep wp 100n 150n 1n 
* .measure vout_at_vin_045 find v(output) when v(input)=0.45
.end   