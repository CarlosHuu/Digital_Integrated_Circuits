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
.subckt SRAM_CELL A A_b BIT BIT_b Word VDD VSS
MN1 A A_b vss vss nmos_svt w=128n l=ln
MN2 bit word A vss nmos_svt w=64n l=ln
MP1 A A_b VDD VDD pmos_svt  w=32n l=lp
MN3 A_b A vss vss nmos_svt w=128n l=ln
MN4 bit_b word A_b vss nmos_svt w=64n l=ln
MP2 A_b A VDD VDD pmos_svt  w=32n l=lp
.ends SRAM_CELL

MPbit bit phi VDD VDD pmos_svt  w=32n l=lp
MPbit_b bit_b phi VDD VDD pmos_svt  w=32n l=lp

* SRAM 單元電路宣告
* SRAM0: 初始化 A=0, A_b=1
XSRAM0 A0 A0_b BIT BIT_b Word0 VDD VSS SRAM_CELL
* SRAM1~SRAM63: 初始化 A=1, A_b=0
XSRAM1 A1 A1_b BIT BIT_b Word1 VDD VSS SRAM_CELL
XSRAM2 A2 A2_b BIT BIT_b Word2 VDD VSS SRAM_CELL
XSRAM3 A3 A3_b BIT BIT_b Word3 VDD VSS SRAM_CELL
XSRAM4 A4 A4_b BIT BIT_b Word4 VDD VSS SRAM_CELL
XSRAM5 A5 A5_b BIT BIT_b Word5 VDD VSS SRAM_CELL
XSRAM6 A6 A6_b BIT BIT_b Word6 VDD VSS SRAM_CELL
XSRAM7 A7 A7_b BIT BIT_b Word7 VDD VSS SRAM_CELL
XSRAM8 A8 A8_b BIT BIT_b Word8 VDD VSS SRAM_CELL
XSRAM9 A9 A9_b BIT BIT_b Word9 VDD VSS SRAM_CELL
XSRAM10 A10 A10_b BIT BIT_b Word10 VDD VSS SRAM_CELL
XSRAM11 A11 A11_b BIT BIT_b Word11 VDD VSS SRAM_CELL
XSRAM12 A12 A12_b BIT BIT_b Word12 VDD VSS SRAM_CELL
XSRAM13 A13 A13_b BIT BIT_b Word13 VDD VSS SRAM_CELL
XSRAM14 A14 A14_b BIT BIT_b Word14 VDD VSS SRAM_CELL
XSRAM15 A15 A15_b BIT BIT_b Word15 VDD VSS SRAM_CELL
XSRAM16 A16 A16_b BIT BIT_b Word16 VDD VSS SRAM_CELL
XSRAM17 A17 A17_b BIT BIT_b Word17 VDD VSS SRAM_CELL
XSRAM18 A18 A18_b BIT BIT_b Word18 VDD VSS SRAM_CELL
XSRAM19 A19 A19_b BIT BIT_b Word19 VDD VSS SRAM_CELL
XSRAM20 A20 A20_b BIT BIT_b Word20 VDD VSS SRAM_CELL
XSRAM21 A21 A21_b BIT BIT_b Word21 VDD VSS SRAM_CELL
XSRAM22 A22 A22_b BIT BIT_b Word22 VDD VSS SRAM_CELL
XSRAM23 A23 A23_b BIT BIT_b Word23 VDD VSS SRAM_CELL
XSRAM24 A24 A24_b BIT BIT_b Word24 VDD VSS SRAM_CELL
XSRAM25 A25 A25_b BIT BIT_b Word25 VDD VSS SRAM_CELL
XSRAM26 A26 A26_b BIT BIT_b Word26 VDD VSS SRAM_CELL
XSRAM27 A27 A27_b BIT BIT_b Word27 VDD VSS SRAM_CELL
XSRAM28 A28 A28_b BIT BIT_b Word28 VDD VSS SRAM_CELL
XSRAM29 A29 A29_b BIT BIT_b Word29 VDD VSS SRAM_CELL
XSRAM30 A30 A30_b BIT BIT_b Word30 VDD VSS SRAM_CELL
XSRAM31 A31 A31_b BIT BIT_b Word31 VDD VSS SRAM_CELL
XSRAM32 A32 A32_b BIT BIT_b Word32 VDD VSS SRAM_CELL
XSRAM33 A33 A33_b BIT BIT_b Word33 VDD VSS SRAM_CELL
XSRAM34 A34 A34_b BIT BIT_b Word34 VDD VSS SRAM_CELL
XSRAM35 A35 A35_b BIT BIT_b Word35 VDD VSS SRAM_CELL
XSRAM36 A36 A36_b BIT BIT_b Word36 VDD VSS SRAM_CELL
XSRAM37 A37 A37_b BIT BIT_b Word37 VDD VSS SRAM_CELL
XSRAM38 A38 A38_b BIT BIT_b Word38 VDD VSS SRAM_CELL
XSRAM39 A39 A39_b BIT BIT_b Word39 VDD VSS SRAM_CELL
XSRAM40 A40 A40_b BIT BIT_b Word40 VDD VSS SRAM_CELL
XSRAM41 A41 A41_b BIT BIT_b Word41 VDD VSS SRAM_CELL
XSRAM42 A42 A42_b BIT BIT_b Word42 VDD VSS SRAM_CELL
XSRAM43 A43 A43_b BIT BIT_b Word43 VDD VSS SRAM_CELL
XSRAM44 A44 A44_b BIT BIT_b Word44 VDD VSS SRAM_CELL
XSRAM45 A45 A45_b BIT BIT_b Word45 VDD VSS SRAM_CELL
XSRAM46 A46 A46_b BIT BIT_b Word46 VDD VSS SRAM_CELL
XSRAM47 A47 A47_b BIT BIT_b Word47 VDD VSS SRAM_CELL
XSRAM48 A48 A48_b BIT BIT_b Word48 VDD VSS SRAM_CELL
XSRAM49 A49 A49_b BIT BIT_b Word49 VDD VSS SRAM_CELL
XSRAM50 A50 A50_b BIT BIT_b Word50 VDD VSS SRAM_CELL
XSRAM51 A51 A51_b BIT BIT_b Word51 VDD VSS SRAM_CELL
XSRAM52 A52 A52_b BIT BIT_b Word52 VDD VSS SRAM_CELL
XSRAM53 A53 A53_b BIT BIT_b Word53 VDD VSS SRAM_CELL
XSRAM54 A54 A54_b BIT BIT_b Word54 VDD VSS SRAM_CELL
XSRAM55 A55 A55_b BIT BIT_b Word55 VDD VSS SRAM_CELL
XSRAM56 A56 A56_b BIT BIT_b Word56 VDD VSS SRAM_CELL
XSRAM57 A57 A57_b BIT BIT_b Word57 VDD VSS SRAM_CELL
XSRAM58 A58 A58_b BIT BIT_b Word58 VDD VSS SRAM_CELL
XSRAM59 A59 A59_b BIT BIT_b Word59 VDD VSS SRAM_CELL
XSRAM60 A60 A60_b BIT BIT_b Word60 VDD VSS SRAM_CELL
XSRAM61 A61 A61_b BIT BIT_b Word61 VDD VSS SRAM_CELL
XSRAM62 A62 A62_b BIT BIT_b Word62 VDD VSS SRAM_CELL
XSRAM63 A63 A63_b BIT BIT_b Word63 VDD VSS SRAM_CELL
********************************
**     Power declaration      **
********************************
vvss       vss       0    xvss
vvdd       vdd       0    xvdd



