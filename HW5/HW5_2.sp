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

********************************
**     Circuit description    **
********************************
* Core 6T SRAM Cell
MN1 A A_b vss vss nmos_svt w=128n l=ln
MN2 bit word A vss nmos_svt w=64n l=ln
MP1 A A_b VDD VDD pmos_svt w=32n l=lp
MN3 A_b A vss vss nmos_svt w=128n l=ln
MN4 bit_b word A_b vss nmos_svt w=64n l=ln
MP2 A_b A VDD VDD pmos_svt w=32n l=lp

********************************
**     Power declaration      **
********************************
vvdd vdd 0 xvdd
vvss vss 0 0

********************************
**     Hold SNM Analysis      **
********************************
* DC voltage sources for sweeping
* VA      A       0       0
VA_b    A_b     0       xvdd

* Word line at 0 for hold mode
* Vword   word    0       0

Vword   word    0       xvdd
* Bit lines tied to VDD for hold analysis
Vbit    bit     0       xvdd
Vbit_b  bit_b   0       xvdd

* .dc VA 0 0.9 0.01 
.dc VA_b 0 0.9 0.01 
.probe dc v(A) v(A_b)
.print dc v(A) v(A_b)

.end