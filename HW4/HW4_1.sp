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
.include '../7nm_files/7nm_FF_160803.pm'

.unprotect
.include '1bitFA.sp'
.vec 'HW4_pattern.vec'

********************************
**     Parameter setting      **
********************************
.param xvdd = 0.8
.param xvss = 0
x1 a3 a2 a1 a0 b3 b2 b1 b0 cin sum3 sum2 sum1 sum0 cout vdd vss bit4FA

xsum0_inv sum0 sum0_out1 sum0_out2 sum0_out3 sum0_out4 sum0_out5 vdd vss FO5
xsum1_inv sum1 sum1_out1 sum1_out2 sum1_out3 sum1_out4 sum1_out5 vdd vss FO5
xsum2_inv sum2 sum2_out1 sum2_out2 sum2_out3 sum2_out4 sum2_out5 vdd vss FO5
xsum3_inv sum3 sum3_out1 sum3_out2 sum3_out3 sum3_out4 sum3_out5 vdd vss FO5

xcout_inv cout cout_out1 cout_out2 cout_out3 cout_out4 cout_out5 vdd vss FO5

xa0_inv in_a0 a0 vdd vss inv_4FA
xa1_inv in_a1 a1 vdd vss inv_4FA
xa2_inv in_a2 a2 vdd vss inv_4FA
xa3_inv in_a3 a3 vdd vss inv_4FA 

xb0_inv in_b0 b0 vdd vss inv_4FA
xb1_inv in_b1 b1 vdd vss inv_4FA
xb2_inv in_b2 b2 vdd vss inv_4FA
xb3_inv in_b3 b3 vdd vss inv_4FA

xcin_inv cin_in cin vdd vss inv_4FA


********************************
**     Power declaration      **
********************************
vvss       vss       0    xvss
vvdd       vdd       0    xvdd


********************************
**     Input declaration      **
********************************




********************************
**     Analysis setting       **
********************************
.tran  0.001ns 4ns

* .measure  tran max_propagation_delay trig V(cin) val=0.4 rise=1 
* +                                    targ V(cout) val=0.4 rise=1

.measure  tran max_propagation_delay trig V(cin) val=0.4 rise=1 
+                                    targ V(sum3) val=0.4 fall=1

.end     