********************************
**     Input declaration      **
********************************
vphi       phi     0   pulse(xvdd xvss  0  20p  20p  5n  10n)


* Word line signals
vword0   word0    0    pulse(xvss xvdd  5.06n  20p  20p  5n  10n)
vword1   word1    0    0                                        
vword2   word2    0    0                                        
vword3   word3    0    0                                        
vword4   word4    0    0                                        
vword5   word5    0    0                                        
vword6   word6    0    0                                        
vword7   word7    0    0                                        
vword8   word8    0    0                                        
vword9   word9    0    0                                        
vword10  word10   0    0                                        
vword11  word11   0    0                                        
vword12  word12   0    0                                        
vword13  word13   0    0                                        
vword14  word14   0    0                                        
vword15  word15   0    0                                        
vword16  word16   0    0                                        
vword17  word17   0    0                                        
vword18  word18   0    0                                        
vword19  word19   0    0                                        
vword20  word20   0    0                                        
vword21  word21   0    0                                        
vword22  word22   0    0                                        
vword23  word23   0    0                                        
vword24  word24   0    0                                        
vword25  word25   0    0                                        
vword26  word26   0    0                                        
vword27  word27   0    0                                        
vword28  word28   0    0                                        
vword29  word29   0    0                                        
vword30  word30   0    0                                        
vword31  word31   0    0                                        
vword32  word32   0    0                                        
vword33  word33   0    0                                        
vword34  word34   0    0                                        
vword35  word35   0    0                                        
vword36  word36   0    0                                        
vword37  word37   0    0                                        
vword38  word38   0    0                                        
vword39  word39   0    0                                        
vword40  word40   0    0                                        
vword41  word41   0    0                                        
vword42  word42   0    0                                        
vword43  word43   0    0                                        
vword44  word44   0    0                                        
vword45  word45   0    0                                        
vword46  word46   0    0                                        
vword47  word47   0    0                                        
vword48  word48   0    0                                        
vword49  word49   0    0                                        
vword50  word50   0    0                                        
vword51  word51   0    0                                        
vword52  word52   0    0                                        
vword53  word53   0    0                                        
vword54  word54   0    0                                        
vword55  word55   0    0                                        
vword56  word56   0    0                                        
vword57  word57   0    0                                        
vword58  word58   0    0                                        
vword59  word59   0    0                                        
vword60  word60   0    0                                        
vword61  word61   0    0                                        
vword62  word62   0    0                                        
vword63  word63   0    0                                        


