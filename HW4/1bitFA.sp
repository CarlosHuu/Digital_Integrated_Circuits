* .subckt FA A B cin sum cout vdd vss
* ******************************************stage1
* Mp1 vdd A node1 vdd pmos_rvt nfin=1
* Mp2 stage2 B node1 vdd pmos_rvt nfin=1
* Mn1 stage2 B node2 vss  nmos_rvt nfin=1
* Mn2 node2  A vss   vss   nmos_rvt nfin=1
* *******************************************stage2 
* Mp3 vdd A node3 vdd pmos_rvt nfin=2
* Mp4 vdd B node3 vdd pmos_rvt nfin=2
* Mp5 node3 cin stage2 vdd pmos_rvt nfin=2
* Mn3 stage2 cin node4 vss nmos_rvt nfin=2
* Mn4 node4 A vss vss nmos_rvt nfin=2
* Mn5 node4 B vss vss nmos_rvt nfin=2
* xinv1 stage2 cout vdd vss inv_4FA
* *************************************************stage3
* Mp6 vdd A  node5 vdd pmos_rvt nfin=1
* Mp7 vdd cin node5 vdd pmos_rvt nfin=1
* Mp12 vdd B node5 vdd pmos_rvt nfin=1
* Mp8 node5 stage2 stage3 vdd pmos_rvt nfin=1
* Mn6 stage3 stage2 node6 vss nmos_rvt nfin=1
* Mn7 node6 A vss vss nmos_rvt nfin=1
* Mn8 node6 cin vss vss nmos_rvt nfin=1
* Mn9 node6 B vss vss nmos_rvt nfin=1
* xinv2 stage3 sum vdd vss inv_4FA
* *************************************************stage4
* Mp9 vdd A  node7 vdd pmos_rvt nfin=1
* Mp10 node7 B node8 vdd pmos_rvt nfin=1
* Mp11 node8 cin stage3 vdd pmos_rvt nfin=1
* Mn10 stage3 cin node9 vss nmos_rvt nfin=1
* Mn11 node9 B node10 vss nmos_rvt nfin=1
* Mn12 node10 A vss vss nmos_rvt nfin=1
* .ends FA
*************************************************


.subckt FA2 A B cin sum cout vdd vss
******************************************stage1
Mp1 vdd A node1 vdd pmos_rvt nfin=1
Mp2 stage2 B node1 vdd pmos_rvt nfin=1
Mn1 stage2 B node2 vss  nmos_rvt nfin=1
Mn2 node2  A vss   vss   nmos_rvt nfin=1
*******************************************stage2 
Mp3 vdd A node3 vdd pmos_rvt nfin=6
Mp4 vdd B node3 vdd pmos_rvt nfin=6
Mp5 node3 cin stage2 vdd pmos_rvt nfin=3
Mn3 stage2 cin node4 vss nmos_rvt nfin=3
Mn4 node4 A vss vss nmos_rvt nfin=6
Mn5 node4 B vss vss nmos_rvt nfin=6
xinv1 stage2 cout vdd vss inv_4FA3
*************************************************stage3
Mp6 vdd A  node5 vdd pmos_rvt nfin=1
Mp7 vdd cin node5 vdd pmos_rvt nfin=1
Mp12 vdd B node5 vdd pmos_rvt nfin=1
Mp8 node5 stage2 stage3 vdd pmos_rvt nfin=1
Mn6 stage3 stage2 node6 vss nmos_rvt nfin=1
Mn7 node6 A vss vss nmos_rvt nfin=1
Mn8 node6 cin vss vss nmos_rvt nfin=1
Mn9 node6 B vss vss nmos_rvt nfin=1
xinv2 stage3 sum vdd vss inv_4FA
*************************************************stage4
Mp9 vdd A  node7 vdd pmos_rvt nfin=1
Mp10 node7 B node8 vdd pmos_rvt nfin=1
Mp11 node8 cin stage3 vdd pmos_rvt nfin=1
Mn10 stage3 cin node9 vss nmos_rvt nfin=1
Mn11 node9 B node10 vss nmos_rvt nfin=1
Mn12 node10 A vss vss nmos_rvt nfin=1
.ends FA2
*************************************************

.subckt bit4FA a3 a2 a1 a0 b3 b2 b1 b0 cin sum3 sum2 sum1 sum0 cout vdd vss
x1 a0 b0 cin sum0 c0 vdd vss FA2
x2 a1 b1 c0 sum1 c1 vdd vss FA2
x3 a2 b2 c1 sum2 c2 vdd vss FA2
x4 a3 b3 c2 sum3 cout vdd vss FA2
.ends bits4FA

.subckt inv_4FA in out vdd vss
Mt1 out in vss vss nmos_rvt nfin=1
Mt2 out in vdd vdd pmos_rvt nfin=1
.ends inv_4FA



.subckt FO5 in fo5_out1 fo5_out2 fo5_out3 fo5_out4 fo5_out5 vdd vss
    xin1 in fo5_out1 vdd vss inv_4FA
    xin2 in fo5_out2 vdd vss inv_4FA
    xin3 in fo5_out3 vdd vss inv_4FA
    xin4 in fo5_out4 vdd vss inv_4FA
    xin5 in fo5_out5 vdd vss inv_4FA
.ends 

.subckt FO4 in fo4_out1 fo4_out2 fo4_out3 fo4_out4 vdd vss
    xin1 in fo4_out1 vdd vss inv_4FA
    xin2 in fo4_out2 vdd vss inv_4FA
    xin3 in fo4_out3 vdd vss inv_4FA
    xin4 in fo4_out4 vdd vss inv_4FA
.ends 

.subckt inv_4FA3 in out vdd vss
Mt1 out in vss vss nmos_rvt nfin=3
Mt2 out in vdd vdd pmos_rvt nfin=3
.ends inv_4FA3


.subckt register D clk vdd vss out
m1 A D vdd vdd  pmos_rvt nfin=1
m2 n0 clk A vdd pmos_rvt nfin=1
m3 n0 D vss vss nmos_rvt nfin=1
m4 n1 clk vdd vdd pmos_rvt nfin=1
m5 n1 n0 n2 vss nmos_rvt nfin=1
m6 n2 clk vss vss nmos_rvt nfin=1
m7 n3 n1 vdd vdd pmos_rvt nfin=1
m8 n3 clk n4 vss nmos_rvt nfin=1
m9 n4 n1 vss vss nmos_rvt nfin=1
xinv n3 out vdd vss inv_4FA
.ends 

