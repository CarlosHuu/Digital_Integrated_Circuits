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
.vec 'HW4_4_pattern.vec'

********************************
**     Parameter setting      **
********************************
.param xvdd = 0.8
.param xvss = 0


x1 a3 a2 a1 a0 b3 b2 b1 b0 cin sum3 sum2 sum1 sum0 cout vdd vss bit4FA

xsum0_reg sum0 clk vdd vss out_sum0 register
xsum1_reg sum1 clk vdd vss out_sum1 register
xsum2_reg sum2 clk vdd vss out_sum2 register
xsum3_reg sum3 clk vdd vss out_sum3 register

xcout_reg cout clk vdd vss cout_out register

xa0_reg in_a0 clk vdd vss a0 register
xa1_reg in_a1 clk vdd vss a1 register
xa2_reg in_a2 clk vdd vss a2 register
xa3_reg in_a3 clk vdd vss a3 register


xb0_reg in_b0 clk vdd vss b0 register
xb1_reg in_b1 clk vdd vss b1 register
xb2_reg in_b2 clk vdd vss b2 register
xb3_reg in_b3 clk vdd vss b3 register

xcin_reg cin_in clk vdd vss cin register





********************************
**     Power declaration      **
********************************
vvss       vss       0    xvss
vvdd       vdd       0    xvdd
vclk       clk       0    pulse(xvdd 0  0  20p  20p  13p  66p)

********************************
**     Input declaration      **
********************************




********************************
**     Analysis setting       **
********************************
.tran  0.001ns 4ns



.measure tran period trig v(clk) val=0.4 rise=4
+                       targ v(sum3) val=0.4 fall=1

.measure tran max_working_freq param='1/period'
.end     
