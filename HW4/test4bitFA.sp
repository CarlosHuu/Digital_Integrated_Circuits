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
.include '/RAID2/COURSE/dic/dic079/HW3/7nm_files/7nm_FF_160803.pm'

.unprotect
.include '1bitFA.sp'
.vec '4bitFA.vec'

********************************
**     Parameter setting      **
********************************
.param xvdd = 0.8
.param xvss = 0
x1 a3 a2 a1 a0 b3 b2 b1 b0 cin sum3 sum2 sum1 sum0 cout vdd vss bit4FA

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
.tran  0.01ns 100ns




.end     
