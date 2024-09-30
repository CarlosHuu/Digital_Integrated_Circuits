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

.param wp1 = 128n$ double pmos 
.param wn1 = 64n
.param wp2 = 128n
.param wn2 = 64n
.param wp3 = 256n$$p3 p4部會動
.param wn3 = 768n
.param wp4 = 256n
.param wn4 = 768n 

.param lp1 = 384n$for beta smaller
.param ln1 = 32n
.param lp2 = 32n 
.param ln2 = 32n 
.param lp3 = 32n 
.param ln3 = 32n 
.param lp4 = 32n 
.param ln4 = 32n 

.param xvct = 0.8
.param xvgate =0
********************************
**     Circuit description    **
********************************

mn1 vln  gate vss vss nmos_svt w=wn1 l=ln1
mn2 vout gate vln vss nmos_svt w=wn2 l=ln2
mn3 m3d vout vln vss nmos_svt w=wn3 l=ln3
mn4 vdd vct m3d vss nmos_svt w=wn4 l=ln4

mp1 vtp gate vdd vdd pmos_svt w=wp1 l=lp1
mp2 vout gate vtp vdd pmos_svt w=wp2 l=lp2
mp3 vtp vout m6s vdd pmos_svt w=wp3 l=lp3
mp4 m6s vct  vss vdd  pmos_svt w=wp4 l=lp4



********************************
**     Power declaration      **
********************************
vvdd       vdd       0    xvdd
vvss       vss       0    xvss
vvct       vct      0    xvct
vgate     gate      0    xvgate
********************************
**     Input declaration      **
********************************


********************************
**     Analysis setting       **
********************************

.dc vgate 0 0.9 0.001 
$sweep xvct 0 0.9 0.9

.plot i(mn1) i(mn2) i(mn3) i(mn4) 

.dc vgate 0.9 0 -0.001 
$sweep xvct 0 0.9 0.9
.plot i(mp1) i(mp2) i(mp3) i(mp4) 
.end   