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
.vec 'HW4_3_pattern.vec'

********************************
**     Parameter setting      **
********************************
.param xvdd = 0.8
.param xvss = 0
.subckt wholeCKT cin_in in_a0 in_a1 in_a2 in_a3 in_b0 in_b1 in_b2 in_b3 sum0_out1 sum0_out2 sum0_out3 sum0_out4 sum1_out1 sum1_out2 sum1_out3 sum1_out4 sum2_out1 sum2_out2 sum2_out3 sum2_out4 sum3_out1 sum3_out2 sum3_out3 sum3_out4 cout_out1 cout_out2 cout_out3 cout_out4 vdd vss
    x1 a3 a2 a1 a0 b3 b2 b1 b0 cin sum3 sum2 sum1 sum0 cout vdd vss bit4FA

    xsum0_inv sum0 sum0_out1 sum0_out2 sum0_out3 sum0_out4 vdd vss FO4
    xsum1_inv sum1 sum1_out1 sum1_out2 sum1_out3 sum1_out4 vdd vss FO4
    xsum2_inv sum2 sum2_out1 sum2_out2 sum2_out3 sum2_out4 vdd vss FO4
    xsum3_inv sum3 sum3_out1 sum3_out2 sum3_out3 sum3_out4 vdd vss FO4

    xcout_inv cout cout_out1 cout_out2 cout_out3 cout_out4 vdd vss FO4

    xa0_inv in_a0 a0 vdd vss inv_4FA
    xa1_inv in_a1 a1 vdd vss inv_4FA
    xa2_inv in_a2 a2 vdd vss inv_4FA
    xa3_inv in_a3 a3 vdd vss inv_4FA 

    xb0_inv in_b0 b0 vdd vss inv_4FA
    xb1_inv in_b1 b1 vdd vss inv_4FA
    xb2_inv in_b2 b2 vdd vss inv_4FA
    xb3_inv in_b3 b3 vdd vss inv_4FA

    xcin_inv cin_in cin vdd vss inv_4FA

.ends
********************************
**     Power declaration      **
********************************
vvss       vss       0    xvss
vvdd       vdd       0    xvdd


********************************
**     Input declaration      **
********************************
xripple cin_in in_a0 in_a1 in_a2 in_a3 in_b0 in_b1 in_b2 in_b3 sum0_out1 sum0_out2 sum0_out3 sum0_out4 sum1_out1 sum1_out2 sum1_out3 sum1_out4 sum2_out1 sum2_out2 sum2_out3 sum2_out4 sum3_out1 sum3_out2 sum3_out3 sum3_out4 cout_out1 cout_out2 cout_out3 cout_out4 vdd vss wholeCKT



********************************
**     Analysis setting       **
********************************
.tran  0.001ps 680ps

.measure tran power_avg avg P(xripple)
.measure tran power_peak max P(xripple)

.measure tran energy_per_bit param = 'power_avg*0.00000000068/4'

.measure tran leakage_power avg P(xripple) FROM=0p TO=40p
.plot p(xripple)


.end     
