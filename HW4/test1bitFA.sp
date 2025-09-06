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
.vec '1bitFA.vec'

********************************
**     Parameter setting      **
********************************
.param xvdd = 0.8
.param xvss = 0
x1 a b cin sum cout vdd vss FA

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
.tran  0.001ns 20ns




.end     