****if write mode, cancel 以下的兩個的註解
* vbit      bit       0       xvdd
* vbit_b    bit_b     0       pulse(xvdd xvss  7n  20p  20p  5n  10n)

*analysis for butterfly
* VA      A       0       xvdd
* VA_b    A_b     0       xvss

* 初始條件
.ic V(bit)=xvdd V(bit_b)=xvdd      
.ic V(A0)=xvss V(A0_b)=xvdd        * SRAM0
.ic V(A1)=xvdd V(A1_b)=xvss        * SRAM1
.ic V(A2)=xvdd V(A2_b)=xvss        * SRAM2
.ic V(A3)=xvdd V(A3_b)=xvss        * SRAM3
.ic V(A4)=xvdd V(A4_b)=xvss        * SRAM4
.ic V(A5)=xvdd V(A5_b)=xvss        * SRAM5
.ic V(A6)=xvdd V(A6_b)=xvss        * SRAM6
.ic V(A7)=xvdd V(A7_b)=xvss        * SRAM7
.ic V(A8)=xvdd V(A8_b)=xvss        * SRAM8
.ic V(A9)=xvdd V(A9_b)=xvss        * SRAM9
.ic V(A10)=xvdd V(A10_b)=xvss      * SRAM10
.ic V(A11)=xvdd V(A11_b)=xvss      * SRAM11
.ic V(A12)=xvdd V(A12_b)=xvss      * SRAM12
.ic V(A13)=xvdd V(A13_b)=xvss      * SRAM13
.ic V(A14)=xvdd V(A14_b)=xvss      * SRAM14
.ic V(A15)=xvdd V(A15_b)=xvss      * SRAM15
.ic V(A16)=xvdd V(A16_b)=xvss      * SRAM16
.ic V(A17)=xvdd V(A17_b)=xvss      * SRAM17
.ic V(A18)=xvdd V(A18_b)=xvss      * SRAM18
.ic V(A19)=xvdd V(A19_b)=xvss      * SRAM19
.ic V(A20)=xvdd V(A20_b)=xvss      * SRAM20
.ic V(A21)=xvdd V(A21_b)=xvss      * SRAM21
.ic V(A22)=xvdd V(A22_b)=xvss      * SRAM22
.ic V(A23)=xvdd V(A23_b)=xvss      * SRAM23
.ic V(A24)=xvdd V(A24_b)=xvss      * SRAM24
.ic V(A25)=xvdd V(A25_b)=xvss      * SRAM25
.ic V(A26)=xvdd V(A26_b)=xvss      * SRAM26
.ic V(A27)=xvdd V(A27_b)=xvss      * SRAM27
.ic V(A28)=xvdd V(A28_b)=xvss      * SRAM28
.ic V(A29)=xvdd V(A29_b)=xvss      * SRAM29
.ic V(A30)=xvdd V(A30_b)=xvss      * SRAM30
.ic V(A31)=xvdd V(A31_b)=xvss      * SRAM31
.ic V(A32)=xvdd V(A32_b)=xvss      * SRAM32
.ic V(A33)=xvdd V(A33_b)=xvss      * SRAM33
.ic V(A34)=xvdd V(A34_b)=xvss      * SRAM34
.ic V(A35)=xvdd V(A35_b)=xvss      * SRAM35
.ic V(A36)=xvdd V(A36_b)=xvss      * SRAM36
.ic V(A37)=xvdd V(A37_b)=xvss      * SRAM37
.ic V(A38)=xvdd V(A38_b)=xvss      * SRAM38
.ic V(A39)=xvdd V(A39_b)=xvss      * SRAM39
.ic V(A40)=xvdd V(A40_b)=xvss      * SRAM40
.ic V(A41)=xvdd V(A41_b)=xvss      * SRAM41
.ic V(A42)=xvdd V(A42_b)=xvss      * SRAM42
.ic V(A43)=xvdd V(A43_b)=xvss      * SRAM43
.ic V(A44)=xvdd V(A44_b)=xvss      * SRAM44
.ic V(A45)=xvdd V(A45_b)=xvss      * SRAM45
.ic V(A46)=xvdd V(A46_b)=xvss      * SRAM46
.ic V(A47)=xvdd V(A47_b)=xvss      * SRAM47
.ic V(A48)=xvdd V(A48_b)=xvss      * SRAM48
.ic V(A49)=xvdd V(A49_b)=xvss      * SRAM49
.ic V(A50)=xvdd V(A50_b)=xvss      * SRAM50
.ic V(A51)=xvdd V(A51_b)=xvss      * SRAM51
.ic V(A52)=xvdd V(A52_b)=xvss      * SRAM52
.ic V(A53)=xvdd V(A53_b)=xvss      * SRAM53
.ic V(A54)=xvdd V(A54_b)=xvss      * SRAM54
.ic V(A55)=xvdd V(A55_b)=xvss      * SRAM55
.ic V(A56)=xvdd V(A56_b)=xvss      * SRAM56
.ic V(A57)=xvdd V(A57_b)=xvss      * SRAM57
.ic V(A58)=xvdd V(A58_b)=xvss      * SRAM58
.ic V(A59)=xvdd V(A59_b)=xvss      * SRAM59
.ic V(A60)=xvdd V(A60_b)=xvss      * SRAM60
.ic V(A61)=xvdd V(A61_b)=xvss      * SRAM61
.ic V(A62)=xvdd V(A62_b)=xvss      * SRAM62
.ic V(A63)=xvdd V(A63_b)=xvss      * SRAM63





********************************
**     Analysis setting       **
********************************
.tran  0.01ns 10ns
.probe V(*) 
.probe i(*)
.probe i(XSRAM1:A1)
.probe i(XSRAM1:A1_b)

.end     

