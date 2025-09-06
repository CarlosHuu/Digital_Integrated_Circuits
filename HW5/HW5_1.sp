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


.param lp = 32n
.param ln = 32n

* .param xvphi = 0.9

********************************
**     Circuit description    **
********************************

*.SUBCKT 6T_SRAM bit  bit_b VDD vss

MN1 A A_b vss vss nmos_svt w=128n l=ln
MN2 bit word A vss nmos_svt w=64n l=ln
MP1 A A_b VDD VDD pmos_svt  w=32n l=lp
MN3 A_b A vss vss nmos_svt w=128n l=ln
MN4 bit_b word A_b vss nmos_svt w=64n l=ln
MP2 A_b A VDD VDD pmos_svt  w=32n l=lp
*.ENDS 6T_SRAM

MPbit bit phi VDD VDD pmos_svt  w=32n l=lp
MPbit_b bit_b phi VDD VDD pmos_svt  w=32n l=lp

********************************
**     Power declaration      **
********************************
vvss       vss       0    xvss
vvdd       vdd       0    xvdd
* vvphi      vphi      0    xvphi
********************************
**     Initial Conditions     **
********************************
.ic v(A) = xvss
.ic V(A_b) = xvdd

********************************
**     Input declaration      **
********************************
vphi       phi     0   pulse(xvdd xvss  0  20p  20p  5n  10n)


vword       word     0    pulse(xvss xvdd  5.04n  20p  20p  5n  10n)  

****if write mode, cancel 以下的兩個的註解
* vbit      bit       0       xvdd
* vbit_b    bit_b     0       pulse(xvdd xvss  5.04n  20p  20p  5n  10n)

*analysis for butterfly
* VA      A       0       xvdd
* VA_b    A_b     0       xvss
********************************
**     Analysis setting       **
********************************
.tran  0.001ns 10ns


.end