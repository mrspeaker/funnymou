                 ;;; Super Mouse original
                 ;;; ... Funny Mouse is extremely close
                 ram_start       = $8000

0000          	start:
0000  00      	 nop
0001  00      	 nop
0002  00      	 nop
0003  3E00    	 ld   a,$00
0005  3200B0  	 ld   ($B000),a
0008  C3CF07  	 jp   $07CF
000B  00      	 nop
000C  00      	 nop
000D  00      	 nop
000E  3A00B8  	 ld   a,($B800)
0011  210080  	 ld   hl,$8000
0014  3E88    	 ld   a,$88
0016  0E00    	 ld   c,$00
0018  71      	 ld   (hl),c
0019  23      	 inc  hl
001A  BC      	 cp   h
001B  C21800  	 jp   nz,$0018
001E  31FE87  	 ld   sp,$87FE
0021  3A00B8  	 ld   a,($B800)
0024  CD1109  	 call $0911
0027  AF      	 xor  a
0028  0608    	 ld   b,$08
002A  2100B0  	 ld   hl,$B000
002D  77      	 ld   (hl),a
002E  23      	 inc  hl
002F  10FC    	 djnz $002D
0031  3A00B0  	 ld   a,($B000)
0034  322080  	 ld   ($8020),a
0037  47      	 ld   b,a
0038  E607    	 and  $07
003A  322580  	 ld   ($8025),a
003D  78      	 ld   a,b
003E  E618    	 and  $18
0040  322680  	 ld   ($8026),a
0043  78      	 ld   a,b
0044  E620    	 and  $20
0046  322880  	 ld   ($8028),a
0049  78      	 ld   a,b
004A  E640    	 and  $40
004C  322780  	 ld   ($8027),a
004F  C38005  	 jp   $0580
0052  00      	 nop
0053  00      	 nop
0054  00      	 nop
0055  00      	 nop
0056  00      	 nop
0057  00      	 nop
0058  00      	 nop
0059  00      	 nop
005A  00      	 nop
005B  00      	 nop
005C  00      	 nop
005D  00      	 nop
005E  00      	 nop
005F  00      	 nop
0060  00      	 nop
0061  00      	 nop
0062  00      	 nop
0063  00      	 nop
0064  00      	 nop
0065  00      	 nop
0066  F5      	 push af
0067  3E00    	 ld   a,$00
0069  3200B0  	 ld   ($B000),a
006C  C5      	 push bc
006D  D5      	 push de
006E  E5      	 push hl
006F  08      	 ex   af,af'
0070  D9      	 exx
0071  F5      	 push af
0072  C5      	 push bc
0073  D5      	 push de
0074  E5      	 push hl
0075  DDE5    	 push ix
0077  FDE5    	 push iy
0079  00      	 nop
007A  00      	 nop
007B  3A00B8  	 ld   a,($B800)
007E  00      	 nop
007F  00      	 nop
0080  00      	 nop
0081  00      	 nop
0082  CD0001  	 call $0100
0085  00      	 nop
0086  00      	 nop
0087  00      	 nop
0088  00      	 nop
0089  00      	 nop
008A  00      	 nop
008B  FDE1    	 pop  iy
008D  DDE1    	 pop  ix
008F  E1      	 pop  hl
0090  D1      	 pop  de
0091  C1      	 pop  bc
0092  F1      	 pop  af
0093  D9      	 exx
0094  08      	 ex   af,af'
0095  E1      	 pop  hl
0096  D1      	 pop  de
0097  C1      	 pop  bc
0098  3E01    	 ld   a,$01
009A  3200B0  	 ld   ($B000),a
009D  F1      	 pop  af
009E  C9      	 ret
009F  00      	 nop
00A0  00      	 nop
00A1  00      	 nop
00A2  00      	 nop
00A3  00      	 nop
00A4  00      	 nop
00A5  00      	 nop
00A6  00      	 nop
00A7  00      	 nop
00A8  00      	 nop
00A9  00      	 nop
00AA  00      	 nop
00AB  00      	 nop
00AC  00      	 nop
00AD  00      	 nop
00AE  00      	 nop
00AF  00      	 nop
00B0  00      	 nop
00B1  00      	 nop
00B2  00      	 nop
00B3  00      	 nop
00B4  00      	 nop
00B5  00      	 nop
00B6  00      	 nop
00B7  00      	 nop
00B8  00      	 nop
00B9  00      	 nop
00BA  00      	 nop
00BB  00      	 nop
00BC  00      	 nop
00BD  00      	 nop
00BE  00      	 nop
00BF  00      	 nop
00C0  00      	 nop
00C1  00      	 nop
00C2  00      	 nop
00C3  00      	 nop
00C4  00      	 nop
00C5  00      	 nop
00C6  00      	 nop
00C7  00      	 nop
00C8  00      	 nop
00C9  00      	 nop
00CA  00      	 nop
00CB  00      	 nop
00CC  00      	 nop
00CD  00      	 nop
00CE  00      	 nop
00CF  00      	 nop
00D0  00      	 nop
00D1  00      	 nop
00D2  00      	 nop
00D3  00      	 nop
00D4  00      	 nop
00D5  00      	 nop
00D6  00      	 nop
00D7  00      	 nop
00D8  00      	 nop
00D9  00      	 nop
00DA  00      	 nop
00DB  00      	 nop
00DC  00      	 nop
00DD  00      	 nop
00DE  00      	 nop
00DF  00      	 nop
00E0  00      	 nop
00E1  00      	 nop
00E2  00      	 nop
00E3  00      	 nop
00E4  00      	 nop
00E5  00      	 nop
00E6  00      	 nop
00E7  00      	 nop
00E8  00      	 nop
00E9  00      	 nop
00EA  00      	 nop
00EB  00      	 nop
00EC  00      	 nop
00ED  00      	 nop
00EE  00      	 nop
00EF  00      	 nop
00F0  00      	 nop
00F1  00      	 nop
00F2  00      	 nop
00F3  00      	 nop
00F4  00      	 nop
00F5  00      	 nop
00F6  00      	 nop
00F7  00      	 nop
00F8  00      	 nop
00F9  00      	 nop
00FA  00      	 nop
00FB  00      	 nop
00FC  00      	 nop
00FD  00      	 nop
00FE  00      	 nop
00FF  00      	 nop
0100  00      	 nop
0101  00      	 nop
0102  00      	 nop
0103  CD2107  	 call $0721
0106  CD2906  	 call $0629
0109  3A3080  	 ld   a,($8030)
010C  A7      	 and  a
010D  C2EB01  	 jp   nz,$01EB
0110  3A00A8  	 ld   a,($A800)
0113  E608    	 and  $08
0115  C22301  	 jp   nz,$0123
0118  3A00A8  	 ld   a,($A800)
011B  E604    	 and  $04
011D  C25B01  	 jp   nz,$015B
0120  C3EB01  	 jp   $01EB
0123  3A2380  	 ld   a,($8023)
0126  FE02    	 cp   $02
0128  DA1801  	 jp   c,$0118
012B  3E02    	 ld   a,$02
012D  323080  	 ld   ($8030),a
0130  3A2380  	 ld   a,($8023)
0133  D602    	 sub  $02
0135  27      	 daa
0136  322380  	 ld   ($8023),a
0139  3E01    	 ld   a,$01
013B  323C80  	 ld   ($803C),a
013E  3A2680  	 ld   a,($8026)
0141  A7      	 and  a
0142  C25001  	 jp   nz,$0150
0145  3E03    	 ld   a,$03
0147  320082  	 ld   ($8200),a
014A  320083  	 ld   ($8300),a
014D  C39301  	 jp   $0193
0150  3E05    	 ld   a,$05
0152  320082  	 ld   ($8200),a
0155  320083  	 ld   ($8300),a
0158  C39301  	 jp   $0193
015B  3A2380  	 ld   a,($8023)
015E  A7      	 and  a
015F  CAEB01  	 jp   z,$01EB
0162  3E01    	 ld   a,$01
0164  323080  	 ld   ($8030),a
0167  3A2380  	 ld   a,($8023)
016A  D601    	 sub  $01
016C  27      	 daa
016D  322380  	 ld   ($8023),a
0170  3E00    	 ld   a,$00
0172  323C80  	 ld   ($803C),a
0175  3A2680  	 ld   a,($8026)
0178  A7      	 and  a
0179  C28901  	 jp   nz,$0189
017C  3E03    	 ld   a,$03
017E  320082  	 ld   ($8200),a
0181  3E00    	 ld   a,$00
0183  320083  	 ld   ($8300),a
0186  C39301  	 jp   $0193
0189  3E05    	 ld   a,$05
018B  320082  	 ld   ($8200),a
018E  3E00    	 ld   a,$00
0190  320083  	 ld   ($8300),a
0193  3E00    	 ld   a,$00
0195  210081  	 ld   hl,$8100
0198  0603    	 ld   b,$03
019A  77      	 ld   (hl),a
019B  2C      	 inc  l
019C  C29A01  	 jp   nz,$019A
019F  24      	 inc  h
01A0  2C      	 inc  l
01A1  10F7    	 djnz $019A
01A3  3E00    	 ld   a,$00
01A5  323180  	 ld   ($8031),a
01A8  323280  	 ld   ($8032),a
01AB  323380  	 ld   ($8033),a
01AE  323480  	 ld   ($8034),a
01B1  323580  	 ld   ($8035),a
01B4  323680  	 ld   ($8036),a
01B7  323A80  	 ld   ($803A),a
01BA  3EF0    	 ld   a,$F0
01BC  323D80  	 ld   ($803D),a
01BF  214080  	 ld   hl,$8040
01C2  3E00    	 ld   a,$00
01C4  060A    	 ld   b,$0A
01C6  77      	 ld   (hl),a
01C7  23      	 inc  hl
01C8  10FC    	 djnz $01C6
01CA  00      	 nop
01CB  0601    	 ld   b,$01
01CD  CD9A07  	 call $079A
01D0  3E01    	 ld   a,$01
01D2  3203B0  	 ld   ($B003),a
01D5  3EE0    	 ld   a,$E0
01D7  3200B8  	 ld   ($B800),a
01DA  3E01    	 ld   a,$01
01DC  323880  	 ld   ($8038),a
01DF  3A3980  	 ld   a,($8039)
01E2  CBE7    	 set  4,a
01E4  323980  	 ld   ($8039),a
01E7  00      	 nop
01E8  00      	 nop
01E9  00      	 nop
01EA  00      	 nop
01EB  3A3980  	 ld   a,($8039)
01EE  A7      	 and  a
01EF  C0      	 ret  nz
01F0  3A3080  	 ld   a,($8030)
01F3  A7      	 and  a
01F4  C2C702  	 jp   nz,$02C7
01F7  3A2380  	 ld   a,($8023)
01FA  A7      	 and  a
01FB  C20802  	 jp   nz,$0208
01FE  3A3B80  	 ld   a,($803B)
0201  A7      	 and  a
0202  C24202  	 jp   nz,$0242
0205  C38802  	 jp   $0288
0208  FE02    	 cp   $02
020A  D21B02  	 jp   nc,$021B
020D  3A3B80  	 ld   a,($803B)
0210  FE02    	 cp   $02
0212  C8      	 ret  z
0213  3E01    	 ld   a,$01
0215  323980  	 ld   ($8039),a
0218  C32902  	 jp   $0229
021B  3A3B80  	 ld   a,($803B)
021E  FE03    	 cp   $03
0220  C8      	 ret  z
0221  3E02    	 ld   a,$02
0223  323980  	 ld   ($8039),a
0226  C32902  	 jp   $0229
0229  210081  	 ld   hl,$8100
022C  3E00    	 ld   a,$00
022E  0603    	 ld   b,$03
0230  77      	 ld   (hl),a
0231  2C      	 inc  l
0232  C23002  	 jp   nz,$0230
0235  24      	 inc  h
0236  10F8    	 djnz $0230
0238  216880  	 ld   hl,$8068
023B  0606    	 ld   b,$06
023D  77      	 ld   (hl),a
023E  23      	 inc  hl
023F  10FC    	 djnz $023D
0241  C9      	 ret
0242  3A3380  	 ld   a,($8033)
0245  A7      	 and  a
0246  CA5E02  	 jp   z,$025E
0249  3A3B80  	 ld   a,($803B)
024C  FE01    	 cp   $01
024E  CA7502  	 jp   z,$0275
0251  FE06    	 cp   $06
0253  CA9902  	 jp   z,$0299
0256  FE07    	 cp   $07
0258  CA8802  	 jp   z,$0288
025B  C38802  	 jp   $0288
025E  3A3280  	 ld   a,($8032)
0261  A7      	 and  a
0262  CAAA02  	 jp   z,$02AA
0265  3A3B80  	 ld   a,($803B)
0268  FE06    	 cp   $06
026A  CA9902  	 jp   z,$0299
026D  FE07    	 cp   $07
026F  CA8802  	 jp   z,$0288
0272  C38802  	 jp   $0288
0275  3E00    	 ld   a,$00
0277  323380  	 ld   ($8033),a
027A  323280  	 ld   ($8032),a
027D  3A3980  	 ld   a,($8039)
0280  CBEF    	 set  5,a
0282  323980  	 ld   ($8039),a
0285  C32902  	 jp   $0229
0288  3E00    	 ld   a,$00
028A  323380  	 ld   ($8033),a
028D  323280  	 ld   ($8032),a
0290  3A3980  	 ld   a,($8039)
0293  CBFF    	 set  7,a
0295  323980  	 ld   ($8039),a
0298  C9      	 ret
0299  3E00    	 ld   a,$00
029B  323380  	 ld   ($8033),a
029E  323280  	 ld   ($8032),a
02A1  3A3980  	 ld   a,($8039)
02A4  CBF7    	 set  6,a
02A6  323980  	 ld   ($8039),a
02A9  C9      	 ret
02AA  3A3B80  	 ld   a,($803B)
02AD  FE01    	 cp   $01
02AF  CABD1A  	 jp   z,$1ABD
02B2  FE06    	 cp   $06
02B4  CABF02  	 jp   z,$02BF
02B7  FE07    	 cp   $07
02B9  CAC302  	 jp   z,$02C3
02BC  C38802  	 jp   $0288
02BF  CD9E2D  	 call $2D9E
02C2  C9      	 ret
02C3  CD732E  	 call $2E73
02C6  C9      	 ret
02C7  CD3806  	 call $0638
02CA  3A3380  	 ld   a,($8033)
02CD  A7      	 and  a
02CE  C29803  	 jp   nz,$0398
02D1  3A3280  	 ld   a,($8032)
02D4  A7      	 and  a
02D5  C2E004  	 jp   nz,$04E0
02D8  3A3B80  	 ld   a,($803B)
02DB  FE04    	 cp   $04
02DD  CAF502  	 jp   z,$02F5
02E0  FE05    	 cp   $05
02E2  CA6D03  	 jp   z,$036D
02E5  FE06    	 cp   $06
02E7  CA9E2D  	 jp   z,$2D9E
02EA  FE07    	 cp   $07
02EC  CA732E  	 jp   z,$2E73
02EF  FE08    	 cp   $08
02F1  CA8316  	 jp   z,$1683
02F4  C9      	 ret
02F5  3A3D80  	 ld   a,($803D)
02F8  3D      	 dec  a
02F9  323D80  	 ld   ($803D),a
02FC  FE7E    	 cp   $7E
02FE  C20803  	 jp   nz,$0308
0301  08      	 ex   af,af'
0302  3EA0    	 ld   a,$A0
0304  3200B8  	 ld   ($B800),a
0307  08      	 ex   af,af'
0308  FE77    	 cp   $77
030A  C21403  	 jp   nz,$0314
030D  08      	 ex   af,af'
030E  3EE0    	 ld   a,$E0
0310  3200B8  	 ld   ($B800),a
0313  08      	 ex   af,af'
0314  A7      	 and  a
0315  CA1903  	 jp   z,$0319
0318  C9      	 ret
0319  3A3080  	 ld   a,($8030)
031C  FE02    	 cp   $02
031E  CA3203  	 jp   z,$0332
0321  3E00    	 ld   a,$00
0323  323080  	 ld   ($8030),a
0326  323B80  	 ld   ($803B),a
0329  3A3980  	 ld   a,($8039)
032C  CBD7    	 set  2,a
032E  323980  	 ld   ($8039),a
0331  C9      	 ret
0332  3A3180  	 ld   a,($8031)
0335  A7      	 and  a
0336  C25303  	 jp   nz,$0353
0339  3E01    	 ld   a,$01
033B  323480  	 ld   ($8034),a
033E  3A3580  	 ld   a,($8035)
0341  A7      	 and  a
0342  C22103  	 jp   nz,$0321
0345  3E01    	 ld   a,$01
0347  323180  	 ld   ($8031),a
034A  3A3980  	 ld   a,($8039)
034D  CBE7    	 set  4,a
034F  323980  	 ld   ($8039),a
0352  C9      	 ret
0353  3E01    	 ld   a,$01
0355  323580  	 ld   ($8035),a
0358  3A3480  	 ld   a,($8034)
035B  A7      	 and  a
035C  C22103  	 jp   nz,$0321
035F  3E00    	 ld   a,$00
0361  323180  	 ld   ($8031),a
0364  3A3980  	 ld   a,($8039)
0367  CBE7    	 set  4,a
0369  323980  	 ld   ($8039),a
036C  C9      	 ret
036D  3A3D80  	 ld   a,($803D)
0370  3D      	 dec  a
0371  323D80  	 ld   ($803D),a
0374  FE3E    	 cp   $3E
0376  CA8303  	 jp   z,$0383
0379  FE37    	 cp   $37
037B  CA8903  	 jp   z,$0389
037E  A7      	 and  a
037F  CA8F03  	 jp   z,$038F
0382  C9      	 ret
0383  3EA0    	 ld   a,$A0
0385  3200B8  	 ld   ($B800),a
0388  C9      	 ret
0389  3EE0    	 ld   a,$E0
038B  3200B8  	 ld   ($B800),a
038E  C9      	 ret
038F  3A3980  	 ld   a,($8039)
0392  CBEF    	 set  5,a
0394  323980  	 ld   ($8039),a
0397  C9      	 ret
0398  3A3B80  	 ld   a,($803B)
039B  FE06    	 cp   $06
039D  CAB503  	 jp   z,$03B5
03A0  FE07    	 cp   $07
03A2  CAAB03  	 jp   z,$03AB
03A5  FE08    	 cp   $08
03A7  CAAB03  	 jp   z,$03AB
03AA  C9      	 ret
03AB  3A3180  	 ld   a,($8031)
03AE  A7      	 and  a
03AF  CAC104  	 jp   z,$04C1
03B2  C38B04  	 jp   $048B
03B5  3A3C80  	 ld   a,($803C)
03B8  A7      	 and  a
03B9  C21D04  	 jp   nz,$041D
03BC  210081  	 ld   hl,$8100
03BF  3E00    	 ld   a,$00
03C1  BE      	 cp   (hl)
03C2  CAE903  	 jp   z,$03E9
03C5  35      	 dec  (hl)
03C6  210081  	 ld   hl,$8100
03C9  110082  	 ld   de,$8200
03CC  01FF00  	 ld   bc,$00FF
03CF  EDB0    	 ldir
03D1  3A0081  	 ld   a,($8100)
03D4  A7      	 and  a
03D5  CAE903  	 jp   z,$03E9
03D8  3E00    	 ld   a,$00
03DA  323380  	 ld   ($8033),a
03DD  323280  	 ld   ($8032),a
03E0  3A3980  	 ld   a,($8039)
03E3  CBE7    	 set  4,a
03E5  323980  	 ld   ($8039),a
03E8  C9      	 ret
03E9  3203B0  	 ld   ($B003),a
03EC  3206B0  	 ld   ($B006),a
03EF  3207B0  	 ld   ($B007),a
03F2  3E01    	 ld   a,$01
03F4  323480  	 ld   ($8034),a
03F7  323580  	 ld   ($8035),a
03FA  210081  	 ld   hl,$8100
03FD  0684    	 ld   b,$84
03FF  3E00    	 ld   a,$00
0401  77      	 ld   (hl),a
0402  2C      	 inc  l
0403  C20104  	 jp   nz,$0401
0406  24      	 inc  h
0407  78      	 ld   a,b
0408  BC      	 cp   h
0409  C2FF03  	 jp   nz,$03FF
040C  3E00    	 ld   a,$00
040E  323380  	 ld   ($8033),a
0411  323280  	 ld   ($8032),a
0414  3A3980  	 ld   a,($8039)
0417  CBDF    	 set  3,a
0419  323980  	 ld   ($8039),a
041C  C9      	 ret
041D  210081  	 ld   hl,$8100
0420  3E00    	 ld   a,$00
0422  BE      	 cp   (hl)
0423  CA2704  	 jp   z,$0427
0426  35      	 dec  (hl)
0427  3A3180  	 ld   a,($8031)
042A  A7      	 and  a
042B  CA3C04  	 jp   z,$043C
042E  210081  	 ld   hl,$8100
0431  110083  	 ld   de,$8300
0434  01FF00  	 ld   bc,$00FF
0437  EDB0    	 ldir
0439  C34704  	 jp   $0447
043C  210081  	 ld   hl,$8100
043F  110082  	 ld   de,$8200
0442  01FF00  	 ld   bc,$00FF
0445  EDB0    	 ldir
0447  3A0081  	 ld   a,($8100)
044A  A7      	 and  a
044B  C27304  	 jp   nz,$0473
044E  3A3180  	 ld   a,($8031)
0451  A7      	 and  a
0452  CA5D04  	 jp   z,$045D
0455  3E01    	 ld   a,$01
0457  323580  	 ld   ($8035),a
045A  C36204  	 jp   $0462
045D  3E01    	 ld   a,$01
045F  323480  	 ld   ($8034),a
0462  3E00    	 ld   a,$00
0464  323380  	 ld   ($8033),a
0467  323280  	 ld   ($8032),a
046A  3A3980  	 ld   a,($8039)
046D  CBDF    	 set  3,a
046F  323980  	 ld   ($8039),a
0472  C9      	 ret
0473  3A3180  	 ld   a,($8031)
0476  A7      	 and  a
0477  CA8404  	 jp   z,$0484
047A  3A0082  	 ld   a,($8200)
047D  A7      	 and  a
047E  C2C104  	 jp   nz,$04C1
0481  C38B04  	 jp   $048B
0484  3A0083  	 ld   a,($8300)
0487  A7      	 and  a
0488  CAC104  	 jp   z,$04C1
048B  3A2780  	 ld   a,($8027)
048E  A7      	 and  a
048F  C2A004  	 jp   nz,$04A0
0492  3E00    	 ld   a,$00
0494  323680  	 ld   ($8036),a
0497  3206B0  	 ld   ($B006),a
049A  3207B0  	 ld   ($B007),a
049D  C3AB04  	 jp   $04AB
04A0  3E01    	 ld   a,$01
04A2  323680  	 ld   ($8036),a
04A5  3206B0  	 ld   ($B006),a
04A8  3207B0  	 ld   ($B007),a
04AB  3E00    	 ld   a,$00
04AD  323380  	 ld   ($8033),a
04B0  323280  	 ld   ($8032),a
04B3  3E01    	 ld   a,$01
04B5  323180  	 ld   ($8031),a
04B8  3A3980  	 ld   a,($8039)
04BB  CBE7    	 set  4,a
04BD  323980  	 ld   ($8039),a
04C0  C9      	 ret
04C1  3E00    	 ld   a,$00
04C3  323380  	 ld   ($8033),a
04C6  323280  	 ld   ($8032),a
04C9  3E00    	 ld   a,$00
04CB  323680  	 ld   ($8036),a
04CE  3206B0  	 ld   ($B006),a
04D1  3207B0  	 ld   ($B007),a
04D4  323180  	 ld   ($8031),a
04D7  3A3980  	 ld   a,($8039)
04DA  CBE7    	 set  4,a
04DC  323980  	 ld   ($8039),a
04DF  C9      	 ret
04E0  3A3B80  	 ld   a,($803B)
04E3  FE06    	 cp   $06
04E5  CA0405  	 jp   z,$0504
04E8  FE07    	 cp   $07
04EA  CAEE04  	 jp   z,$04EE
04ED  C9      	 ret
04EE  3E00    	 ld   a,$00
04F0  323280  	 ld   ($8032),a
04F3  323380  	 ld   ($8033),a
04F6  3E08    	 ld   a,$08
04F8  323B80  	 ld   ($803B),a
04FB  3A3980  	 ld   a,($8039)
04FE  CBD7    	 set  2,a
0500  323980  	 ld   ($8039),a
0503  C9      	 ret
0504  3A0181  	 ld   a,($8101)
0507  C601    	 add  a,$01
0509  27      	 daa
050A  320181  	 ld   ($8101),a
050D  210381  	 ld   hl,$8103
0510  3E00    	 ld   a,$00
0512  06FC    	 ld   b,$FC
0514  77      	 ld   (hl),a
0515  2C      	 inc  l
0516  10FC    	 djnz $0514
0518  3A3180  	 ld   a,($8031)
051B  A7      	 and  a
051C  CA2D05  	 jp   z,$052D
051F  210081  	 ld   hl,$8100
0522  110083  	 ld   de,$8300
0525  01FF00  	 ld   bc,$00FF
0528  EDB0    	 ldir
052A  C33805  	 jp   $0538
052D  210081  	 ld   hl,$8100
0530  110082  	 ld   de,$8200
0533  01FF00  	 ld   bc,$00FF
0536  EDB0    	 ldir
0538  3E00    	 ld   a,$00
053A  323280  	 ld   ($8032),a
053D  323380  	 ld   ($8033),a
0540  3A3980  	 ld   a,($8039)
0543  CBF7    	 set  6,a
0545  323980  	 ld   ($8039),a
0548  C9      	 ret
0549  00      	 nop
054A  00      	 nop
054B  00      	 nop
054C  00      	 nop
054D  00      	 nop
054E  00      	 nop
054F  00      	 nop
0550  00      	 nop
0551  00      	 nop
0552  00      	 nop
0553  00      	 nop
0554  00      	 nop
0555  00      	 nop
0556  00      	 nop
0557  00      	 nop
0558  00      	 nop
0559  00      	 nop
055A  00      	 nop
055B  00      	 nop
055C  00      	 nop
055D  00      	 nop
055E  00      	 nop
055F  00      	 nop
0560  00      	 nop
0561  00      	 nop
0562  00      	 nop
0563  00      	 nop
0564  00      	 nop
0565  00      	 nop
0566  00      	 nop
0567  00      	 nop
0568  00      	 nop
0569  00      	 nop
056A  00      	 nop
056B  00      	 nop
056C  00      	 nop
056D  00      	 nop
056E  00      	 nop
056F  00      	 nop
0570  00      	 nop
0571  00      	 nop
0572  00      	 nop
0573  00      	 nop
0574  00      	 nop
0575  00      	 nop
0576  00      	 nop
0577  00      	 nop
0578  00      	 nop
0579  00      	 nop
057A  00      	 nop
057B  00      	 nop
057C  00      	 nop
057D  00      	 nop
057E  00      	 nop
057F  00      	 nop
0580  CDC005  	 call $05C0
0583  CDE205  	 call $05E2
0586  3A00B8  	 ld   a,($B800)
0589  00      	 nop
058A  00      	 nop
058B  00      	 nop
058C  3E01    	 ld   a,$01
058E  3200B0  	 ld   ($B000),a
0591  3202B0  	 ld   ($B002),a
0594  00      	 nop
0595  00      	 nop
0596  00      	 nop
0597  C3DE29  	 jp   $29DE
059A  00      	 nop
059B  00      	 nop
059C  00      	 nop
059D  00      	 nop
059E  00      	 nop
059F  00      	 nop
05A0  00      	 nop
05A1  00      	 nop
05A2  00      	 nop
05A3  00      	 nop
05A4  00      	 nop
05A5  00      	 nop
05A6  00      	 nop
05A7  00      	 nop
05A8  00      	 nop
05A9  00      	 nop
05AA  00      	 nop
05AB  00      	 nop
05AC  00      	 nop
05AD  00      	 nop
05AE  00      	 nop
05AF  00      	 nop
05B0  00      	 nop
05B1  00      	 nop
05B2  00      	 nop
05B3  00      	 nop
05B4  00      	 nop
05B5  00      	 nop
05B6  00      	 nop
05B7  00      	 nop
05B8  00      	 nop
05B9  00      	 nop
05BA  00      	 nop
05BB  00      	 nop
05BC  00      	 nop
05BD  00      	 nop
05BE  00      	 nop
05BF  00      	 nop
05C0  218093  	 ld   hl,$9380
05C3  11FA05  	 ld   de,$05FA
05C6  061A    	 ld   b,$1A
05C8  CD1D06  	 call $061D
05CB  215F91  	 ld   hl,$915F
05CE  111406  	 ld   de,$0614
05D1  0609    	 ld   b,$09
05D3  CD1D06  	 call $061D
05D6  3E00    	 ld   a,$00
05D8  32C192  	 ld   ($92C1),a
05DB  326190  	 ld   ($9061),a
05DE  328191  	 ld   ($9181),a
05E1  C9      	 ret
05E2  210194  	 ld   hl,$9401
05E5  112000  	 ld   de,$0020
05E8  0620    	 ld   b,$20
05EA  3E82    	 ld   a,$82
05EC  77      	 ld   (hl),a
05ED  19      	 add  hl,de
05EE  10FC    	 djnz $05EC
05F0  211F94  	 ld   hl,$941F
05F3  0610    	 ld   b,$10
05F5  77      	 ld   (hl),a
05F6  19      	 add  hl,de
05F7  10FC    	 djnz $05F5
05F9  C9      	 ret
05FA  1C      	 inc  e
05FB  0C      	 inc  c
05FC  181B    	 jr   $0619
05FE  0E2E    	 ld   c,$2E
0600  012424  	 ld   bc,$2424
0603  11122E  	 ld   de,$2E12
0606  1C      	 inc  e
0607  0C      	 inc  c
0608  181B    	 jr   $0625
060A  0E24    	 ld   c,$24
060C  24      	 inc  h
060D  1C      	 inc  e
060E  0C      	 inc  c
060F  181B    	 jr   $062C
0611  0E2E    	 ld   c,$2E
0613  02      	 ld   (bc),a
0614  0C      	 inc  c
0615  1B      	 dec  de
0616  0E0D    	 ld   c,$0D
0618  12      	 ld   (de),a
0619  1D      	 dec  e
061A  2E00    	 ld   l,$00
061C  24      	 inc  h
061D  1A      	 ld   a,(de)
061E  77      	 ld   (hl),a
061F  D5      	 push de
0620  11E0FF  	 ld   de,$FFE0
0623  19      	 add  hl,de
0624  D1      	 pop  de
0625  13      	 inc  de
0626  10F5    	 djnz $061D
0628  C9      	 ret
0629  00      	 nop
062A  00      	 nop
062B  00      	 nop
062C  210080  	 ld   hl,$8000
062F  114098  	 ld   de,$9840
0632  012000  	 ld   bc,$0020
0635  EDB0    	 ldir
0637  C9      	 ret
0638  00      	 nop
0639  00      	 nop
063A  00      	 nop
063B  3A4080  	 ld   a,($8040)
063E  A7      	 and  a
063F  C8      	 ret  z
0640  AF      	 xor  a
0641  324080  	 ld   ($8040),a
0644  3A3180  	 ld   a,($8031)
0647  A7      	 and  a
0648  C25306  	 jp   nz,$0653
064B  214480  	 ld   hl,$8044
064E  0E00    	 ld   c,$00
0650  C35806  	 jp   $0658
0653  214780  	 ld   hl,$8047
0656  0E01    	 ld   c,$01
0658  114180  	 ld   de,$8041
065B  0603    	 ld   b,$03
065D  AF      	 xor  a
065E  1A      	 ld   a,(de)
065F  8E      	 adc  a,(hl)
0660  27      	 daa
0661  77      	 ld   (hl),a
0662  13      	 inc  de
0663  23      	 inc  hl
0664  10F8    	 djnz $065E
0666  C5      	 push bc
0667  D5      	 push de
0668  3A0281  	 ld   a,($8102)
066B  A7      	 and  a
066C  C29B06  	 jp   nz,$069B
066F  3A2880  	 ld   a,($8028)
0672  A7      	 and  a
0673  C28006  	 jp   nz,$0680
0676  2B      	 dec  hl
0677  7E      	 ld   a,(hl)
0678  FE01    	 cp   $01
067A  DA9B06  	 jp   c,$069B
067D  C38B06  	 jp   $068B
0680  2B      	 dec  hl
0681  2B      	 dec  hl
0682  7E      	 ld   a,(hl)
0683  FE50    	 cp   $50
0685  DA9B06  	 jp   c,$069B
0688  C38B06  	 jp   $068B
068B  3A0081  	 ld   a,($8100)
068E  C601    	 add  a,$01
0690  320081  	 ld   ($8100),a
0693  3E01    	 ld   a,$01
0695  320281  	 ld   ($8102),a
0698  CD3B2D  	 call $2D3B
069B  D1      	 pop  de
069C  C1      	 pop  bc
069D  1B      	 dec  de
069E  3E00    	 ld   a,$00
06A0  12      	 ld   (de),a
06A1  1B      	 dec  de
06A2  12      	 ld   (de),a
06A3  1B      	 dec  de
06A4  12      	 ld   (de),a
06A5  00      	 nop
06A6  C3CD06  	 jp   $06CD
06A9  61      	 ld   h,c
06AA  93      	 sub  e
06AB  41      	 ld   b,c
06AC  93      	 sub  e
06AD  219301  	 ld   hl,$0193
06B0  93      	 sub  e
06B1  E1      	 pop  hl
06B2  92      	 sub  d
06B3  C1      	 pop  bc
06B4  92      	 sub  d
06B5  0191E1  	 ld   bc,$E191
06B8  90      	 sub  b
06B9  C1      	 pop  bc
06BA  90      	 sub  b
06BB  A1      	 and  c
06BC  90      	 sub  b
06BD  81      	 add  a,c
06BE  90      	 sub  b
06BF  61      	 ld   h,c
06C0  90      	 sub  b
06C1  219201  	 ld   hl,$0192
06C4  92      	 sub  d
06C5  E1      	 pop  hl
06C6  91      	 sub  c
06C7  C1      	 pop  bc
06C8  91      	 sub  c
06C9  A1      	 and  c
06CA  91      	 sub  c
06CB  81      	 add  a,c
06CC  91      	 sub  c
06CD  79      	 ld   a,c
06CE  A7      	 and  a
06CF  C2DD06  	 jp   nz,$06DD
06D2  DD214680	 ld   ix,$8046
06D6  21A906  	 ld   hl,$06A9
06D9  CDE806  	 call $06E8
06DC  C9      	 ret
06DD  DD214980	 ld   ix,$8049
06E1  21B506  	 ld   hl,$06B5
06E4  CDE806  	 call $06E8
06E7  C9      	 ret
06E8  0603    	 ld   b,$03
06EA  08      	 ex   af,af'
06EB  3E06    	 ld   a,$06
06ED  08      	 ex   af,af'
06EE  DD7E00  	 ld   a,(ix+$00)
06F1  4F      	 ld   c,a
06F2  0F      	 rrca
06F3  0F      	 rrca
06F4  0F      	 rrca
06F5  0F      	 rrca
06F6  CD0207  	 call $0702
06F9  79      	 ld   a,c
06FA  CD0207  	 call $0702
06FD  DD2B    	 dec  ix
06FF  10ED    	 djnz $06EE
0701  C9      	 ret
0702  5E      	 ld   e,(hl)
0703  23      	 inc  hl
0704  56      	 ld   d,(hl)
0705  23      	 inc  hl
0706  E60F    	 and  $0F
0708  A7      	 and  a
0709  CA1207  	 jp   z,$0712
070C  12      	 ld   (de),a
070D  08      	 ex   af,af'
070E  3E01    	 ld   a,$01
0710  08      	 ex   af,af'
0711  C9      	 ret
0712  08      	 ex   af,af'
0713  FE01    	 cp   $01
0715  C21B07  	 jp   nz,$071B
0718  08      	 ex   af,af'
0719  12      	 ld   (de),a
071A  C9      	 ret
071B  3D      	 dec  a
071C  08      	 ex   af,af'
071D  3E24    	 ld   a,$24
071F  12      	 ld   (de),a
0720  C9      	 ret
0721  FD212080	 ld   iy,$8020
0725  3A00A8  	 ld   a,($A800)
0728  FD7701  	 ld   (iy+$01),a
072B  4F      	 ld   c,a
072C  0600    	 ld   b,$00
072E  E601    	 and  $01
0730  CA3907  	 jp   z,$0739
0733  FD7709  	 ld   (iy+$09),a
0736  C37407  	 jp   $0774
0739  FD7E09  	 ld   a,(iy+$09)
073C  A7      	 and  a
073D  CA7407  	 jp   z,$0774
0740  FD360900	 ld   (iy+$09),$00
0744  FD7E05  	 ld   a,(iy+$05)
0747  07      	 rlca
0748  5F      	 ld   e,a
0749  1600    	 ld   d,$00
074B  DD21B307	 ld   ix,$07B3
074F  DD19    	 add  ix,de
0751  DD7E00  	 ld   a,(ix+$00)
0754  FD3404  	 inc  (iy+$04)
0757  FDBE04  	 cp   (iy+$04)
075A  C27407  	 jp   nz,$0774
075D  FD360400	 ld   (iy+$04),$00
0761  DD7E01  	 ld   a,(ix+$01)
0764  04      	 inc  b
0765  FD8603  	 add  a,(iy+$03)
0768  27      	 daa
0769  FE09    	 cp   $09
076B  CAC307  	 jp   z,$07C3
076E  D2C307  	 jp   nc,$07C3
0771  FD7703  	 ld   (iy+$03),a
0774  79      	 ld   a,c
0775  E602    	 and  $02
0777  CA8007  	 jp   z,$0780
077A  FD770A  	 ld   (iy+$0a),a
077D  C39A07  	 jp   $079A
0780  FD7E0A  	 ld   a,(iy+$0a)
0783  A7      	 and  a
0784  CA9A07  	 jp   z,$079A
0787  AF      	 xor  a
0788  FD770A  	 ld   (iy+$0a),a
078B  FD7E03  	 ld   a,(iy+$03)
078E  FE09    	 cp   $09
0790  D2C307  	 jp   nc,$07C3
0793  04      	 inc  b
0794  C601    	 add  a,$01
0796  27      	 daa
0797  FD7703  	 ld   (iy+$03),a
079A  78      	 ld   a,b
079B  A7      	 and  a
079C  C8      	 ret  z
079D  3A2380  	 ld   a,($8023)
07A0  47      	 ld   b,a
07A1  E60F    	 and  $0F
07A3  327F90  	 ld   ($907F),a
07A6  78      	 ld   a,b
07A7  0F      	 rrca
07A8  0F      	 rrca
07A9  0F      	 rrca
07AA  0F      	 rrca
07AB  E60F    	 and  $0F
07AD  3E24    	 ld   a,$24
07AF  325F90  	 ld   ($905F),a
07B2  C9      	 ret
07B3  02      	 ld   (bc),a
07B4  010101  	 ld   bc,$0101
07B7  010201  	 ld   bc,$0102
07BA  03      	 inc  bc
07BB  010401  	 ld   bc,$0104
07BE  05      	 dec  b
07BF  010601  	 ld   bc,$0106
07C2  07      	 rlca
07C3  FD360309	 ld   (iy+$03),$09
07C7  AF      	 xor  a
07C8  3202B0  	 ld   ($B002),a
07CB  04      	 inc  b
07CC  C39A07  	 jp   $079A
07CF  3A00B8  	 ld   a,($B800)
07D2  210090  	 ld   hl,$9000
07D5  0604    	 ld   b,$04
07D7  3E24    	 ld   a,$24
07D9  77      	 ld   (hl),a
07DA  2C      	 inc  l
07DB  C2D907  	 jp   nz,$07D9
07DE  3A00B8  	 ld   a,($B800)
07E1  24      	 inc  h
07E2  10F3    	 djnz $07D7
07E4  210094  	 ld   hl,$9400
07E7  0604    	 ld   b,$04
07E9  3E80    	 ld   a,$80
07EB  77      	 ld   (hl),a
07EC  2C      	 inc  l
07ED  C2EB07  	 jp   nz,$07EB
07F0  3A00B8  	 ld   a,($B800)
07F3  24      	 inc  h
07F4  10F3    	 djnz $07E9
07F6  210098  	 ld   hl,$9800
07F9  3600    	 ld   (hl),$00
07FB  2C      	 inc  l
07FC  C2F907  	 jp   nz,$07F9
07FF  2100B0  	 ld   hl,$B000
0802  0608    	 ld   b,$08
0804  3600    	 ld   (hl),$00
0806  2C      	 inc  l
0807  10FB    	 djnz $0804
0809  3A00B8  	 ld   a,($B800)
080C  1600    	 ld   d,$00
080E  0E20    	 ld   c,$20
0810  210080  	 ld   hl,$8000
0813  0608    	 ld   b,$08
0815  79      	 ld   a,c
0816  C62F    	 add  a,$2F
0818  77      	 ld   (hl),a
0819  2C      	 inc  l
081A  20FA    	 jr   nz,$0816
081C  3C      	 inc  a
081D  24      	 inc  h
081E  10F6    	 djnz $0816
0820  210080  	 ld   hl,$8000
0823  0608    	 ld   b,$08
0825  3A00B8  	 ld   a,($B800)
0828  79      	 ld   a,c
0829  C62F    	 add  a,$2F
082B  BE      	 cp   (hl)
082C  C2BB08  	 jp   nz,$08BB
082F  2C      	 inc  l
0830  20F7    	 jr   nz,$0829
0832  3C      	 inc  a
0833  24      	 inc  h
0834  10F3    	 djnz $0829
0836  3A00B8  	 ld   a,($B800)
0839  0D      	 dec  c
083A  20D4    	 jr   nz,$0810
083C  14      	 inc  d
083D  0E20    	 ld   c,$20
083F  210090  	 ld   hl,$9000
0842  0604    	 ld   b,$04
0844  79      	 ld   a,c
0845  C62F    	 add  a,$2F
0847  77      	 ld   (hl),a
0848  2C      	 inc  l
0849  20FA    	 jr   nz,$0845
084B  3C      	 inc  a
084C  24      	 inc  h
084D  10F6    	 djnz $0845
084F  3A00B8  	 ld   a,($B800)
0852  210090  	 ld   hl,$9000
0855  0604    	 ld   b,$04
0857  79      	 ld   a,c
0858  C62F    	 add  a,$2F
085A  BE      	 cp   (hl)
085B  C2BB08  	 jp   nz,$08BB
085E  2C      	 inc  l
085F  20F7    	 jr   nz,$0858
0861  3C      	 inc  a
0862  24      	 inc  h
0863  10F3    	 djnz $0858
0865  3A00B8  	 ld   a,($B800)
0868  0D      	 dec  c
0869  20D4    	 jr   nz,$083F
086B  14      	 inc  d
086C  0E20    	 ld   c,$20
086E  210094  	 ld   hl,$9400
0871  0604    	 ld   b,$04
0873  79      	 ld   a,c
0874  C62F    	 add  a,$2F
0876  77      	 ld   (hl),a
0877  2C      	 inc  l
0878  20FA    	 jr   nz,$0874
087A  3C      	 inc  a
087B  24      	 inc  h
087C  10F6    	 djnz $0874
087E  210094  	 ld   hl,$9400
0881  0604    	 ld   b,$04
0883  79      	 ld   a,c
0884  C62F    	 add  a,$2F
0886  BE      	 cp   (hl)
0887  C2BB08  	 jp   nz,$08BB
088A  2C      	 inc  l
088B  20F7    	 jr   nz,$0884
088D  3C      	 inc  a
088E  24      	 inc  h
088F  10F3    	 djnz $0884
0891  3A00B8  	 ld   a,($B800)
0894  0D      	 dec  c
0895  20D7    	 jr   nz,$086E
0897  14      	 inc  d
0898  0E20    	 ld   c,$20
089A  210098  	 ld   hl,$9800
089D  79      	 ld   a,c
089E  C62F    	 add  a,$2F
08A0  77      	 ld   (hl),a
08A1  2C      	 inc  l
08A2  20FA    	 jr   nz,$089E
08A4  210098  	 ld   hl,$9800
08A7  79      	 ld   a,c
08A8  C62F    	 add  a,$2F
08AA  BE      	 cp   (hl)
08AB  C2BB08  	 jp   nz,$08BB
08AE  2C      	 inc  l
08AF  C2A808  	 jp   nz,$08A8
08B2  3A00B8  	 ld   a,($B800)
08B5  0D      	 dec  c
08B6  20E2    	 jr   nz,$089A
08B8  C30E00  	 jp   $000E
08BB  21E308  	 ld   hl,$08E3
08BE  7A      	 ld   a,d
08BF  A7      	 and  a
08C0  2805    	 jr   z,$08C7
08C2  23      	 inc  hl
08C3  23      	 inc  hl
08C4  3D      	 dec  a
08C5  20FB    	 jr   nz,$08C2
08C7  31FE87  	 ld   sp,$87FE
08CA  E5      	 push hl
08CB  CD1109  	 call $0911
08CE  E1      	 pop  hl
08CF  5E      	 ld   e,(hl)
08D0  23      	 inc  hl
08D1  56      	 ld   d,(hl)
08D2  215092  	 ld   hl,$9250
08D5  01E0FF  	 ld   bc,$FFE0
08D8  1A      	 ld   a,(de)
08D9  FEFF    	 cp   $FF
08DB  CA0B09  	 jp   z,$090B
08DE  77      	 ld   (hl),a
08DF  13      	 inc  de
08E0  09      	 add  hl,bc
08E1  18F5    	 jr   $08D8
08E3  EB      	 ex   de,hl
08E4  08      	 ex   af,af'
08E5  F3      	 di
08E6  08      	 ex   af,af'
08E7  FB      	 ei
08E8  08      	 ex   af,af'
08E9  03      	 inc  bc
08EA  09      	 add  hl,bc
08EB  1C      	 inc  e
08EC  1B      	 dec  de
08ED  0A      	 ld   a,(bc)
08EE  1624    	 ld   d,$24
08F0  17      	 rla
08F1  10FF    	 djnz $08F2
08F3  1F      	 rra
08F4  1B      	 dec  de
08F5  0A      	 ld   a,(bc)
08F6  1624    	 ld   d,$24
08F8  17      	 rla
08F9  10FF    	 djnz $08FA
08FB  0C      	 inc  c
08FC  1B      	 dec  de
08FD  0A      	 ld   a,(bc)
08FE  1624    	 ld   d,$24
0900  17      	 rla
0901  10FF    	 djnz $0902
0903  181B    	 jr   $0920
0905  0A      	 ld   a,(bc)
0906  1624    	 ld   d,$24
0908  17      	 rla
0909  10FF    	 djnz $090A
090B  3A00B8  	 ld   a,($B800)
090E  C30B09  	 jp   $090B
0911  3A00B8  	 ld   a,($B800)
0914  210090  	 ld   hl,$9000
0917  0604    	 ld   b,$04
0919  3624    	 ld   (hl),$24
091B  2C      	 inc  l
091C  20FB    	 jr   nz,$0919
091E  24      	 inc  h
091F  10F8    	 djnz $0919
0921  3A00B8  	 ld   a,($B800)
0924  210094  	 ld   hl,$9400
0927  0604    	 ld   b,$04
0929  3680    	 ld   (hl),$80
092B  2C      	 inc  l
092C  20FB    	 jr   nz,$0929
092E  24      	 inc  h
092F  10F8    	 djnz $0929
0931  3A00B8  	 ld   a,($B800)
0934  210098  	 ld   hl,$9800
0937  3600    	 ld   (hl),$00
0939  2C      	 inc  l
093A  20FB    	 jr   nz,$0937
093C  3A00B8  	 ld   a,($B800)
093F  C9      	 ret
0940  00      	 nop
0941  00      	 nop
0942  00      	 nop
0943  21CE92  	 ld   hl,$92CE
0946  060D    	 ld   b,$0D
0948  117F09  	 ld   de,$097F
094B  CD7309  	 call $0973
094E  21CE96  	 ld   hl,$96CE
0951  CD6809  	 call $0968
0954  21CF92  	 ld   hl,$92CF
0957  060D    	 ld   b,$0D
0959  118C09  	 ld   de,$098C
095C  CD7309  	 call $0973
095F  21CF96  	 ld   hl,$96CF
0962  CD6809  	 call $0968
0965  00      	 nop
0966  00      	 nop
0967  C9      	 ret
0968  11E0FF  	 ld   de,$FFE0
096B  060D    	 ld   b,$0D
096D  3687    	 ld   (hl),$87
096F  19      	 add  hl,de
0970  10FB    	 djnz $096D
0972  C9      	 ret
0973  C5      	 push bc
0974  01E0FF  	 ld   bc,$FFE0
0977  1A      	 ld   a,(de)
0978  77      	 ld   (hl),a
0979  09      	 add  hl,bc
097A  13      	 inc  de
097B  C1      	 pop  bc
097C  10F5    	 djnz $0973
097E  C9      	 ret
097F  24      	 inc  h
0980  19      	 add  hl,de
0981  15      	 dec  d
0982  0E0A    	 ld   c,$0A
0984  1C      	 inc  e
0985  0E24    	 ld   c,$24
0987  19      	 add  hl,de
0988  1B      	 dec  de
0989  0E1C    	 ld   c,$1C
098B  1C      	 inc  e
098C  24      	 inc  h
098D  1C      	 inc  e
098E  11181D  	 ld   de,$1D18
0991  24      	 inc  h
0992  0B      	 dec  bc
0993  1E1D    	 ld   e,$1D
0995  1D      	 dec  e
0996  1817    	 jr   $09AF
0998  24      	 inc  h
0999  00      	 nop
099A  00      	 nop
099B  00      	 nop
099C  214390  	 ld   hl,$9043
099F  061C    	 ld   b,$1C
09A1  0E1D    	 ld   c,$1D
09A3  11CD09  	 ld   de,$09CD
09A6  CDBA09  	 call $09BA
09A9  214394  	 ld   hl,$9443
09AC  061C    	 ld   b,$1C
09AE  0E1D    	 ld   c,$1D
09B0  11DD0C  	 ld   de,$0CDD
09B3  CDBA09  	 call $09BA
09B6  CD4009  	 call $0940
09B9  C9      	 ret
09BA  C5      	 push bc
09BB  E5      	 push hl
09BC  1A      	 ld   a,(de)
09BD  77      	 ld   (hl),a
09BE  23      	 inc  hl
09BF  13      	 inc  de
09C0  10FA    	 djnz $09BC
09C2  E1      	 pop  hl
09C3  012000  	 ld   bc,$0020
09C6  09      	 add  hl,bc
09C7  C1      	 pop  bc
09C8  0D      	 dec  c
09C9  C2BA09  	 jp   nz,$09BA
09CC  C9      	 ret
09CD  24      	 inc  h
09CE  24      	 inc  h
09CF  24      	 inc  h
09D0  24      	 inc  h
09D1  24      	 inc  h
09D2  24      	 inc  h
09D3  24      	 inc  h
09D4  24      	 inc  h
09D5  24      	 inc  h
09D6  24      	 inc  h
09D7  A1      	 and  c
09D8  A2      	 and  d
09D9  A2      	 and  d
09DA  24      	 inc  h
09DB  00      	 nop
09DC  24      	 inc  h
09DD  24      	 inc  h
09DE  24      	 inc  h
09DF  00      	 nop
09E0  24      	 inc  h
09E1  24      	 inc  h
09E2  24      	 inc  h
09E3  00      	 nop
09E4  24      	 inc  h
09E5  24      	 inc  h
09E6  24      	 inc  h
09E7  00      	 nop
09E8  24      	 inc  h
09E9  24      	 inc  h
09EA  24      	 inc  h
09EB  24      	 inc  h
09EC  24      	 inc  h
09ED  24      	 inc  h
09EE  24      	 inc  h
09EF  24      	 inc  h
09F0  24      	 inc  h
09F1  9B      	 sbc  a,e
09F2  9C      	 sbc  a,h
09F3  9D      	 sbc  a,l
09F4  A2      	 and  d
09F5  A2      	 and  d
09F6  24      	 inc  h
09F7  00      	 nop
09F8  24      	 inc  h
09F9  24      	 inc  h
09FA  24      	 inc  h
09FB  00      	 nop
09FC  24      	 inc  h
09FD  24      	 inc  h
09FE  24      	 inc  h
09FF  00      	 nop
0A00  24      	 inc  h
0A01  24      	 inc  h
0A02  24      	 inc  h
0A03  00      	 nop
0A04  24      	 inc  h
0A05  24      	 inc  h
0A06  24      	 inc  h
0A07  24      	 inc  h
0A08  24      	 inc  h
0A09  24      	 inc  h
0A0A  24      	 inc  h
0A0B  24      	 inc  h
0A0C  24      	 inc  h
0A0D  9E      	 sbc  a,(hl)
0A0E  9F      	 sbc  a,a
0A0F  A0      	 and  b
0A10  A2      	 and  d
0A11  A2      	 and  d
0A12  24      	 inc  h
0A13  08      	 ex   af,af'
0A14  24      	 inc  h
0A15  24      	 inc  h
0A16  24      	 inc  h
0A17  04      	 inc  b
0A18  24      	 inc  h
0A19  24      	 inc  h
0A1A  24      	 inc  h
0A1B  0624    	 ld   b,$24
0A1D  24      	 inc  h
0A1E  24      	 inc  h
0A1F  02      	 ld   (bc),a
0A20  24      	 inc  h
0A21  24      	 inc  h
0A22  24      	 inc  h
0A23  24      	 inc  h
0A24  24      	 inc  h
0A25  24      	 inc  h
0A26  24      	 inc  h
0A27  24      	 inc  h
0A28  24      	 inc  h
0A29  9B      	 sbc  a,e
0A2A  9C      	 sbc  a,h
0A2B  9D      	 sbc  a,l
0A2C  A2      	 and  d
0A2D  A2      	 and  d
0A2E  24      	 inc  h
0A2F  24      	 inc  h
0A30  24      	 inc  h
0A31  24      	 inc  h
0A32  24      	 inc  h
0A33  24      	 inc  h
0A34  24      	 inc  h
0A35  24      	 inc  h
0A36  24      	 inc  h
0A37  24      	 inc  h
0A38  24      	 inc  h
0A39  24      	 inc  h
0A3A  24      	 inc  h
0A3B  24      	 inc  h
0A3C  24      	 inc  h
0A3D  24      	 inc  h
0A3E  24      	 inc  h
0A3F  24      	 inc  h
0A40  24      	 inc  h
0A41  24      	 inc  h
0A42  24      	 inc  h
0A43  24      	 inc  h
0A44  24      	 inc  h
0A45  9E      	 sbc  a,(hl)
0A46  9F      	 sbc  a,a
0A47  A0      	 and  b
0A48  A2      	 and  d
0A49  A2      	 and  d
0A4A  48      	 ld   c,b
0A4B  49      	 ld   c,c
0A4C  4A      	 ld   c,d
0A4D  24      	 inc  h
0A4E  24      	 inc  h
0A4F  24      	 inc  h
0A50  24      	 inc  h
0A51  24      	 inc  h
0A52  92      	 sub  d
0A53  93      	 sub  e
0A54  94      	 sub  h
0A55  24      	 inc  h
0A56  24      	 inc  h
0A57  24      	 inc  h
0A58  24      	 inc  h
0A59  24      	 inc  h
0A5A  24      	 inc  h
0A5B  24      	 inc  h
0A5C  24      	 inc  h
0A5D  24      	 inc  h
0A5E  24      	 inc  h
0A5F  24      	 inc  h
0A60  24      	 inc  h
0A61  24      	 inc  h
0A62  24      	 inc  h
0A63  A1      	 and  c
0A64  A2      	 and  d
0A65  A2      	 and  d
0A66  4B      	 ld   c,e
0A67  4C      	 ld   c,h
0A68  4D      	 ld   c,l
0A69  24      	 inc  h
0A6A  24      	 inc  h
0A6B  A7      	 and  a
0A6C  24      	 inc  h
0A6D  24      	 inc  h
0A6E  95      	 sub  l
0A6F  96      	 sub  (hl)
0A70  97      	 sub  a
0A71  24      	 inc  h
0A72  24      	 inc  h
0A73  A7      	 and  a
0A74  24      	 inc  h
0A75  24      	 inc  h
0A76  24      	 inc  h
0A77  A4      	 and  h
0A78  A6      	 and  (hl)
0A79  A6      	 and  (hl)
0A7A  A6      	 and  (hl)
0A7B  A6      	 and  (hl)
0A7C  A6      	 and  (hl)
0A7D  A6      	 and  (hl)
0A7E  A6      	 and  (hl)
0A7F  A6      	 and  (hl)
0A80  A2      	 and  d
0A81  A2      	 and  d
0A82  4E      	 ld   c,(hl)
0A83  4F      	 ld   c,a
0A84  50      	 ld   d,b
0A85  24      	 inc  h
0A86  24      	 inc  h
0A87  24      	 inc  h
0A88  24      	 inc  h
0A89  24      	 inc  h
0A8A  98      	 sbc  a,b
0A8B  99      	 sbc  a,c
0A8C  9A      	 sbc  a,d
0A8D  24      	 inc  h
0A8E  24      	 inc  h
0A8F  24      	 inc  h
0A90  24      	 inc  h
0A91  24      	 inc  h
0A92  A4      	 and  h
0A93  A3      	 and  e
0A94  A6      	 and  (hl)
0A95  A6      	 and  (hl)
0A96  A6      	 and  (hl)
0A97  A6      	 and  (hl)
0A98  A6      	 and  (hl)
0A99  A6      	 and  (hl)
0A9A  A6      	 and  (hl)
0A9B  A6      	 and  (hl)
0A9C  A2      	 and  d
0A9D  A2      	 and  d
0A9E  48      	 ld   c,b
0A9F  49      	 ld   c,c
0AA0  4A      	 ld   c,d
0AA1  24      	 inc  h
0AA2  48      	 ld   c,b
0AA3  49      	 ld   c,c
0AA4  4A      	 ld   c,d
0AA5  24      	 inc  h
0AA6  92      	 sub  d
0AA7  93      	 sub  e
0AA8  94      	 sub  h
0AA9  24      	 inc  h
0AAA  92      	 sub  d
0AAB  93      	 sub  e
0AAC  94      	 sub  h
0AAD  A4      	 and  h
0AAE  A3      	 and  e
0AAF  A3      	 and  e
0AB0  A6      	 and  (hl)
0AB1  A8      	 xor  b
0AB2  A9      	 xor  c
0AB3  A9      	 xor  c
0AB4  A9      	 xor  c
0AB5  AA      	 xor  d
0AB6  A6      	 and  (hl)
0AB7  A6      	 and  (hl)
0AB8  A2      	 and  d
0AB9  A2      	 and  d
0ABA  4B      	 ld   c,e
0ABB  4C      	 ld   c,h
0ABC  4D      	 ld   c,l
0ABD  24      	 inc  h
0ABE  4B      	 ld   c,e
0ABF  4C      	 ld   c,h
0AC0  4D      	 ld   c,l
0AC1  24      	 inc  h
0AC2  95      	 sub  l
0AC3  96      	 sub  (hl)
0AC4  97      	 sub  a
0AC5  24      	 inc  h
0AC6  95      	 sub  l
0AC7  96      	 sub  (hl)
0AC8  97      	 sub  a
0AC9  A3      	 and  e
0ACA  A3      	 and  e
0ACB  A3      	 and  e
0ACC  A6      	 and  (hl)
0ACD  AB      	 xor  e
0ACE  24      	 inc  h
0ACF  24      	 inc  h
0AD0  24      	 inc  h
0AD1  AC      	 xor  h
0AD2  A6      	 and  (hl)
0AD3  A6      	 and  (hl)
0AD4  A2      	 and  d
0AD5  A2      	 and  d
0AD6  4E      	 ld   c,(hl)
0AD7  4F      	 ld   c,a
0AD8  50      	 ld   d,b
0AD9  24      	 inc  h
0ADA  4E      	 ld   c,(hl)
0ADB  4F      	 ld   c,a
0ADC  50      	 ld   d,b
0ADD  24      	 inc  h
0ADE  98      	 sbc  a,b
0ADF  99      	 sbc  a,c
0AE0  9A      	 sbc  a,d
0AE1  24      	 inc  h
0AE2  98      	 sbc  a,b
0AE3  99      	 sbc  a,c
0AE4  9A      	 sbc  a,d
0AE5  A3      	 and  e
0AE6  A3      	 and  e
0AE7  A3      	 and  e
0AE8  A6      	 and  (hl)
0AE9  AB      	 xor  e
0AEA  24      	 inc  h
0AEB  24      	 inc  h
0AEC  24      	 inc  h
0AED  AC      	 xor  h
0AEE  A6      	 and  (hl)
0AEF  A6      	 and  (hl)
0AF0  A2      	 and  d
0AF1  A2      	 and  d
0AF2  48      	 ld   c,b
0AF3  49      	 ld   c,c
0AF4  4A      	 ld   c,d
0AF5  24      	 inc  h
0AF6  48      	 ld   c,b
0AF7  49      	 ld   c,c
0AF8  4A      	 ld   c,d
0AF9  24      	 inc  h
0AFA  92      	 sub  d
0AFB  93      	 sub  e
0AFC  94      	 sub  h
0AFD  24      	 inc  h
0AFE  92      	 sub  d
0AFF  93      	 sub  e
0B00  94      	 sub  h
0B01  A3      	 and  e
0B02  A3      	 and  e
0B03  A3      	 and  e
0B04  A6      	 and  (hl)
0B05  AB      	 xor  e
0B06  24      	 inc  h
0B07  24      	 inc  h
0B08  24      	 inc  h
0B09  AC      	 xor  h
0B0A  A6      	 and  (hl)
0B0B  A6      	 and  (hl)
0B0C  A2      	 and  d
0B0D  A2      	 and  d
0B0E  4B      	 ld   c,e
0B0F  4C      	 ld   c,h
0B10  4D      	 ld   c,l
0B11  24      	 inc  h
0B12  4B      	 ld   c,e
0B13  4C      	 ld   c,h
0B14  4D      	 ld   c,l
0B15  24      	 inc  h
0B16  95      	 sub  l
0B17  96      	 sub  (hl)
0B18  97      	 sub  a
0B19  24      	 inc  h
0B1A  95      	 sub  l
0B1B  96      	 sub  (hl)
0B1C  97      	 sub  a
0B1D  A3      	 and  e
0B1E  A3      	 and  e
0B1F  A3      	 and  e
0B20  A6      	 and  (hl)
0B21  AD      	 xor  l
0B22  AE      	 xor  (hl)
0B23  AE      	 xor  (hl)
0B24  AE      	 xor  (hl)
0B25  AF      	 xor  a
0B26  A6      	 and  (hl)
0B27  A6      	 and  (hl)
0B28  A2      	 and  d
0B29  A2      	 and  d
0B2A  4E      	 ld   c,(hl)
0B2B  4F      	 ld   c,a
0B2C  50      	 ld   d,b
0B2D  24      	 inc  h
0B2E  4E      	 ld   c,(hl)
0B2F  4F      	 ld   c,a
0B30  50      	 ld   d,b
0B31  24      	 inc  h
0B32  98      	 sbc  a,b
0B33  99      	 sbc  a,c
0B34  9A      	 sbc  a,d
0B35  24      	 inc  h
0B36  98      	 sbc  a,b
0B37  99      	 sbc  a,c
0B38  9A      	 sbc  a,d
0B39  A3      	 and  e
0B3A  A3      	 and  e
0B3B  A3      	 and  e
0B3C  A6      	 and  (hl)
0B3D  AB      	 xor  e
0B3E  24      	 inc  h
0B3F  24      	 inc  h
0B40  24      	 inc  h
0B41  AC      	 xor  h
0B42  A6      	 and  (hl)
0B43  A6      	 and  (hl)
0B44  A2      	 and  d
0B45  A2      	 and  d
0B46  24      	 inc  h
0B47  24      	 inc  h
0B48  24      	 inc  h
0B49  24      	 inc  h
0B4A  24      	 inc  h
0B4B  24      	 inc  h
0B4C  24      	 inc  h
0B4D  24      	 inc  h
0B4E  24      	 inc  h
0B4F  24      	 inc  h
0B50  24      	 inc  h
0B51  24      	 inc  h
0B52  24      	 inc  h
0B53  24      	 inc  h
0B54  24      	 inc  h
0B55  A3      	 and  e
0B56  A3      	 and  e
0B57  A3      	 and  e
0B58  A6      	 and  (hl)
0B59  AB      	 xor  e
0B5A  24      	 inc  h
0B5B  24      	 inc  h
0B5C  24      	 inc  h
0B5D  AC      	 xor  h
0B5E  A6      	 and  (hl)
0B5F  A6      	 and  (hl)
0B60  A2      	 and  d
0B61  A2      	 and  d
0B62  24      	 inc  h
0B63  24      	 inc  h
0B64  24      	 inc  h
0B65  24      	 inc  h
0B66  24      	 inc  h
0B67  24      	 inc  h
0B68  24      	 inc  h
0B69  24      	 inc  h
0B6A  24      	 inc  h
0B6B  24      	 inc  h
0B6C  24      	 inc  h
0B6D  24      	 inc  h
0B6E  24      	 inc  h
0B6F  24      	 inc  h
0B70  24      	 inc  h
0B71  A3      	 and  e
0B72  A3      	 and  e
0B73  A3      	 and  e
0B74  A6      	 and  (hl)
0B75  AB      	 xor  e
0B76  24      	 inc  h
0B77  24      	 inc  h
0B78  24      	 inc  h
0B79  AC      	 xor  h
0B7A  A6      	 and  (hl)
0B7B  A6      	 and  (hl)
0B7C  A2      	 and  d
0B7D  A2      	 and  d
0B7E  24      	 inc  h
0B7F  00      	 nop
0B80  24      	 inc  h
0B81  24      	 inc  h
0B82  24      	 inc  h
0B83  00      	 nop
0B84  24      	 inc  h
0B85  24      	 inc  h
0B86  24      	 inc  h
0B87  00      	 nop
0B88  24      	 inc  h
0B89  24      	 inc  h
0B8A  24      	 inc  h
0B8B  00      	 nop
0B8C  24      	 inc  h
0B8D  A3      	 and  e
0B8E  A3      	 and  e
0B8F  A3      	 and  e
0B90  A6      	 and  (hl)
0B91  AD      	 xor  l
0B92  AE      	 xor  (hl)
0B93  AE      	 xor  (hl)
0B94  AE      	 xor  (hl)
0B95  AF      	 xor  a
0B96  A6      	 and  (hl)
0B97  A6      	 and  (hl)
0B98  A2      	 and  d
0B99  A2      	 and  d
0B9A  24      	 inc  h
0B9B  00      	 nop
0B9C  24      	 inc  h
0B9D  24      	 inc  h
0B9E  24      	 inc  h
0B9F  00      	 nop
0BA0  24      	 inc  h
0BA1  24      	 inc  h
0BA2  24      	 inc  h
0BA3  00      	 nop
0BA4  24      	 inc  h
0BA5  24      	 inc  h
0BA6  24      	 inc  h
0BA7  00      	 nop
0BA8  24      	 inc  h
0BA9  A3      	 and  e
0BAA  A3      	 and  e
0BAB  A3      	 and  e
0BAC  A6      	 and  (hl)
0BAD  AB      	 xor  e
0BAE  24      	 inc  h
0BAF  24      	 inc  h
0BB0  24      	 inc  h
0BB1  AC      	 xor  h
0BB2  A6      	 and  (hl)
0BB3  A6      	 and  (hl)
0BB4  A2      	 and  d
0BB5  A2      	 and  d
0BB6  24      	 inc  h
0BB7  05      	 dec  b
0BB8  24      	 inc  h
0BB9  24      	 inc  h
0BBA  24      	 inc  h
0BBB  08      	 ex   af,af'
0BBC  24      	 inc  h
0BBD  24      	 inc  h
0BBE  24      	 inc  h
0BBF  00      	 nop
0BC0  24      	 inc  h
0BC1  24      	 inc  h
0BC2  24      	 inc  h
0BC3  05      	 dec  b
0BC4  24      	 inc  h
0BC5  A3      	 and  e
0BC6  A3      	 and  e
0BC7  A3      	 and  e
0BC8  A6      	 and  (hl)
0BC9  AB      	 xor  e
0BCA  24      	 inc  h
0BCB  24      	 inc  h
0BCC  24      	 inc  h
0BCD  AC      	 xor  h
0BCE  A6      	 and  (hl)
0BCF  A6      	 and  (hl)
0BD0  A2      	 and  d
0BD1  A2      	 and  d
0BD2  24      	 inc  h
0BD3  012424  	 ld   bc,$2424
0BD6  24      	 inc  h
0BD7  24      	 inc  h
0BD8  24      	 inc  h
0BD9  24      	 inc  h
0BDA  24      	 inc  h
0BDB  012424  	 ld   bc,$2424
0BDE  24      	 inc  h
0BDF  24      	 inc  h
0BE0  24      	 inc  h
0BE1  A3      	 and  e
0BE2  A3      	 and  e
0BE3  A3      	 and  e
0BE4  A6      	 and  (hl)
0BE5  AB      	 xor  e
0BE6  24      	 inc  h
0BE7  24      	 inc  h
0BE8  24      	 inc  h
0BE9  AC      	 xor  h
0BEA  A6      	 and  (hl)
0BEB  A6      	 and  (hl)
0BEC  A2      	 and  d
0BED  A2      	 and  d
0BEE  80      	 add  a,b
0BEF  81      	 add  a,c
0BF0  82      	 add  a,d
0BF1  24      	 inc  h
0BF2  24      	 inc  h
0BF3  24      	 inc  h
0BF4  24      	 inc  h
0BF5  24      	 inc  h
0BF6  89      	 adc  a,c
0BF7  8A      	 adc  a,d
0BF8  8B      	 adc  a,e
0BF9  24      	 inc  h
0BFA  24      	 inc  h
0BFB  24      	 inc  h
0BFC  24      	 inc  h
0BFD  A5      	 and  l
0BFE  A3      	 and  e
0BFF  A3      	 and  e
0C00  A6      	 and  (hl)
0C01  B0      	 or   b
0C02  B1      	 or   c
0C03  B1      	 or   c
0C04  B1      	 or   c
0C05  B2      	 or   d
0C06  A6      	 and  (hl)
0C07  A6      	 and  (hl)
0C08  A2      	 and  d
0C09  A2      	 and  d
0C0A  83      	 add  a,e
0C0B  84      	 add  a,h
0C0C  85      	 add  a,l
0C0D  24      	 inc  h
0C0E  24      	 inc  h
0C0F  A7      	 and  a
0C10  24      	 inc  h
0C11  24      	 inc  h
0C12  8C      	 adc  a,h
0C13  8D      	 adc  a,l
0C14  8E      	 adc  a,(hl)
0C15  24      	 inc  h
0C16  24      	 inc  h
0C17  A7      	 and  a
0C18  24      	 inc  h
0C19  24      	 inc  h
0C1A  A5      	 and  l
0C1B  A3      	 and  e
0C1C  A6      	 and  (hl)
0C1D  A6      	 and  (hl)
0C1E  A6      	 and  (hl)
0C1F  A6      	 and  (hl)
0C20  A6      	 and  (hl)
0C21  A6      	 and  (hl)
0C22  A6      	 and  (hl)
0C23  A6      	 and  (hl)
0C24  A2      	 and  d
0C25  A2      	 and  d
0C26  86      	 add  a,(hl)
0C27  87      	 add  a,a
0C28  88      	 adc  a,b
0C29  24      	 inc  h
0C2A  24      	 inc  h
0C2B  24      	 inc  h
0C2C  24      	 inc  h
0C2D  24      	 inc  h
0C2E  8F      	 adc  a,a
0C2F  90      	 sub  b
0C30  91      	 sub  c
0C31  24      	 inc  h
0C32  24      	 inc  h
0C33  24      	 inc  h
0C34  24      	 inc  h
0C35  24      	 inc  h
0C36  24      	 inc  h
0C37  A5      	 and  l
0C38  A6      	 and  (hl)
0C39  A6      	 and  (hl)
0C3A  A6      	 and  (hl)
0C3B  A6      	 and  (hl)
0C3C  A6      	 and  (hl)
0C3D  A6      	 and  (hl)
0C3E  A6      	 and  (hl)
0C3F  A6      	 and  (hl)
0C40  A2      	 and  d
0C41  A2      	 and  d
0C42  80      	 add  a,b
0C43  81      	 add  a,c
0C44  82      	 add  a,d
0C45  24      	 inc  h
0C46  80      	 add  a,b
0C47  81      	 add  a,c
0C48  82      	 add  a,d
0C49  24      	 inc  h
0C4A  89      	 adc  a,c
0C4B  8A      	 adc  a,d
0C4C  8B      	 adc  a,e
0C4D  24      	 inc  h
0C4E  89      	 adc  a,c
0C4F  8A      	 adc  a,d
0C50  8B      	 adc  a,e
0C51  24      	 inc  h
0C52  24      	 inc  h
0C53  24      	 inc  h
0C54  24      	 inc  h
0C55  24      	 inc  h
0C56  24      	 inc  h
0C57  24      	 inc  h
0C58  24      	 inc  h
0C59  9B      	 sbc  a,e
0C5A  9C      	 sbc  a,h
0C5B  9D      	 sbc  a,l
0C5C  A2      	 and  d
0C5D  A2      	 and  d
0C5E  83      	 add  a,e
0C5F  84      	 add  a,h
0C60  85      	 add  a,l
0C61  24      	 inc  h
0C62  83      	 add  a,e
0C63  84      	 add  a,h
0C64  85      	 add  a,l
0C65  24      	 inc  h
0C66  8C      	 adc  a,h
0C67  8D      	 adc  a,l
0C68  8E      	 adc  a,(hl)
0C69  24      	 inc  h
0C6A  8C      	 adc  a,h
0C6B  8D      	 adc  a,l
0C6C  8E      	 adc  a,(hl)
0C6D  24      	 inc  h
0C6E  24      	 inc  h
0C6F  24      	 inc  h
0C70  24      	 inc  h
0C71  24      	 inc  h
0C72  24      	 inc  h
0C73  24      	 inc  h
0C74  24      	 inc  h
0C75  9E      	 sbc  a,(hl)
0C76  9F      	 sbc  a,a
0C77  A0      	 and  b
0C78  A2      	 and  d
0C79  A2      	 and  d
0C7A  86      	 add  a,(hl)
0C7B  87      	 add  a,a
0C7C  88      	 adc  a,b
0C7D  24      	 inc  h
0C7E  86      	 add  a,(hl)
0C7F  87      	 add  a,a
0C80  88      	 adc  a,b
0C81  24      	 inc  h
0C82  8F      	 adc  a,a
0C83  90      	 sub  b
0C84  91      	 sub  c
0C85  24      	 inc  h
0C86  8F      	 adc  a,a
0C87  90      	 sub  b
0C88  91      	 sub  c
0C89  24      	 inc  h
0C8A  24      	 inc  h
0C8B  24      	 inc  h
0C8C  24      	 inc  h
0C8D  24      	 inc  h
0C8E  24      	 inc  h
0C8F  24      	 inc  h
0C90  24      	 inc  h
0C91  9B      	 sbc  a,e
0C92  9C      	 sbc  a,h
0C93  9D      	 sbc  a,l
0C94  A2      	 and  d
0C95  A2      	 and  d
0C96  80      	 add  a,b
0C97  81      	 add  a,c
0C98  82      	 add  a,d
0C99  24      	 inc  h
0C9A  80      	 add  a,b
0C9B  81      	 add  a,c
0C9C  82      	 add  a,d
0C9D  24      	 inc  h
0C9E  89      	 adc  a,c
0C9F  8A      	 adc  a,d
0CA0  8B      	 adc  a,e
0CA1  24      	 inc  h
0CA2  89      	 adc  a,c
0CA3  8A      	 adc  a,d
0CA4  8B      	 adc  a,e
0CA5  24      	 inc  h
0CA6  24      	 inc  h
0CA7  24      	 inc  h
0CA8  24      	 inc  h
0CA9  24      	 inc  h
0CAA  24      	 inc  h
0CAB  24      	 inc  h
0CAC  24      	 inc  h
0CAD  9E      	 sbc  a,(hl)
0CAE  9F      	 sbc  a,a
0CAF  A0      	 and  b
0CB0  A2      	 and  d
0CB1  A2      	 and  d
0CB2  83      	 add  a,e
0CB3  84      	 add  a,h
0CB4  85      	 add  a,l
0CB5  24      	 inc  h
0CB6  83      	 add  a,e
0CB7  84      	 add  a,h
0CB8  85      	 add  a,l
0CB9  24      	 inc  h
0CBA  8C      	 adc  a,h
0CBB  8D      	 adc  a,l
0CBC  8E      	 adc  a,(hl)
0CBD  24      	 inc  h
0CBE  8C      	 adc  a,h
0CBF  8D      	 adc  a,l
0CC0  8E      	 adc  a,(hl)
0CC1  24      	 inc  h
0CC2  24      	 inc  h
0CC3  24      	 inc  h
0CC4  24      	 inc  h
0CC5  24      	 inc  h
0CC6  24      	 inc  h
0CC7  24      	 inc  h
0CC8  24      	 inc  h
0CC9  24      	 inc  h
0CCA  24      	 inc  h
0CCB  A1      	 and  c
0CCC  A2      	 and  d
0CCD  A2      	 and  d
0CCE  86      	 add  a,(hl)
0CCF  87      	 add  a,a
0CD0  88      	 adc  a,b
0CD1  24      	 inc  h
0CD2  86      	 add  a,(hl)
0CD3  87      	 add  a,a
0CD4  88      	 adc  a,b
0CD5  24      	 inc  h
0CD6  8F      	 adc  a,a
0CD7  90      	 sub  b
0CD8  91      	 sub  c
0CD9  24      	 inc  h
0CDA  8F      	 adc  a,a
0CDB  90      	 sub  b
0CDC  91      	 sub  c
0CDD  83      	 add  a,e
0CDE  83      	 add  a,e
0CDF  83      	 add  a,e
0CE0  83      	 add  a,e
0CE1  83      	 add  a,e
0CE2  83      	 add  a,e
0CE3  83      	 add  a,e
0CE4  83      	 add  a,e
0CE5  83      	 add  a,e
0CE6  83      	 add  a,e
0CE7  81      	 add  a,c
0CE8  81      	 add  a,c
0CE9  81      	 add  a,c
0CEA  80      	 add  a,b
0CEB  86      	 add  a,(hl)
0CEC  80      	 add  a,b
0CED  80      	 add  a,b
0CEE  80      	 add  a,b
0CEF  86      	 add  a,(hl)
0CF0  80      	 add  a,b
0CF1  80      	 add  a,b
0CF2  80      	 add  a,b
0CF3  86      	 add  a,(hl)
0CF4  80      	 add  a,b
0CF5  80      	 add  a,b
0CF6  80      	 add  a,b
0CF7  86      	 add  a,(hl)
0CF8  80      	 add  a,b
0CF9  83      	 add  a,e
0CFA  83      	 add  a,e
0CFB  83      	 add  a,e
0CFC  83      	 add  a,e
0CFD  83      	 add  a,e
0CFE  83      	 add  a,e
0CFF  83      	 add  a,e
0D00  83      	 add  a,e
0D01  81      	 add  a,c
0D02  81      	 add  a,c
0D03  81      	 add  a,c
0D04  81      	 add  a,c
0D05  81      	 add  a,c
0D06  80      	 add  a,b
0D07  86      	 add  a,(hl)
0D08  80      	 add  a,b
0D09  80      	 add  a,b
0D0A  80      	 add  a,b
0D0B  86      	 add  a,(hl)
0D0C  80      	 add  a,b
0D0D  80      	 add  a,b
0D0E  80      	 add  a,b
0D0F  86      	 add  a,(hl)
0D10  80      	 add  a,b
0D11  80      	 add  a,b
0D12  80      	 add  a,b
0D13  86      	 add  a,(hl)
0D14  80      	 add  a,b
0D15  83      	 add  a,e
0D16  83      	 add  a,e
0D17  83      	 add  a,e
0D18  83      	 add  a,e
0D19  83      	 add  a,e
0D1A  83      	 add  a,e
0D1B  83      	 add  a,e
0D1C  83      	 add  a,e
0D1D  81      	 add  a,c
0D1E  81      	 add  a,c
0D1F  81      	 add  a,c
0D20  81      	 add  a,c
0D21  81      	 add  a,c
0D22  80      	 add  a,b
0D23  86      	 add  a,(hl)
0D24  80      	 add  a,b
0D25  80      	 add  a,b
0D26  80      	 add  a,b
0D27  86      	 add  a,(hl)
0D28  80      	 add  a,b
0D29  80      	 add  a,b
0D2A  80      	 add  a,b
0D2B  86      	 add  a,(hl)
0D2C  80      	 add  a,b
0D2D  80      	 add  a,b
0D2E  80      	 add  a,b
0D2F  86      	 add  a,(hl)
0D30  80      	 add  a,b
0D31  83      	 add  a,e
0D32  83      	 add  a,e
0D33  83      	 add  a,e
0D34  83      	 add  a,e
0D35  83      	 add  a,e
0D36  83      	 add  a,e
0D37  83      	 add  a,e
0D38  83      	 add  a,e
0D39  81      	 add  a,c
0D3A  81      	 add  a,c
0D3B  81      	 add  a,c
0D3C  81      	 add  a,c
0D3D  81      	 add  a,c
0D3E  80      	 add  a,b
0D3F  80      	 add  a,b
0D40  80      	 add  a,b
0D41  80      	 add  a,b
0D42  80      	 add  a,b
0D43  80      	 add  a,b
0D44  80      	 add  a,b
0D45  80      	 add  a,b
0D46  80      	 add  a,b
0D47  80      	 add  a,b
0D48  80      	 add  a,b
0D49  80      	 add  a,b
0D4A  80      	 add  a,b
0D4B  80      	 add  a,b
0D4C  80      	 add  a,b
0D4D  83      	 add  a,e
0D4E  83      	 add  a,e
0D4F  83      	 add  a,e
0D50  83      	 add  a,e
0D51  83      	 add  a,e
0D52  83      	 add  a,e
0D53  83      	 add  a,e
0D54  83      	 add  a,e
0D55  81      	 add  a,c
0D56  81      	 add  a,c
0D57  81      	 add  a,c
0D58  81      	 add  a,c
0D59  81      	 add  a,c
0D5A  87      	 add  a,a
0D5B  87      	 add  a,a
0D5C  87      	 add  a,a
0D5D  80      	 add  a,b
0D5E  80      	 add  a,b
0D5F  80      	 add  a,b
0D60  80      	 add  a,b
0D61  80      	 add  a,b
0D62  86      	 add  a,(hl)
0D63  86      	 add  a,(hl)
0D64  86      	 add  a,(hl)
0D65  80      	 add  a,b
0D66  80      	 add  a,b
0D67  80      	 add  a,b
0D68  80      	 add  a,b
0D69  83      	 add  a,e
0D6A  83      	 add  a,e
0D6B  83      	 add  a,e
0D6C  83      	 add  a,e
0D6D  83      	 add  a,e
0D6E  83      	 add  a,e
0D6F  83      	 add  a,e
0D70  83      	 add  a,e
0D71  83      	 add  a,e
0D72  83      	 add  a,e
0D73  81      	 add  a,c
0D74  81      	 add  a,c
0D75  81      	 add  a,c
0D76  87      	 add  a,a
0D77  87      	 add  a,a
0D78  87      	 add  a,a
0D79  80      	 add  a,b
0D7A  80      	 add  a,b
0D7B  87      	 add  a,a
0D7C  80      	 add  a,b
0D7D  80      	 add  a,b
0D7E  86      	 add  a,(hl)
0D7F  86      	 add  a,(hl)
0D80  86      	 add  a,(hl)
0D81  80      	 add  a,b
0D82  80      	 add  a,b
0D83  87      	 add  a,a
0D84  80      	 add  a,b
0D85  83      	 add  a,e
0D86  83      	 add  a,e
0D87  83      	 add  a,e
0D88  86      	 add  a,(hl)
0D89  86      	 add  a,(hl)
0D8A  86      	 add  a,(hl)
0D8B  86      	 add  a,(hl)
0D8C  86      	 add  a,(hl)
0D8D  86      	 add  a,(hl)
0D8E  86      	 add  a,(hl)
0D8F  86      	 add  a,(hl)
0D90  81      	 add  a,c
0D91  81      	 add  a,c
0D92  87      	 add  a,a
0D93  87      	 add  a,a
0D94  87      	 add  a,a
0D95  80      	 add  a,b
0D96  80      	 add  a,b
0D97  80      	 add  a,b
0D98  80      	 add  a,b
0D99  80      	 add  a,b
0D9A  86      	 add  a,(hl)
0D9B  86      	 add  a,(hl)
0D9C  86      	 add  a,(hl)
0D9D  80      	 add  a,b
0D9E  80      	 add  a,b
0D9F  80      	 add  a,b
0DA0  80      	 add  a,b
0DA1  83      	 add  a,e
0DA2  83      	 add  a,e
0DA3  83      	 add  a,e
0DA4  86      	 add  a,(hl)
0DA5  86      	 add  a,(hl)
0DA6  86      	 add  a,(hl)
0DA7  86      	 add  a,(hl)
0DA8  86      	 add  a,(hl)
0DA9  86      	 add  a,(hl)
0DAA  86      	 add  a,(hl)
0DAB  86      	 add  a,(hl)
0DAC  81      	 add  a,c
0DAD  81      	 add  a,c
0DAE  87      	 add  a,a
0DAF  87      	 add  a,a
0DB0  87      	 add  a,a
0DB1  80      	 add  a,b
0DB2  87      	 add  a,a
0DB3  87      	 add  a,a
0DB4  87      	 add  a,a
0DB5  80      	 add  a,b
0DB6  86      	 add  a,(hl)
0DB7  86      	 add  a,(hl)
0DB8  86      	 add  a,(hl)
0DB9  80      	 add  a,b
0DBA  86      	 add  a,(hl)
0DBB  86      	 add  a,(hl)
0DBC  86      	 add  a,(hl)
0DBD  83      	 add  a,e
0DBE  83      	 add  a,e
0DBF  83      	 add  a,e
0DC0  86      	 add  a,(hl)
0DC1  85      	 add  a,l
0DC2  85      	 add  a,l
0DC3  85      	 add  a,l
0DC4  85      	 add  a,l
0DC5  85      	 add  a,l
0DC6  86      	 add  a,(hl)
0DC7  86      	 add  a,(hl)
0DC8  81      	 add  a,c
0DC9  81      	 add  a,c
0DCA  87      	 add  a,a
0DCB  87      	 add  a,a
0DCC  87      	 add  a,a
0DCD  80      	 add  a,b
0DCE  87      	 add  a,a
0DCF  87      	 add  a,a
0DD0  87      	 add  a,a
0DD1  80      	 add  a,b
0DD2  86      	 add  a,(hl)
0DD3  86      	 add  a,(hl)
0DD4  86      	 add  a,(hl)
0DD5  80      	 add  a,b
0DD6  86      	 add  a,(hl)
0DD7  86      	 add  a,(hl)
0DD8  86      	 add  a,(hl)
0DD9  83      	 add  a,e
0DDA  83      	 add  a,e
0DDB  83      	 add  a,e
0DDC  86      	 add  a,(hl)
0DDD  85      	 add  a,l
0DDE  80      	 add  a,b
0DDF  80      	 add  a,b
0DE0  80      	 add  a,b
0DE1  85      	 add  a,l
0DE2  86      	 add  a,(hl)
0DE3  86      	 add  a,(hl)
0DE4  81      	 add  a,c
0DE5  81      	 add  a,c
0DE6  87      	 add  a,a
0DE7  87      	 add  a,a
0DE8  87      	 add  a,a
0DE9  80      	 add  a,b
0DEA  87      	 add  a,a
0DEB  87      	 add  a,a
0DEC  87      	 add  a,a
0DED  80      	 add  a,b
0DEE  86      	 add  a,(hl)
0DEF  86      	 add  a,(hl)
0DF0  86      	 add  a,(hl)
0DF1  80      	 add  a,b
0DF2  86      	 add  a,(hl)
0DF3  86      	 add  a,(hl)
0DF4  86      	 add  a,(hl)
0DF5  83      	 add  a,e
0DF6  83      	 add  a,e
0DF7  83      	 add  a,e
0DF8  86      	 add  a,(hl)
0DF9  85      	 add  a,l
0DFA  80      	 add  a,b
0DFB  80      	 add  a,b
0DFC  80      	 add  a,b
0DFD  85      	 add  a,l
0DFE  86      	 add  a,(hl)
0DFF  86      	 add  a,(hl)
0E00  81      	 add  a,c
0E01  81      	 add  a,c
0E02  87      	 add  a,a
0E03  87      	 add  a,a
0E04  87      	 add  a,a
0E05  80      	 add  a,b
0E06  87      	 add  a,a
0E07  87      	 add  a,a
0E08  87      	 add  a,a
0E09  80      	 add  a,b
0E0A  86      	 add  a,(hl)
0E0B  86      	 add  a,(hl)
0E0C  86      	 add  a,(hl)
0E0D  80      	 add  a,b
0E0E  86      	 add  a,(hl)
0E0F  86      	 add  a,(hl)
0E10  86      	 add  a,(hl)
0E11  83      	 add  a,e
0E12  83      	 add  a,e
0E13  83      	 add  a,e
0E14  86      	 add  a,(hl)
0E15  85      	 add  a,l
0E16  80      	 add  a,b
0E17  80      	 add  a,b
0E18  80      	 add  a,b
0E19  85      	 add  a,l
0E1A  86      	 add  a,(hl)
0E1B  86      	 add  a,(hl)
0E1C  81      	 add  a,c
0E1D  81      	 add  a,c
0E1E  87      	 add  a,a
0E1F  87      	 add  a,a
0E20  87      	 add  a,a
0E21  80      	 add  a,b
0E22  87      	 add  a,a
0E23  87      	 add  a,a
0E24  87      	 add  a,a
0E25  80      	 add  a,b
0E26  86      	 add  a,(hl)
0E27  86      	 add  a,(hl)
0E28  86      	 add  a,(hl)
0E29  80      	 add  a,b
0E2A  86      	 add  a,(hl)
0E2B  86      	 add  a,(hl)
0E2C  86      	 add  a,(hl)
0E2D  83      	 add  a,e
0E2E  83      	 add  a,e
0E2F  83      	 add  a,e
0E30  86      	 add  a,(hl)
0E31  85      	 add  a,l
0E32  85      	 add  a,l
0E33  85      	 add  a,l
0E34  85      	 add  a,l
0E35  85      	 add  a,l
0E36  86      	 add  a,(hl)
0E37  86      	 add  a,(hl)
0E38  81      	 add  a,c
0E39  81      	 add  a,c
0E3A  87      	 add  a,a
0E3B  87      	 add  a,a
0E3C  87      	 add  a,a
0E3D  80      	 add  a,b
0E3E  87      	 add  a,a
0E3F  87      	 add  a,a
0E40  87      	 add  a,a
0E41  80      	 add  a,b
0E42  86      	 add  a,(hl)
0E43  86      	 add  a,(hl)
0E44  86      	 add  a,(hl)
0E45  80      	 add  a,b
0E46  86      	 add  a,(hl)
0E47  86      	 add  a,(hl)
0E48  86      	 add  a,(hl)
0E49  83      	 add  a,e
0E4A  83      	 add  a,e
0E4B  83      	 add  a,e
0E4C  86      	 add  a,(hl)
0E4D  85      	 add  a,l
0E4E  80      	 add  a,b
0E4F  80      	 add  a,b
0E50  80      	 add  a,b
0E51  85      	 add  a,l
0E52  86      	 add  a,(hl)
0E53  86      	 add  a,(hl)
0E54  81      	 add  a,c
0E55  81      	 add  a,c
0E56  80      	 add  a,b
0E57  80      	 add  a,b
0E58  80      	 add  a,b
0E59  80      	 add  a,b
0E5A  80      	 add  a,b
0E5B  80      	 add  a,b
0E5C  80      	 add  a,b
0E5D  80      	 add  a,b
0E5E  80      	 add  a,b
0E5F  80      	 add  a,b
0E60  80      	 add  a,b
0E61  80      	 add  a,b
0E62  80      	 add  a,b
0E63  80      	 add  a,b
0E64  80      	 add  a,b
0E65  83      	 add  a,e
0E66  83      	 add  a,e
0E67  83      	 add  a,e
0E68  86      	 add  a,(hl)
0E69  85      	 add  a,l
0E6A  80      	 add  a,b
0E6B  80      	 add  a,b
0E6C  80      	 add  a,b
0E6D  85      	 add  a,l
0E6E  86      	 add  a,(hl)
0E6F  86      	 add  a,(hl)
0E70  81      	 add  a,c
0E71  81      	 add  a,c
0E72  80      	 add  a,b
0E73  80      	 add  a,b
0E74  80      	 add  a,b
0E75  80      	 add  a,b
0E76  80      	 add  a,b
0E77  80      	 add  a,b
0E78  80      	 add  a,b
0E79  80      	 add  a,b
0E7A  80      	 add  a,b
0E7B  80      	 add  a,b
0E7C  80      	 add  a,b
0E7D  80      	 add  a,b
0E7E  80      	 add  a,b
0E7F  80      	 add  a,b
0E80  80      	 add  a,b
0E81  83      	 add  a,e
0E82  83      	 add  a,e
0E83  83      	 add  a,e
0E84  86      	 add  a,(hl)
0E85  85      	 add  a,l
0E86  80      	 add  a,b
0E87  80      	 add  a,b
0E88  80      	 add  a,b
0E89  85      	 add  a,l
0E8A  86      	 add  a,(hl)
0E8B  86      	 add  a,(hl)
0E8C  81      	 add  a,c
0E8D  81      	 add  a,c
0E8E  80      	 add  a,b
0E8F  86      	 add  a,(hl)
0E90  80      	 add  a,b
0E91  80      	 add  a,b
0E92  80      	 add  a,b
0E93  86      	 add  a,(hl)
0E94  80      	 add  a,b
0E95  80      	 add  a,b
0E96  80      	 add  a,b
0E97  86      	 add  a,(hl)
0E98  80      	 add  a,b
0E99  80      	 add  a,b
0E9A  80      	 add  a,b
0E9B  86      	 add  a,(hl)
0E9C  80      	 add  a,b
0E9D  83      	 add  a,e
0E9E  83      	 add  a,e
0E9F  83      	 add  a,e
0EA0  86      	 add  a,(hl)
0EA1  85      	 add  a,l
0EA2  85      	 add  a,l
0EA3  85      	 add  a,l
0EA4  85      	 add  a,l
0EA5  85      	 add  a,l
0EA6  86      	 add  a,(hl)
0EA7  86      	 add  a,(hl)
0EA8  81      	 add  a,c
0EA9  81      	 add  a,c
0EAA  80      	 add  a,b
0EAB  86      	 add  a,(hl)
0EAC  80      	 add  a,b
0EAD  80      	 add  a,b
0EAE  80      	 add  a,b
0EAF  86      	 add  a,(hl)
0EB0  80      	 add  a,b
0EB1  80      	 add  a,b
0EB2  80      	 add  a,b
0EB3  86      	 add  a,(hl)
0EB4  80      	 add  a,b
0EB5  80      	 add  a,b
0EB6  80      	 add  a,b
0EB7  86      	 add  a,(hl)
0EB8  80      	 add  a,b
0EB9  83      	 add  a,e
0EBA  83      	 add  a,e
0EBB  83      	 add  a,e
0EBC  86      	 add  a,(hl)
0EBD  85      	 add  a,l
0EBE  80      	 add  a,b
0EBF  80      	 add  a,b
0EC0  80      	 add  a,b
0EC1  85      	 add  a,l
0EC2  86      	 add  a,(hl)
0EC3  86      	 add  a,(hl)
0EC4  81      	 add  a,c
0EC5  81      	 add  a,c
0EC6  80      	 add  a,b
0EC7  86      	 add  a,(hl)
0EC8  80      	 add  a,b
0EC9  80      	 add  a,b
0ECA  80      	 add  a,b
0ECB  86      	 add  a,(hl)
0ECC  80      	 add  a,b
0ECD  80      	 add  a,b
0ECE  80      	 add  a,b
0ECF  86      	 add  a,(hl)
0ED0  80      	 add  a,b
0ED1  80      	 add  a,b
0ED2  80      	 add  a,b
0ED3  86      	 add  a,(hl)
0ED4  80      	 add  a,b
0ED5  83      	 add  a,e
0ED6  83      	 add  a,e
0ED7  83      	 add  a,e
0ED8  86      	 add  a,(hl)
0ED9  85      	 add  a,l
0EDA  80      	 add  a,b
0EDB  80      	 add  a,b
0EDC  80      	 add  a,b
0EDD  85      	 add  a,l
0EDE  86      	 add  a,(hl)
0EDF  86      	 add  a,(hl)
0EE0  81      	 add  a,c
0EE1  81      	 add  a,c
0EE2  80      	 add  a,b
0EE3  86      	 add  a,(hl)
0EE4  80      	 add  a,b
0EE5  80      	 add  a,b
0EE6  80      	 add  a,b
0EE7  80      	 add  a,b
0EE8  80      	 add  a,b
0EE9  80      	 add  a,b
0EEA  80      	 add  a,b
0EEB  86      	 add  a,(hl)
0EEC  80      	 add  a,b
0EED  80      	 add  a,b
0EEE  80      	 add  a,b
0EEF  80      	 add  a,b
0EF0  80      	 add  a,b
0EF1  83      	 add  a,e
0EF2  83      	 add  a,e
0EF3  83      	 add  a,e
0EF4  86      	 add  a,(hl)
0EF5  85      	 add  a,l
0EF6  80      	 add  a,b
0EF7  80      	 add  a,b
0EF8  80      	 add  a,b
0EF9  85      	 add  a,l
0EFA  86      	 add  a,(hl)
0EFB  86      	 add  a,(hl)
0EFC  81      	 add  a,c
0EFD  81      	 add  a,c
0EFE  84      	 add  a,h
0EFF  84      	 add  a,h
0F00  84      	 add  a,h
0F01  80      	 add  a,b
0F02  80      	 add  a,b
0F03  80      	 add  a,b
0F04  80      	 add  a,b
0F05  80      	 add  a,b
0F06  86      	 add  a,(hl)
0F07  86      	 add  a,(hl)
0F08  86      	 add  a,(hl)
0F09  80      	 add  a,b
0F0A  80      	 add  a,b
0F0B  80      	 add  a,b
0F0C  80      	 add  a,b
0F0D  83      	 add  a,e
0F0E  83      	 add  a,e
0F0F  83      	 add  a,e
0F10  86      	 add  a,(hl)
0F11  85      	 add  a,l
0F12  85      	 add  a,l
0F13  85      	 add  a,l
0F14  85      	 add  a,l
0F15  85      	 add  a,l
0F16  86      	 add  a,(hl)
0F17  86      	 add  a,(hl)
0F18  81      	 add  a,c
0F19  81      	 add  a,c
0F1A  84      	 add  a,h
0F1B  84      	 add  a,h
0F1C  84      	 add  a,h
0F1D  80      	 add  a,b
0F1E  80      	 add  a,b
0F1F  87      	 add  a,a
0F20  80      	 add  a,b
0F21  80      	 add  a,b
0F22  86      	 add  a,(hl)
0F23  86      	 add  a,(hl)
0F24  86      	 add  a,(hl)
0F25  80      	 add  a,b
0F26  80      	 add  a,b
0F27  87      	 add  a,a
0F28  80      	 add  a,b
0F29  83      	 add  a,e
0F2A  83      	 add  a,e
0F2B  83      	 add  a,e
0F2C  86      	 add  a,(hl)
0F2D  86      	 add  a,(hl)
0F2E  86      	 add  a,(hl)
0F2F  86      	 add  a,(hl)
0F30  86      	 add  a,(hl)
0F31  86      	 add  a,(hl)
0F32  86      	 add  a,(hl)
0F33  86      	 add  a,(hl)
0F34  81      	 add  a,c
0F35  81      	 add  a,c
0F36  84      	 add  a,h
0F37  84      	 add  a,h
0F38  84      	 add  a,h
0F39  80      	 add  a,b
0F3A  80      	 add  a,b
0F3B  80      	 add  a,b
0F3C  80      	 add  a,b
0F3D  80      	 add  a,b
0F3E  86      	 add  a,(hl)
0F3F  86      	 add  a,(hl)
0F40  86      	 add  a,(hl)
0F41  80      	 add  a,b
0F42  80      	 add  a,b
0F43  80      	 add  a,b
0F44  80      	 add  a,b
0F45  83      	 add  a,e
0F46  83      	 add  a,e
0F47  83      	 add  a,e
0F48  86      	 add  a,(hl)
0F49  86      	 add  a,(hl)
0F4A  86      	 add  a,(hl)
0F4B  86      	 add  a,(hl)
0F4C  86      	 add  a,(hl)
0F4D  86      	 add  a,(hl)
0F4E  86      	 add  a,(hl)
0F4F  86      	 add  a,(hl)
0F50  81      	 add  a,c
0F51  81      	 add  a,c
0F52  84      	 add  a,h
0F53  84      	 add  a,h
0F54  84      	 add  a,h
0F55  80      	 add  a,b
0F56  84      	 add  a,h
0F57  84      	 add  a,h
0F58  84      	 add  a,h
0F59  80      	 add  a,b
0F5A  86      	 add  a,(hl)
0F5B  86      	 add  a,(hl)
0F5C  86      	 add  a,(hl)
0F5D  80      	 add  a,b
0F5E  86      	 add  a,(hl)
0F5F  86      	 add  a,(hl)
0F60  86      	 add  a,(hl)
0F61  83      	 add  a,e
0F62  83      	 add  a,e
0F63  83      	 add  a,e
0F64  83      	 add  a,e
0F65  83      	 add  a,e
0F66  83      	 add  a,e
0F67  83      	 add  a,e
0F68  83      	 add  a,e
0F69  81      	 add  a,c
0F6A  81      	 add  a,c
0F6B  81      	 add  a,c
0F6C  81      	 add  a,c
0F6D  81      	 add  a,c
0F6E  84      	 add  a,h
0F6F  84      	 add  a,h
0F70  84      	 add  a,h
0F71  80      	 add  a,b
0F72  84      	 add  a,h
0F73  84      	 add  a,h
0F74  84      	 add  a,h
0F75  80      	 add  a,b
0F76  86      	 add  a,(hl)
0F77  86      	 add  a,(hl)
0F78  86      	 add  a,(hl)
0F79  80      	 add  a,b
0F7A  86      	 add  a,(hl)
0F7B  86      	 add  a,(hl)
0F7C  86      	 add  a,(hl)
0F7D  83      	 add  a,e
0F7E  83      	 add  a,e
0F7F  83      	 add  a,e
0F80  83      	 add  a,e
0F81  83      	 add  a,e
0F82  83      	 add  a,e
0F83  83      	 add  a,e
0F84  83      	 add  a,e
0F85  81      	 add  a,c
0F86  81      	 add  a,c
0F87  81      	 add  a,c
0F88  81      	 add  a,c
0F89  81      	 add  a,c
0F8A  84      	 add  a,h
0F8B  84      	 add  a,h
0F8C  84      	 add  a,h
0F8D  80      	 add  a,b
0F8E  84      	 add  a,h
0F8F  84      	 add  a,h
0F90  84      	 add  a,h
0F91  80      	 add  a,b
0F92  86      	 add  a,(hl)
0F93  86      	 add  a,(hl)
0F94  86      	 add  a,(hl)
0F95  80      	 add  a,b
0F96  86      	 add  a,(hl)
0F97  86      	 add  a,(hl)
0F98  86      	 add  a,(hl)
0F99  83      	 add  a,e
0F9A  83      	 add  a,e
0F9B  83      	 add  a,e
0F9C  83      	 add  a,e
0F9D  83      	 add  a,e
0F9E  83      	 add  a,e
0F9F  83      	 add  a,e
0FA0  83      	 add  a,e
0FA1  81      	 add  a,c
0FA2  81      	 add  a,c
0FA3  81      	 add  a,c
0FA4  81      	 add  a,c
0FA5  81      	 add  a,c
0FA6  84      	 add  a,h
0FA7  84      	 add  a,h
0FA8  84      	 add  a,h
0FA9  80      	 add  a,b
0FAA  84      	 add  a,h
0FAB  84      	 add  a,h
0FAC  84      	 add  a,h
0FAD  80      	 add  a,b
0FAE  86      	 add  a,(hl)
0FAF  86      	 add  a,(hl)
0FB0  86      	 add  a,(hl)
0FB1  80      	 add  a,b
0FB2  86      	 add  a,(hl)
0FB3  86      	 add  a,(hl)
0FB4  86      	 add  a,(hl)
0FB5  83      	 add  a,e
0FB6  83      	 add  a,e
0FB7  83      	 add  a,e
0FB8  83      	 add  a,e
0FB9  83      	 add  a,e
0FBA  83      	 add  a,e
0FBB  83      	 add  a,e
0FBC  83      	 add  a,e
0FBD  81      	 add  a,c
0FBE  81      	 add  a,c
0FBF  81      	 add  a,c
0FC0  81      	 add  a,c
0FC1  81      	 add  a,c
0FC2  84      	 add  a,h
0FC3  84      	 add  a,h
0FC4  84      	 add  a,h
0FC5  80      	 add  a,b
0FC6  84      	 add  a,h
0FC7  84      	 add  a,h
0FC8  84      	 add  a,h
0FC9  80      	 add  a,b
0FCA  86      	 add  a,(hl)
0FCB  86      	 add  a,(hl)
0FCC  86      	 add  a,(hl)
0FCD  80      	 add  a,b
0FCE  86      	 add  a,(hl)
0FCF  86      	 add  a,(hl)
0FD0  86      	 add  a,(hl)
0FD1  83      	 add  a,e
0FD2  83      	 add  a,e
0FD3  83      	 add  a,e
0FD4  83      	 add  a,e
0FD5  83      	 add  a,e
0FD6  83      	 add  a,e
0FD7  83      	 add  a,e
0FD8  83      	 add  a,e
0FD9  83      	 add  a,e
0FDA  83      	 add  a,e
0FDB  81      	 add  a,c
0FDC  81      	 add  a,c
0FDD  81      	 add  a,c
0FDE  84      	 add  a,h
0FDF  84      	 add  a,h
0FE0  84      	 add  a,h
0FE1  80      	 add  a,b
0FE2  84      	 add  a,h
0FE3  84      	 add  a,h
0FE4  84      	 add  a,h
0FE5  80      	 add  a,b
0FE6  86      	 add  a,(hl)
0FE7  86      	 add  a,(hl)
0FE8  86      	 add  a,(hl)
0FE9  80      	 add  a,b
0FEA  86      	 add  a,(hl)
0FEB  86      	 add  a,(hl)
0FEC  86      	 add  a,(hl)
0FED  3A8084  	 ld   a,($8480)
0FF0  A7      	 and  a
0FF1  C27B10  	 jp   nz,$107B
0FF4  117E84  	 ld   de,$847E
0FF7  216910  	 ld   hl,$1069
0FFA  011200  	 ld   bc,$0012
0FFD  EDB0    	 ldir
0FFF  216892  	 ld   hl,$9268
1002  CD1210  	 call $1012
1005  21E891  	 ld   hl,$91E8
1008  CD1210  	 call $1012
100B  216891  	 ld   hl,$9168
100E  CD1210  	 call $1012
1011  C9      	 ret
1012  010303  	 ld   bc,$0303
1015  112000  	 ld   de,$0020
1018  3E84    	 ld   a,$84
101A  08      	 ex   af,af'
101B  3E80    	 ld   a,$80
101D  C5      	 push bc
101E  E5      	 push hl
101F  77      	 ld   (hl),a
1020  CBD4    	 set  2,h
1022  08      	 ex   af,af'
1023  77      	 ld   (hl),a
1024  08      	 ex   af,af'
1025  CB94    	 res  2,h
1027  23      	 inc  hl
1028  3C      	 inc  a
1029  10F4    	 djnz $101F
102B  E1      	 pop  hl
102C  19      	 add  hl,de
102D  C1      	 pop  bc
102E  0D      	 dec  c
102F  C21D10  	 jp   nz,$101D
1032  C9      	 ret
1033  3A6892  	 ld   a,($9268)
1036  0600    	 ld   b,$00
1038  CD5810  	 call $1058
103B  78      	 ld   a,b
103C  328484  	 ld   ($8484),a
103F  3AE891  	 ld   a,($91E8)
1042  0600    	 ld   b,$00
1044  CD5810  	 call $1058
1047  78      	 ld   a,b
1048  328584  	 ld   ($8485),a
104B  3A6891  	 ld   a,($9168)
104E  0600    	 ld   b,$00
1050  CD5810  	 call $1058
1053  78      	 ld   a,b
1054  328684  	 ld   ($8486),a
1057  C9      	 ret
1058  FE80    	 cp   $80
105A  C8      	 ret  z
105B  04      	 inc  b
105C  FE89    	 cp   $89
105E  C8      	 ret  z
105F  04      	 inc  b
1060  FE48    	 cp   $48
1062  C8      	 ret  z
1063  04      	 inc  b
1064  FE92    	 cp   $92
1066  C8      	 ret  z
1067  04      	 inc  b
1068  C9      	 ret
1069  03      	 inc  bc
106A  00      	 nop
106B  010000  	 ld   bc,$0000
106E  00      	 nop
106F  00      	 nop
1070  00      	 nop
1071  00      	 nop
1072  00      	 nop
1073  00      	 nop
1074  00      	 nop
1075  00      	 nop
1076  00      	 nop
1077  00      	 nop
1078  00      	 nop
1079  00      	 nop
107A  00      	 nop
107B  3A8C84  	 ld   a,($848C)
107E  3C      	 inc  a
107F  328C84  	 ld   ($848C),a
1082  3A8184  	 ld   a,($8481)
1085  FE01    	 cp   $01
1087  CAF110  	 jp   z,$10F1
108A  FE02    	 cp   $02
108C  CA2A11  	 jp   z,$112A
108F  FE03    	 cp   $03
1091  CA7111  	 jp   z,$1171
1094  FE04    	 cp   $04
1096  CAAE11  	 jp   z,$11AE
1099  FE05    	 cp   $05
109B  CAC311  	 jp   z,$11C3
109E  FE06    	 cp   $06
10A0  CA5B12  	 jp   z,$125B
10A3  FE07    	 cp   $07
10A5  CA1A12  	 jp   z,$121A
10A8  FE08    	 cp   $08
10AA  CAE111  	 jp   z,$11E1
10AD  3E00    	 ld   a,$00
10AF  327F84  	 ld   ($847F),a
10B2  3A3080  	 ld   a,($8030)
10B5  A7      	 and  a
10B6  CAC210  	 jp   z,$10C2
10B9  CD1813  	 call $1318
10BC  3A00A0  	 ld   a,($A000)
10BF  327F84  	 ld   ($847F),a
10C2  3A7F84  	 ld   a,($847F)
10C5  E610    	 and  $10
10C7  C2DE10  	 jp   nz,$10DE
10CA  218184  	 ld   hl,$8481
10CD  23      	 inc  hl
10CE  34      	 inc  (hl)
10CF  7E      	 ld   a,(hl)
10D0  FE06    	 cp   $06
10D2  D8      	 ret  c
10D3  3600    	 ld   (hl),$00
10D5  23      	 inc  hl
10D6  34      	 inc  (hl)
10D7  7E      	 ld   a,(hl)
10D8  FE28    	 cp   $28
10DA  CADE10  	 jp   z,$10DE
10DD  C9      	 ret
10DE  3E00    	 ld   a,$00
10E0  328384  	 ld   ($8483),a
10E3  3E01    	 ld   a,$01
10E5  328184  	 ld   ($8481),a
10E8  CD4413  	 call $1344
10EB  3E8F    	 ld   a,$8F
10ED  3200B8  	 ld   ($B800),a
10F0  C9      	 ret
10F1  3A8C84  	 ld   a,($848C)
10F4  CB47    	 bit  0,a
10F6  CA0211  	 jp   z,$1102
10F9  CDF213  	 call $13F2
10FC  CD0E14  	 call $140E
10FF  CD2A14  	 call $142A
1102  218284  	 ld   hl,$8482
1105  34      	 inc  (hl)
1106  7E      	 ld   a,(hl)
1107  FE06    	 cp   $06
1109  D8      	 ret  c
110A  3600    	 ld   (hl),$00
110C  23      	 inc  hl
110D  34      	 inc  (hl)
110E  7E      	 ld   a,(hl)
110F  FE01    	 cp   $01
1111  C21911  	 jp   nz,$1119
1114  3ECA    	 ld   a,$CA
1116  3200B8  	 ld   ($B800),a
1119  FE1E    	 cp   $1E
111B  CA1F11  	 jp   z,$111F
111E  C9      	 ret
111F  3E00    	 ld   a,$00
1121  328384  	 ld   ($8483),a
1124  3E02    	 ld   a,$02
1126  328184  	 ld   ($8481),a
1129  C9      	 ret
112A  3A8C84  	 ld   a,($848C)
112D  E607    	 and  $07
112F  FE01    	 cp   $01
1131  2831    	 jr   z,$1164
1133  FE04    	 cp   $04
1135  2822    	 jr   z,$1159
1137  FE07    	 cp   $07
1139  2831    	 jr   z,$116C
113B  218284  	 ld   hl,$8482
113E  34      	 inc  (hl)
113F  7E      	 ld   a,(hl)
1140  FE06    	 cp   $06
1142  D8      	 ret  c
1143  3600    	 ld   (hl),$00
1145  23      	 inc  hl
1146  34      	 inc  (hl)
1147  7E      	 ld   a,(hl)
1148  FE14    	 cp   $14
114A  CA4E11  	 jp   z,$114E
114D  C9      	 ret
114E  3E00    	 ld   a,$00
1150  328384  	 ld   ($8483),a
1153  3E03    	 ld   a,$03
1155  328184  	 ld   ($8481),a
1158  C9      	 ret
1159  CDF213  	 call $13F2
115C  CD0E14  	 call $140E
115F  CD2A14  	 call $142A
1162  18D7    	 jr   $113B
1164  CD0E14  	 call $140E
1167  CD2A14  	 call $142A
116A  18CF    	 jr   $113B
116C  CD2A14  	 call $142A
116F  18CA    	 jr   $113B
1171  3A8C84  	 ld   a,($848C)
1174  E607    	 and  $07
1176  FE01    	 cp   $01
1178  282C    	 jr   z,$11A6
117A  FE04    	 cp   $04
117C  2820    	 jr   z,$119E
117E  218284  	 ld   hl,$8482
1181  34      	 inc  (hl)
1182  7E      	 ld   a,(hl)
1183  FE06    	 cp   $06
1185  D8      	 ret  c
1186  3600    	 ld   (hl),$00
1188  23      	 inc  hl
1189  34      	 inc  (hl)
118A  7E      	 ld   a,(hl)
118B  FE0A    	 cp   $0A
118D  CA9111  	 jp   z,$1191
1190  C9      	 ret
1191  3E00    	 ld   a,$00
1193  328384  	 ld   ($8483),a
1196  3A8184  	 ld   a,($8481)
1199  3C      	 inc  a
119A  328184  	 ld   ($8481),a
119D  C9      	 ret
119E  CD8F13  	 call $138F
11A1  CD2A14  	 call $142A
11A4  18D8    	 jr   $117E
11A6  CD0E14  	 call $140E
11A9  CD2A14  	 call $142A
11AC  18D0    	 jr   $117E
11AE  3A8C84  	 ld   a,($848C)
11B1  E607    	 and  $07
11B3  FE04    	 cp   $04
11B5  2803    	 jr   z,$11BA
11B7  C37E11  	 jp   $117E
11BA  CDAF13  	 call $13AF
11BD  CD2A14  	 call $142A
11C0  C37E11  	 jp   $117E
11C3  3A8C84  	 ld   a,($848C)
11C6  E607    	 and  $07
11C8  FE04    	 cp   $04
11CA  2807    	 jr   z,$11D3
11CC  FE01    	 cp   $01
11CE  2809    	 jr   z,$11D9
11D0  C37E11  	 jp   $117E
11D3  CDC913  	 call $13C9
11D6  C37E11  	 jp   $117E
11D9  3EE0    	 ld   a,$E0
11DB  3200B8  	 ld   ($B800),a
11DE  C37E11  	 jp   $117E
11E1  218884  	 ld   hl,$8488
11E4  34      	 inc  (hl)
11E5  3E06    	 ld   a,$06
11E7  BE      	 cp   (hl)
11E8  C0      	 ret  nz
11E9  3600    	 ld   (hl),$00
11EB  23      	 inc  hl
11EC  34      	 inc  (hl)
11ED  3E10    	 ld   a,$10
11EF  BE      	 cp   (hl)
11F0  C0      	 ret  nz
11F1  3600    	 ld   (hl),$00
11F3  3A7E84  	 ld   a,($847E)
11F6  3D      	 dec  a
11F7  327E84  	 ld   ($847E),a
11FA  CA1412  	 jp   z,$1214
11FD  3E00    	 ld   a,$00
11FF  328184  	 ld   ($8481),a
1202  328284  	 ld   ($8482),a
1205  328384  	 ld   ($8483),a
1208  327F84  	 ld   ($847F),a
120B  218D84  	 ld   hl,$848D
120E  77      	 ld   (hl),a
120F  23      	 inc  hl
1210  77      	 ld   (hl),a
1211  23      	 inc  hl
1212  77      	 ld   (hl),a
1213  C9      	 ret
1214  3E01    	 ld   a,$01
1216  323380  	 ld   ($8033),a
1219  C9      	 ret
121A  218884  	 ld   hl,$8488
121D  34      	 inc  (hl)
121E  3E06    	 ld   a,$06
1220  BE      	 cp   (hl)
1221  C0      	 ret  nz
1222  3600    	 ld   (hl),$00
1224  23      	 inc  hl
1225  34      	 inc  (hl)
1226  E5      	 push hl
1227  CD4812  	 call $1248
122A  E1      	 pop  hl
122B  7E      	 ld   a,(hl)
122C  FE01    	 cp   $01
122E  CA3712  	 jp   z,$1237
1231  FE50    	 cp   $50
1233  CA3D12  	 jp   z,$123D
1236  C9      	 ret
1237  3ECB    	 ld   a,$CB
1239  3200B8  	 ld   ($B800),a
123C  C9      	 ret
123D  3EE0    	 ld   a,$E0
123F  3200B8  	 ld   ($B800),a
1242  3E01    	 ld   a,$01
1244  323280  	 ld   ($8032),a
1247  C9      	 ret
1248  2A8A84  	 ld   hl,($848A)
124B  CBD4    	 set  2,h
124D  11E0FF  	 ld   de,$FFE0
1250  0604    	 ld   b,$04
1252  7E      	 ld   a,(hl)
1253  3C      	 inc  a
1254  E687    	 and  $87
1256  77      	 ld   (hl),a
1257  19      	 add  hl,de
1258  10F8    	 djnz $1252
125A  C9      	 ret
125B  CD3310  	 call $1033
125E  3A8684  	 ld   a,($8486)
1261  4F      	 ld   c,a
1262  3A8584  	 ld   a,($8485)
1265  47      	 ld   b,a
1266  3A8484  	 ld   a,($8484)
1269  B8      	 cp   b
126A  CA8112  	 jp   z,$1281
126D  218884  	 ld   hl,$8488
1270  3600    	 ld   (hl),$00
1272  23      	 inc  hl
1273  3600    	 ld   (hl),$00
1275  23      	 inc  hl
1276  3600    	 ld   (hl),$00
1278  23      	 inc  hl
1279  3600    	 ld   (hl),$00
127B  3E08    	 ld   a,$08
127D  328184  	 ld   ($8481),a
1280  C9      	 ret
1281  08      	 ex   af,af'
1282  3E07    	 ld   a,$07
1284  328184  	 ld   ($8481),a
1287  08      	 ex   af,af'
1288  B9      	 cp   c
1289  CA9E12  	 jp   z,$129E
128C  FE00    	 cp   $00
128E  CAB012  	 jp   z,$12B0
1291  FE01    	 cp   $01
1293  CAB912  	 jp   z,$12B9
1296  FE02    	 cp   $02
1298  CAC212  	 jp   z,$12C2
129B  C3CB12  	 jp   $12CB
129E  FE00    	 cp   $00
12A0  CAD412  	 jp   z,$12D4
12A3  FE01    	 cp   $01
12A5  CADD12  	 jp   z,$12DD
12A8  FE02    	 cp   $02
12AA  CAE612  	 jp   z,$12E6
12AD  C3EF12  	 jp   $12EF
12B0  019592  	 ld   bc,$9295
12B3  110008  	 ld   de,$0800
12B6  C3F512  	 jp   $12F5
12B9  019D92  	 ld   bc,$929D
12BC  110005  	 ld   de,$0500
12BF  C3F512  	 jp   $12F5
12C2  01B590  	 ld   bc,$90B5
12C5  110004  	 ld   de,$0400
12C8  C3F512  	 jp   $12F5
12CB  01BD90  	 ld   bc,$90BD
12CE  110002  	 ld   de,$0200
12D1  C3F512  	 jp   $12F5
12D4  019192  	 ld   bc,$9291
12D7  110015  	 ld   de,$1500
12DA  C3F512  	 jp   $12F5
12DD  019992  	 ld   bc,$9299
12E0  110010  	 ld   de,$1000
12E3  C3F512  	 jp   $12F5
12E6  01B190  	 ld   bc,$90B1
12E9  110008  	 ld   de,$0800
12EC  C3F512  	 jp   $12F5
12EF  01B990  	 ld   bc,$90B9
12F2  110006  	 ld   de,$0600
12F5  218B84  	 ld   hl,$848B
12F8  70      	 ld   (hl),b
12F9  2B      	 dec  hl
12FA  71      	 ld   (hl),c
12FB  2B      	 dec  hl
12FC  3600    	 ld   (hl),$00
12FE  2B      	 dec  hl
12FF  3600    	 ld   (hl),$00
1301  214080  	 ld   hl,$8040
1304  3601    	 ld   (hl),$01
1306  23      	 inc  hl
1307  AF      	 xor  a
1308  7B      	 ld   a,e
1309  8E      	 adc  a,(hl)
130A  27      	 daa
130B  77      	 ld   (hl),a
130C  23      	 inc  hl
130D  7A      	 ld   a,d
130E  8E      	 adc  a,(hl)
130F  27      	 daa
1310  77      	 ld   (hl),a
1311  23      	 inc  hl
1312  3E00    	 ld   a,$00
1314  8E      	 adc  a,(hl)
1315  27      	 daa
1316  77      	 ld   (hl),a
1317  C9      	 ret
1318  00      	 nop
1319  00      	 nop
131A  00      	 nop
131B  21CE92  	 ld   hl,$92CE
131E  060D    	 ld   b,$0D
1320  116D13  	 ld   de,$136D
1323  CD6113  	 call $1361
1326  21CE96  	 ld   hl,$96CE
1329  3E87    	 ld   a,$87
132B  CD5713  	 call $1357
132E  21CF92  	 ld   hl,$92CF
1331  060D    	 ld   b,$0D
1333  117A13  	 ld   de,$137A
1336  CD6113  	 call $1361
1339  21CF96  	 ld   hl,$96CF
133C  3E87    	 ld   a,$87
133E  CD5713  	 call $1357
1341  00      	 nop
1342  00      	 nop
1343  C9      	 ret
1344  21CE92  	 ld   hl,$92CE
1347  3E24    	 ld   a,$24
1349  CD5713  	 call $1357
134C  21CF92  	 ld   hl,$92CF
134F  3E24    	 ld   a,$24
1351  CD5713  	 call $1357
1354  00      	 nop
1355  00      	 nop
1356  C9      	 ret
1357  11E0FF  	 ld   de,$FFE0
135A  060D    	 ld   b,$0D
135C  77      	 ld   (hl),a
135D  19      	 add  hl,de
135E  10FC    	 djnz $135C
1360  C9      	 ret
1361  C5      	 push bc
1362  01E0FF  	 ld   bc,$FFE0
1365  1A      	 ld   a,(de)
1366  77      	 ld   (hl),a
1367  09      	 add  hl,bc
1368  13      	 inc  de
1369  C1      	 pop  bc
136A  10F5    	 djnz $1361
136C  C9      	 ret
136D  24      	 inc  h
136E  19      	 add  hl,de
136F  15      	 dec  d
1370  0E0A    	 ld   c,$0A
1372  1C      	 inc  e
1373  0E24    	 ld   c,$24
1375  19      	 add  hl,de
1376  1B      	 dec  de
1377  0E1C    	 ld   c,$1C
1379  1C      	 inc  e
137A  24      	 inc  h
137B  1C      	 inc  e
137C  11181D  	 ld   de,$1D18
137F  24      	 inc  h
1380  0B      	 dec  bc
1381  1E1D    	 ld   e,$1D
1383  1D      	 dec  e
1384  1817    	 jr   $139D
1386  24      	 inc  h
1387  00      	 nop
1388  00      	 nop
1389  00      	 nop
138A  00      	 nop
138B  00      	 nop
138C  00      	 nop
138D  00      	 nop
138E  00      	 nop
138F  3A8D84  	 ld   a,($848D)
1392  A7      	 and  a
1393  C0      	 ret  nz
1394  3A6892  	 ld   a,($9268)
1397  0600    	 ld   b,$00
1399  CDE313  	 call $13E3
139C  78      	 ld   a,b
139D  A7      	 and  a
139E  C2F213  	 jp   nz,$13F2
13A1  3E01    	 ld   a,$01
13A3  328D84  	 ld   ($848D),a
13A6  C3A913  	 jp   $13A9
13A9  3E90    	 ld   a,$90
13AB  3200B8  	 ld   ($B800),a
13AE  C9      	 ret
13AF  3A8E84  	 ld   a,($848E)
13B2  A7      	 and  a
13B3  C0      	 ret  nz
13B4  3AE891  	 ld   a,($91E8)
13B7  0600    	 ld   b,$00
13B9  CDE313  	 call $13E3
13BC  78      	 ld   a,b
13BD  A7      	 and  a
13BE  C20E14  	 jp   nz,$140E
13C1  3E01    	 ld   a,$01
13C3  328E84  	 ld   ($848E),a
13C6  C3A913  	 jp   $13A9
13C9  3A8F84  	 ld   a,($848F)
13CC  A7      	 and  a
13CD  C0      	 ret  nz
13CE  3A6891  	 ld   a,($9168)
13D1  0600    	 ld   b,$00
13D3  CDE313  	 call $13E3
13D6  78      	 ld   a,b
13D7  A7      	 and  a
13D8  C22A14  	 jp   nz,$142A
13DB  3E01    	 ld   a,$01
13DD  328F84  	 ld   ($848F),a
13E0  C3A913  	 jp   $13A9
13E3  FE80    	 cp   $80
13E5  C8      	 ret  z
13E6  FE89    	 cp   $89
13E8  C8      	 ret  z
13E9  FE48    	 cp   $48
13EB  C8      	 ret  z
13EC  FE92    	 cp   $92
13EE  C8      	 ret  z
13EF  0601    	 ld   b,$01
13F1  C9      	 ret
13F2  3AC084  	 ld   a,($84C0)
13F5  A7      	 and  a
13F6  C20314  	 jp   nz,$1403
13F9  3C      	 inc  a
13FA  32C084  	 ld   ($84C0),a
13FD  21E514  	 ld   hl,$14E5
1400  22C384  	 ld   ($84C3),hl
1403  21AA92  	 ld   hl,$92AA
1406  DD21C384	 ld   ix,$84C3
140A  CD4614  	 call $1446
140D  C9      	 ret
140E  3AC184  	 ld   a,($84C1)
1411  A7      	 and  a
1412  C21F14  	 jp   nz,$141F
1415  3C      	 inc  a
1416  32C184  	 ld   ($84C1),a
1419  218B15  	 ld   hl,$158B
141C  22C584  	 ld   ($84C5),hl
141F  212A92  	 ld   hl,$922A
1422  DD21C584	 ld   ix,$84C5
1426  CD4614  	 call $1446
1429  C9      	 ret
142A  3AC284  	 ld   a,($84C2)
142D  A7      	 and  a
142E  C23B14  	 jp   nz,$143B
1431  3C      	 inc  a
1432  32C284  	 ld   ($84C2),a
1435  213116  	 ld   hl,$1631
1438  22C784  	 ld   ($84C7),hl
143B  21AA91  	 ld   hl,$91AA
143E  DD21C784	 ld   ix,$84C7
1442  CD4614  	 call $1446
1445  C9      	 ret
1446  DD5E00  	 ld   e,(ix+$00)
1449  DD5601  	 ld   d,(ix+$01)
144C  CD6B14  	 call $146B
144F  1A      	 ld   a,(de)
1450  FEFF    	 cp   $FF
1452  200C    	 jr   nz,$1460
1454  215100  	 ld   hl,$0051
1457  19      	 add  hl,de
1458  EB      	 ex   de,hl
1459  DD7201  	 ld   (ix+$01),d
145C  DD7300  	 ld   (ix+$00),e
145F  C9      	 ret
1460  DD5E00  	 ld   e,(ix+$00)
1463  DD5601  	 ld   d,(ix+$01)
1466  1B      	 dec  de
1467  1B      	 dec  de
1468  1B      	 dec  de
1469  18EE    	 jr   $1459
146B  010303  	 ld   bc,$0303
146E  E5      	 push hl
146F  C5      	 push bc
1470  1A      	 ld   a,(de)
1471  77      	 ld   (hl),a
1472  D5      	 push de
1473  E5      	 push hl
1474  215100  	 ld   hl,$0051
1477  19      	 add  hl,de
1478  EB      	 ex   de,hl
1479  E1      	 pop  hl
147A  CBD4    	 set  2,h
147C  1A      	 ld   a,(de)
147D  77      	 ld   (hl),a
147E  CB94    	 res  2,h
1480  D1      	 pop  de
1481  1B      	 dec  de
1482  C5      	 push bc
1483  01E0FF  	 ld   bc,$FFE0
1486  09      	 add  hl,bc
1487  C1      	 pop  bc
1488  10E6    	 djnz $1470
148A  C1      	 pop  bc
148B  E1      	 pop  hl
148C  2B      	 dec  hl
148D  0D      	 dec  c
148E  20DE    	 jr   nz,$146E
1490  C9      	 ret
1491  FF      	 rst  $38
1492  FF      	 rst  $38
1493  FF      	 rst  $38
1494  FF      	 rst  $38
1495  80      	 add  a,b
1496  83      	 add  a,e
1497  86      	 add  a,(hl)
1498  81      	 add  a,c
1499  84      	 add  a,h
149A  87      	 add  a,a
149B  82      	 add  a,d
149C  85      	 add  a,l
149D  88      	 adc  a,b
149E  89      	 adc  a,c
149F  8C      	 adc  a,h
14A0  8F      	 adc  a,a
14A1  8A      	 adc  a,d
14A2  8D      	 adc  a,l
14A3  90      	 sub  b
14A4  8B      	 adc  a,e
14A5  8E      	 adc  a,(hl)
14A6  91      	 sub  c
14A7  92      	 sub  d
14A8  95      	 sub  l
14A9  98      	 sbc  a,b
14AA  93      	 sub  e
14AB  96      	 sub  (hl)
14AC  99      	 sbc  a,c
14AD  94      	 sub  h
14AE  97      	 sub  a
14AF  9A      	 sbc  a,d
14B0  48      	 ld   c,b
14B1  4B      	 ld   c,e
14B2  4E      	 ld   c,(hl)
14B3  49      	 ld   c,c
14B4  4C      	 ld   c,h
14B5  4F      	 ld   c,a
14B6  4A      	 ld   c,d
14B7  4D      	 ld   c,l
14B8  50      	 ld   d,b
14B9  89      	 adc  a,c
14BA  8C      	 adc  a,h
14BB  8F      	 adc  a,a
14BC  8A      	 adc  a,d
14BD  8D      	 adc  a,l
14BE  90      	 sub  b
14BF  8B      	 adc  a,e
14C0  8E      	 adc  a,(hl)
14C1  91      	 sub  c
14C2  80      	 add  a,b
14C3  83      	 add  a,e
14C4  86      	 add  a,(hl)
14C5  81      	 add  a,c
14C6  84      	 add  a,h
14C7  87      	 add  a,a
14C8  82      	 add  a,d
14C9  85      	 add  a,l
14CA  88      	 adc  a,b
14CB  48      	 ld   c,b
14CC  4B      	 ld   c,e
14CD  4E      	 ld   c,(hl)
14CE  49      	 ld   c,c
14CF  4C      	 ld   c,h
14D0  4F      	 ld   c,a
14D1  4A      	 ld   c,d
14D2  4D      	 ld   c,l
14D3  50      	 ld   d,b
14D4  92      	 sub  d
14D5  95      	 sub  l
14D6  98      	 sbc  a,b
14D7  93      	 sub  e
14D8  96      	 sub  (hl)
14D9  99      	 sbc  a,c
14DA  94      	 sub  h
14DB  97      	 sub  a
14DC  9A      	 sbc  a,d
14DD  80      	 add  a,b
14DE  83      	 add  a,e
14DF  86      	 add  a,(hl)
14E0  81      	 add  a,c
14E1  84      	 add  a,h
14E2  87      	 add  a,a
14E3  82      	 add  a,d
14E4  85      	 add  a,l
14E5  88      	 adc  a,b
14E6  84      	 add  a,h
14E7  84      	 add  a,h
14E8  84      	 add  a,h
14E9  84      	 add  a,h
14EA  84      	 add  a,h
14EB  84      	 add  a,h
14EC  84      	 add  a,h
14ED  84      	 add  a,h
14EE  84      	 add  a,h
14EF  86      	 add  a,(hl)
14F0  86      	 add  a,(hl)
14F1  86      	 add  a,(hl)
14F2  86      	 add  a,(hl)
14F3  86      	 add  a,(hl)
14F4  86      	 add  a,(hl)
14F5  86      	 add  a,(hl)
14F6  86      	 add  a,(hl)
14F7  86      	 add  a,(hl)
14F8  86      	 add  a,(hl)
14F9  86      	 add  a,(hl)
14FA  86      	 add  a,(hl)
14FB  86      	 add  a,(hl)
14FC  86      	 add  a,(hl)
14FD  86      	 add  a,(hl)
14FE  86      	 add  a,(hl)
14FF  86      	 add  a,(hl)
1500  86      	 add  a,(hl)
1501  87      	 add  a,a
1502  87      	 add  a,a
1503  87      	 add  a,a
1504  87      	 add  a,a
1505  87      	 add  a,a
1506  87      	 add  a,a
1507  87      	 add  a,a
1508  87      	 add  a,a
1509  87      	 add  a,a
150A  86      	 add  a,(hl)
150B  86      	 add  a,(hl)
150C  86      	 add  a,(hl)
150D  86      	 add  a,(hl)
150E  86      	 add  a,(hl)
150F  86      	 add  a,(hl)
1510  86      	 add  a,(hl)
1511  86      	 add  a,(hl)
1512  86      	 add  a,(hl)
1513  84      	 add  a,h
1514  84      	 add  a,h
1515  84      	 add  a,h
1516  84      	 add  a,h
1517  84      	 add  a,h
1518  84      	 add  a,h
1519  84      	 add  a,h
151A  84      	 add  a,h
151B  84      	 add  a,h
151C  87      	 add  a,a
151D  87      	 add  a,a
151E  87      	 add  a,a
151F  87      	 add  a,a
1520  87      	 add  a,a
1521  87      	 add  a,a
1522  87      	 add  a,a
1523  87      	 add  a,a
1524  87      	 add  a,a
1525  86      	 add  a,(hl)
1526  86      	 add  a,(hl)
1527  86      	 add  a,(hl)
1528  86      	 add  a,(hl)
1529  86      	 add  a,(hl)
152A  86      	 add  a,(hl)
152B  86      	 add  a,(hl)
152C  86      	 add  a,(hl)
152D  86      	 add  a,(hl)
152E  84      	 add  a,h
152F  84      	 add  a,h
1530  84      	 add  a,h
1531  84      	 add  a,h
1532  84      	 add  a,h
1533  84      	 add  a,h
1534  84      	 add  a,h
1535  84      	 add  a,h
1536  84      	 add  a,h
1537  FF      	 rst  $38
1538  FF      	 rst  $38
1539  FF      	 rst  $38
153A  FF      	 rst  $38
153B  92      	 sub  d
153C  95      	 sub  l
153D  98      	 sbc  a,b
153E  93      	 sub  e
153F  96      	 sub  (hl)
1540  99      	 sbc  a,c
1541  94      	 sub  h
1542  97      	 sub  a
1543  9A      	 sbc  a,d
1544  48      	 ld   c,b
1545  4B      	 ld   c,e
1546  4E      	 ld   c,(hl)
1547  49      	 ld   c,c
1548  4C      	 ld   c,h
1549  4F      	 ld   c,a
154A  4A      	 ld   c,d
154B  4D      	 ld   c,l
154C  50      	 ld   d,b
154D  89      	 adc  a,c
154E  8C      	 adc  a,h
154F  8F      	 adc  a,a
1550  8A      	 adc  a,d
1551  8D      	 adc  a,l
1552  90      	 sub  b
1553  8B      	 adc  a,e
1554  8E      	 adc  a,(hl)
1555  91      	 sub  c
1556  80      	 add  a,b
1557  83      	 add  a,e
1558  86      	 add  a,(hl)
1559  81      	 add  a,c
155A  84      	 add  a,h
155B  87      	 add  a,a
155C  82      	 add  a,d
155D  85      	 add  a,l
155E  88      	 adc  a,b
155F  89      	 adc  a,c
1560  8C      	 adc  a,h
1561  8F      	 adc  a,a
1562  8A      	 adc  a,d
1563  8D      	 adc  a,l
1564  90      	 sub  b
1565  8B      	 adc  a,e
1566  8E      	 adc  a,(hl)
1567  91      	 sub  c
1568  92      	 sub  d
1569  95      	 sub  l
156A  98      	 sbc  a,b
156B  93      	 sub  e
156C  96      	 sub  (hl)
156D  99      	 sbc  a,c
156E  94      	 sub  h
156F  97      	 sub  a
1570  9A      	 sbc  a,d
1571  80      	 add  a,b
1572  83      	 add  a,e
1573  86      	 add  a,(hl)
1574  81      	 add  a,c
1575  84      	 add  a,h
1576  87      	 add  a,a
1577  82      	 add  a,d
1578  85      	 add  a,l
1579  88      	 adc  a,b
157A  48      	 ld   c,b
157B  4B      	 ld   c,e
157C  4E      	 ld   c,(hl)
157D  49      	 ld   c,c
157E  4C      	 ld   c,h
157F  4F      	 ld   c,a
1580  4A      	 ld   c,d
1581  4D      	 ld   c,l
1582  50      	 ld   d,b
1583  92      	 sub  d
1584  95      	 sub  l
1585  98      	 sbc  a,b
1586  93      	 sub  e
1587  96      	 sub  (hl)
1588  99      	 sbc  a,c
1589  94      	 sub  h
158A  97      	 sub  a
158B  9A      	 sbc  a,d
158C  86      	 add  a,(hl)
158D  86      	 add  a,(hl)
158E  86      	 add  a,(hl)
158F  86      	 add  a,(hl)
1590  86      	 add  a,(hl)
1591  86      	 add  a,(hl)
1592  86      	 add  a,(hl)
1593  86      	 add  a,(hl)
1594  86      	 add  a,(hl)
1595  87      	 add  a,a
1596  87      	 add  a,a
1597  87      	 add  a,a
1598  87      	 add  a,a
1599  87      	 add  a,a
159A  87      	 add  a,a
159B  87      	 add  a,a
159C  87      	 add  a,a
159D  87      	 add  a,a
159E  86      	 add  a,(hl)
159F  86      	 add  a,(hl)
15A0  86      	 add  a,(hl)
15A1  86      	 add  a,(hl)
15A2  86      	 add  a,(hl)
15A3  86      	 add  a,(hl)
15A4  86      	 add  a,(hl)
15A5  86      	 add  a,(hl)
15A6  86      	 add  a,(hl)
15A7  84      	 add  a,h
15A8  84      	 add  a,h
15A9  84      	 add  a,h
15AA  84      	 add  a,h
15AB  84      	 add  a,h
15AC  84      	 add  a,h
15AD  84      	 add  a,h
15AE  84      	 add  a,h
15AF  84      	 add  a,h
15B0  86      	 add  a,(hl)
15B1  86      	 add  a,(hl)
15B2  86      	 add  a,(hl)
15B3  86      	 add  a,(hl)
15B4  86      	 add  a,(hl)
15B5  86      	 add  a,(hl)
15B6  86      	 add  a,(hl)
15B7  86      	 add  a,(hl)
15B8  86      	 add  a,(hl)
15B9  86      	 add  a,(hl)
15BA  86      	 add  a,(hl)
15BB  86      	 add  a,(hl)
15BC  86      	 add  a,(hl)
15BD  86      	 add  a,(hl)
15BE  86      	 add  a,(hl)
15BF  86      	 add  a,(hl)
15C0  86      	 add  a,(hl)
15C1  86      	 add  a,(hl)
15C2  84      	 add  a,h
15C3  84      	 add  a,h
15C4  84      	 add  a,h
15C5  84      	 add  a,h
15C6  84      	 add  a,h
15C7  84      	 add  a,h
15C8  84      	 add  a,h
15C9  84      	 add  a,h
15CA  84      	 add  a,h
15CB  87      	 add  a,a
15CC  87      	 add  a,a
15CD  87      	 add  a,a
15CE  87      	 add  a,a
15CF  87      	 add  a,a
15D0  87      	 add  a,a
15D1  87      	 add  a,a
15D2  87      	 add  a,a
15D3  87      	 add  a,a
15D4  86      	 add  a,(hl)
15D5  86      	 add  a,(hl)
15D6  86      	 add  a,(hl)
15D7  86      	 add  a,(hl)
15D8  86      	 add  a,(hl)
15D9  86      	 add  a,(hl)
15DA  86      	 add  a,(hl)
15DB  86      	 add  a,(hl)
15DC  86      	 add  a,(hl)
15DD  FF      	 rst  $38
15DE  FF      	 rst  $38
15DF  FF      	 rst  $38
15E0  FF      	 rst  $38
15E1  89      	 adc  a,c
15E2  8C      	 adc  a,h
15E3  8F      	 adc  a,a
15E4  8A      	 adc  a,d
15E5  8D      	 adc  a,l
15E6  90      	 sub  b
15E7  8B      	 adc  a,e
15E8  8E      	 adc  a,(hl)
15E9  91      	 sub  c
15EA  92      	 sub  d
15EB  95      	 sub  l
15EC  98      	 sbc  a,b
15ED  93      	 sub  e
15EE  96      	 sub  (hl)
15EF  99      	 sbc  a,c
15F0  94      	 sub  h
15F1  97      	 sub  a
15F2  9A      	 sbc  a,d
15F3  80      	 add  a,b
15F4  83      	 add  a,e
15F5  86      	 add  a,(hl)
15F6  81      	 add  a,c
15F7  84      	 add  a,h
15F8  87      	 add  a,a
15F9  82      	 add  a,d
15FA  85      	 add  a,l
15FB  88      	 adc  a,b
15FC  48      	 ld   c,b
15FD  4B      	 ld   c,e
15FE  4E      	 ld   c,(hl)
15FF  49      	 ld   c,c
1600  4C      	 ld   c,h
1601  4F      	 ld   c,a
1602  4A      	 ld   c,d
1603  4D      	 ld   c,l
1604  50      	 ld   d,b
1605  92      	 sub  d
1606  95      	 sub  l
1607  98      	 sbc  a,b
1608  93      	 sub  e
1609  96      	 sub  (hl)
160A  99      	 sbc  a,c
160B  94      	 sub  h
160C  97      	 sub  a
160D  9A      	 sbc  a,d
160E  89      	 adc  a,c
160F  8C      	 adc  a,h
1610  8F      	 adc  a,a
1611  8A      	 adc  a,d
1612  8D      	 adc  a,l
1613  90      	 sub  b
1614  8B      	 adc  a,e
1615  8E      	 adc  a,(hl)
1616  91      	 sub  c
1617  48      	 ld   c,b
1618  4B      	 ld   c,e
1619  4E      	 ld   c,(hl)
161A  49      	 ld   c,c
161B  4C      	 ld   c,h
161C  4F      	 ld   c,a
161D  4A      	 ld   c,d
161E  4D      	 ld   c,l
161F  50      	 ld   d,b
1620  80      	 add  a,b
1621  83      	 add  a,e
1622  86      	 add  a,(hl)
1623  81      	 add  a,c
1624  84      	 add  a,h
1625  87      	 add  a,a
1626  82      	 add  a,d
1627  85      	 add  a,l
1628  88      	 adc  a,b
1629  89      	 adc  a,c
162A  8C      	 adc  a,h
162B  8F      	 adc  a,a
162C  8A      	 adc  a,d
162D  8D      	 adc  a,l
162E  90      	 sub  b
162F  8B      	 adc  a,e
1630  8E      	 adc  a,(hl)
1631  91      	 sub  c
1632  86      	 add  a,(hl)
1633  86      	 add  a,(hl)
1634  86      	 add  a,(hl)
1635  86      	 add  a,(hl)
1636  86      	 add  a,(hl)
1637  86      	 add  a,(hl)
1638  86      	 add  a,(hl)
1639  86      	 add  a,(hl)
163A  86      	 add  a,(hl)
163B  86      	 add  a,(hl)
163C  86      	 add  a,(hl)
163D  86      	 add  a,(hl)
163E  86      	 add  a,(hl)
163F  86      	 add  a,(hl)
1640  86      	 add  a,(hl)
1641  86      	 add  a,(hl)
1642  86      	 add  a,(hl)
1643  86      	 add  a,(hl)
1644  84      	 add  a,h
1645  84      	 add  a,h
1646  84      	 add  a,h
1647  84      	 add  a,h
1648  84      	 add  a,h
1649  84      	 add  a,h
164A  84      	 add  a,h
164B  84      	 add  a,h
164C  84      	 add  a,h
164D  87      	 add  a,a
164E  87      	 add  a,a
164F  87      	 add  a,a
1650  87      	 add  a,a
1651  87      	 add  a,a
1652  87      	 add  a,a
1653  87      	 add  a,a
1654  87      	 add  a,a
1655  87      	 add  a,a
1656  86      	 add  a,(hl)
1657  86      	 add  a,(hl)
1658  86      	 add  a,(hl)
1659  86      	 add  a,(hl)
165A  86      	 add  a,(hl)
165B  86      	 add  a,(hl)
165C  86      	 add  a,(hl)
165D  86      	 add  a,(hl)
165E  86      	 add  a,(hl)
165F  86      	 add  a,(hl)
1660  86      	 add  a,(hl)
1661  86      	 add  a,(hl)
1662  86      	 add  a,(hl)
1663  86      	 add  a,(hl)
1664  86      	 add  a,(hl)
1665  86      	 add  a,(hl)
1666  86      	 add  a,(hl)
1667  86      	 add  a,(hl)
1668  87      	 add  a,a
1669  87      	 add  a,a
166A  87      	 add  a,a
166B  87      	 add  a,a
166C  87      	 add  a,a
166D  87      	 add  a,a
166E  87      	 add  a,a
166F  87      	 add  a,a
1670  87      	 add  a,a
1671  84      	 add  a,h
1672  84      	 add  a,h
1673  84      	 add  a,h
1674  84      	 add  a,h
1675  84      	 add  a,h
1676  84      	 add  a,h
1677  84      	 add  a,h
1678  84      	 add  a,h
1679  84      	 add  a,h
167A  86      	 add  a,(hl)
167B  86      	 add  a,(hl)
167C  86      	 add  a,(hl)
167D  86      	 add  a,(hl)
167E  86      	 add  a,(hl)
167F  86      	 add  a,(hl)
1680  86      	 add  a,(hl)
1681  86      	 add  a,(hl)
1682  86      	 add  a,(hl)
1683  216080  	 ld   hl,$8060
1686  7E      	 ld   a,(hl)
1687  A7      	 and  a
1688  C29A16  	 jp   nz,$169A
168B  23      	 inc  hl
168C  77      	 ld   (hl),a
168D  23      	 inc  hl
168E  77      	 ld   (hl),a
168F  3E01    	 ld   a,$01
1691  326080  	 ld   ($8060),a
1694  3ED1    	 ld   a,$D1
1696  3200B8  	 ld   ($B800),a
1699  C9      	 ret
169A  23      	 inc  hl
169B  34      	 inc  (hl)
169C  7E      	 ld   a,(hl)
169D  FE06    	 cp   $06
169F  C0      	 ret  nz
16A0  3600    	 ld   (hl),$00
16A2  23      	 inc  hl
16A3  7E      	 ld   a,(hl)
16A4  34      	 inc  (hl)
16A5  FE24    	 cp   $24
16A7  D2C016  	 jp   nc,$16C0
16AA  07      	 rlca
16AB  07      	 rlca
16AC  4F      	 ld   c,a
16AD  0600    	 ld   b,$00
16AF  213117  	 ld   hl,$1731
16B2  09      	 add  hl,bc
16B3  5E      	 ld   e,(hl)
16B4  23      	 inc  hl
16B5  56      	 ld   d,(hl)
16B6  23      	 inc  hl
16B7  46      	 ld   b,(hl)
16B8  23      	 inc  hl
16B9  4E      	 ld   c,(hl)
16BA  EB      	 ex   de,hl
16BB  70      	 ld   (hl),b
16BC  CBD4    	 set  2,h
16BE  71      	 ld   (hl),c
16BF  C9      	 ret
16C0  FE37    	 cp   $37
16C2  C20617  	 jp   nz,$1706
16C5  21F592  	 ld   hl,$92F5
16C8  11F616  	 ld   de,$16F6
16CB  0610    	 ld   b,$10
16CD  0E86    	 ld   c,$86
16CF  1A      	 ld   a,(de)
16D0  77      	 ld   (hl),a
16D1  CBD4    	 set  2,h
16D3  71      	 ld   (hl),c
16D4  CB94    	 res  2,h
16D6  13      	 inc  de
16D7  C5      	 push bc
16D8  01E0FF  	 ld   bc,$FFE0
16DB  09      	 add  hl,bc
16DC  C1      	 pop  bc
16DD  10F0    	 djnz $16CF
16DF  3E8C    	 ld   a,$8C
16E1  3200B8  	 ld   ($B800),a
16E4  3E3C    	 ld   a,$3C
16E6  320D92  	 ld   ($920D),a
16E9  3C      	 inc  a
16EA  320E92  	 ld   ($920E),a
16ED  3C      	 inc  a
16EE  320F92  	 ld   ($920F),a
16F1  3C      	 inc  a
16F2  32EF91  	 ld   ($91EF),a
16F5  C9      	 ret
16F6  1F      	 rra
16F7  0E1B    	 ld   c,$1B
16F9  222415  	 ld   ($1524),hl
16FC  1E0C    	 ld   e,$0C
16FE  14      	 inc  d
16FF  222416  	 ld   ($1624),hl
1702  0A      	 ld   a,(bc)
1703  0C      	 inc  c
1704  1118FE  	 ld   de,$FE18
1707  45      	 ld   b,l
1708  CA1E17  	 jp   z,$171E
170B  FE50    	 cp   $50
170D  C0      	 ret  nz
170E  3E00    	 ld   a,$00
1710  326080  	 ld   ($8060),a
1713  3E01    	 ld   a,$01
1715  323380  	 ld   ($8033),a
1718  3EE0    	 ld   a,$E0
171A  3200B8  	 ld   ($B800),a
171D  C9      	 ret
171E  3E65    	 ld   a,$65
1720  320D92  	 ld   ($920D),a
1723  3C      	 inc  a
1724  320E92  	 ld   ($920E),a
1727  3C      	 inc  a
1728  320F92  	 ld   ($920F),a
172B  3E61    	 ld   a,$61
172D  32EF91  	 ld   ($91EF),a
1730  C9      	 ret
1731  CC9158  	 call z,$5891
1734  84      	 add  a,h
1735  2F      	 cpl
1736  92      	 sub  d
1737  6D      	 ld   l,l
1738  84      	 add  a,h
1739  CE91    	 adc  a,$91
173B  5A      	 ld   e,d
173C  84      	 add  a,h
173D  2D      	 dec  l
173E  92      	 sub  d
173F  6B      	 ld   l,e
1740  84      	 add  a,h
1741  4B      	 ld   c,e
1742  92      	 sub  d
1743  6F      	 ld   l,a
1744  84      	 add  a,h
1745  50      	 ld   d,b
1746  92      	 sub  d
1747  74      	 ld   (hl),h
1748  84      	 add  a,h
1749  D0      	 ret  nc
174A  91      	 sub  c
174B  5C      	 ld   e,h
174C  84      	 add  a,h
174D  AB      	 xor  e
174E  91      	 sub  c
174F  51      	 ld   d,c
1750  84      	 add  a,h
1751  EB      	 ex   de,hl
1752  91      	 sub  c
1753  5D      	 ld   e,l
1754  84      	 add  a,h
1755  0E92    	 ld   c,$92
1757  66      	 ld   h,(hl)
1758  84      	 add  a,h
1759  AF      	 xor  a
175A  91      	 sub  c
175B  55      	 ld   d,l
175C  84      	 add  a,h
175D  0C      	 inc  c
175E  92      	 sub  d
175F  64      	 ld   h,h
1760  84      	 add  a,h
1761  2B      	 dec  hl
1762  92      	 sub  d
1763  69      	 ld   l,c
1764  84      	 add  a,h
1765  4E      	 ld   c,(hl)
1766  92      	 sub  d
1767  72      	 ld   (hl),d
1768  84      	 add  a,h
1769  AD      	 xor  l
176A  91      	 sub  c
176B  53      	 ld   d,e
176C  84      	 add  a,h
176D  CB91    	 res  2,c
176F  57      	 ld   d,a
1770  84      	 add  a,h
1771  1092    	 djnz $1705
1773  68      	 ld   l,b
1774  84      	 add  a,h
1775  AE      	 xor  (hl)
1776  91      	 sub  c
1777  54      	 ld   d,h
1778  84      	 add  a,h
1779  B0      	 or   b
177A  91      	 sub  c
177B  56      	 ld   d,(hl)
177C  84      	 add  a,h
177D  ED      	 db   $ed
177E  91      	 sub  c
177F  5F      	 ld   e,a
1780  84      	 add  a,h
1781  CF      	 rst  $08
1782  91      	 sub  c
1783  5B      	 ld   e,e
1784  84      	 add  a,h
1785  4C      	 ld   c,h
1786  92      	 sub  d
1787  70      	 ld   (hl),b
1788  84      	 add  a,h
1789  4F      	 ld   c,a
178A  92      	 sub  d
178B  73      	 ld   (hl),e
178C  84      	 add  a,h
178D  AC      	 xor  h
178E  91      	 sub  c
178F  52      	 ld   d,d
1790  84      	 add  a,h
1791  F0      	 ret  p
1792  91      	 sub  c
1793  62      	 ld   h,d
1794  84      	 add  a,h
1795  3092    	 jr   nc,$1729
1797  6E      	 ld   l,(hl)
1798  84      	 add  a,h
1799  0B      	 dec  bc
179A  92      	 sub  d
179B  63      	 ld   h,e
179C  84      	 add  a,h
179D  EF      	 rst  $28
179E  91      	 sub  c
179F  61      	 ld   h,c
17A0  84      	 add  a,h
17A1  2C      	 inc  l
17A2  92      	 sub  d
17A3  6A      	 ld   l,d
17A4  84      	 add  a,h
17A5  CD9159  	 call $5991
17A8  84      	 add  a,h
17A9  EC915E  	 call pe,$5E91
17AC  84      	 add  a,h
17AD  2E92    	 ld   l,$92
17AF  6C      	 ld   l,h
17B0  84      	 add  a,h
17B1  0F      	 rrca
17B2  92      	 sub  d
17B3  67      	 ld   h,a
17B4  84      	 add  a,h
17B5  0D      	 dec  c
17B6  92      	 sub  d
17B7  65      	 ld   h,l
17B8  84      	 add  a,h
17B9  4D      	 ld   c,l
17BA  92      	 sub  d
17BB  71      	 ld   (hl),c
17BC  84      	 add  a,h
17BD  EE91    	 xor  $91
17BF  60      	 ld   h,b
17C0  84      	 add  a,h
17C1  3A3E80  	 ld   a,($803E)
17C4  A7      	 and  a
17C5  C2EA17  	 jp   nz,$17EA
17C8  3A1F84  	 ld   a,($841F)
17CB  FE02    	 cp   $02
17CD  CAEA17  	 jp   z,$17EA
17D0  3A1F84  	 ld   a,($841F)
17D3  FE00    	 cp   $00
17D5  CAEA17  	 jp   z,$17EA
17D8  3A8086  	 ld   a,($8680)
17DB  A7      	 and  a
17DC  C29F18  	 jp   nz,$189F
17DF  328386  	 ld   ($8683),a
17E2  3A7F86  	 ld   a,($867F)
17E5  A7      	 and  a
17E6  C8      	 ret  z
17E7  C3F817  	 jp   $17F8
17EA  218086  	 ld   hl,$8680
17ED  3E00    	 ld   a,$00
17EF  0610    	 ld   b,$10
17F1  77      	 ld   (hl),a
17F2  23      	 inc  hl
17F3  10FC    	 djnz $17F1
17F5  C38818  	 jp   $1888
17F8  3AC185  	 ld   a,($85C1)
17FB  A7      	 and  a
17FC  C0      	 ret  nz
17FD  3A0184  	 ld   a,($8401)
1800  E610    	 and  $10
1802  C8      	 ret  z
1803  CD262F  	 call $2F26
1806  11E2FF  	 ld   de,$FFE2
1809  19      	 add  hl,de
180A  7E      	 ld   a,(hl)
180B  FEF0    	 cp   $F0
180D  D8      	 ret  c
180E  3A7F86  	 ld   a,($867F)
1811  A7      	 and  a
1812  C8      	 ret  z
1813  D601    	 sub  $01
1815  327F86  	 ld   ($867F),a
1818  CD1E18  	 call $181E
181B  C35018  	 jp   $1850
181E  E5      	 push hl
181F  D5      	 push de
1820  C5      	 push bc
1821  F5      	 push af
1822  21C391  	 ld   hl,$91C3
1825  3A7F86  	 ld   a,($867F)
1828  0E06    	 ld   c,$06
182A  112000  	 ld   de,$0020
182D  A7      	 and  a
182E  CA3918  	 jp   z,$1839
1831  47      	 ld   b,a
1832  3E32    	 ld   a,$32
1834  77      	 ld   (hl),a
1835  19      	 add  hl,de
1836  0D      	 dec  c
1837  10FB    	 djnz $1834
1839  3624    	 ld   (hl),$24
183B  19      	 add  hl,de
183C  0D      	 dec  c
183D  C23918  	 jp   nz,$1839
1840  21C395  	 ld   hl,$95C3
1843  3E86    	 ld   a,$86
1845  0605    	 ld   b,$05
1847  77      	 ld   (hl),a
1848  19      	 add  hl,de
1849  10FC    	 djnz $1847
184B  F1      	 pop  af
184C  C1      	 pop  bc
184D  D1      	 pop  de
184E  E1      	 pop  hl
184F  C9      	 ret
1850  3E00    	 ld   a,$00
1852  328386  	 ld   ($8683),a
1855  328186  	 ld   ($8681),a
1858  328286  	 ld   ($8682),a
185B  328886  	 ld   ($8688),a
185E  328986  	 ld   ($8689),a
1861  328A86  	 ld   ($868A),a
1864  328B86  	 ld   ($868B),a
1867  3E01    	 ld   a,$01
1869  328086  	 ld   ($8680),a
186C  218486  	 ld   hl,$8684
186F  3A0684  	 ld   a,($8406)
1872  77      	 ld   (hl),a
1873  23      	 inc  hl
1874  3A0784  	 ld   a,($8407)
1877  77      	 ld   (hl),a
1878  23      	 inc  hl
1879  3E3C    	 ld   a,$3C
187B  77      	 ld   (hl),a
187C  23      	 inc  hl
187D  3E86    	 ld   a,$86
187F  77      	 ld   (hl),a
1880  3E85    	 ld   a,$85
1882  3200B8  	 ld   ($B800),a
1885  C38818  	 jp   $1888
1888  211C80  	 ld   hl,$801C
188B  3A8486  	 ld   a,($8684)
188E  77      	 ld   (hl),a
188F  23      	 inc  hl
1890  3A8686  	 ld   a,($8686)
1893  77      	 ld   (hl),a
1894  23      	 inc  hl
1895  3A8786  	 ld   a,($8687)
1898  77      	 ld   (hl),a
1899  23      	 inc  hl
189A  3A8586  	 ld   a,($8685)
189D  77      	 ld   (hl),a
189E  C9      	 ret
189F  3A8B86  	 ld   a,($868B)
18A2  A7      	 and  a
18A3  C2BF18  	 jp   nz,$18BF
18A6  3A8A86  	 ld   a,($868A)
18A9  FE14    	 cp   $14
18AB  CAB318  	 jp   z,$18B3
18AE  3C      	 inc  a
18AF  328A86  	 ld   ($868A),a
18B2  C9      	 ret
18B3  3A0184  	 ld   a,($8401)
18B6  E610    	 and  $10
18B8  C8      	 ret  z
18B9  3E01    	 ld   a,$01
18BB  328B86  	 ld   ($868B),a
18BE  C9      	 ret
18BF  218886  	 ld   hl,$8688
18C2  34      	 inc  (hl)
18C3  7E      	 ld   a,(hl)
18C4  FE06    	 cp   $06
18C6  D8      	 ret  c
18C7  3600    	 ld   (hl),$00
18C9  23      	 inc  hl
18CA  34      	 inc  (hl)
18CB  7E      	 ld   a,(hl)
18CC  FE01    	 cp   $01
18CE  CAE618  	 jp   z,$18E6
18D1  FE02    	 cp   $02
18D3  CAFD18  	 jp   z,$18FD
18D6  FE05    	 cp   $05
18D8  CA0019  	 jp   z,$1900
18DB  FE09    	 cp   $09
18DD  CA0D19  	 jp   z,$190D
18E0  FE0E    	 cp   $0E
18E2  CA1A19  	 jp   z,$191A
18E5  C9      	 ret
18E6  3E3E    	 ld   a,$3E
18E8  328686  	 ld   ($8686),a
18EB  3E87    	 ld   a,$87
18ED  328786  	 ld   ($8687),a
18F0  3E01    	 ld   a,$01
18F2  328386  	 ld   ($8683),a
18F5  3E88    	 ld   a,$88
18F7  3200B8  	 ld   ($B800),a
18FA  C38818  	 jp   $1888
18FD  C38818  	 jp   $1888
1900  3E3F    	 ld   a,$3F
1902  328686  	 ld   ($8686),a
1905  3E84    	 ld   a,$84
1907  328786  	 ld   ($8687),a
190A  C38818  	 jp   $1888
190D  3E3D    	 ld   a,$3D
190F  328686  	 ld   ($8686),a
1912  3E87    	 ld   a,$87
1914  328786  	 ld   ($8687),a
1917  C38818  	 jp   $1888
191A  C3EA17  	 jp   $17EA
191D  00      	 nop
191E  00      	 nop
191F  3A8386  	 ld   a,($8683)
1922  A7      	 and  a
1923  C8      	 ret  z
1924  3A00B0  	 ld   a,($B000)
1927  E680    	 and  $80
1929  C23E19  	 jp   nz,$193E
192C  3A1F84  	 ld   a,($841F)
192F  FE01    	 cp   $01
1931  C23E19  	 jp   nz,$193E
1934  3A3E80  	 ld   a,($803E)
1937  A7      	 and  a
1938  C23E19  	 jp   nz,$193E
193B  CD5119  	 call $1951
193E  CD8B19  	 call $198B
1941  CDB719  	 call $19B7
1944  CDE319  	 call $19E3
1947  CD0F1A  	 call $1A0F
194A  CD431A  	 call $1A43
194D  CD6F1A  	 call $1A6F
1950  C9      	 ret
1951  DD210080	 ld   ix,$8000
1955  FD211C80	 ld   iy,$801C
1959  216619  	 ld   hl,$1966
195C  D9      	 exx
195D  111008  	 ld   de,$0810
1960  211008  	 ld   hl,$0810
1963  C37119  	 jp   $1971
1966  3E81    	 ld   a,$81
1968  3200B8  	 ld   ($B800),a
196B  211F84  	 ld   hl,$841F
196E  3602    	 ld   (hl),$02
1970  C9      	 ret
1971  DD7E03  	 ld   a,(ix+$03)
1974  FD4603  	 ld   b,(iy+$03)
1977  94      	 sub  h
1978  B8      	 cp   b
1979  D0      	 ret  nc
197A  85      	 add  a,l
197B  B8      	 cp   b
197C  D8      	 ret  c
197D  DD7E00  	 ld   a,(ix+$00)
1980  FD4600  	 ld   b,(iy+$00)
1983  92      	 sub  d
1984  B8      	 cp   b
1985  D0      	 ret  nc
1986  83      	 add  a,e
1987  B8      	 cp   b
1988  D8      	 ret  c
1989  D9      	 exx
198A  E9      	 jp   (hl)
198B  3A0185  	 ld   a,($8501)
198E  A7      	 and  a
198F  C8      	 ret  z
1990  3A2B85  	 ld   a,($852B)
1993  A7      	 and  a
1994  C0      	 ret  nz
1995  DD211C80	 ld   ix,$801C
1999  FD210480	 ld   iy,$8004
199D  21AA19  	 ld   hl,$19AA
19A0  D9      	 exx
19A1  111C0E  	 ld   de,$0E1C
19A4  211C0E  	 ld   hl,$0E1C
19A7  C37119  	 jp   $1971
19AA  211785  	 ld   hl,$8517
19AD  3606    	 ld   (hl),$06
19AF  212B85  	 ld   hl,$852B
19B2  3601    	 ld   (hl),$01
19B4  C3381A  	 jp   $1A38
19B7  3A0385  	 ld   a,($8503)
19BA  A7      	 and  a
19BB  C8      	 ret  z
19BC  3A4B85  	 ld   a,($854B)
19BF  A7      	 and  a
19C0  C0      	 ret  nz
19C1  DD211C80	 ld   ix,$801C
19C5  FD210880	 ld   iy,$8008
19C9  21D619  	 ld   hl,$19D6
19CC  D9      	 exx
19CD  111C0E  	 ld   de,$0E1C
19D0  211C0E  	 ld   hl,$0E1C
19D3  C37119  	 jp   $1971
19D6  213785  	 ld   hl,$8537
19D9  3606    	 ld   (hl),$06
19DB  214B85  	 ld   hl,$854B
19DE  3601    	 ld   (hl),$01
19E0  C3381A  	 jp   $1A38
19E3  3A0485  	 ld   a,($8504)
19E6  A7      	 and  a
19E7  C8      	 ret  z
19E8  3A6B85  	 ld   a,($856B)
19EB  A7      	 and  a
19EC  C0      	 ret  nz
19ED  DD211C80	 ld   ix,$801C
19F1  FD210C80	 ld   iy,$800C
19F5  21021A  	 ld   hl,$1A02
19F8  D9      	 exx
19F9  111C0E  	 ld   de,$0E1C
19FC  211C0E  	 ld   hl,$0E1C
19FF  C37119  	 jp   $1971
1A02  215785  	 ld   hl,$8557
1A05  3606    	 ld   (hl),$06
1A07  216B85  	 ld   hl,$856B
1A0A  3601    	 ld   (hl),$01
1A0C  C3381A  	 jp   $1A38
1A0F  3A0785  	 ld   a,($8507)
1A12  A7      	 and  a
1A13  C8      	 ret  z
1A14  3A8B85  	 ld   a,($858B)
1A17  A7      	 and  a
1A18  C0      	 ret  nz
1A19  DD211C80	 ld   ix,$801C
1A1D  FD211080	 ld   iy,$8010
1A21  212E1A  	 ld   hl,$1A2E
1A24  D9      	 exx
1A25  111C0E  	 ld   de,$0E1C
1A28  211C0E  	 ld   hl,$0E1C
1A2B  C37119  	 jp   $1971
1A2E  217785  	 ld   hl,$8577
1A31  3606    	 ld   (hl),$06
1A33  218B85  	 ld   hl,$858B
1A36  3601    	 ld   (hl),$01
1A38  3E83    	 ld   a,$83
1A3A  3200B8  	 ld   ($B800),a
1A3D  1601    	 ld   d,$01
1A3F  CDA31A  	 call $1AA3
1A42  C9      	 ret
1A43  3A0186  	 ld   a,($8601)
1A46  A7      	 and  a
1A47  C8      	 ret  z
1A48  3A2B86  	 ld   a,($862B)
1A4B  A7      	 and  a
1A4C  C0      	 ret  nz
1A4D  DD211C80	 ld   ix,$801C
1A51  FD211480	 ld   iy,$8014
1A55  21621A  	 ld   hl,$1A62
1A58  D9      	 exx
1A59  11180C  	 ld   de,$0C18
1A5C  21180C  	 ld   hl,$0C18
1A5F  C37119  	 jp   $1971
1A62  211786  	 ld   hl,$8617
1A65  3606    	 ld   (hl),$06
1A67  212B86  	 ld   hl,$862B
1A6A  3601    	 ld   (hl),$01
1A6C  C3981A  	 jp   $1A98
1A6F  3A0386  	 ld   a,($8603)
1A72  A7      	 and  a
1A73  C8      	 ret  z
1A74  3A4B86  	 ld   a,($864B)
1A77  A7      	 and  a
1A78  C0      	 ret  nz
1A79  DD211C80	 ld   ix,$801C
1A7D  FD211880	 ld   iy,$8018
1A81  218E1A  	 ld   hl,$1A8E
1A84  D9      	 exx
1A85  11180C  	 ld   de,$0C18
1A88  21180C  	 ld   hl,$0C18
1A8B  C37119  	 jp   $1971
1A8E  213786  	 ld   hl,$8637
1A91  3606    	 ld   (hl),$06
1A93  214B86  	 ld   hl,$864B
1A96  3601    	 ld   (hl),$01
1A98  3E82    	 ld   a,$82
1A9A  3200B8  	 ld   ($B800),a
1A9D  1602    	 ld   d,$02
1A9F  CDA31A  	 call $1AA3
1AA2  C9      	 ret
1AA3  AF      	 xor  a
1AA4  214080  	 ld   hl,$8040
1AA7  3601    	 ld   (hl),$01
1AA9  0E00    	 ld   c,$00
1AAB  1E00    	 ld   e,$00
1AAD  23      	 inc  hl
1AAE  79      	 ld   a,c
1AAF  8E      	 adc  a,(hl)
1AB0  27      	 daa
1AB1  77      	 ld   (hl),a
1AB2  23      	 inc  hl
1AB3  7A      	 ld   a,d
1AB4  8E      	 adc  a,(hl)
1AB5  27      	 daa
1AB6  77      	 ld   (hl),a
1AB7  23      	 inc  hl
1AB8  7B      	 ld   a,e
1AB9  8E      	 adc  a,(hl)
1ABA  27      	 daa
1ABB  77      	 ld   (hl),a
1ABC  C9      	 ret
1ABD  216880  	 ld   hl,$8068
1AC0  7E      	 ld   a,(hl)
1AC1  A7      	 and  a
1AC2  C22E1B  	 jp   nz,$1B2E
1AC5  3601    	 ld   (hl),$01
1AC7  23      	 inc  hl
1AC8  3600    	 ld   (hl),$00
1ACA  23      	 inc  hl
1ACB  3600    	 ld   (hl),$00
1ACD  23      	 inc  hl
1ACE  3600    	 ld   (hl),$00
1AD0  23      	 inc  hl
1AD1  3600    	 ld   (hl),$00
1AD3  216590  	 ld   hl,$9065
1AD6  11271B  	 ld   de,$1B27
1AD9  0605    	 ld   b,$05
1ADB  E5      	 push hl
1ADC  1A      	 ld   a,(de)
1ADD  77      	 ld   (hl),a
1ADE  13      	 inc  de
1ADF  23      	 inc  hl
1AE0  10FA    	 djnz $1ADC
1AE2  E1      	 pop  hl
1AE3  CBD4    	 set  2,h
1AE5  0605    	 ld   b,$05
1AE7  3E84    	 ld   a,$84
1AE9  77      	 ld   (hl),a
1AEA  23      	 inc  hl
1AEB  10FC    	 djnz $1AE9
1AED  1A      	 ld   a,(de)
1AEE  214993  	 ld   hl,$9349
1AF1  77      	 ld   (hl),a
1AF2  CBD4    	 set  2,h
1AF4  3684    	 ld   (hl),$84
1AF6  13      	 inc  de
1AF7  1A      	 ld   a,(de)
1AF8  0616    	 ld   b,$16
1AFA  11E0FF  	 ld   de,$FFE0
1AFD  E5      	 push hl
1AFE  CB94    	 res  2,h
1B00  19      	 add  hl,de
1B01  77      	 ld   (hl),a
1B02  10FC    	 djnz $1B00
1B04  E1      	 pop  hl
1B05  0616    	 ld   b,$16
1B07  3E84    	 ld   a,$84
1B09  19      	 add  hl,de
1B0A  77      	 ld   (hl),a
1B0B  10FC    	 djnz $1B09
1B0D  218594  	 ld   hl,$9485
1B10  112000  	 ld   de,$0020
1B13  0604    	 ld   b,$04
1B15  0E17    	 ld   c,$17
1B17  3EF5    	 ld   a,$F5
1B19  C5      	 push bc
1B1A  E5      	 push hl
1B1B  77      	 ld   (hl),a
1B1C  23      	 inc  hl
1B1D  10FC    	 djnz $1B1B
1B1F  E1      	 pop  hl
1B20  19      	 add  hl,de
1B21  C1      	 pop  bc
1B22  0D      	 dec  c
1B23  C2191B  	 jp   nz,$1B19
1B26  C9      	 ret
1B27  40      	 ld   b,b
1B28  40      	 ld   b,b
1B29  40      	 ld   b,b
1B2A  40      	 ld   b,b
1B2B  43      	 ld   b,e
1B2C  77      	 ld   (hl),a
1B2D  41      	 ld   b,c
1B2E  23      	 inc  hl
1B2F  7E      	 ld   a,(hl)
1B30  A7      	 and  a
1B31  C27E1B  	 jp   nz,$1B7E
1B34  23      	 inc  hl
1B35  23      	 inc  hl
1B36  34      	 inc  (hl)
1B37  7E      	 ld   a,(hl)
1B38  FE05    	 cp   $05
1B3A  D8      	 ret  c
1B3B  3600    	 ld   (hl),$00
1B3D  23      	 inc  hl
1B3E  7E      	 ld   a,(hl)
1B3F  34      	 inc  (hl)
1B40  FE2A    	 cp   $2A
1B42  D25B1B  	 jp   nc,$1B5B
1B45  07      	 rlca
1B46  07      	 rlca
1B47  4F      	 ld   c,a
1B48  0600    	 ld   b,$00
1B4A  210C1C  	 ld   hl,$1C0C
1B4D  09      	 add  hl,bc
1B4E  5E      	 ld   e,(hl)
1B4F  23      	 inc  hl
1B50  56      	 ld   d,(hl)
1B51  23      	 inc  hl
1B52  46      	 ld   b,(hl)
1B53  23      	 inc  hl
1B54  4E      	 ld   c,(hl)
1B55  EB      	 ex   de,hl
1B56  70      	 ld   (hl),b
1B57  CBD4    	 set  2,h
1B59  71      	 ld   (hl),c
1B5A  C9      	 ret
1B5B  7E      	 ld   a,(hl)
1B5C  FE52    	 cp   $52
1B5E  CA721B  	 jp   z,$1B72
1B61  D62B    	 sub  $2B
1B63  FE24    	 cp   $24
1B65  D0      	 ret  nc
1B66  07      	 rlca
1B67  07      	 rlca
1B68  4F      	 ld   c,a
1B69  0600    	 ld   b,$00
1B6B  213117  	 ld   hl,$1731
1B6E  CD4D1B  	 call $1B4D
1B71  C9      	 ret
1B72  3600    	 ld   (hl),$00
1B74  2B      	 dec  hl
1B75  3600    	 ld   (hl),$00
1B77  2B      	 dec  hl
1B78  3600    	 ld   (hl),$00
1B7A  2B      	 dec  hl
1B7B  3601    	 ld   (hl),$01
1B7D  C9      	 ret
1B7E  FE01    	 cp   $01
1B80  CA9D1B  	 jp   z,$1B9D
1B83  23      	 inc  hl
1B84  23      	 inc  hl
1B85  34      	 inc  (hl)
1B86  7E      	 ld   a,(hl)
1B87  FE06    	 cp   $06
1B89  D8      	 ret  c
1B8A  3600    	 ld   (hl),$00
1B8C  23      	 inc  hl
1B8D  34      	 inc  (hl)
1B8E  7E      	 ld   a,(hl)
1B8F  FE28    	 cp   $28
1B91  D8      	 ret  c
1B92  3E00    	 ld   a,$00
1B94  326880  	 ld   ($8068),a
1B97  3E01    	 ld   a,$01
1B99  323380  	 ld   ($8033),a
1B9C  C9      	 ret
1B9D  23      	 inc  hl
1B9E  7E      	 ld   a,(hl)
1B9F  34      	 inc  (hl)
1BA0  FE10    	 cp   $10
1BA2  CABD1B  	 jp   z,$1BBD
1BA5  FE20    	 cp   $20
1BA7  CAC41B  	 jp   z,$1BC4
1BAA  FE30    	 cp   $30
1BAC  CAE41B  	 jp   z,$1BE4
1BAF  FE40    	 cp   $40
1BB1  CAEB1B  	 jp   z,$1BEB
1BB4  FE60    	 cp   $60
1BB6  C0      	 ret  nz
1BB7  3600    	 ld   (hl),$00
1BB9  2B      	 dec  hl
1BBA  3602    	 ld   (hl),$02
1BBC  C9      	 ret
1BBD  21B41C  	 ld   hl,$1CB4
1BC0  CDF21B  	 call $1BF2
1BC3  C9      	 ret
1BC4  21CC1C  	 ld   hl,$1CCC
1BC7  CDF21B  	 call $1BF2
1BCA  DD21B307	 ld   ix,$07B3
1BCE  3A2580  	 ld   a,($8025)
1BD1  07      	 rlca
1BD2  5F      	 ld   e,a
1BD3  1600    	 ld   d,$00
1BD5  DD19    	 add  ix,de
1BD7  DD7E00  	 ld   a,(ix+$00)
1BDA  32F892  	 ld   ($92F8),a
1BDD  DD7E01  	 ld   a,(ix+$01)
1BE0  32D891  	 ld   ($91D8),a
1BE3  C9      	 ret
1BE4  21E41C  	 ld   hl,$1CE4
1BE7  CDF21B  	 call $1BF2
1BEA  C9      	 ret
1BEB  21FC1C  	 ld   hl,$1CFC
1BEE  CDF21B  	 call $1BF2
1BF1  C9      	 ret
1BF2  5E      	 ld   e,(hl)
1BF3  23      	 inc  hl
1BF4  56      	 ld   d,(hl)
1BF5  23      	 inc  hl
1BF6  46      	 ld   b,(hl)
1BF7  23      	 inc  hl
1BF8  4E      	 ld   c,(hl)
1BF9  23      	 inc  hl
1BFA  EB      	 ex   de,hl
1BFB  1A      	 ld   a,(de)
1BFC  77      	 ld   (hl),a
1BFD  CBD4    	 set  2,h
1BFF  71      	 ld   (hl),c
1C00  CB94    	 res  2,h
1C02  13      	 inc  de
1C03  D5      	 push de
1C04  11E0FF  	 ld   de,$FFE0
1C07  19      	 add  hl,de
1C08  D1      	 pop  de
1C09  10F0    	 djnz $1BFB
1C0B  C9      	 ret
1C0C  2693    	 ld   h,$93
1C0E  24      	 inc  h
1C0F  F5      	 push af
1C10  0693    	 ld   b,$93
1C12  D9      	 exx
1C13  F5      	 push af
1C14  E692    	 and  $92
1C16  D7      	 rst  $10
1C17  F5      	 push af
1C18  C692    	 add  a,$92
1C1A  D5      	 push de
1C1B  F5      	 push af
1C1C  A6      	 and  (hl)
1C1D  92      	 sub  d
1C1E  D3F5    	 out  ($F5),a
1C20  86      	 add  a,(hl)
1C21  92      	 sub  d
1C22  D1      	 pop  de
1C23  F5      	 push af
1C24  66      	 ld   h,(hl)
1C25  92      	 sub  d
1C26  CF      	 rst  $08
1C27  F5      	 push af
1C28  46      	 ld   b,(hl)
1C29  92      	 sub  d
1C2A  CDF526  	 call $26F5
1C2D  92      	 sub  d
1C2E  CBF5    	 set  6,l
1C30  0692    	 ld   b,$92
1C32  C9      	 ret
1C33  F5      	 push af
1C34  E691    	 and  $91
1C36  C7      	 rst  $00
1C37  F5      	 push af
1C38  C691    	 add  a,$91
1C3A  C5      	 push bc
1C3B  F5      	 push af
1C3C  A6      	 and  (hl)
1C3D  91      	 sub  c
1C3E  C3F586  	 jp   $86F5
1C41  91      	 sub  c
1C42  C1      	 pop  bc
1C43  F5      	 push af
1C44  66      	 ld   h,(hl)
1C45  91      	 sub  c
1C46  BF      	 cp   a
1C47  F5      	 push af
1C48  46      	 ld   b,(hl)
1C49  91      	 sub  c
1C4A  BD      	 cp   l
1C4B  F5      	 push af
1C4C  2691    	 ld   h,$91
1C4E  BB      	 cp   e
1C4F  F5      	 push af
1C50  0691    	 ld   b,$91
1C52  B9      	 cp   c
1C53  F5      	 push af
1C54  E690    	 and  $90
1C56  B7      	 or   a
1C57  F5      	 push af
1C58  C690    	 add  a,$90
1C5A  B5      	 or   l
1C5B  F5      	 push af
1C5C  A6      	 and  (hl)
1C5D  90      	 sub  b
1C5E  B3      	 or   e
1C5F  F5      	 push af
1C60  27      	 daa
1C61  93      	 sub  e
1C62  24      	 inc  h
1C63  F5      	 push af
1C64  07      	 rlca
1C65  93      	 sub  e
1C66  DAF5E7  	 jp   c,$E7F5
1C69  92      	 sub  d
1C6A  D8      	 ret  c
1C6B  F5      	 push af
1C6C  C7      	 rst  $00
1C6D  92      	 sub  d
1C6E  D6F5    	 sub  $F5
1C70  A7      	 and  a
1C71  92      	 sub  d
1C72  D4F587  	 call nc,$87F5
1C75  92      	 sub  d
1C76  D2F567  	 jp   nc,$67F5
1C79  92      	 sub  d
1C7A  D0      	 ret  nc
1C7B  F5      	 push af
1C7C  47      	 ld   b,a
1C7D  92      	 sub  d
1C7E  CEF5    	 adc  a,$F5
1C80  27      	 daa
1C81  92      	 sub  d
1C82  CCF507  	 call z,$07F5
1C85  92      	 sub  d
1C86  CAF5E7  	 jp   z,$E7F5
1C89  91      	 sub  c
1C8A  C8      	 ret  z
1C8B  F5      	 push af
1C8C  C7      	 rst  $00
1C8D  91      	 sub  c
1C8E  C6F5    	 add  a,$F5
1C90  A7      	 and  a
1C91  91      	 sub  c
1C92  C4F587  	 call nz,$87F5
1C95  91      	 sub  c
1C96  C2F567  	 jp   nz,$67F5
1C99  91      	 sub  c
1C9A  C0      	 ret  nz
1C9B  F5      	 push af
1C9C  47      	 ld   b,a
1C9D  91      	 sub  c
1C9E  BE      	 cp   (hl)
1C9F  F5      	 push af
1CA0  27      	 daa
1CA1  91      	 sub  c
1CA2  BC      	 cp   h
1CA3  F5      	 push af
1CA4  07      	 rlca
1CA5  91      	 sub  c
1CA6  BA      	 cp   d
1CA7  F5      	 push af
1CA8  E7      	 rst  $20
1CA9  90      	 sub  b
1CAA  B8      	 cp   b
1CAB  F5      	 push af
1CAC  C7      	 rst  $00
1CAD  90      	 sub  b
1CAE  B6      	 or   (hl)
1CAF  F5      	 push af
1CB0  A7      	 and  a
1CB1  90      	 sub  b
1CB2  B4      	 or   h
1CB3  F5      	 push af
1CB4  3693    	 ld   (hl),$93
1CB6  14      	 inc  d
1CB7  86      	 add  a,(hl)
1CB8  24      	 inc  h
1CB9  24      	 inc  h
1CBA  24      	 inc  h
1CBB  24      	 inc  h
1CBC  12      	 ld   (de),a
1CBD  17      	 rla
1CBE  1C      	 inc  e
1CBF  0E1B    	 ld   c,$1B
1CC1  1D      	 dec  e
1CC2  24      	 inc  h
1CC3  24      	 inc  h
1CC4  0C      	 inc  c
1CC5  1812    	 jr   $1CD9
1CC7  17      	 rla
1CC8  24      	 inc  h
1CC9  24      	 inc  h
1CCA  24      	 inc  h
1CCB  24      	 inc  h
1CCC  3893    	 jr   c,$1C61
1CCE  14      	 inc  d
1CCF  82      	 add  a,d
1CD0  24      	 inc  h
1CD1  24      	 inc  h
1CD2  24      	 inc  h
1CD3  24      	 inc  h
1CD4  24      	 inc  h
1CD5  0C      	 inc  c
1CD6  1812    	 jr   $1CEA
1CD8  17      	 rla
1CD9  24      	 inc  h
1CDA  24      	 inc  h
1CDB  24      	 inc  h
1CDC  24      	 inc  h
1CDD  24      	 inc  h
1CDE  19      	 add  hl,de
1CDF  15      	 dec  d
1CE0  0A      	 ld   a,(bc)
1CE1  222424  	 ld   ($2424),hl
1CE4  3A9314  	 ld   a,($1493)
1CE7  80      	 add  a,b
1CE8  24      	 inc  h
1CE9  24      	 inc  h
1CEA  24      	 inc  h
1CEB  24      	 inc  h
1CEC  24      	 inc  h
1CED  24      	 inc  h
1CEE  24      	 inc  h
1CEF  24      	 inc  h
1CF0  24      	 inc  h
1CF1  24      	 inc  h
1CF2  24      	 inc  h
1CF3  24      	 inc  h
1CF4  24      	 inc  h
1CF5  24      	 inc  h
1CF6  24      	 inc  h
1CF7  24      	 inc  h
1CF8  24      	 inc  h
1CF9  24      	 inc  h
1CFA  24      	 inc  h
1CFB  24      	 inc  h
1CFC  7C      	 ld   a,h
1CFD  93      	 sub  e
1CFE  1886    	 jr   $1C86
1D00  2824    	 jr   z,$1D26
1D02  1D      	 dec  e
1D03  0A      	 ld   a,(bc)
1D04  12      	 ld   (de),a
1D05  1D      	 dec  e
1D06  1824    	 jr   $1D2C
1D08  0C      	 inc  c
1D09  181B    	 jr   $1D26
1D0B  19      	 add  hl,de
1D0C  181B    	 jr   $1D29
1D0E  0A      	 ld   a,(bc)
1D0F  1D      	 dec  e
1D10  12      	 ld   (de),a
1D11  1817    	 jr   $1D2A
1D13  24      	 inc  h
1D14  010908  	 ld   bc,$0809
1D17  02      	 ld   (bc),a
1D18  3A0181  	 ld   a,($8101)
1D1B  E603    	 and  $03
1D1D  CA2F1D  	 jp   z,$1D2F
1D20  FE01    	 cp   $01
1D22  CA381D  	 jp   z,$1D38
1D25  FE02    	 cp   $02
1D27  CA411D  	 jp   z,$1D41
1D2A  FE03    	 cp   $03
1D2C  CA4A1D  	 jp   z,$1D4A
1D2F  3E83    	 ld   a,$83
1D31  119E1D  	 ld   de,$1D9E
1D34  CD531D  	 call $1D53
1D37  C9      	 ret
1D38  3E83    	 ld   a,$83
1D3A  11AE20  	 ld   de,$20AE
1D3D  CD531D  	 call $1D53
1D40  C9      	 ret
1D41  3E83    	 ld   a,$83
1D43  11BE23  	 ld   de,$23BE
1D46  CD531D  	 call $1D53
1D49  C9      	 ret
1D4A  3E83    	 ld   a,$83
1D4C  11CE26  	 ld   de,$26CE
1D4F  CD531D  	 call $1D53
1D52  C9      	 ret
1D53  214390  	 ld   hl,$9043
1D56  061C    	 ld   b,$1C
1D58  0E1C    	 ld   c,$1C
1D5A  08      	 ex   af,af'
1D5B  CD6D1D  	 call $1D6D
1D5E  08      	 ex   af,af'
1D5F  112000  	 ld   de,$0020
1D62  214394  	 ld   hl,$9443
1D65  061C    	 ld   b,$1C
1D67  0E1C    	 ld   c,$1C
1D69  CD911D  	 call $1D91
1D6C  C9      	 ret
1D6D  C5      	 push bc
1D6E  E5      	 push hl
1D6F  1A      	 ld   a,(de)
1D70  77      	 ld   (hl),a
1D71  23      	 inc  hl
1D72  13      	 inc  de
1D73  10FA    	 djnz $1D6F
1D75  E1      	 pop  hl
1D76  012000  	 ld   bc,$0020
1D79  09      	 add  hl,bc
1D7A  C1      	 pop  bc
1D7B  0D      	 dec  c
1D7C  20EF    	 jr   nz,$1D6D
1D7E  C9      	 ret
1D7F  C5      	 push bc
1D80  E5      	 push hl
1D81  1A      	 ld   a,(de)
1D82  77      	 ld   (hl),a
1D83  13      	 inc  de
1D84  23      	 inc  hl
1D85  10FA    	 djnz $1D81
1D87  E1      	 pop  hl
1D88  01E0FF  	 ld   bc,$FFE0
1D8B  09      	 add  hl,bc
1D8C  C1      	 pop  bc
1D8D  0D      	 dec  c
1D8E  20EF    	 jr   nz,$1D7F
1D90  C9      	 ret
1D91  C5      	 push bc
1D92  E5      	 push hl
1D93  77      	 ld   (hl),a
1D94  23      	 inc  hl
1D95  10FC    	 djnz $1D93
1D97  E1      	 pop  hl
1D98  19      	 add  hl,de
1D99  C1      	 pop  bc
1D9A  0D      	 dec  c
1D9B  20F4    	 jr   nz,$1D91
1D9D  C9      	 ret
1D9E  25      	 dec  h
1D9F  25      	 dec  h
1DA0  25      	 dec  h
1DA1  25      	 dec  h
1DA2  25      	 dec  h
1DA3  25      	 dec  h
1DA4  25      	 dec  h
1DA5  25      	 dec  h
1DA6  25      	 dec  h
1DA7  25      	 dec  h
1DA8  25      	 dec  h
1DA9  25      	 dec  h
1DAA  25      	 dec  h
1DAB  25      	 dec  h
1DAC  25      	 dec  h
1DAD  25      	 dec  h
1DAE  25      	 dec  h
1DAF  25      	 dec  h
1DB0  25      	 dec  h
1DB1  25      	 dec  h
1DB2  25      	 dec  h
1DB3  25      	 dec  h
1DB4  25      	 dec  h
1DB5  25      	 dec  h
1DB6  25      	 dec  h
1DB7  25      	 dec  h
1DB8  25      	 dec  h
1DB9  25      	 dec  h
1DBA  25      	 dec  h
1DBB  25      	 dec  h
1DBC  25      	 dec  h
1DBD  25      	 dec  h
1DBE  25      	 dec  h
1DBF  25      	 dec  h
1DC0  25      	 dec  h
1DC1  25      	 dec  h
1DC2  25      	 dec  h
1DC3  25      	 dec  h
1DC4  25      	 dec  h
1DC5  25      	 dec  h
1DC6  25      	 dec  h
1DC7  25      	 dec  h
1DC8  25      	 dec  h
1DC9  25      	 dec  h
1DCA  25      	 dec  h
1DCB  25      	 dec  h
1DCC  25      	 dec  h
1DCD  25      	 dec  h
1DCE  25      	 dec  h
1DCF  25      	 dec  h
1DD0  25      	 dec  h
1DD1  25      	 dec  h
1DD2  25      	 dec  h
1DD3  25      	 dec  h
1DD4  25      	 dec  h
1DD5  25      	 dec  h
1DD6  25      	 dec  h
1DD7  25      	 dec  h
1DD8  25      	 dec  h
1DD9  F5      	 push af
1DDA  F5      	 push af
1DDB  F5      	 push af
1DDC  F5      	 push af
1DDD  F5      	 push af
1DDE  F5      	 push af
1DDF  F5      	 push af
1DE0  F5      	 push af
1DE1  F5      	 push af
1DE2  F5      	 push af
1DE3  F5      	 push af
1DE4  F5      	 push af
1DE5  F5      	 push af
1DE6  F5      	 push af
1DE7  F5      	 push af
1DE8  F5      	 push af
1DE9  F5      	 push af
1DEA  F5      	 push af
1DEB  F5      	 push af
1DEC  F5      	 push af
1DED  F5      	 push af
1DEE  F5      	 push af
1DEF  F5      	 push af
1DF0  F5      	 push af
1DF1  F42525  	 call p,$2525
1DF4  25      	 dec  h
1DF5  F42525  	 call p,$2525
1DF8  25      	 dec  h
1DF9  F42525  	 call p,$2525
1DFC  25      	 dec  h
1DFD  25      	 dec  h
1DFE  25      	 dec  h
1DFF  25      	 dec  h
1E00  25      	 dec  h
1E01  F42525  	 call p,$2525
1E04  25      	 dec  h
1E05  25      	 dec  h
1E06  25      	 dec  h
1E07  25      	 dec  h
1E08  25      	 dec  h
1E09  F42525  	 call p,$2525
1E0C  25      	 dec  h
1E0D  F42525  	 call p,$2525
1E10  25      	 dec  h
1E11  F42525  	 call p,$2525
1E14  25      	 dec  h
1E15  F42525  	 call p,$2525
1E18  25      	 dec  h
1E19  25      	 dec  h
1E1A  25      	 dec  h
1E1B  25      	 dec  h
1E1C  25      	 dec  h
1E1D  F42525  	 call p,$2525
1E20  25      	 dec  h
1E21  25      	 dec  h
1E22  25      	 dec  h
1E23  25      	 dec  h
1E24  25      	 dec  h
1E25  F42525  	 call p,$2525
1E28  25      	 dec  h
1E29  F42525  	 call p,$2525
1E2C  25      	 dec  h
1E2D  F42525  	 call p,$2525
1E30  25      	 dec  h
1E31  F42525  	 call p,$2525
1E34  25      	 dec  h
1E35  25      	 dec  h
1E36  25      	 dec  h
1E37  25      	 dec  h
1E38  25      	 dec  h
1E39  F42525  	 call p,$2525
1E3C  25      	 dec  h
1E3D  25      	 dec  h
1E3E  25      	 dec  h
1E3F  25      	 dec  h
1E40  25      	 dec  h
1E41  F42525  	 call p,$2525
1E44  25      	 dec  h
1E45  F42525  	 call p,$2525
1E48  25      	 dec  h
1E49  F5      	 push af
1E4A  F5      	 push af
1E4B  F5      	 push af
1E4C  F5      	 push af
1E4D  F43535  	 call p,$3535
1E50  35      	 dec  (hl)
1E51  35      	 dec  (hl)
1E52  25      	 dec  h
1E53  25      	 dec  h
1E54  25      	 dec  h
1E55  F43535  	 call p,$3535
1E58  35      	 dec  (hl)
1E59  35      	 dec  (hl)
1E5A  25      	 dec  h
1E5B  25      	 dec  h
1E5C  25      	 dec  h
1E5D  F5      	 push af
1E5E  F5      	 push af
1E5F  F5      	 push af
1E60  F5      	 push af
1E61  F42525  	 call p,$2525
1E64  25      	 dec  h
1E65  F42525  	 call p,$2525
1E68  25      	 dec  h
1E69  F625    	 or   $25
1E6B  37      	 scf
1E6C  3835    	 jr   c,$1EA3
1E6E  25      	 dec  h
1E6F  25      	 dec  h
1E70  25      	 dec  h
1E71  F625    	 or   $25
1E73  37      	 scf
1E74  3835    	 jr   c,$1EAB
1E76  25      	 dec  h
1E77  25      	 dec  h
1E78  25      	 dec  h
1E79  F42525  	 call p,$2525
1E7C  25      	 dec  h
1E7D  25      	 dec  h
1E7E  25      	 dec  h
1E7F  25      	 dec  h
1E80  25      	 dec  h
1E81  F42525  	 call p,$2525
1E84  25      	 dec  h
1E85  FC2537  	 call m,$3725
1E88  3835    	 jr   c,$1EBF
1E8A  25      	 dec  h
1E8B  25      	 dec  h
1E8C  25      	 dec  h
1E8D  FC2537  	 call m,$3725
1E90  3835    	 jr   c,$1EC7
1E92  25      	 dec  h
1E93  25      	 dec  h
1E94  25      	 dec  h
1E95  F42525  	 call p,$2525
1E98  25      	 dec  h
1E99  25      	 dec  h
1E9A  25      	 dec  h
1E9B  25      	 dec  h
1E9C  25      	 dec  h
1E9D  F42525  	 call p,$2525
1EA0  25      	 dec  h
1EA1  F625    	 or   $25
1EA3  37      	 scf
1EA4  3835    	 jr   c,$1EDB
1EA6  25      	 dec  h
1EA7  25      	 dec  h
1EA8  25      	 dec  h
1EA9  F625    	 or   $25
1EAB  37      	 scf
1EAC  3835    	 jr   c,$1EE3
1EAE  25      	 dec  h
1EAF  25      	 dec  h
1EB0  25      	 dec  h
1EB1  F42525  	 call p,$2525
1EB4  25      	 dec  h
1EB5  25      	 dec  h
1EB6  25      	 dec  h
1EB7  25      	 dec  h
1EB8  25      	 dec  h
1EB9  F5      	 push af
1EBA  F5      	 push af
1EBB  F5      	 push af
1EBC  F5      	 push af
1EBD  F43535  	 call p,$3535
1EC0  35      	 dec  (hl)
1EC1  35      	 dec  (hl)
1EC2  25      	 dec  h
1EC3  25      	 dec  h
1EC4  25      	 dec  h
1EC5  F43535  	 call p,$3535
1EC8  35      	 dec  (hl)
1EC9  35      	 dec  (hl)
1ECA  25      	 dec  h
1ECB  25      	 dec  h
1ECC  25      	 dec  h
1ECD  F43636  	 call p,$3636
1ED0  3636    	 ld   (hl),$36
1ED2  25      	 dec  h
1ED3  25      	 dec  h
1ED4  25      	 dec  h
1ED5  25      	 dec  h
1ED6  25      	 dec  h
1ED7  25      	 dec  h
1ED8  25      	 dec  h
1ED9  F42525  	 call p,$2525
1EDC  25      	 dec  h
1EDD  25      	 dec  h
1EDE  25      	 dec  h
1EDF  25      	 dec  h
1EE0  25      	 dec  h
1EE1  F42525  	 call p,$2525
1EE4  25      	 dec  h
1EE5  25      	 dec  h
1EE6  25      	 dec  h
1EE7  25      	 dec  h
1EE8  25      	 dec  h
1EE9  F42525  	 call p,$2525
1EEC  25      	 dec  h
1EED  3625    	 ld   (hl),$25
1EEF  25      	 dec  h
1EF0  25      	 dec  h
1EF1  25      	 dec  h
1EF2  25      	 dec  h
1EF3  25      	 dec  h
1EF4  25      	 dec  h
1EF5  F42525  	 call p,$2525
1EF8  25      	 dec  h
1EF9  25      	 dec  h
1EFA  25      	 dec  h
1EFB  25      	 dec  h
1EFC  25      	 dec  h
1EFD  F42525  	 call p,$2525
1F00  25      	 dec  h
1F01  25      	 dec  h
1F02  25      	 dec  h
1F03  25      	 dec  h
1F04  25      	 dec  h
1F05  F9      	 ld   sp,hl
1F06  25      	 dec  h
1F07  25      	 dec  h
1F08  25      	 dec  h
1F09  3625    	 ld   (hl),$25
1F0B  25      	 dec  h
1F0C  25      	 dec  h
1F0D  25      	 dec  h
1F0E  25      	 dec  h
1F0F  25      	 dec  h
1F10  25      	 dec  h
1F11  F42525  	 call p,$2525
1F14  25      	 dec  h
1F15  25      	 dec  h
1F16  25      	 dec  h
1F17  25      	 dec  h
1F18  25      	 dec  h
1F19  F42525  	 call p,$2525
1F1C  25      	 dec  h
1F1D  25      	 dec  h
1F1E  25      	 dec  h
1F1F  25      	 dec  h
1F20  25      	 dec  h
1F21  F42525  	 call p,$2525
1F24  25      	 dec  h
1F25  3625    	 ld   (hl),$25
1F27  25      	 dec  h
1F28  25      	 dec  h
1F29  25      	 dec  h
1F2A  25      	 dec  h
1F2B  25      	 dec  h
1F2C  25      	 dec  h
1F2D  F5      	 push af
1F2E  F5      	 push af
1F2F  F5      	 push af
1F30  F5      	 push af
1F31  F5      	 push af
1F32  F5      	 push af
1F33  F5      	 push af
1F34  F5      	 push af
1F35  F5      	 push af
1F36  F5      	 push af
1F37  F5      	 push af
1F38  F5      	 push af
1F39  F5      	 push af
1F3A  F5      	 push af
1F3B  F5      	 push af
1F3C  F5      	 push af
1F3D  F43636  	 call p,$3636
1F40  3636    	 ld   (hl),$36
1F42  25      	 dec  h
1F43  25      	 dec  h
1F44  25      	 dec  h
1F45  FD25    	 dec  iyh
1F47  25      	 dec  h
1F48  25      	 dec  h
1F49  F42525  	 call p,$2525
1F4C  25      	 dec  h
1F4D  25      	 dec  h
1F4E  25      	 dec  h
1F4F  25      	 dec  h
1F50  25      	 dec  h
1F51  F42525  	 call p,$2525
1F54  25      	 dec  h
1F55  F42525  	 call p,$2525
1F58  25      	 dec  h
1F59  F42525  	 call p,$2525
1F5C  25      	 dec  h
1F5D  25      	 dec  h
1F5E  25      	 dec  h
1F5F  25      	 dec  h
1F60  25      	 dec  h
1F61  FF      	 rst  $38
1F62  25      	 dec  h
1F63  25      	 dec  h
1F64  25      	 dec  h
1F65  F42525  	 call p,$2525
1F68  25      	 dec  h
1F69  25      	 dec  h
1F6A  25      	 dec  h
1F6B  25      	 dec  h
1F6C  25      	 dec  h
1F6D  F42525  	 call p,$2525
1F70  25      	 dec  h
1F71  F42525  	 call p,$2525
1F74  25      	 dec  h
1F75  F42525  	 call p,$2525
1F78  25      	 dec  h
1F79  25      	 dec  h
1F7A  25      	 dec  h
1F7B  25      	 dec  h
1F7C  25      	 dec  h
1F7D  FD25    	 dec  iyh
1F7F  25      	 dec  h
1F80  25      	 dec  h
1F81  F42525  	 call p,$2525
1F84  25      	 dec  h
1F85  25      	 dec  h
1F86  25      	 dec  h
1F87  25      	 dec  h
1F88  25      	 dec  h
1F89  F42525  	 call p,$2525
1F8C  25      	 dec  h
1F8D  F42525  	 call p,$2525
1F90  25      	 dec  h
1F91  F42525  	 call p,$2525
1F94  25      	 dec  h
1F95  25      	 dec  h
1F96  25      	 dec  h
1F97  25      	 dec  h
1F98  25      	 dec  h
1F99  F5      	 push af
1F9A  F5      	 push af
1F9B  F5      	 push af
1F9C  F5      	 push af
1F9D  F43535  	 call p,$3535
1FA0  35      	 dec  (hl)
1FA1  35      	 dec  (hl)
1FA2  25      	 dec  h
1FA3  25      	 dec  h
1FA4  25      	 dec  h
1FA5  F5      	 push af
1FA6  F5      	 push af
1FA7  F5      	 push af
1FA8  F5      	 push af
1FA9  F5      	 push af
1FAA  F5      	 push af
1FAB  F5      	 push af
1FAC  F5      	 push af
1FAD  F5      	 push af
1FAE  F5      	 push af
1FAF  F5      	 push af
1FB0  F5      	 push af
1FB1  F42525  	 call p,$2525
1FB4  25      	 dec  h
1FB5  F42525  	 call p,$2525
1FB8  25      	 dec  h
1FB9  F625    	 or   $25
1FBB  37      	 scf
1FBC  3835    	 jr   c,$1FF3
1FBE  25      	 dec  h
1FBF  25      	 dec  h
1FC0  25      	 dec  h
1FC1  F42525  	 call p,$2525
1FC4  25      	 dec  h
1FC5  FD25    	 dec  iyh
1FC7  25      	 dec  h
1FC8  25      	 dec  h
1FC9  F42525  	 call p,$2525
1FCC  25      	 dec  h
1FCD  F42525  	 call p,$2525
1FD0  25      	 dec  h
1FD1  F42525  	 call p,$2525
1FD4  25      	 dec  h
1FD5  FC2537  	 call m,$3725
1FD8  3835    	 jr   c,$200F
1FDA  25      	 dec  h
1FDB  25      	 dec  h
1FDC  25      	 dec  h
1FDD  F42525  	 call p,$2525
1FE0  25      	 dec  h
1FE1  FF      	 rst  $38
1FE2  25      	 dec  h
1FE3  25      	 dec  h
1FE4  25      	 dec  h
1FE5  F42525  	 call p,$2525
1FE8  25      	 dec  h
1FE9  F42525  	 call p,$2525
1FEC  25      	 dec  h
1FED  F42525  	 call p,$2525
1FF0  25      	 dec  h
1FF1  F625    	 or   $25
1FF3  37      	 scf
1FF4  3835    	 jr   c,$202B
1FF6  25      	 dec  h
1FF7  25      	 dec  h
1FF8  25      	 dec  h
1FF9  F42525  	 call p,$2525
1FFC  25      	 dec  h
1FFD  FD25    	 dec  iyh
1FFF  25      	 dec  h
2000  25      	 dec  h
2001  F42525  	 call p,$2525
2004  25      	 dec  h
2005  F42525  	 call p,$2525
2008  25      	 dec  h
2009  F5      	 push af
200A  F5      	 push af
200B  F5      	 push af
200C  F5      	 push af
200D  F43535  	 call p,$3535
2010  35      	 dec  (hl)
2011  35      	 dec  (hl)
2012  25      	 dec  h
2013  25      	 dec  h
2014  25      	 dec  h
2015  F42525  	 call p,$2525
2018  25      	 dec  h
2019  25      	 dec  h
201A  25      	 dec  h
201B  25      	 dec  h
201C  25      	 dec  h
201D  F5      	 push af
201E  F5      	 push af
201F  F5      	 push af
2020  F5      	 push af
2021  F42525  	 call p,$2525
2024  25      	 dec  h
2025  F42525  	 call p,$2525
2028  25      	 dec  h
2029  F42525  	 call p,$2525
202C  25      	 dec  h
202D  25      	 dec  h
202E  25      	 dec  h
202F  25      	 dec  h
2030  25      	 dec  h
2031  F42525  	 call p,$2525
2034  25      	 dec  h
2035  25      	 dec  h
2036  25      	 dec  h
2037  25      	 dec  h
2038  25      	 dec  h
2039  F42525  	 call p,$2525
203C  25      	 dec  h
203D  F42525  	 call p,$2525
2040  25      	 dec  h
2041  F42525  	 call p,$2525
2044  25      	 dec  h
2045  F42525  	 call p,$2525
2048  25      	 dec  h
2049  25      	 dec  h
204A  25      	 dec  h
204B  25      	 dec  h
204C  25      	 dec  h
204D  F42525  	 call p,$2525
2050  25      	 dec  h
2051  25      	 dec  h
2052  25      	 dec  h
2053  25      	 dec  h
2054  25      	 dec  h
2055  F42525  	 call p,$2525
2058  25      	 dec  h
2059  F42525  	 call p,$2525
205C  25      	 dec  h
205D  F42525  	 call p,$2525
2060  25      	 dec  h
2061  F42525  	 call p,$2525
2064  25      	 dec  h
2065  25      	 dec  h
2066  25      	 dec  h
2067  25      	 dec  h
2068  25      	 dec  h
2069  F42525  	 call p,$2525
206C  25      	 dec  h
206D  25      	 dec  h
206E  25      	 dec  h
206F  25      	 dec  h
2070  25      	 dec  h
2071  F42525  	 call p,$2525
2074  25      	 dec  h
2075  F42525  	 call p,$2525
2078  25      	 dec  h
2079  F5      	 push af
207A  F5      	 push af
207B  F5      	 push af
207C  F5      	 push af
207D  F5      	 push af
207E  F5      	 push af
207F  F5      	 push af
2080  F5      	 push af
2081  F5      	 push af
2082  F5      	 push af
2083  F5      	 push af
2084  F5      	 push af
2085  F5      	 push af
2086  F5      	 push af
2087  F5      	 push af
2088  F5      	 push af
2089  F5      	 push af
208A  F5      	 push af
208B  F5      	 push af
208C  F5      	 push af
208D  F5      	 push af
208E  F5      	 push af
208F  F5      	 push af
2090  F5      	 push af
2091  F42525  	 call p,$2525
2094  25      	 dec  h
2095  25      	 dec  h
2096  25      	 dec  h
2097  25      	 dec  h
2098  25      	 dec  h
2099  25      	 dec  h
209A  25      	 dec  h
209B  25      	 dec  h
209C  25      	 dec  h
209D  25      	 dec  h
209E  25      	 dec  h
209F  25      	 dec  h
20A0  25      	 dec  h
20A1  25      	 dec  h
20A2  25      	 dec  h
20A3  25      	 dec  h
20A4  25      	 dec  h
20A5  25      	 dec  h
20A6  25      	 dec  h
20A7  25      	 dec  h
20A8  25      	 dec  h
20A9  25      	 dec  h
20AA  25      	 dec  h
20AB  25      	 dec  h
20AC  25      	 dec  h
20AD  25      	 dec  h
20AE  25      	 dec  h
20AF  25      	 dec  h
20B0  25      	 dec  h
20B1  25      	 dec  h
20B2  25      	 dec  h
20B3  25      	 dec  h
20B4  25      	 dec  h
20B5  25      	 dec  h
20B6  25      	 dec  h
20B7  25      	 dec  h
20B8  25      	 dec  h
20B9  25      	 dec  h
20BA  25      	 dec  h
20BB  25      	 dec  h
20BC  25      	 dec  h
20BD  25      	 dec  h
20BE  25      	 dec  h
20BF  25      	 dec  h
20C0  25      	 dec  h
20C1  25      	 dec  h
20C2  25      	 dec  h
20C3  25      	 dec  h
20C4  25      	 dec  h
20C5  25      	 dec  h
20C6  25      	 dec  h
20C7  25      	 dec  h
20C8  25      	 dec  h
20C9  25      	 dec  h
20CA  25      	 dec  h
20CB  25      	 dec  h
20CC  25      	 dec  h
20CD  25      	 dec  h
20CE  25      	 dec  h
20CF  25      	 dec  h
20D0  25      	 dec  h
20D1  25      	 dec  h
20D2  25      	 dec  h
20D3  25      	 dec  h
20D4  25      	 dec  h
20D5  25      	 dec  h
20D6  25      	 dec  h
20D7  25      	 dec  h
20D8  25      	 dec  h
20D9  25      	 dec  h
20DA  25      	 dec  h
20DB  25      	 dec  h
20DC  25      	 dec  h
20DD  25      	 dec  h
20DE  25      	 dec  h
20DF  25      	 dec  h
20E0  25      	 dec  h
20E1  25      	 dec  h
20E2  25      	 dec  h
20E3  25      	 dec  h
20E4  25      	 dec  h
20E5  25      	 dec  h
20E6  25      	 dec  h
20E7  25      	 dec  h
20E8  25      	 dec  h
20E9  F5      	 push af
20EA  F5      	 push af
20EB  F5      	 push af
20EC  F5      	 push af
20ED  F42525  	 call p,$2525
20F0  25      	 dec  h
20F1  F5      	 push af
20F2  F5      	 push af
20F3  F5      	 push af
20F4  F5      	 push af
20F5  F5      	 push af
20F6  F5      	 push af
20F7  F5      	 push af
20F8  F5      	 push af
20F9  F5      	 push af
20FA  F5      	 push af
20FB  F5      	 push af
20FC  F5      	 push af
20FD  F5      	 push af
20FE  F5      	 push af
20FF  F5      	 push af
2100  F5      	 push af
2101  F42525  	 call p,$2525
2104  25      	 dec  h
2105  F42525  	 call p,$2525
2108  25      	 dec  h
2109  F42525  	 call p,$2525
210C  25      	 dec  h
210D  F42525  	 call p,$2525
2110  25      	 dec  h
2111  25      	 dec  h
2112  25      	 dec  h
2113  25      	 dec  h
2114  25      	 dec  h
2115  FD25    	 dec  iyh
2117  25      	 dec  h
2118  25      	 dec  h
2119  F42525  	 call p,$2525
211C  25      	 dec  h
211D  F42525  	 call p,$2525
2120  25      	 dec  h
2121  F42525  	 call p,$2525
2124  25      	 dec  h
2125  F42525  	 call p,$2525
2128  25      	 dec  h
2129  F42525  	 call p,$2525
212C  25      	 dec  h
212D  25      	 dec  h
212E  25      	 dec  h
212F  25      	 dec  h
2130  25      	 dec  h
2131  FF      	 rst  $38
2132  25      	 dec  h
2133  25      	 dec  h
2134  25      	 dec  h
2135  F42525  	 call p,$2525
2138  25      	 dec  h
2139  F42525  	 call p,$2525
213C  25      	 dec  h
213D  F42525  	 call p,$2525
2140  25      	 dec  h
2141  F42525  	 call p,$2525
2144  25      	 dec  h
2145  F42525  	 call p,$2525
2148  25      	 dec  h
2149  25      	 dec  h
214A  25      	 dec  h
214B  25      	 dec  h
214C  25      	 dec  h
214D  FD25    	 dec  iyh
214F  25      	 dec  h
2150  25      	 dec  h
2151  F42525  	 call p,$2525
2154  25      	 dec  h
2155  F42525  	 call p,$2525
2158  25      	 dec  h
2159  F5      	 push af
215A  F5      	 push af
215B  F5      	 push af
215C  F5      	 push af
215D  F5      	 push af
215E  F5      	 push af
215F  F5      	 push af
2160  F5      	 push af
2161  F43535  	 call p,$3535
2164  35      	 dec  (hl)
2165  35      	 dec  (hl)
2166  25      	 dec  h
2167  25      	 dec  h
2168  25      	 dec  h
2169  25      	 dec  h
216A  25      	 dec  h
216B  25      	 dec  h
216C  25      	 dec  h
216D  F5      	 push af
216E  F5      	 push af
216F  F5      	 push af
2170  F5      	 push af
2171  F42525  	 call p,$2525
2174  25      	 dec  h
2175  25      	 dec  h
2176  25      	 dec  h
2177  25      	 dec  h
2178  25      	 dec  h
2179  F42525  	 call p,$2525
217C  25      	 dec  h
217D  F625    	 or   $25
217F  37      	 scf
2180  3835    	 jr   c,$21B7
2182  25      	 dec  h
2183  25      	 dec  h
2184  25      	 dec  h
2185  25      	 dec  h
2186  25      	 dec  h
2187  25      	 dec  h
2188  25      	 dec  h
2189  F42525  	 call p,$2525
218C  25      	 dec  h
218D  25      	 dec  h
218E  25      	 dec  h
218F  25      	 dec  h
2190  25      	 dec  h
2191  25      	 dec  h
2192  25      	 dec  h
2193  25      	 dec  h
2194  25      	 dec  h
2195  F42525  	 call p,$2525
2198  25      	 dec  h
2199  FC2537  	 call m,$3725
219C  3835    	 jr   c,$21D3
219E  25      	 dec  h
219F  25      	 dec  h
21A0  25      	 dec  h
21A1  25      	 dec  h
21A2  25      	 dec  h
21A3  25      	 dec  h
21A4  25      	 dec  h
21A5  F42525  	 call p,$2525
21A8  25      	 dec  h
21A9  25      	 dec  h
21AA  25      	 dec  h
21AB  25      	 dec  h
21AC  25      	 dec  h
21AD  25      	 dec  h
21AE  25      	 dec  h
21AF  25      	 dec  h
21B0  25      	 dec  h
21B1  F42525  	 call p,$2525
21B4  25      	 dec  h
21B5  F625    	 or   $25
21B7  37      	 scf
21B8  3835    	 jr   c,$21EF
21BA  25      	 dec  h
21BB  25      	 dec  h
21BC  25      	 dec  h
21BD  25      	 dec  h
21BE  25      	 dec  h
21BF  25      	 dec  h
21C0  25      	 dec  h
21C1  F42525  	 call p,$2525
21C4  25      	 dec  h
21C5  25      	 dec  h
21C6  25      	 dec  h
21C7  25      	 dec  h
21C8  25      	 dec  h
21C9  25      	 dec  h
21CA  25      	 dec  h
21CB  25      	 dec  h
21CC  25      	 dec  h
21CD  F5      	 push af
21CE  F5      	 push af
21CF  F5      	 push af
21D0  F5      	 push af
21D1  F43535  	 call p,$3535
21D4  35      	 dec  (hl)
21D5  35      	 dec  (hl)
21D6  25      	 dec  h
21D7  25      	 dec  h
21D8  25      	 dec  h
21D9  F5      	 push af
21DA  F5      	 push af
21DB  F5      	 push af
21DC  F5      	 push af
21DD  F43636  	 call p,$3636
21E0  3636    	 ld   (hl),$36
21E2  25      	 dec  h
21E3  25      	 dec  h
21E4  25      	 dec  h
21E5  FD25    	 dec  iyh
21E7  25      	 dec  h
21E8  25      	 dec  h
21E9  F42525  	 call p,$2525
21EC  25      	 dec  h
21ED  F42525  	 call p,$2525
21F0  25      	 dec  h
21F1  25      	 dec  h
21F2  25      	 dec  h
21F3  25      	 dec  h
21F4  25      	 dec  h
21F5  F42525  	 call p,$2525
21F8  25      	 dec  h
21F9  F42525  	 call p,$2525
21FC  25      	 dec  h
21FD  3625    	 ld   (hl),$25
21FF  25      	 dec  h
2200  25      	 dec  h
2201  FF      	 rst  $38
2202  25      	 dec  h
2203  25      	 dec  h
2204  25      	 dec  h
2205  F42525  	 call p,$2525
2208  25      	 dec  h
2209  F42525  	 call p,$2525
220C  25      	 dec  h
220D  25      	 dec  h
220E  25      	 dec  h
220F  25      	 dec  h
2210  25      	 dec  h
2211  F42525  	 call p,$2525
2214  25      	 dec  h
2215  F9      	 ld   sp,hl
2216  25      	 dec  h
2217  25      	 dec  h
2218  25      	 dec  h
2219  3625    	 ld   (hl),$25
221B  25      	 dec  h
221C  25      	 dec  h
221D  FD25    	 dec  iyh
221F  25      	 dec  h
2220  25      	 dec  h
2221  F42525  	 call p,$2525
2224  25      	 dec  h
2225  F42525  	 call p,$2525
2228  25      	 dec  h
2229  25      	 dec  h
222A  25      	 dec  h
222B  25      	 dec  h
222C  25      	 dec  h
222D  F42525  	 call p,$2525
2230  25      	 dec  h
2231  F42525  	 call p,$2525
2234  25      	 dec  h
2235  3625    	 ld   (hl),$25
2237  25      	 dec  h
2238  25      	 dec  h
2239  F5      	 push af
223A  F5      	 push af
223B  F5      	 push af
223C  F5      	 push af
223D  F5      	 push af
223E  F5      	 push af
223F  F5      	 push af
2240  F5      	 push af
2241  F5      	 push af
2242  F5      	 push af
2243  F5      	 push af
2244  F5      	 push af
2245  F5      	 push af
2246  F5      	 push af
2247  F5      	 push af
2248  F5      	 push af
2249  F5      	 push af
224A  F5      	 push af
224B  F5      	 push af
224C  F5      	 push af
224D  F43636  	 call p,$3636
2250  3636    	 ld   (hl),$36
2252  25      	 dec  h
2253  25      	 dec  h
2254  25      	 dec  h
2255  F42525  	 call p,$2525
2258  25      	 dec  h
2259  F42525  	 call p,$2525
225C  25      	 dec  h
225D  25      	 dec  h
225E  25      	 dec  h
225F  25      	 dec  h
2260  25      	 dec  h
2261  F42525  	 call p,$2525
2264  25      	 dec  h
2265  25      	 dec  h
2266  25      	 dec  h
2267  25      	 dec  h
2268  25      	 dec  h
2269  F42525  	 call p,$2525
226C  25      	 dec  h
226D  25      	 dec  h
226E  25      	 dec  h
226F  25      	 dec  h
2270  25      	 dec  h
2271  F42525  	 call p,$2525
2274  25      	 dec  h
2275  F42525  	 call p,$2525
2278  25      	 dec  h
2279  25      	 dec  h
227A  25      	 dec  h
227B  25      	 dec  h
227C  25      	 dec  h
227D  F42525  	 call p,$2525
2280  25      	 dec  h
2281  25      	 dec  h
2282  25      	 dec  h
2283  25      	 dec  h
2284  25      	 dec  h
2285  F42525  	 call p,$2525
2288  25      	 dec  h
2289  25      	 dec  h
228A  25      	 dec  h
228B  25      	 dec  h
228C  25      	 dec  h
228D  F42525  	 call p,$2525
2290  25      	 dec  h
2291  F42525  	 call p,$2525
2294  25      	 dec  h
2295  25      	 dec  h
2296  25      	 dec  h
2297  25      	 dec  h
2298  25      	 dec  h
2299  F42525  	 call p,$2525
229C  25      	 dec  h
229D  25      	 dec  h
229E  25      	 dec  h
229F  25      	 dec  h
22A0  25      	 dec  h
22A1  F42525  	 call p,$2525
22A4  25      	 dec  h
22A5  25      	 dec  h
22A6  25      	 dec  h
22A7  25      	 dec  h
22A8  25      	 dec  h
22A9  F5      	 push af
22AA  F5      	 push af
22AB  F5      	 push af
22AC  F5      	 push af
22AD  F43535  	 call p,$3535
22B0  35      	 dec  (hl)
22B1  35      	 dec  (hl)
22B2  25      	 dec  h
22B3  25      	 dec  h
22B4  25      	 dec  h
22B5  F43535  	 call p,$3535
22B8  35      	 dec  (hl)
22B9  35      	 dec  (hl)
22BA  25      	 dec  h
22BB  25      	 dec  h
22BC  25      	 dec  h
22BD  F5      	 push af
22BE  F5      	 push af
22BF  F5      	 push af
22C0  F5      	 push af
22C1  F42525  	 call p,$2525
22C4  25      	 dec  h
22C5  F42525  	 call p,$2525
22C8  25      	 dec  h
22C9  F625    	 or   $25
22CB  37      	 scf
22CC  3835    	 jr   c,$2303
22CE  25      	 dec  h
22CF  25      	 dec  h
22D0  25      	 dec  h
22D1  F625    	 or   $25
22D3  37      	 scf
22D4  3835    	 jr   c,$230B
22D6  25      	 dec  h
22D7  25      	 dec  h
22D8  25      	 dec  h
22D9  F42525  	 call p,$2525
22DC  25      	 dec  h
22DD  F42525  	 call p,$2525
22E0  25      	 dec  h
22E1  F42525  	 call p,$2525
22E4  25      	 dec  h
22E5  FC2537  	 call m,$3725
22E8  3835    	 jr   c,$231F
22EA  25      	 dec  h
22EB  25      	 dec  h
22EC  25      	 dec  h
22ED  FC2537  	 call m,$3725
22F0  3835    	 jr   c,$2327
22F2  25      	 dec  h
22F3  25      	 dec  h
22F4  25      	 dec  h
22F5  F42525  	 call p,$2525
22F8  25      	 dec  h
22F9  F42525  	 call p,$2525
22FC  25      	 dec  h
22FD  F42525  	 call p,$2525
2300  25      	 dec  h
2301  F625    	 or   $25
2303  37      	 scf
2304  3835    	 jr   c,$233B
2306  25      	 dec  h
2307  25      	 dec  h
2308  25      	 dec  h
2309  F625    	 or   $25
230B  37      	 scf
230C  3835    	 jr   c,$2343
230E  25      	 dec  h
230F  25      	 dec  h
2310  25      	 dec  h
2311  F42525  	 call p,$2525
2314  25      	 dec  h
2315  F42525  	 call p,$2525
2318  25      	 dec  h
2319  F5      	 push af
231A  F5      	 push af
231B  F5      	 push af
231C  F5      	 push af
231D  F43535  	 call p,$3535
2320  35      	 dec  (hl)
2321  35      	 dec  (hl)
2322  25      	 dec  h
2323  25      	 dec  h
2324  25      	 dec  h
2325  F43535  	 call p,$3535
2328  35      	 dec  (hl)
2329  35      	 dec  (hl)
232A  25      	 dec  h
232B  25      	 dec  h
232C  25      	 dec  h
232D  F5      	 push af
232E  F5      	 push af
232F  F5      	 push af
2330  F5      	 push af
2331  F42525  	 call p,$2525
2334  25      	 dec  h
2335  F42525  	 call p,$2525
2338  25      	 dec  h
2339  F42525  	 call p,$2525
233C  25      	 dec  h
233D  25      	 dec  h
233E  25      	 dec  h
233F  25      	 dec  h
2340  25      	 dec  h
2341  F42525  	 call p,$2525
2344  25      	 dec  h
2345  25      	 dec  h
2346  25      	 dec  h
2347  25      	 dec  h
2348  25      	 dec  h
2349  F42525  	 call p,$2525
234C  25      	 dec  h
234D  F42525  	 call p,$2525
2350  25      	 dec  h
2351  F42525  	 call p,$2525
2354  25      	 dec  h
2355  F42525  	 call p,$2525
2358  25      	 dec  h
2359  25      	 dec  h
235A  25      	 dec  h
235B  25      	 dec  h
235C  25      	 dec  h
235D  F42525  	 call p,$2525
2360  25      	 dec  h
2361  25      	 dec  h
2362  25      	 dec  h
2363  25      	 dec  h
2364  25      	 dec  h
2365  F42525  	 call p,$2525
2368  25      	 dec  h
2369  F42525  	 call p,$2525
236C  25      	 dec  h
236D  F42525  	 call p,$2525
2370  25      	 dec  h
2371  F42525  	 call p,$2525
2374  25      	 dec  h
2375  25      	 dec  h
2376  25      	 dec  h
2377  25      	 dec  h
2378  25      	 dec  h
2379  F42525  	 call p,$2525
237C  25      	 dec  h
237D  25      	 dec  h
237E  25      	 dec  h
237F  25      	 dec  h
2380  25      	 dec  h
2381  F42525  	 call p,$2525
2384  25      	 dec  h
2385  F42525  	 call p,$2525
2388  25      	 dec  h
2389  F5      	 push af
238A  F5      	 push af
238B  F5      	 push af
238C  F5      	 push af
238D  F5      	 push af
238E  F5      	 push af
238F  F5      	 push af
2390  F5      	 push af
2391  F5      	 push af
2392  F5      	 push af
2393  F5      	 push af
2394  F5      	 push af
2395  F5      	 push af
2396  F5      	 push af
2397  F5      	 push af
2398  F5      	 push af
2399  F5      	 push af
239A  F5      	 push af
239B  F5      	 push af
239C  F5      	 push af
239D  F5      	 push af
239E  F5      	 push af
239F  F5      	 push af
23A0  F5      	 push af
23A1  F42525  	 call p,$2525
23A4  25      	 dec  h
23A5  25      	 dec  h
23A6  25      	 dec  h
23A7  25      	 dec  h
23A8  25      	 dec  h
23A9  25      	 dec  h
23AA  25      	 dec  h
23AB  25      	 dec  h
23AC  25      	 dec  h
23AD  25      	 dec  h
23AE  25      	 dec  h
23AF  25      	 dec  h
23B0  25      	 dec  h
23B1  25      	 dec  h
23B2  25      	 dec  h
23B3  25      	 dec  h
23B4  25      	 dec  h
23B5  25      	 dec  h
23B6  25      	 dec  h
23B7  25      	 dec  h
23B8  25      	 dec  h
23B9  25      	 dec  h
23BA  25      	 dec  h
23BB  25      	 dec  h
23BC  25      	 dec  h
23BD  25      	 dec  h
23BE  25      	 dec  h
23BF  25      	 dec  h
23C0  25      	 dec  h
23C1  25      	 dec  h
23C2  25      	 dec  h
23C3  25      	 dec  h
23C4  25      	 dec  h
23C5  25      	 dec  h
23C6  25      	 dec  h
23C7  25      	 dec  h
23C8  25      	 dec  h
23C9  25      	 dec  h
23CA  25      	 dec  h
23CB  25      	 dec  h
23CC  25      	 dec  h
23CD  25      	 dec  h
23CE  25      	 dec  h
23CF  25      	 dec  h
23D0  25      	 dec  h
23D1  25      	 dec  h
23D2  25      	 dec  h
23D3  25      	 dec  h
23D4  25      	 dec  h
23D5  25      	 dec  h
23D6  25      	 dec  h
23D7  25      	 dec  h
23D8  25      	 dec  h
23D9  25      	 dec  h
23DA  25      	 dec  h
23DB  25      	 dec  h
23DC  25      	 dec  h
23DD  25      	 dec  h
23DE  25      	 dec  h
23DF  25      	 dec  h
23E0  25      	 dec  h
23E1  25      	 dec  h
23E2  25      	 dec  h
23E3  25      	 dec  h
23E4  25      	 dec  h
23E5  25      	 dec  h
23E6  25      	 dec  h
23E7  25      	 dec  h
23E8  25      	 dec  h
23E9  25      	 dec  h
23EA  25      	 dec  h
23EB  25      	 dec  h
23EC  25      	 dec  h
23ED  25      	 dec  h
23EE  25      	 dec  h
23EF  25      	 dec  h
23F0  25      	 dec  h
23F1  25      	 dec  h
23F2  25      	 dec  h
23F3  25      	 dec  h
23F4  25      	 dec  h
23F5  25      	 dec  h
23F6  25      	 dec  h
23F7  25      	 dec  h
23F8  25      	 dec  h
23F9  F5      	 push af
23FA  F5      	 push af
23FB  F5      	 push af
23FC  F5      	 push af
23FD  F5      	 push af
23FE  F5      	 push af
23FF  F5      	 push af
2400  F5      	 push af
2401  F5      	 push af
2402  F5      	 push af
2403  F5      	 push af
2404  F5      	 push af
2405  F5      	 push af
2406  F5      	 push af
2407  F5      	 push af
2408  F5      	 push af
2409  F5      	 push af
240A  F5      	 push af
240B  F5      	 push af
240C  F5      	 push af
240D  F5      	 push af
240E  F5      	 push af
240F  F5      	 push af
2410  F5      	 push af
2411  F42525  	 call p,$2525
2414  25      	 dec  h
2415  F42525  	 call p,$2525
2418  25      	 dec  h
2419  F42525  	 call p,$2525
241C  25      	 dec  h
241D  F42525  	 call p,$2525
2420  25      	 dec  h
2421  F42525  	 call p,$2525
2424  25      	 dec  h
2425  25      	 dec  h
2426  25      	 dec  h
2427  25      	 dec  h
2428  25      	 dec  h
2429  F42525  	 call p,$2525
242C  25      	 dec  h
242D  F42525  	 call p,$2525
2430  25      	 dec  h
2431  F42525  	 call p,$2525
2434  25      	 dec  h
2435  F42525  	 call p,$2525
2438  25      	 dec  h
2439  F42525  	 call p,$2525
243C  25      	 dec  h
243D  F42525  	 call p,$2525
2440  25      	 dec  h
2441  25      	 dec  h
2442  25      	 dec  h
2443  25      	 dec  h
2444  25      	 dec  h
2445  F42525  	 call p,$2525
2448  25      	 dec  h
2449  F42525  	 call p,$2525
244C  25      	 dec  h
244D  F42525  	 call p,$2525
2450  25      	 dec  h
2451  F42525  	 call p,$2525
2454  25      	 dec  h
2455  F42525  	 call p,$2525
2458  25      	 dec  h
2459  F42525  	 call p,$2525
245C  25      	 dec  h
245D  25      	 dec  h
245E  25      	 dec  h
245F  25      	 dec  h
2460  25      	 dec  h
2461  F42525  	 call p,$2525
2464  25      	 dec  h
2465  F42525  	 call p,$2525
2468  25      	 dec  h
2469  F5      	 push af
246A  F5      	 push af
246B  F5      	 push af
246C  F5      	 push af
246D  F5      	 push af
246E  F5      	 push af
246F  F5      	 push af
2470  F5      	 push af
2471  F5      	 push af
2472  F5      	 push af
2473  F5      	 push af
2474  F5      	 push af
2475  F43535  	 call p,$3535
2478  35      	 dec  (hl)
2479  35      	 dec  (hl)
247A  25      	 dec  h
247B  25      	 dec  h
247C  25      	 dec  h
247D  F5      	 push af
247E  F5      	 push af
247F  F5      	 push af
2480  F5      	 push af
2481  F42525  	 call p,$2525
2484  25      	 dec  h
2485  F42525  	 call p,$2525
2488  25      	 dec  h
2489  25      	 dec  h
248A  25      	 dec  h
248B  25      	 dec  h
248C  25      	 dec  h
248D  F42525  	 call p,$2525
2490  25      	 dec  h
2491  F625    	 or   $25
2493  37      	 scf
2494  3835    	 jr   c,$24CB
2496  25      	 dec  h
2497  25      	 dec  h
2498  25      	 dec  h
2499  F42525  	 call p,$2525
249C  25      	 dec  h
249D  25      	 dec  h
249E  25      	 dec  h
249F  25      	 dec  h
24A0  25      	 dec  h
24A1  F42525  	 call p,$2525
24A4  25      	 dec  h
24A5  25      	 dec  h
24A6  25      	 dec  h
24A7  25      	 dec  h
24A8  25      	 dec  h
24A9  F42525  	 call p,$2525
24AC  25      	 dec  h
24AD  FC2537  	 call m,$3725
24B0  3835    	 jr   c,$24E7
24B2  25      	 dec  h
24B3  25      	 dec  h
24B4  25      	 dec  h
24B5  F42525  	 call p,$2525
24B8  25      	 dec  h
24B9  25      	 dec  h
24BA  25      	 dec  h
24BB  25      	 dec  h
24BC  25      	 dec  h
24BD  F42525  	 call p,$2525
24C0  25      	 dec  h
24C1  25      	 dec  h
24C2  25      	 dec  h
24C3  25      	 dec  h
24C4  25      	 dec  h
24C5  F42525  	 call p,$2525
24C8  25      	 dec  h
24C9  F625    	 or   $25
24CB  37      	 scf
24CC  3835    	 jr   c,$2503
24CE  25      	 dec  h
24CF  25      	 dec  h
24D0  25      	 dec  h
24D1  F42525  	 call p,$2525
24D4  25      	 dec  h
24D5  25      	 dec  h
24D6  25      	 dec  h
24D7  25      	 dec  h
24D8  25      	 dec  h
24D9  F43535  	 call p,$3535
24DC  35      	 dec  (hl)
24DD  35      	 dec  (hl)
24DE  25      	 dec  h
24DF  25      	 dec  h
24E0  25      	 dec  h
24E1  F42525  	 call p,$2525
24E4  25      	 dec  h
24E5  F43535  	 call p,$3535
24E8  35      	 dec  (hl)
24E9  35      	 dec  (hl)
24EA  25      	 dec  h
24EB  25      	 dec  h
24EC  25      	 dec  h
24ED  F43636  	 call p,$3636
24F0  3636    	 ld   (hl),$36
24F2  25      	 dec  h
24F3  25      	 dec  h
24F4  25      	 dec  h
24F5  F625    	 or   $25
24F7  37      	 scf
24F8  3835    	 jr   c,$252F
24FA  25      	 dec  h
24FB  25      	 dec  h
24FC  25      	 dec  h
24FD  F42525  	 call p,$2525
2500  25      	 dec  h
2501  F42525  	 call p,$2525
2504  25      	 dec  h
2505  25      	 dec  h
2506  25      	 dec  h
2507  25      	 dec  h
2508  25      	 dec  h
2509  F42525  	 call p,$2525
250C  25      	 dec  h
250D  3625    	 ld   (hl),$25
250F  25      	 dec  h
2510  25      	 dec  h
2511  FC2537  	 call m,$3725
2514  3835    	 jr   c,$254B
2516  25      	 dec  h
2517  25      	 dec  h
2518  25      	 dec  h
2519  F42525  	 call p,$2525
251C  25      	 dec  h
251D  F42525  	 call p,$2525
2520  25      	 dec  h
2521  25      	 dec  h
2522  25      	 dec  h
2523  25      	 dec  h
2524  25      	 dec  h
2525  F9      	 ld   sp,hl
2526  25      	 dec  h
2527  25      	 dec  h
2528  25      	 dec  h
2529  3625    	 ld   (hl),$25
252B  25      	 dec  h
252C  25      	 dec  h
252D  F625    	 or   $25
252F  37      	 scf
2530  3835    	 jr   c,$2567
2532  25      	 dec  h
2533  25      	 dec  h
2534  25      	 dec  h
2535  F42525  	 call p,$2525
2538  25      	 dec  h
2539  F42525  	 call p,$2525
253C  25      	 dec  h
253D  25      	 dec  h
253E  25      	 dec  h
253F  25      	 dec  h
2540  25      	 dec  h
2541  F42525  	 call p,$2525
2544  25      	 dec  h
2545  3625    	 ld   (hl),$25
2547  25      	 dec  h
2548  25      	 dec  h
2549  F43535  	 call p,$3535
254C  35      	 dec  (hl)
254D  35      	 dec  (hl)
254E  25      	 dec  h
254F  25      	 dec  h
2550  25      	 dec  h
2551  F5      	 push af
2552  F5      	 push af
2553  F5      	 push af
2554  F5      	 push af
2555  F5      	 push af
2556  F5      	 push af
2557  F5      	 push af
2558  F5      	 push af
2559  F5      	 push af
255A  F5      	 push af
255B  F5      	 push af
255C  F5      	 push af
255D  F43636  	 call p,$3636
2560  3636    	 ld   (hl),$36
2562  25      	 dec  h
2563  25      	 dec  h
2564  25      	 dec  h
2565  F42525  	 call p,$2525
2568  25      	 dec  h
2569  25      	 dec  h
256A  25      	 dec  h
256B  25      	 dec  h
256C  25      	 dec  h
256D  F42525  	 call p,$2525
2570  25      	 dec  h
2571  25      	 dec  h
2572  25      	 dec  h
2573  25      	 dec  h
2574  25      	 dec  h
2575  FD25    	 dec  iyh
2577  25      	 dec  h
2578  25      	 dec  h
2579  F42525  	 call p,$2525
257C  25      	 dec  h
257D  25      	 dec  h
257E  25      	 dec  h
257F  25      	 dec  h
2580  25      	 dec  h
2581  F42525  	 call p,$2525
2584  25      	 dec  h
2585  25      	 dec  h
2586  25      	 dec  h
2587  25      	 dec  h
2588  25      	 dec  h
2589  F42525  	 call p,$2525
258C  25      	 dec  h
258D  25      	 dec  h
258E  25      	 dec  h
258F  25      	 dec  h
2590  25      	 dec  h
2591  FF      	 rst  $38
2592  25      	 dec  h
2593  25      	 dec  h
2594  25      	 dec  h
2595  F42525  	 call p,$2525
2598  25      	 dec  h
2599  25      	 dec  h
259A  25      	 dec  h
259B  25      	 dec  h
259C  25      	 dec  h
259D  F42525  	 call p,$2525
25A0  25      	 dec  h
25A1  25      	 dec  h
25A2  25      	 dec  h
25A3  25      	 dec  h
25A4  25      	 dec  h
25A5  F42525  	 call p,$2525
25A8  25      	 dec  h
25A9  25      	 dec  h
25AA  25      	 dec  h
25AB  25      	 dec  h
25AC  25      	 dec  h
25AD  FD25    	 dec  iyh
25AF  25      	 dec  h
25B0  25      	 dec  h
25B1  F42525  	 call p,$2525
25B4  25      	 dec  h
25B5  25      	 dec  h
25B6  25      	 dec  h
25B7  25      	 dec  h
25B8  25      	 dec  h
25B9  F5      	 push af
25BA  F5      	 push af
25BB  F5      	 push af
25BC  F5      	 push af
25BD  F5      	 push af
25BE  F5      	 push af
25BF  F5      	 push af
25C0  F5      	 push af
25C1  F43535  	 call p,$3535
25C4  35      	 dec  (hl)
25C5  35      	 dec  (hl)
25C6  25      	 dec  h
25C7  25      	 dec  h
25C8  25      	 dec  h
25C9  25      	 dec  h
25CA  25      	 dec  h
25CB  25      	 dec  h
25CC  25      	 dec  h
25CD  F5      	 push af
25CE  F5      	 push af
25CF  F5      	 push af
25D0  F5      	 push af
25D1  F42525  	 call p,$2525
25D4  25      	 dec  h
25D5  25      	 dec  h
25D6  25      	 dec  h
25D7  25      	 dec  h
25D8  25      	 dec  h
25D9  F42525  	 call p,$2525
25DC  25      	 dec  h
25DD  F625    	 or   $25
25DF  37      	 scf
25E0  3835    	 jr   c,$2617
25E2  25      	 dec  h
25E3  25      	 dec  h
25E4  25      	 dec  h
25E5  25      	 dec  h
25E6  25      	 dec  h
25E7  25      	 dec  h
25E8  25      	 dec  h
25E9  F42525  	 call p,$2525
25EC  25      	 dec  h
25ED  F42525  	 call p,$2525
25F0  25      	 dec  h
25F1  25      	 dec  h
25F2  25      	 dec  h
25F3  25      	 dec  h
25F4  25      	 dec  h
25F5  F42525  	 call p,$2525
25F8  25      	 dec  h
25F9  FC2537  	 call m,$3725
25FC  3835    	 jr   c,$2633
25FE  25      	 dec  h
25FF  25      	 dec  h
2600  25      	 dec  h
2601  25      	 dec  h
2602  25      	 dec  h
2603  25      	 dec  h
2604  25      	 dec  h
2605  F42525  	 call p,$2525
2608  25      	 dec  h
2609  F42525  	 call p,$2525
260C  25      	 dec  h
260D  25      	 dec  h
260E  25      	 dec  h
260F  25      	 dec  h
2610  25      	 dec  h
2611  F42525  	 call p,$2525
2614  25      	 dec  h
2615  F625    	 or   $25
2617  37      	 scf
2618  3835    	 jr   c,$264F
261A  25      	 dec  h
261B  25      	 dec  h
261C  25      	 dec  h
261D  25      	 dec  h
261E  25      	 dec  h
261F  25      	 dec  h
2620  25      	 dec  h
2621  F42525  	 call p,$2525
2624  25      	 dec  h
2625  F42525  	 call p,$2525
2628  25      	 dec  h
2629  25      	 dec  h
262A  25      	 dec  h
262B  25      	 dec  h
262C  25      	 dec  h
262D  F5      	 push af
262E  F5      	 push af
262F  F5      	 push af
2630  F5      	 push af
2631  F43535  	 call p,$3535
2634  35      	 dec  (hl)
2635  35      	 dec  (hl)
2636  25      	 dec  h
2637  25      	 dec  h
2638  25      	 dec  h
2639  F5      	 push af
263A  F5      	 push af
263B  F5      	 push af
263C  F5      	 push af
263D  F5      	 push af
263E  F5      	 push af
263F  F5      	 push af
2640  F5      	 push af
2641  F42525  	 call p,$2525
2644  25      	 dec  h
2645  FD25    	 dec  iyh
2647  25      	 dec  h
2648  25      	 dec  h
2649  F42525  	 call p,$2525
264C  25      	 dec  h
264D  F42525  	 call p,$2525
2650  25      	 dec  h
2651  25      	 dec  h
2652  25      	 dec  h
2653  25      	 dec  h
2654  25      	 dec  h
2655  F42525  	 call p,$2525
2658  25      	 dec  h
2659  F42525  	 call p,$2525
265C  25      	 dec  h
265D  F42525  	 call p,$2525
2660  25      	 dec  h
2661  FF      	 rst  $38
2662  25      	 dec  h
2663  25      	 dec  h
2664  25      	 dec  h
2665  F42525  	 call p,$2525
2668  25      	 dec  h
2669  F42525  	 call p,$2525
266C  25      	 dec  h
266D  25      	 dec  h
266E  25      	 dec  h
266F  25      	 dec  h
2670  25      	 dec  h
2671  F42525  	 call p,$2525
2674  25      	 dec  h
2675  F42525  	 call p,$2525
2678  25      	 dec  h
2679  F42525  	 call p,$2525
267C  25      	 dec  h
267D  FD25    	 dec  iyh
267F  25      	 dec  h
2680  25      	 dec  h
2681  F42525  	 call p,$2525
2684  25      	 dec  h
2685  F42525  	 call p,$2525
2688  25      	 dec  h
2689  25      	 dec  h
268A  25      	 dec  h
268B  25      	 dec  h
268C  25      	 dec  h
268D  F42525  	 call p,$2525
2690  25      	 dec  h
2691  F42525  	 call p,$2525
2694  25      	 dec  h
2695  F42525  	 call p,$2525
2698  25      	 dec  h
2699  F5      	 push af
269A  F5      	 push af
269B  F5      	 push af
269C  F5      	 push af
269D  F5      	 push af
269E  F5      	 push af
269F  F5      	 push af
26A0  F5      	 push af
26A1  F5      	 push af
26A2  F5      	 push af
26A3  F5      	 push af
26A4  F5      	 push af
26A5  F5      	 push af
26A6  F5      	 push af
26A7  F5      	 push af
26A8  F5      	 push af
26A9  F5      	 push af
26AA  F5      	 push af
26AB  F5      	 push af
26AC  F5      	 push af
26AD  F5      	 push af
26AE  F5      	 push af
26AF  F5      	 push af
26B0  F5      	 push af
26B1  F42525  	 call p,$2525
26B4  25      	 dec  h
26B5  25      	 dec  h
26B6  25      	 dec  h
26B7  25      	 dec  h
26B8  25      	 dec  h
26B9  25      	 dec  h
26BA  25      	 dec  h
26BB  25      	 dec  h
26BC  25      	 dec  h
26BD  25      	 dec  h
26BE  25      	 dec  h
26BF  25      	 dec  h
26C0  25      	 dec  h
26C1  25      	 dec  h
26C2  25      	 dec  h
26C3  25      	 dec  h
26C4  25      	 dec  h
26C5  25      	 dec  h
26C6  25      	 dec  h
26C7  25      	 dec  h
26C8  25      	 dec  h
26C9  25      	 dec  h
26CA  25      	 dec  h
26CB  25      	 dec  h
26CC  25      	 dec  h
26CD  25      	 dec  h
26CE  25      	 dec  h
26CF  25      	 dec  h
26D0  25      	 dec  h
26D1  25      	 dec  h
26D2  25      	 dec  h
26D3  25      	 dec  h
26D4  25      	 dec  h
26D5  25      	 dec  h
26D6  25      	 dec  h
26D7  25      	 dec  h
26D8  25      	 dec  h
26D9  25      	 dec  h
26DA  25      	 dec  h
26DB  25      	 dec  h
26DC  25      	 dec  h
26DD  25      	 dec  h
26DE  25      	 dec  h
26DF  25      	 dec  h
26E0  25      	 dec  h
26E1  25      	 dec  h
26E2  25      	 dec  h
26E3  25      	 dec  h
26E4  25      	 dec  h
26E5  25      	 dec  h
26E6  25      	 dec  h
26E7  25      	 dec  h
26E8  25      	 dec  h
26E9  25      	 dec  h
26EA  25      	 dec  h
26EB  25      	 dec  h
26EC  25      	 dec  h
26ED  25      	 dec  h
26EE  25      	 dec  h
26EF  25      	 dec  h
26F0  25      	 dec  h
26F1  25      	 dec  h
26F2  25      	 dec  h
26F3  25      	 dec  h
26F4  25      	 dec  h
26F5  25      	 dec  h
26F6  25      	 dec  h
26F7  25      	 dec  h
26F8  25      	 dec  h
26F9  25      	 dec  h
26FA  25      	 dec  h
26FB  25      	 dec  h
26FC  25      	 dec  h
26FD  25      	 dec  h
26FE  25      	 dec  h
26FF  25      	 dec  h
2700  25      	 dec  h
2701  25      	 dec  h
2702  25      	 dec  h
2703  25      	 dec  h
2704  25      	 dec  h
2705  25      	 dec  h
2706  25      	 dec  h
2707  25      	 dec  h
2708  25      	 dec  h
2709  F5      	 push af
270A  F5      	 push af
270B  F5      	 push af
270C  F5      	 push af
270D  F5      	 push af
270E  F5      	 push af
270F  F5      	 push af
2710  F5      	 push af
2711  F5      	 push af
2712  F5      	 push af
2713  F5      	 push af
2714  F5      	 push af
2715  F5      	 push af
2716  F5      	 push af
2717  F5      	 push af
2718  F5      	 push af
2719  F5      	 push af
271A  F5      	 push af
271B  F5      	 push af
271C  F5      	 push af
271D  F5      	 push af
271E  F5      	 push af
271F  F5      	 push af
2720  F5      	 push af
2721  F42525  	 call p,$2525
2724  25      	 dec  h
2725  F42525  	 call p,$2525
2728  25      	 dec  h
2729  F42525  	 call p,$2525
272C  25      	 dec  h
272D  F42525  	 call p,$2525
2730  25      	 dec  h
2731  F42525  	 call p,$2525
2734  25      	 dec  h
2735  F42525  	 call p,$2525
2738  25      	 dec  h
2739  F42525  	 call p,$2525
273C  25      	 dec  h
273D  F42525  	 call p,$2525
2740  25      	 dec  h
2741  F42525  	 call p,$2525
2744  25      	 dec  h
2745  F42525  	 call p,$2525
2748  25      	 dec  h
2749  F42525  	 call p,$2525
274C  25      	 dec  h
274D  F42525  	 call p,$2525
2750  25      	 dec  h
2751  F42525  	 call p,$2525
2754  25      	 dec  h
2755  F42525  	 call p,$2525
2758  25      	 dec  h
2759  F42525  	 call p,$2525
275C  25      	 dec  h
275D  F42525  	 call p,$2525
2760  25      	 dec  h
2761  F42525  	 call p,$2525
2764  25      	 dec  h
2765  F42525  	 call p,$2525
2768  25      	 dec  h
2769  F42525  	 call p,$2525
276C  25      	 dec  h
276D  F42525  	 call p,$2525
2770  25      	 dec  h
2771  F42525  	 call p,$2525
2774  25      	 dec  h
2775  F42525  	 call p,$2525
2778  25      	 dec  h
2779  F5      	 push af
277A  F5      	 push af
277B  F5      	 push af
277C  F5      	 push af
277D  F5      	 push af
277E  F5      	 push af
277F  F5      	 push af
2780  F5      	 push af
2781  F5      	 push af
2782  F5      	 push af
2783  F5      	 push af
2784  F5      	 push af
2785  F5      	 push af
2786  F5      	 push af
2787  F5      	 push af
2788  F5      	 push af
2789  F5      	 push af
278A  F5      	 push af
278B  F5      	 push af
278C  F5      	 push af
278D  F5      	 push af
278E  F5      	 push af
278F  F5      	 push af
2790  F5      	 push af
2791  F42525  	 call p,$2525
2794  25      	 dec  h
2795  F42525  	 call p,$2525
2798  25      	 dec  h
2799  F42525  	 call p,$2525
279C  25      	 dec  h
279D  25      	 dec  h
279E  25      	 dec  h
279F  25      	 dec  h
27A0  25      	 dec  h
27A1  F42525  	 call p,$2525
27A4  25      	 dec  h
27A5  F42525  	 call p,$2525
27A8  25      	 dec  h
27A9  F42525  	 call p,$2525
27AC  25      	 dec  h
27AD  25      	 dec  h
27AE  25      	 dec  h
27AF  25      	 dec  h
27B0  25      	 dec  h
27B1  F42525  	 call p,$2525
27B4  25      	 dec  h
27B5  F42525  	 call p,$2525
27B8  25      	 dec  h
27B9  25      	 dec  h
27BA  25      	 dec  h
27BB  25      	 dec  h
27BC  25      	 dec  h
27BD  F42525  	 call p,$2525
27C0  25      	 dec  h
27C1  F42525  	 call p,$2525
27C4  25      	 dec  h
27C5  F42525  	 call p,$2525
27C8  25      	 dec  h
27C9  25      	 dec  h
27CA  25      	 dec  h
27CB  25      	 dec  h
27CC  25      	 dec  h
27CD  F42525  	 call p,$2525
27D0  25      	 dec  h
27D1  F42525  	 call p,$2525
27D4  25      	 dec  h
27D5  25      	 dec  h
27D6  25      	 dec  h
27D7  25      	 dec  h
27D8  25      	 dec  h
27D9  F42525  	 call p,$2525
27DC  25      	 dec  h
27DD  F42525  	 call p,$2525
27E0  25      	 dec  h
27E1  F42525  	 call p,$2525
27E4  25      	 dec  h
27E5  25      	 dec  h
27E6  25      	 dec  h
27E7  25      	 dec  h
27E8  25      	 dec  h
27E9  F5      	 push af
27EA  F5      	 push af
27EB  F5      	 push af
27EC  F5      	 push af
27ED  F42525  	 call p,$2525
27F0  25      	 dec  h
27F1  25      	 dec  h
27F2  25      	 dec  h
27F3  25      	 dec  h
27F4  25      	 dec  h
27F5  F5      	 push af
27F6  F5      	 push af
27F7  F5      	 push af
27F8  F5      	 push af
27F9  F5      	 push af
27FA  F5      	 push af
27FB  F5      	 push af
27FC  F5      	 push af
27FD  F43636  	 call p,$3636
2800  3636    	 ld   (hl),$36
2802  25      	 dec  h
2803  25      	 dec  h
2804  25      	 dec  h
2805  F42525  	 call p,$2525
2808  25      	 dec  h
2809  25      	 dec  h
280A  25      	 dec  h
280B  25      	 dec  h
280C  25      	 dec  h
280D  FD25    	 dec  iyh
280F  25      	 dec  h
2810  25      	 dec  h
2811  F42525  	 call p,$2525
2814  25      	 dec  h
2815  25      	 dec  h
2816  25      	 dec  h
2817  25      	 dec  h
2818  25      	 dec  h
2819  F42525  	 call p,$2525
281C  25      	 dec  h
281D  3625    	 ld   (hl),$25
281F  25      	 dec  h
2820  25      	 dec  h
2821  F42525  	 call p,$2525
2824  25      	 dec  h
2825  25      	 dec  h
2826  25      	 dec  h
2827  25      	 dec  h
2828  25      	 dec  h
2829  FF      	 rst  $38
282A  25      	 dec  h
282B  25      	 dec  h
282C  25      	 dec  h
282D  F42525  	 call p,$2525
2830  25      	 dec  h
2831  25      	 dec  h
2832  25      	 dec  h
2833  25      	 dec  h
2834  25      	 dec  h
2835  F9      	 ld   sp,hl
2836  25      	 dec  h
2837  25      	 dec  h
2838  25      	 dec  h
2839  3625    	 ld   (hl),$25
283B  25      	 dec  h
283C  25      	 dec  h
283D  F42525  	 call p,$2525
2840  25      	 dec  h
2841  25      	 dec  h
2842  25      	 dec  h
2843  25      	 dec  h
2844  25      	 dec  h
2845  FD25    	 dec  iyh
2847  25      	 dec  h
2848  25      	 dec  h
2849  F42525  	 call p,$2525
284C  25      	 dec  h
284D  25      	 dec  h
284E  25      	 dec  h
284F  25      	 dec  h
2850  25      	 dec  h
2851  F42525  	 call p,$2525
2854  25      	 dec  h
2855  3625    	 ld   (hl),$25
2857  25      	 dec  h
2858  25      	 dec  h
2859  F43535  	 call p,$3535
285C  35      	 dec  (hl)
285D  35      	 dec  (hl)
285E  25      	 dec  h
285F  25      	 dec  h
2860  25      	 dec  h
2861  F5      	 push af
2862  F5      	 push af
2863  F5      	 push af
2864  F5      	 push af
2865  F42525  	 call p,$2525
2868  25      	 dec  h
2869  25      	 dec  h
286A  25      	 dec  h
286B  25      	 dec  h
286C  25      	 dec  h
286D  F43636  	 call p,$3636
2870  3636    	 ld   (hl),$36
2872  25      	 dec  h
2873  25      	 dec  h
2874  25      	 dec  h
2875  F625    	 or   $25
2877  37      	 scf
2878  3835    	 jr   c,$28AF
287A  25      	 dec  h
287B  25      	 dec  h
287C  25      	 dec  h
287D  F42525  	 call p,$2525
2880  25      	 dec  h
2881  25      	 dec  h
2882  25      	 dec  h
2883  25      	 dec  h
2884  25      	 dec  h
2885  FD25    	 dec  iyh
2887  25      	 dec  h
2888  25      	 dec  h
2889  F42525  	 call p,$2525
288C  25      	 dec  h
288D  25      	 dec  h
288E  25      	 dec  h
288F  25      	 dec  h
2890  25      	 dec  h
2891  FC2537  	 call m,$3725
2894  3835    	 jr   c,$28CB
2896  25      	 dec  h
2897  25      	 dec  h
2898  25      	 dec  h
2899  F42525  	 call p,$2525
289C  25      	 dec  h
289D  25      	 dec  h
289E  25      	 dec  h
289F  25      	 dec  h
28A0  25      	 dec  h
28A1  FF      	 rst  $38
28A2  25      	 dec  h
28A3  25      	 dec  h
28A4  25      	 dec  h
28A5  F42525  	 call p,$2525
28A8  25      	 dec  h
28A9  25      	 dec  h
28AA  25      	 dec  h
28AB  25      	 dec  h
28AC  25      	 dec  h
28AD  F625    	 or   $25
28AF  37      	 scf
28B0  3835    	 jr   c,$28E7
28B2  25      	 dec  h
28B3  25      	 dec  h
28B4  25      	 dec  h
28B5  F42525  	 call p,$2525
28B8  25      	 dec  h
28B9  25      	 dec  h
28BA  25      	 dec  h
28BB  25      	 dec  h
28BC  25      	 dec  h
28BD  FD25    	 dec  iyh
28BF  25      	 dec  h
28C0  25      	 dec  h
28C1  F42525  	 call p,$2525
28C4  25      	 dec  h
28C5  25      	 dec  h
28C6  25      	 dec  h
28C7  25      	 dec  h
28C8  25      	 dec  h
28C9  F43535  	 call p,$3535
28CC  35      	 dec  (hl)
28CD  35      	 dec  (hl)
28CE  25      	 dec  h
28CF  25      	 dec  h
28D0  25      	 dec  h
28D1  F43535  	 call p,$3535
28D4  35      	 dec  (hl)
28D5  35      	 dec  (hl)
28D6  25      	 dec  h
28D7  25      	 dec  h
28D8  25      	 dec  h
28D9  F5      	 push af
28DA  F5      	 push af
28DB  F5      	 push af
28DC  F5      	 push af
28DD  F43535  	 call p,$3535
28E0  35      	 dec  (hl)
28E1  35      	 dec  (hl)
28E2  25      	 dec  h
28E3  25      	 dec  h
28E4  25      	 dec  h
28E5  F42525  	 call p,$2525
28E8  25      	 dec  h
28E9  25      	 dec  h
28EA  25      	 dec  h
28EB  25      	 dec  h
28EC  25      	 dec  h
28ED  F625    	 or   $25
28EF  37      	 scf
28F0  3835    	 jr   c,$2927
28F2  25      	 dec  h
28F3  25      	 dec  h
28F4  25      	 dec  h
28F5  F42525  	 call p,$2525
28F8  25      	 dec  h
28F9  F625    	 or   $25
28FB  37      	 scf
28FC  3835    	 jr   c,$2933
28FE  25      	 dec  h
28FF  25      	 dec  h
2900  25      	 dec  h
2901  F42525  	 call p,$2525
2904  25      	 dec  h
2905  25      	 dec  h
2906  25      	 dec  h
2907  25      	 dec  h
2908  25      	 dec  h
2909  FC2537  	 call m,$3725
290C  3835    	 jr   c,$2943
290E  25      	 dec  h
290F  25      	 dec  h
2910  25      	 dec  h
2911  F42525  	 call p,$2525
2914  25      	 dec  h
2915  FC2537  	 call m,$3725
2918  3835    	 jr   c,$294F
291A  25      	 dec  h
291B  25      	 dec  h
291C  25      	 dec  h
291D  F42525  	 call p,$2525
2920  25      	 dec  h
2921  25      	 dec  h
2922  25      	 dec  h
2923  25      	 dec  h
2924  25      	 dec  h
2925  F625    	 or   $25
2927  37      	 scf
2928  3835    	 jr   c,$295F
292A  25      	 dec  h
292B  25      	 dec  h
292C  25      	 dec  h
292D  F42525  	 call p,$2525
2930  25      	 dec  h
2931  F625    	 or   $25
2933  37      	 scf
2934  3835    	 jr   c,$296B
2936  25      	 dec  h
2937  25      	 dec  h
2938  25      	 dec  h
2939  F5      	 push af
293A  F5      	 push af
293B  F5      	 push af
293C  F5      	 push af
293D  F5      	 push af
293E  F5      	 push af
293F  F5      	 push af
2940  F5      	 push af
2941  F43535  	 call p,$3535
2944  35      	 dec  (hl)
2945  35      	 dec  (hl)
2946  25      	 dec  h
2947  25      	 dec  h
2948  25      	 dec  h
2949  F5      	 push af
294A  F5      	 push af
294B  F5      	 push af
294C  F5      	 push af
294D  F43535  	 call p,$3535
2950  35      	 dec  (hl)
2951  35      	 dec  (hl)
2952  25      	 dec  h
2953  25      	 dec  h
2954  25      	 dec  h
2955  F42525  	 call p,$2525
2958  25      	 dec  h
2959  F42525  	 call p,$2525
295C  25      	 dec  h
295D  F42525  	 call p,$2525
2960  25      	 dec  h
2961  25      	 dec  h
2962  25      	 dec  h
2963  25      	 dec  h
2964  25      	 dec  h
2965  F42525  	 call p,$2525
2968  25      	 dec  h
2969  F42525  	 call p,$2525
296C  25      	 dec  h
296D  25      	 dec  h
296E  25      	 dec  h
296F  25      	 dec  h
2970  25      	 dec  h
2971  F42525  	 call p,$2525
2974  25      	 dec  h
2975  F42525  	 call p,$2525
2978  25      	 dec  h
2979  F42525  	 call p,$2525
297C  25      	 dec  h
297D  25      	 dec  h
297E  25      	 dec  h
297F  25      	 dec  h
2980  25      	 dec  h
2981  F42525  	 call p,$2525
2984  25      	 dec  h
2985  F42525  	 call p,$2525
2988  25      	 dec  h
2989  25      	 dec  h
298A  25      	 dec  h
298B  25      	 dec  h
298C  25      	 dec  h
298D  F42525  	 call p,$2525
2990  25      	 dec  h
2991  F42525  	 call p,$2525
2994  25      	 dec  h
2995  F42525  	 call p,$2525
2998  25      	 dec  h
2999  25      	 dec  h
299A  25      	 dec  h
299B  25      	 dec  h
299C  25      	 dec  h
299D  F42525  	 call p,$2525
29A0  25      	 dec  h
29A1  F42525  	 call p,$2525
29A4  25      	 dec  h
29A5  25      	 dec  h
29A6  25      	 dec  h
29A7  25      	 dec  h
29A8  25      	 dec  h
29A9  F5      	 push af
29AA  F5      	 push af
29AB  F5      	 push af
29AC  F5      	 push af
29AD  F5      	 push af
29AE  F5      	 push af
29AF  F5      	 push af
29B0  F5      	 push af
29B1  F5      	 push af
29B2  F5      	 push af
29B3  F5      	 push af
29B4  F5      	 push af
29B5  F5      	 push af
29B6  F5      	 push af
29B7  F5      	 push af
29B8  F5      	 push af
29B9  F5      	 push af
29BA  F5      	 push af
29BB  F5      	 push af
29BC  F5      	 push af
29BD  F42525  	 call p,$2525
29C0  25      	 dec  h
29C1  25      	 dec  h
29C2  25      	 dec  h
29C3  25      	 dec  h
29C4  25      	 dec  h
29C5  25      	 dec  h
29C6  25      	 dec  h
29C7  25      	 dec  h
29C8  25      	 dec  h
29C9  25      	 dec  h
29CA  25      	 dec  h
29CB  25      	 dec  h
29CC  25      	 dec  h
29CD  25      	 dec  h
29CE  25      	 dec  h
29CF  25      	 dec  h
29D0  25      	 dec  h
29D1  25      	 dec  h
29D2  25      	 dec  h
29D3  25      	 dec  h
29D4  25      	 dec  h
29D5  25      	 dec  h
29D6  25      	 dec  h
29D7  25      	 dec  h
29D8  25      	 dec  h
29D9  25      	 dec  h
29DA  25      	 dec  h
29DB  25      	 dec  h
29DC  25      	 dec  h
29DD  25      	 dec  h
29DE  3A3980  	 ld   a,($8039)
29E1  A7      	 and  a
29E2  C2F029  	 jp   nz,$29F0
29E5  3A3B80  	 ld   a,($803B)
29E8  FE06    	 cp   $06
29EA  C2ED29  	 jp   nz,$29ED
29ED  C3DE29  	 jp   $29DE
29F0  0F      	 rrca
29F1  DAAB2B  	 jp   c,$2BAB
29F4  0F      	 rrca
29F5  DAD72B  	 jp   c,$2BD7
29F8  0F      	 rrca
29F9  DA032C  	 jp   c,$2C03
29FC  0F      	 rrca
29FD  DA112C  	 jp   c,$2C11
2A00  0F      	 rrca
2A01  DA912C  	 jp   c,$2C91
2A04  0F      	 rrca
2A05  DA172A  	 jp   c,$2A17
2A08  0F      	 rrca
2A09  DAC02A  	 jp   c,$2AC0
2A0C  0F      	 rrca
2A0D  DAE62A  	 jp   c,$2AE6
2A10  AF      	 xor  a
2A11  323980  	 ld   ($8039),a
2A14  C3DE29  	 jp   $29DE
2A17  CDF92A  	 call $2AF9
2A1A  210085  	 ld   hl,$8500
2A1D  0610    	 ld   b,$10
2A1F  3E00    	 ld   a,$00
2A21  77      	 ld   (hl),a
2A22  23      	 inc  hl
2A23  10FC    	 djnz $2A21
2A25  210086  	 ld   hl,$8600
2A28  0610    	 ld   b,$10
2A2A  77      	 ld   (hl),a
2A2B  23      	 inc  hl
2A2C  10FC    	 djnz $2A2A
2A2E  320084  	 ld   ($8400),a
2A31  219C80  	 ld   hl,$809C
2A34  0660    	 ld   b,$60
2A36  77      	 ld   (hl),a
2A37  23      	 inc  hl
2A38  10FC    	 djnz $2A36
2A3A  3A3180  	 ld   a,($8031)
2A3D  A7      	 and  a
2A3E  C2472A  	 jp   nz,$2A47
2A41  210082  	 ld   hl,$8200
2A44  C34A2A  	 jp   $2A4A
2A47  210083  	 ld   hl,$8300
2A4A  110081  	 ld   de,$8100
2A4D  01FF00  	 ld   bc,$00FF
2A50  EDB0    	 ldir
2A52  CD8F2A  	 call $2A8F
2A55  CDAA2A  	 call $2AAA
2A58  CD181D  	 call $1D18
2A5B  CD1848  	 call $4818
2A5E  CD2349  	 call $4923
2A61  CD6A4B  	 call $4B6A
2A64  CD134C  	 call $4C13
2A67  3EA0    	 ld   a,$A0
2A69  3200B8  	 ld   ($B800),a
2A6C  214080  	 ld   hl,$8040
2A6F  3E00    	 ld   a,$00
2A71  0604    	 ld   b,$04
2A73  77      	 ld   (hl),a
2A74  23      	 inc  hl
2A75  10FC    	 djnz $2A73
2A77  3E05    	 ld   a,$05
2A79  327F86  	 ld   ($867F),a
2A7C  CD1E18  	 call $181E
2A7F  3E06    	 ld   a,$06
2A81  323B80  	 ld   ($803B),a
2A84  3A3980  	 ld   a,($8039)
2A87  CBAF    	 res  5,a
2A89  323980  	 ld   ($8039),a
2A8C  C3DE29  	 jp   $29DE
2A8F  216292  	 ld   hl,$9262
2A92  11B82A  	 ld   de,$2AB8
2A95  0608    	 ld   b,$08
2A97  C5      	 push bc
2A98  1A      	 ld   a,(de)
2A99  77      	 ld   (hl),a
2A9A  01E0FF  	 ld   bc,$FFE0
2A9D  09      	 add  hl,bc
2A9E  13      	 inc  de
2A9F  C1      	 pop  bc
2AA0  10F5    	 djnz $2A97
2AA2  3A3180  	 ld   a,($8031)
2AA5  3C      	 inc  a
2AA6  328291  	 ld   ($9182),a
2AA9  C9      	 ret
2AAA  216296  	 ld   hl,$9662
2AAD  11E0FF  	 ld   de,$FFE0
2AB0  0608    	 ld   b,$08
2AB2  3687    	 ld   (hl),$87
2AB4  19      	 add  hl,de
2AB5  10FB    	 djnz $2AB2
2AB7  C9      	 ret
2AB8  19      	 add  hl,de
2AB9  15      	 dec  d
2ABA  0A      	 ld   a,(bc)
2ABB  220E1B  	 ld   ($1B0E),hl
2ABE  24      	 inc  h
2ABF  24      	 inc  h
2AC0  CDF92A  	 call $2AF9
2AC3  CD8F2A  	 call $2A8F
2AC6  CDAA2A  	 call $2AAA
2AC9  CD9909  	 call $0999
2ACC  3E07    	 ld   a,$07
2ACE  323B80  	 ld   ($803B),a
2AD1  3EE0    	 ld   a,$E0
2AD3  3200B8  	 ld   ($B800),a
2AD6  3E00    	 ld   a,$00
2AD8  328084  	 ld   ($8480),a
2ADB  3A3980  	 ld   a,($8039)
2ADE  CBB7    	 res  6,a
2AE0  323980  	 ld   ($8039),a
2AE3  C3DE29  	 jp   $29DE
2AE6  CDF92A  	 call $2AF9
2AE9  3E01    	 ld   a,$01
2AEB  323B80  	 ld   ($803B),a
2AEE  3A3980  	 ld   a,($8039)
2AF1  CBBF    	 res  7,a
2AF3  323980  	 ld   ($8039),a
2AF6  C3DE29  	 jp   $29DE
2AF9  210290  	 ld   hl,$9002
2AFC  112000  	 ld   de,$0020
2AFF  0620    	 ld   b,$20
2B01  0E1D    	 ld   c,$1D
2B03  C5      	 push bc
2B04  E5      	 push hl
2B05  3624    	 ld   (hl),$24
2B07  2C      	 inc  l
2B08  0D      	 dec  c
2B09  C2052B  	 jp   nz,$2B05
2B0C  E1      	 pop  hl
2B0D  19      	 add  hl,de
2B0E  C1      	 pop  bc
2B0F  10F2    	 djnz $2B03
2B11  210294  	 ld   hl,$9402
2B14  0620    	 ld   b,$20
2B16  0E1D    	 ld   c,$1D
2B18  C5      	 push bc
2B19  E5      	 push hl
2B1A  3684    	 ld   (hl),$84
2B1C  2C      	 inc  l
2B1D  0D      	 dec  c
2B1E  C21A2B  	 jp   nz,$2B1A
2B21  E1      	 pop  hl
2B22  19      	 add  hl,de
2B23  C1      	 pop  bc
2B24  10F2    	 djnz $2B18
2B26  210098  	 ld   hl,$9800
2B29  0640    	 ld   b,$40
2B2B  3600    	 ld   (hl),$00
2B2D  2C      	 inc  l
2B2E  10FB    	 djnz $2B2B
2B30  210080  	 ld   hl,$8000
2B33  0620    	 ld   b,$20
2B35  3600    	 ld   (hl),$00
2B37  2C      	 inc  l
2B38  10FB    	 djnz $2B35
2B3A  C9      	 ret
2B3B  5E      	 ld   e,(hl)
2B3C  23      	 inc  hl
2B3D  56      	 ld   d,(hl)
2B3E  23      	 inc  hl
2B3F  EB      	 ex   de,hl
2B40  01E0FF  	 ld   bc,$FFE0
2B43  1A      	 ld   a,(de)
2B44  FEFF    	 cp   $FF
2B46  C8      	 ret  z
2B47  77      	 ld   (hl),a
2B48  13      	 inc  de
2B49  09      	 add  hl,bc
2B4A  18F7    	 jr   $2B43
2B4C  214C80  	 ld   hl,$804C
2B4F  D5      	 push de
2B50  0603    	 ld   b,$03
2B52  1A      	 ld   a,(de)
2B53  BE      	 cp   (hl)
2B54  DA612B  	 jp   c,$2B61
2B57  CA5D2B  	 jp   z,$2B5D
2B5A  D2632B  	 jp   nc,$2B63
2B5D  1B      	 dec  de
2B5E  2B      	 dec  hl
2B5F  10F1    	 djnz $2B52
2B61  D1      	 pop  de
2B62  C9      	 ret
2B63  D1      	 pop  de
2B64  214C80  	 ld   hl,$804C
2B67  0603    	 ld   b,$03
2B69  1A      	 ld   a,(de)
2B6A  77      	 ld   (hl),a
2B6B  2B      	 dec  hl
2B6C  1B      	 dec  de
2B6D  10FA    	 djnz $2B69
2B6F  114C80  	 ld   de,$804C
2B72  212192  	 ld   hl,$9221
2B75  0606    	 ld   b,$06
2B77  48      	 ld   c,b
2B78  CB38    	 srl  b
2B7A  DC8F2B  	 call c,$2B8F
2B7D  78      	 ld   a,b
2B7E  A7      	 and  a
2B7F  C8      	 ret  z
2B80  CD862B  	 call $2B86
2B83  C37D2B  	 jp   $2B7D
2B86  1A      	 ld   a,(de)
2B87  0F      	 rrca
2B88  0F      	 rrca
2B89  0F      	 rrca
2B8A  0F      	 rrca
2B8B  CD912B  	 call $2B91
2B8E  05      	 dec  b
2B8F  1A      	 ld   a,(de)
2B90  1B      	 dec  de
2B91  E60F    	 and  $0F
2B93  C29F2B  	 jp   nz,$2B9F
2B96  0D      	 dec  c
2B97  CA9F2B  	 jp   z,$2B9F
2B9A  3E24    	 ld   a,$24
2B9C  C3A32B  	 jp   $2BA3
2B9F  0E01    	 ld   c,$01
2BA1  C600    	 add  a,$00
2BA3  77      	 ld   (hl),a
2BA4  C5      	 push bc
2BA5  01E0FF  	 ld   bc,$FFE0
2BA8  09      	 add  hl,bc
2BA9  C1      	 pop  bc
2BAA  C9      	 ret
2BAB  CDF92A  	 call $2AF9
2BAE  214F2D  	 ld   hl,$2D4F
2BB1  CD3B2B  	 call $2B3B
2BB4  215F2D  	 ld   hl,$2D5F
2BB7  CD3B2B  	 call $2B3B
2BBA  21662D  	 ld   hl,$2D66
2BBD  CD3B2B  	 call $2B3B
2BC0  AF      	 xor  a
2BC1  323380  	 ld   ($8033),a
2BC4  323280  	 ld   ($8032),a
2BC7  3E02    	 ld   a,$02
2BC9  323B80  	 ld   ($803B),a
2BCC  3A3980  	 ld   a,($8039)
2BCF  CB87    	 res  0,a
2BD1  323980  	 ld   ($8039),a
2BD4  C3DE29  	 jp   $29DE
2BD7  CDF92A  	 call $2AF9
2BDA  216F2D  	 ld   hl,$2D6F
2BDD  CD3B2B  	 call $2B3B
2BE0  215F2D  	 ld   hl,$2D5F
2BE3  CD3B2B  	 call $2B3B
2BE6  21662D  	 ld   hl,$2D66
2BE9  CD3B2B  	 call $2B3B
2BEC  AF      	 xor  a
2BED  323380  	 ld   ($8033),a
2BF0  323280  	 ld   ($8032),a
2BF3  3E03    	 ld   a,$03
2BF5  323B80  	 ld   ($803B),a
2BF8  3A3980  	 ld   a,($8039)
2BFB  CB8F    	 res  1,a
2BFD  323980  	 ld   ($8039),a
2C00  C3DE29  	 jp   $29DE
2C03  CDF92A  	 call $2AF9
2C06  3A3980  	 ld   a,($8039)
2C09  CB97    	 res  2,a
2C0B  323980  	 ld   ($8039),a
2C0E  C3DE29  	 jp   $29DE
2C11  CDF92A  	 call $2AF9
2C14  217F2D  	 ld   hl,$2D7F
2C17  CD3B2B  	 call $2B3B
2C1A  3A3080  	 ld   a,($8030)
2C1D  FE01    	 cp   $01
2C1F  CA4D2C  	 jp   z,$2C4D
2C22  3A3580  	 ld   a,($8035)
2C25  0E01    	 ld   c,$01
2C27  A7      	 and  a
2C28  CA332C  	 jp   z,$2C33
2C2B  3A3480  	 ld   a,($8034)
2C2E  A7      	 and  a
2C2F  C27E2C  	 jp   nz,$2C7E
2C32  0C      	 inc  c
2C33  79      	 ld   a,c
2C34  08      	 ex   af,af'
2C35  218B2D  	 ld   hl,$2D8B
2C38  CD3B2B  	 call $2B3B
2C3B  08      	 ex   af,af'
2C3C  77      	 ld   (hl),a
2C3D  114680  	 ld   de,$8046
2C40  0F      	 rrca
2C41  DA472C  	 jp   c,$2C47
2C44  114980  	 ld   de,$8049
2C47  CD4C2B  	 call $2B4C
2C4A  C36E2C  	 jp   $2C6E
2C4D  114680  	 ld   de,$8046
2C50  CD4C2B  	 call $2B4C
2C53  AF      	 xor  a
2C54  323680  	 ld   ($8036),a
2C57  3203B0  	 ld   ($B003),a
2C5A  2106B0  	 ld   hl,$B006
2C5D  77      	 ld   (hl),a
2C5E  2C      	 inc  l
2C5F  77      	 ld   (hl),a
2C60  214480  	 ld   hl,$8044
2C63  0606    	 ld   b,$06
2C65  77      	 ld   (hl),a
2C66  23      	 inc  hl
2C67  10FC    	 djnz $2C65
2C69  3E80    	 ld   a,$80
2C6B  323D80  	 ld   ($803D),a
2C6E  3E04    	 ld   a,$04
2C70  323B80  	 ld   ($803B),a
2C73  3A3980  	 ld   a,($8039)
2C76  CB9F    	 res  3,a
2C78  323980  	 ld   ($8039),a
2C7B  C3DE29  	 jp   $29DE
2C7E  114680  	 ld   de,$8046
2C81  CD4C2B  	 call $2B4C
2C84  00      	 nop
2C85  00      	 nop
2C86  00      	 nop
2C87  00      	 nop
2C88  114980  	 ld   de,$8049
2C8B  CD4C2B  	 call $2B4C
2C8E  C3532C  	 jp   $2C53
2C91  CDF92A  	 call $2AF9
2C94  3A3880  	 ld   a,($8038)
2C97  A7      	 and  a
2C98  CABB2C  	 jp   z,$2CBB
2C9B  AF      	 xor  a
2C9C  323880  	 ld   ($8038),a
2C9F  216193  	 ld   hl,$9361
2CA2  11E0FF  	 ld   de,$FFE0
2CA5  CDB12C  	 call $2CB1
2CA8  210191  	 ld   hl,$9101
2CAB  CDB12C  	 call $2CB1
2CAE  C3BB2C  	 jp   $2CBB
2CB1  0605    	 ld   b,$05
2CB3  3624    	 ld   (hl),$24
2CB5  19      	 add  hl,de
2CB6  10FB    	 djnz $2CB3
2CB8  3600    	 ld   (hl),$00
2CBA  C9      	 ret
2CBB  3A3180  	 ld   a,($8031)
2CBE  A7      	 and  a
2CBF  CACB2C  	 jp   z,$2CCB
2CC2  3A2780  	 ld   a,($8027)
2CC5  A7      	 and  a
2CC6  CACB2C  	 jp   z,$2CCB
2CC9  3E01    	 ld   a,$01
2CCB  2106B0  	 ld   hl,$B006
2CCE  77      	 ld   (hl),a
2CCF  2C      	 inc  l
2CD0  77      	 ld   (hl),a
2CD1  218B2D  	 ld   hl,$2D8B
2CD4  CD3B2B  	 call $2B3B
2CD7  3A3180  	 ld   a,($8031)
2CDA  3C      	 inc  a
2CDB  77      	 ld   (hl),a
2CDC  3D      	 dec  a
2CDD  210182  	 ld   hl,$8201
2CE0  A7      	 and  a
2CE1  CAE52C  	 jp   z,$2CE5
2CE4  24      	 inc  h
2CE5  7E      	 ld   a,(hl)
2CE6  C601    	 add  a,$01
2CE8  27      	 daa
2CE9  08      	 ex   af,af'
2CEA  21952D  	 ld   hl,$2D95
2CED  CD3B2B  	 call $2B3B
2CF0  08      	 ex   af,af'
2CF1  323780  	 ld   ($8037),a
2CF4  113780  	 ld   de,$8037
2CF7  0602    	 ld   b,$02
2CF9  CD772B  	 call $2B77
2CFC  CD142D  	 call $2D14
2CFF  3E05    	 ld   a,$05
2D01  323B80  	 ld   ($803B),a
2D04  3E40    	 ld   a,$40
2D06  323D80  	 ld   ($803D),a
2D09  3A3980  	 ld   a,($8039)
2D0C  CBA7    	 res  4,a
2D0E  323980  	 ld   ($8039),a
2D11  C3DE29  	 jp   $29DE
2D14  3A3180  	 ld   a,($8031)
2D17  210082  	 ld   hl,$8200
2D1A  A7      	 and  a
2D1B  CA1F2D  	 jp   z,$2D1F
2D1E  24      	 inc  h
2D1F  7E      	 ld   a,(hl)
2D20  0607    	 ld   b,$07
2D22  219F93  	 ld   hl,$939F
2D25  11E0FF  	 ld   de,$FFE0
2D28  3D      	 dec  a
2D29  A7      	 and  a
2D2A  CA352D  	 jp   z,$2D35
2D2D  3679    	 ld   (hl),$79
2D2F  19      	 add  hl,de
2D30  05      	 dec  b
2D31  3D      	 dec  a
2D32  C22D2D  	 jp   nz,$2D2D
2D35  3624    	 ld   (hl),$24
2D37  19      	 add  hl,de
2D38  10FB    	 djnz $2D35
2D3A  C9      	 ret
2D3B  210081  	 ld   hl,$8100
2D3E  7E      	 ld   a,(hl)
2D3F  3D      	 dec  a
2D40  219F93  	 ld   hl,$939F
2D43  11E0FF  	 ld   de,$FFE0
2D46  0607    	 ld   b,$07
2D48  A7      	 and  a
2D49  CA352D  	 jp   z,$2D35
2D4C  C3292D  	 jp   $2D29
2D4F  AE      	 xor  (hl)
2D50  92      	 sub  d
2D51  1817    	 jr   $2D6A
2D53  15      	 dec  d
2D54  222401  	 ld   ($0124),hl
2D57  24      	 inc  h
2D58  19      	 add  hl,de
2D59  15      	 dec  d
2D5A  0A      	 ld   a,(bc)
2D5B  220E1B  	 ld   ($1B0E),hl
2D5E  FF      	 rst  $38
2D5F  2C      	 inc  l
2D60  92      	 sub  d
2D61  19      	 add  hl,de
2D62  1E1C    	 ld   e,$1C
2D64  11FF50  	 ld   de,$50FF
2D67  92      	 sub  d
2D68  0B      	 dec  bc
2D69  1E1D    	 ld   e,$1D
2D6B  1D      	 dec  e
2D6C  1817    	 jr   $2D85
2D6E  FF      	 rst  $38
2D6F  AE      	 xor  (hl)
2D70  92      	 sub  d
2D71  012418  	 ld   bc,$1824
2D74  1B      	 dec  de
2D75  24      	 inc  h
2D76  02      	 ld   (bc),a
2D77  24      	 inc  h
2D78  19      	 add  hl,de
2D79  15      	 dec  d
2D7A  0A      	 ld   a,(bc)
2D7B  220E1B  	 ld   ($1B0E),hl
2D7E  FF      	 rst  $38
2D7F  8C      	 adc  a,h
2D80  92      	 sub  d
2D81  100A    	 djnz $2D8D
2D83  160E    	 ld   d,$0E
2D85  24      	 inc  h
2D86  181F    	 jr   $2DA7
2D88  0E1B    	 ld   c,$1B
2D8A  FF      	 rst  $38
2D8B  8F      	 adc  a,a
2D8C  92      	 sub  d
2D8D  19      	 add  hl,de
2D8E  15      	 dec  d
2D8F  0A      	 ld   a,(bc)
2D90  220E1B  	 ld   ($1B0E),hl
2D93  24      	 inc  h
2D94  FF      	 rst  $38
2D95  94      	 sub  h
2D96  92      	 sub  d
2D97  15      	 dec  d
2D98  0E1F    	 ld   c,$1F
2D9A  0E15    	 ld   c,$15
2D9C  24      	 inc  h
2D9D  FF      	 rst  $38
2D9E  3A1F84  	 ld   a,($841F)
2DA1  FE02    	 cp   $02
2DA3  CAD22D  	 jp   z,$2DD2
2DA6  3A3E80  	 ld   a,($803E)
2DA9  A7      	 and  a
2DAA  C2D62D  	 jp   nz,$2DD6
2DAD  CD6C4A  	 call $4A6C
2DB0  CDF145  	 call $45F1
2DB3  CDF946  	 call $46F9
2DB6  CD5C34  	 call $345C
2DB9  CD023C  	 call $3C02
2DBC  CD442F  	 call $2F44
2DBF  CD3D43  	 call $433D
2DC2  CDE02D  	 call $2DE0
2DC5  CD1C43  	 call $431C
2DC8  CD1F19  	 call $191F
2DCB  CDC117  	 call $17C1
2DCE  CDAB4B  	 call $4BAB
2DD1  C9      	 ret
2DD2  CD442F  	 call $2F44
2DD5  C9      	 ret
2DD6  CD5C34  	 call $345C
2DD9  CD023C  	 call $3C02
2DDC  CDE02D  	 call $2DE0
2DDF  C9      	 ret
2DE0  3A3380  	 ld   a,($8033)
2DE3  A7      	 and  a
2DE4  C0      	 ret  nz
2DE5  3A1F84  	 ld   a,($841F)
2DE8  FE02    	 cp   $02
2DEA  C8      	 ret  z
2DEB  3A3E80  	 ld   a,($803E)
2DEE  A7      	 and  a
2DEF  CA362E  	 jp   z,$2E36
2DF2  3A3F80  	 ld   a,($803F)
2DF5  3C      	 inc  a
2DF6  323F80  	 ld   ($803F),a
2DF9  FE02    	 cp   $02
2DFB  CA132E  	 jp   z,$2E13
2DFE  FE04    	 cp   $04
2E00  CA132E  	 jp   z,$2E13
2E03  FEE8    	 cp   $E8
2E05  CA192E  	 jp   z,$2E19
2E08  FEEC    	 cp   $EC
2E0A  CA1F2E  	 jp   z,$2E1F
2E0D  FEF0    	 cp   $F0
2E0F  CA252E  	 jp   z,$2E25
2E12  C9      	 ret
2E13  3E91    	 ld   a,$91
2E15  3200B8  	 ld   ($B800),a
2E18  C9      	 ret
2E19  3EA0    	 ld   a,$A0
2E1B  3200B8  	 ld   ($B800),a
2E1E  C9      	 ret
2E1F  3EE0    	 ld   a,$E0
2E21  3200B8  	 ld   ($B800),a
2E24  C9      	 ret
2E25  3E00    	 ld   a,$00
2E27  328084  	 ld   ($8480),a
2E2A  323E80  	 ld   ($803E),a
2E2D  323F80  	 ld   ($803F),a
2E30  3E01    	 ld   a,$01
2E32  323280  	 ld   ($8032),a
2E35  C9      	 ret
2E36  214081  	 ld   hl,$8140
2E39  3E00    	 ld   a,$00
2E3B  0609    	 ld   b,$09
2E3D  BE      	 cp   (hl)
2E3E  C8      	 ret  z
2E3F  23      	 inc  hl
2E40  23      	 inc  hl
2E41  10FA    	 djnz $2E3D
2E43  1600    	 ld   d,$00
2E45  3A2B86  	 ld   a,($862B)
2E48  A7      	 and  a
2E49  C2552E  	 jp   nz,$2E55
2E4C  3E06    	 ld   a,$06
2E4E  321786  	 ld   ($8617),a
2E51  3E02    	 ld   a,$02
2E53  82      	 add  a,d
2E54  57      	 ld   d,a
2E55  3A4B86  	 ld   a,($864B)
2E58  A7      	 and  a
2E59  C2652E  	 jp   nz,$2E65
2E5C  3E06    	 ld   a,$06
2E5E  323786  	 ld   ($8637),a
2E61  3E02    	 ld   a,$02
2E63  82      	 add  a,d
2E64  57      	 ld   d,a
2E65  CD7E44  	 call $447E
2E68  3E01    	 ld   a,$01
2E6A  323E80  	 ld   ($803E),a
2E6D  3EE0    	 ld   a,$E0
2E6F  3200B8  	 ld   ($B800),a
2E72  C9      	 ret
2E73  CDED0F  	 call $0FED
2E76  C9      	 ret
2E77  010000  	 ld   bc,$0000
2E7A  00      	 nop
2E7B  00      	 nop
2E7C  00      	 nop
2E7D  74      	 ld   (hl),h
2E7E  C20000  	 jp   nz,$0000
2E81  FF      	 rst  $38
2E82  FE01    	 cp   $01
2E84  02      	 ld   (bc),a
2E85  0102FF  	 ld   bc,$FF02
2E88  FE05    	 cp   $05
2E8A  00      	 nop
2E8B  00      	 nop
2E8C  00      	 nop
2E8D  00      	 nop
2E8E  00      	 nop
2E8F  00      	 nop
2E90  00      	 nop
2E91  00      	 nop
2E92  00      	 nop
2E93  00      	 nop
2E94  00      	 nop
2E95  00      	 nop
2E96  010000  	 ld   bc,$0000
2E99  00      	 nop
2E9A  00      	 nop
2E9B  A6      	 and  (hl)
2E9C  2E00    	 ld   l,$00
2E9E  00      	 nop
2E9F  00      	 nop
2EA0  00      	 nop
2EA1  00      	 nop
2EA2  00      	 nop
2EA3  00      	 nop
2EA4  00      	 nop
2EA5  00      	 nop
2EA6  0F      	 rrca
2EA7  010F01  	 ld   bc,$010F
2EAA  04      	 inc  b
2EAB  100F    	 djnz $2EBC
2EAD  02      	 ld   (bc),a
2EAE  0F      	 rrca
2EAF  02      	 ld   (bc),a
2EB0  0F      	 rrca
2EB1  02      	 ld   (bc),a
2EB2  0F      	 rrca
2EB3  010F01  	 ld   bc,$010F
2EB6  6F      	 ld   l,a
2EB7  08      	 ex   af,af'
2EB8  04      	 inc  b
2EB9  106F    	 djnz $2F2A
2EBB  08      	 ex   af,af'
2EBC  0F      	 rrca
2EBD  02      	 ld   (bc),a
2EBE  4F      	 ld   c,a
2EBF  02      	 ld   (bc),a
2EC0  2F      	 cpl
2EC1  02      	 ld   (bc),a
2EC2  0F      	 rrca
2EC3  010F01  	 ld   bc,$010F
2EC6  0F      	 rrca
2EC7  08      	 ex   af,af'
2EC8  0F      	 rrca
2EC9  08      	 ex   af,af'
2ECA  0F      	 rrca
2ECB  010F01  	 ld   bc,$010F
2ECE  6F      	 ld   l,a
2ECF  08      	 ex   af,af'
2ED0  3F      	 ccf
2ED1  02      	 ld   (bc),a
2ED2  1F      	 rra
2ED3  02      	 ld   (bc),a
2ED4  0F      	 rrca
2ED5  02      	 ld   (bc),a
2ED6  04      	 inc  b
2ED7  100F    	 djnz $2EE8
2ED9  010410  	 ld   bc,$1004
2EDC  0F      	 rrca
2EDD  04      	 inc  b
2EDE  0F      	 rrca
2EDF  02      	 ld   (bc),a
2EE0  6F      	 ld   l,a
2EE1  02      	 ld   (bc),a
2EE2  0F      	 rrca
2EE3  08      	 ex   af,af'
2EE4  0F      	 rrca
2EE5  013F01  	 ld   bc,$013F
2EE8  1F      	 rra
2EE9  010F01  	 ld   bc,$010F
2EEC  0F      	 rrca
2EED  010F04  	 ld   bc,$040F
2EF0  0F      	 rrca
2EF1  02      	 ld   (bc),a
2EF2  0F      	 rrca
2EF3  02      	 ld   (bc),a
2EF4  0F      	 rrca
2EF5  02      	 ld   (bc),a
2EF6  0F      	 rrca
2EF7  04      	 inc  b
2EF8  0F      	 rrca
2EF9  04      	 inc  b
2EFA  0F      	 rrca
2EFB  04      	 inc  b
2EFC  0F      	 rrca
2EFD  04      	 inc  b
2EFE  FF      	 rst  $38
2EFF  FF      	 rst  $38
2F00  FF      	 rst  $38
2F01  FF      	 rst  $38
2F02  FF      	 rst  $38
2F03  FF      	 rst  $38
2F04  FF      	 rst  $38
2F05  FF      	 rst  $38
2F06  FF      	 rst  $38
2F07  FF      	 rst  $38
2F08  23      	 inc  hl
2F09  5E      	 ld   e,(hl)
2F0A  23      	 inc  hl
2F0B  56      	 ld   d,(hl)
2F0C  1A      	 ld   a,(de)
2F0D  FEFF    	 cp   $FF
2F0F  C2182F  	 jp   nz,$2F18
2F12  11A62E  	 ld   de,$2EA6
2F15  C30C2F  	 jp   $2F0C
2F18  08      	 ex   af,af'
2F19  13      	 inc  de
2F1A  1A      	 ld   a,(de)
2F1B  13      	 inc  de
2F1C  72      	 ld   (hl),d
2F1D  2B      	 dec  hl
2F1E  73      	 ld   (hl),e
2F1F  2B      	 dec  hl
2F20  08      	 ex   af,af'
2F21  77      	 ld   (hl),a
2F22  08      	 ex   af,af'
2F23  C37F2F  	 jp   $2F7F
2F26  3A0784  	 ld   a,($8407)
2F29  0F      	 rrca
2F2A  0F      	 rrca
2F2B  0F      	 rrca
2F2C  E61F    	 and  $1F
2F2E  5F      	 ld   e,a
2F2F  3A0684  	 ld   a,($8406)
2F32  ED44    	 neg
2F34  07      	 rlca
2F35  07      	 rlca
2F36  57      	 ld   d,a
2F37  E6E0    	 and  $E0
2F39  B3      	 or   e
2F3A  5F      	 ld   e,a
2F3B  7A      	 ld   a,d
2F3C  E603    	 and  $03
2F3E  57      	 ld   d,a
2F3F  210090  	 ld   hl,$9000
2F42  19      	 add  hl,de
2F43  C9      	 ret
2F44  3A0084  	 ld   a,($8400)
2F47  A7      	 and  a
2F48  C25F2F  	 jp   nz,$2F5F
2F4B  110084  	 ld   de,$8400
2F4E  21772E  	 ld   hl,$2E77
2F51  012E00  	 ld   bc,$002E
2F54  EDB0    	 ldir
2F56  3EC9    	 ld   a,$C9
2F58  3200B8  	 ld   ($B800),a
2F5B  CDEA17  	 call $17EA
2F5E  C9      	 ret
2F5F  210284  	 ld   hl,$8402
2F62  34      	 inc  (hl)
2F63  CB46    	 bit  0,(hl)
2F65  CADD32  	 jp   z,$32DD
2F68  3A3080  	 ld   a,($8030)
2F6B  A7      	 and  a
2F6C  C27C2F  	 jp   nz,$2F7C
2F6F  212384  	 ld   hl,$8423
2F72  7E      	 ld   a,(hl)
2F73  35      	 dec  (hl)
2F74  A7      	 and  a
2F75  CA082F  	 jp   z,$2F08
2F78  AF      	 xor  a
2F79  C37F2F  	 jp   $2F7F
2F7C  3A00A0  	 ld   a,($A000)
2F7F  320184  	 ld   ($8401),a
2F82  CDA32F  	 call $2FA3
2F85  3A2284  	 ld   a,($8422)
2F88  A7      	 and  a
2F89  C29F2F  	 jp   nz,$2F9F
2F8C  CDC130  	 call $30C1
2F8F  3A0884  	 ld   a,($8408)
2F92  47      	 ld   b,a
2F93  3A0984  	 ld   a,($8409)
2F96  B0      	 or   b
2F97  C29F2F  	 jp   nz,$2F9F
2F9A  3E00    	 ld   a,$00
2F9C  321684  	 ld   ($8416),a
2F9F  CD5E32  	 call $325E
2FA2  C9      	 ret
2FA3  3A1F84  	 ld   a,($841F)
2FA6  FE01    	 cp   $01
2FA8  CAC72F  	 jp   z,$2FC7
2FAB  08      	 ex   af,af'
2FAC  3E00    	 ld   a,$00
2FAE  321684  	 ld   ($8416),a
2FB1  08      	 ex   af,af'
2FB2  FE02    	 cp   $02
2FB4  CACD2F  	 jp   z,$2FCD
2FB7  FE00    	 cp   $00
2FB9  CA2430  	 jp   z,$3024
2FBC  FE04    	 cp   $04
2FBE  CA3830  	 jp   z,$3038
2FC1  FE05    	 cp   $05
2FC3  CABD30  	 jp   z,$30BD
2FC6  C9      	 ret
2FC7  3E01    	 ld   a,$01
2FC9  321684  	 ld   ($8416),a
2FCC  C9      	 ret
2FCD  212084  	 ld   hl,$8420
2FD0  7E      	 ld   a,(hl)
2FD1  A7      	 and  a
2FD2  C2EA2F  	 jp   nz,$2FEA
2FD5  3E01    	 ld   a,$01
2FD7  77      	 ld   (hl),a
2FD8  3E80    	 ld   a,$80
2FDA  23      	 inc  hl
2FDB  77      	 ld   (hl),a
2FDC  3E01    	 ld   a,$01
2FDE  322284  	 ld   ($8422),a
2FE1  3E0C    	 ld   a,$0C
2FE3  321384  	 ld   ($8413),a
2FE6  CD2332  	 call $3223
2FE9  C9      	 ret
2FEA  23      	 inc  hl
2FEB  35      	 dec  (hl)
2FEC  7E      	 ld   a,(hl)
2FED  FE7E    	 cp   $7E
2FEF  CA0230  	 jp   z,$3002
2FF2  FE40    	 cp   $40
2FF4  CA0830  	 jp   z,$3008
2FF7  FE30    	 cp   $30
2FF9  CA0E30  	 jp   z,$300E
2FFC  FE20    	 cp   $20
2FFE  CA1430  	 jp   z,$3014
3001  C9      	 ret
3002  3EE0    	 ld   a,$E0
3004  3200B8  	 ld   ($B800),a
3007  C9      	 ret
3008  3E0D    	 ld   a,$0D
300A  321384  	 ld   ($8413),a
300D  C9      	 ret
300E  3E0E    	 ld   a,$0E
3010  321384  	 ld   ($8413),a
3013  C9      	 ret
3014  3E0F    	 ld   a,$0F
3016  321384  	 ld   ($8413),a
3019  3E00    	 ld   a,$00
301B  321F84  	 ld   ($841F),a
301E  3EA0    	 ld   a,$A0
3020  3200B8  	 ld   ($B800),a
3023  C9      	 ret
3024  3E00    	 ld   a,$00
3026  320084  	 ld   ($8400),a
3029  322084  	 ld   ($8420),a
302C  320684  	 ld   ($8406),a
302F  320784  	 ld   ($8407),a
3032  3E01    	 ld   a,$01
3034  323380  	 ld   ($8033),a
3037  C9      	 ret
3038  212084  	 ld   hl,$8420
303B  7E      	 ld   a,(hl)
303C  A7      	 and  a
303D  C25230  	 jp   nz,$3052
3040  3E01    	 ld   a,$01
3042  77      	 ld   (hl),a
3043  322284  	 ld   ($8422),a
3046  3E00    	 ld   a,$00
3048  322984  	 ld   ($8429),a
304B  322A84  	 ld   ($842A),a
304E  CD2332  	 call $3223
3051  C9      	 ret
3052  3A2A84  	 ld   a,($842A)
3055  A7      	 and  a
3056  C27F30  	 jp   nz,$307F
3059  3A0784  	 ld   a,($8407)
305C  C602    	 add  a,$02
305E  320784  	 ld   ($8407),a
3061  FEE0    	 cp   $E0
3063  D29630  	 jp   nc,$3096
3066  CD262F  	 call $2F26
3069  01E2FF  	 ld   bc,$FFE2
306C  09      	 add  hl,bc
306D  7E      	 ld   a,(hl)
306E  FE37    	 cp   $37
3070  CA7930  	 jp   z,$3079
3073  FE38    	 cp   $38
3075  CA7930  	 jp   z,$3079
3078  C9      	 ret
3079  3E01    	 ld   a,$01
307B  322A84  	 ld   ($842A),a
307E  C9      	 ret
307F  3A2984  	 ld   a,($8429)
3082  3C      	 inc  a
3083  322984  	 ld   ($8429),a
3086  FE02    	 cp   $02
3088  CAA130  	 jp   z,$30A1
308B  FE0A    	 cp   $0A
308D  CAA730  	 jp   z,$30A7
3090  FE14    	 cp   $14
3092  CAAD30  	 jp   z,$30AD
3095  C9      	 ret
3096  3E00    	 ld   a,$00
3098  322084  	 ld   ($8420),a
309B  3E02    	 ld   a,$02
309D  321F84  	 ld   ($841F),a
30A0  C9      	 ret
30A1  3E0D    	 ld   a,$0D
30A3  321384  	 ld   ($8413),a
30A6  C9      	 ret
30A7  3E0E    	 ld   a,$0E
30A9  321384  	 ld   ($8413),a
30AC  C9      	 ret
30AD  3E0F    	 ld   a,$0F
30AF  321384  	 ld   ($8413),a
30B2  3E00    	 ld   a,$00
30B4  321F84  	 ld   ($841F),a
30B7  3EA0    	 ld   a,$A0
30B9  3200B8  	 ld   ($B800),a
30BC  C9      	 ret
30BD  CDF946  	 call $46F9
30C0  C9      	 ret
30C1  3A0784  	 ld   a,($8407)
30C4  E607    	 and  $07
30C6  FE02    	 cp   $02
30C8  C0      	 ret  nz
30C9  3A0684  	 ld   a,($8406)
30CC  E607    	 and  $07
30CE  FE04    	 cp   $04
30D0  C0      	 ret  nz
30D1  3A0184  	 ld   a,($8401)
30D4  0F      	 rrca
30D5  DA1B31  	 jp   c,$311B
30D8  0F      	 rrca
30D9  DA5D31  	 jp   c,$315D
30DC  0F      	 rrca
30DD  DA9F31  	 jp   c,$319F
30E0  0F      	 rrca
30E1  DAE131  	 jp   c,$31E1
30E4  00      	 nop
30E5  3A0684  	 ld   a,($8406)
30E8  57      	 ld   d,a
30E9  3E14    	 ld   a,$14
30EB  0E20    	 ld   c,$20
30ED  0607    	 ld   b,$07
30EF  BA      	 cp   d
30F0  CAF930  	 jp   z,$30F9
30F3  81      	 add  a,c
30F4  10F9    	 djnz $30EF
30F6  C30A31  	 jp   $310A
30F9  3A0784  	 ld   a,($8407)
30FC  57      	 ld   d,a
30FD  3E22    	 ld   a,$22
30FF  0E20    	 ld   c,$20
3101  0607    	 ld   b,$07
3103  BA      	 cp   d
3104  CA2332  	 jp   z,$3223
3107  81      	 add  a,c
3108  10F9    	 djnz $3103
310A  3A0884  	 ld   a,($8408)
310D  A7      	 and  a
310E  CA3432  	 jp   z,$3234
3111  3A0984  	 ld   a,($8409)
3114  A7      	 and  a
3115  CA4932  	 jp   z,$3249
3118  C32332  	 jp   $3223
311B  3A0684  	 ld   a,($8406)
311E  FE14    	 cp   $14
3120  CA3432  	 jp   z,$3234
3123  D22E31  	 jp   nc,$312E
3126  3E14    	 ld   a,$14
3128  320684  	 ld   ($8406),a
312B  C33432  	 jp   $3234
312E  CD262F  	 call $2F26
3131  010200  	 ld   bc,$0002
3134  E5      	 push hl
3135  09      	 add  hl,bc
3136  3EFE    	 ld   a,$FE
3138  BE      	 cp   (hl)
3139  CA4231  	 jp   z,$3142
313C  3EEF    	 ld   a,$EF
313E  BE      	 cp   (hl)
313F  DA4631  	 jp   c,$3146
3142  E1      	 pop  hl
3143  C33432  	 jp   $3234
3146  E1      	 pop  hl
3147  3A0B84  	 ld   a,($840B)
314A  320884  	 ld   ($8408),a
314D  3E00    	 ld   a,$00
314F  320984  	 ld   ($8409),a
3152  3E01    	 ld   a,$01
3154  320484  	 ld   ($8404),a
3157  3E00    	 ld   a,$00
3159  321484  	 ld   ($8414),a
315C  C9      	 ret
315D  3A0684  	 ld   a,($8406)
3160  FED4    	 cp   $D4
3162  CA3432  	 jp   z,$3234
3165  DA7031  	 jp   c,$3170
3168  3ED4    	 ld   a,$D4
316A  320684  	 ld   ($8406),a
316D  C33432  	 jp   $3234
3170  CD262F  	 call $2F26
3173  01C2FF  	 ld   bc,$FFC2
3176  E5      	 push hl
3177  09      	 add  hl,bc
3178  3EFE    	 ld   a,$FE
317A  BE      	 cp   (hl)
317B  CA8431  	 jp   z,$3184
317E  3EEF    	 ld   a,$EF
3180  BE      	 cp   (hl)
3181  DA8831  	 jp   c,$3188
3184  E1      	 pop  hl
3185  C33432  	 jp   $3234
3188  E1      	 pop  hl
3189  3A0D84  	 ld   a,($840D)
318C  320884  	 ld   ($8408),a
318F  3E00    	 ld   a,$00
3191  320984  	 ld   ($8409),a
3194  3E02    	 ld   a,$02
3196  320484  	 ld   ($8404),a
3199  3E80    	 ld   a,$80
319B  321484  	 ld   ($8414),a
319E  C9      	 ret
319F  3A0784  	 ld   a,($8407)
31A2  FEE2    	 cp   $E2
31A4  CA4932  	 jp   z,$3249
31A7  DAB231  	 jp   c,$31B2
31AA  3EE2    	 ld   a,$E2
31AC  320784  	 ld   ($8407),a
31AF  C34932  	 jp   $3249
31B2  CD262F  	 call $2F26
31B5  01E3FF  	 ld   bc,$FFE3
31B8  E5      	 push hl
31B9  09      	 add  hl,bc
31BA  3EFE    	 ld   a,$FE
31BC  BE      	 cp   (hl)
31BD  CAC631  	 jp   z,$31C6
31C0  3EEF    	 ld   a,$EF
31C2  BE      	 cp   (hl)
31C3  DACA31  	 jp   c,$31CA
31C6  E1      	 pop  hl
31C7  C34932  	 jp   $3249
31CA  E1      	 pop  hl
31CB  3A0F84  	 ld   a,($840F)
31CE  320984  	 ld   ($8409),a
31D1  3E00    	 ld   a,$00
31D3  320884  	 ld   ($8408),a
31D6  3E04    	 ld   a,$04
31D8  320484  	 ld   ($8404),a
31DB  3E04    	 ld   a,$04
31DD  321484  	 ld   ($8414),a
31E0  C9      	 ret
31E1  3A0784  	 ld   a,($8407)
31E4  FE22    	 cp   $22
31E6  CA4932  	 jp   z,$3249
31E9  D2F431  	 jp   nc,$31F4
31EC  3E22    	 ld   a,$22
31EE  320784  	 ld   ($8407),a
31F1  C34932  	 jp   $3249
31F4  CD262F  	 call $2F26
31F7  01E1FF  	 ld   bc,$FFE1
31FA  E5      	 push hl
31FB  09      	 add  hl,bc
31FC  3EFE    	 ld   a,$FE
31FE  BE      	 cp   (hl)
31FF  CA0832  	 jp   z,$3208
3202  3EEF    	 ld   a,$EF
3204  BE      	 cp   (hl)
3205  DA0C32  	 jp   c,$320C
3208  E1      	 pop  hl
3209  C34932  	 jp   $3249
320C  E1      	 pop  hl
320D  3A1184  	 ld   a,($8411)
3210  320984  	 ld   ($8409),a
3213  3E00    	 ld   a,$00
3215  320884  	 ld   ($8408),a
3218  3E08    	 ld   a,$08
321A  320484  	 ld   ($8404),a
321D  3E08    	 ld   a,$08
321F  321484  	 ld   ($8414),a
3222  C9      	 ret
3223  3E00    	 ld   a,$00
3225  320884  	 ld   ($8408),a
3228  3E00    	 ld   a,$00
322A  320984  	 ld   ($8409),a
322D  3E00    	 ld   a,$00
322F  321684  	 ld   ($8416),a
3232  00      	 nop
3233  C9      	 ret
3234  3E00    	 ld   a,$00
3236  320884  	 ld   ($8408),a
3239  00      	 nop
323A  3A0984  	 ld   a,($8409)
323D  A7      	 and  a
323E  C8      	 ret  z
323F  FE80    	 cp   $80
3241  DA9F31  	 jp   c,$319F
3244  C3E131  	 jp   $31E1
3247  00      	 nop
3248  C9      	 ret
3249  3E00    	 ld   a,$00
324B  320984  	 ld   ($8409),a
324E  00      	 nop
324F  3A0884  	 ld   a,($8408)
3252  A7      	 and  a
3253  C8      	 ret  z
3254  FE80    	 cp   $80
3256  DA5D31  	 jp   c,$315D
3259  C31B31  	 jp   $311B
325C  00      	 nop
325D  C9      	 ret
325E  3A2284  	 ld   a,($8422)
3261  A7      	 and  a
3262  C2C632  	 jp   nz,$32C6
3265  3A0884  	 ld   a,($8408)
3268  47      	 ld   b,a
3269  3A0684  	 ld   a,($8406)
326C  80      	 add  a,b
326D  320684  	 ld   ($8406),a
3270  3A0984  	 ld   a,($8409)
3273  47      	 ld   b,a
3274  3A0784  	 ld   a,($8407)
3277  80      	 add  a,b
3278  320784  	 ld   ($8407),a
327B  3A1684  	 ld   a,($8416)
327E  A7      	 and  a
327F  CAC632  	 jp   z,$32C6
3282  3A1784  	 ld   a,($8417)
3285  3C      	 inc  a
3286  CB47    	 bit  0,a
3288  CAB732  	 jp   z,$32B7
328B  3A1884  	 ld   a,($8418)
328E  3C      	 inc  a
328F  E603    	 and  $03
3291  321884  	 ld   ($8418),a
3294  FE00    	 cp   $00
3296  C29E32  	 jp   nz,$329E
3299  3E00    	 ld   a,$00
329B  C3B432  	 jp   $32B4
329E  FE01    	 cp   $01
32A0  C2A832  	 jp   nz,$32A8
32A3  3E01    	 ld   a,$01
32A5  C3B432  	 jp   $32B4
32A8  FE02    	 cp   $02
32AA  C2B232  	 jp   nz,$32B2
32AD  3E02    	 ld   a,$02
32AF  C3B432  	 jp   $32B4
32B2  3E03    	 ld   a,$03
32B4  321584  	 ld   ($8415),a
32B7  3A1484  	 ld   a,($8414)
32BA  E6FC    	 and  $FC
32BC  47      	 ld   b,a
32BD  3A1884  	 ld   a,($8418)
32C0  E603    	 and  $03
32C2  B0      	 or   b
32C3  321384  	 ld   ($8413),a
32C6  210080  	 ld   hl,$8000
32C9  3A0684  	 ld   a,($8406)
32CC  77      	 ld   (hl),a
32CD  23      	 inc  hl
32CE  3A1384  	 ld   a,($8413)
32D1  77      	 ld   (hl),a
32D2  23      	 inc  hl
32D3  3A1284  	 ld   a,($8412)
32D6  77      	 ld   (hl),a
32D7  23      	 inc  hl
32D8  3A0784  	 ld   a,($8407)
32DB  77      	 ld   (hl),a
32DC  C9      	 ret
32DD  3A0784  	 ld   a,($8407)
32E0  E607    	 and  $07
32E2  FE02    	 cp   $02
32E4  C0      	 ret  nz
32E5  3A0684  	 ld   a,($8406)
32E8  E607    	 and  $07
32EA  FE04    	 cp   $04
32EC  C0      	 ret  nz
32ED  CD262F  	 call $2F26
32F0  E5      	 push hl
32F1  01E2FF  	 ld   bc,$FFE2
32F4  09      	 add  hl,bc
32F5  7E      	 ld   a,(hl)
32F6  FEF5    	 cp   $F5
32F8  C20033  	 jp   nz,$3300
32FB  3E01    	 ld   a,$01
32FD  322D84  	 ld   ($842D),a
3300  E1      	 pop  hl
3301  3A2284  	 ld   a,($8422)
3304  A7      	 and  a
3305  C22D33  	 jp   nz,$332D
3308  E5      	 push hl
3309  CD5733  	 call $3357
330C  E1      	 pop  hl
330D  E5      	 push hl
330E  CD2E33  	 call $332E
3311  E1      	 pop  hl
3312  E5      	 push hl
3313  CDAC33  	 call $33AC
3316  E1      	 pop  hl
3317  E5      	 push hl
3318  CDBA33  	 call $33BA
331B  E1      	 pop  hl
331C  E5      	 push hl
331D  CDD333  	 call $33D3
3320  E1      	 pop  hl
3321  3AE080  	 ld   a,($80E0)
3324  A7      	 and  a
3325  C22D33  	 jp   nz,$332D
3328  E5      	 push hl
3329  CD6533  	 call $3365
332C  E1      	 pop  hl
332D  C9      	 ret
332E  01E1FF  	 ld   bc,$FFE1
3331  09      	 add  hl,bc
3332  7E      	 ld   a,(hl)
3333  FE39    	 cp   $39
3335  CA3B33  	 jp   z,$333B
3338  FE3A    	 cp   $3A
333A  C0      	 ret  nz
333B  3A8086  	 ld   a,($8680)
333E  A7      	 and  a
333F  C0      	 ret  nz
3340  3AC185  	 ld   a,($85C1)
3343  A7      	 and  a
3344  C0      	 ret  nz
3345  3E01    	 ld   a,$01
3347  32C185  	 ld   ($85C1),a
334A  3A0684  	 ld   a,($8406)
334D  32C285  	 ld   ($85C2),a
3350  3A0784  	 ld   a,($8407)
3353  32C385  	 ld   ($85C3),a
3356  C9      	 ret
3357  01E2FF  	 ld   bc,$FFE2
335A  09      	 add  hl,bc
335B  7E      	 ld   a,(hl)
335C  FEFE    	 cp   $FE
335E  C0      	 ret  nz
335F  3E04    	 ld   a,$04
3361  321F84  	 ld   ($841F),a
3364  C9      	 ret
3365  01E2FF  	 ld   bc,$FFE2
3368  09      	 add  hl,bc
3369  7E      	 ld   a,(hl)
336A  FEFF    	 cp   $FF
336C  C0      	 ret  nz
336D  3A2D84  	 ld   a,($842D)
3370  A7      	 and  a
3371  C8      	 ret  z
3372  3A0784  	 ld   a,($8407)
3375  FE70    	 cp   $70
3377  D28833  	 jp   nc,$3388
337A  0E01    	 ld   c,$01
337C  3A1484  	 ld   a,($8414)
337F  07      	 rlca
3380  D29633  	 jp   nc,$3396
3383  0E02    	 ld   c,$02
3385  C39633  	 jp   $3396
3388  0E21    	 ld   c,$21
338A  3A1484  	 ld   a,($8414)
338D  07      	 rlca
338E  D29633  	 jp   nc,$3396
3391  0E22    	 ld   c,$22
3393  C39633  	 jp   $3396
3396  79      	 ld   a,c
3397  32E080  	 ld   ($80E0),a
339A  A7      	 and  a
339B  C8      	 ret  z
339C  3E05    	 ld   a,$05
339E  321F84  	 ld   ($841F),a
33A1  3E01    	 ld   a,$01
33A3  322284  	 ld   ($8422),a
33A6  3E00    	 ld   a,$00
33A8  322D84  	 ld   ($842D),a
33AB  C9      	 ret
33AC  01E2FF  	 ld   bc,$FFE2
33AF  09      	 add  hl,bc
33B0  7E      	 ld   a,(hl)
33B1  FEFC    	 cp   $FC
33B3  C0      	 ret  nz
33B4  3E01    	 ld   a,$01
33B6  32C080  	 ld   ($80C0),a
33B9  C9      	 ret
33BA  01E2FF  	 ld   bc,$FFE2
33BD  09      	 add  hl,bc
33BE  7E      	 ld   a,(hl)
33BF  FEF9    	 cp   $F9
33C1  C0      	 ret  nz
33C2  3AA080  	 ld   a,($80A0)
33C5  A7      	 and  a
33C6  C8      	 ret  z
33C7  3AA280  	 ld   a,($80A2)
33CA  FE01    	 cp   $01
33CC  C0      	 ret  nz
33CD  3E02    	 ld   a,$02
33CF  32A280  	 ld   ($80A2),a
33D2  C9      	 ret
33D3  3AA080  	 ld   a,($80A0)
33D6  A7      	 and  a
33D7  C0      	 ret  nz
33D8  01E1FF  	 ld   bc,$FFE1
33DB  09      	 add  hl,bc
33DC  7E      	 ld   a,(hl)
33DD  FEDC    	 cp   $DC
33DF  D8      	 ret  c
33E0  FEF0    	 cp   $F0
33E2  D0      	 ret  nc
33E3  0E02    	 ld   c,$02
33E5  CDA148  	 call $48A1
33E8  229C80  	 ld   ($809C),hl
33EB  7E      	 ld   a,(hl)
33EC  167A    	 ld   d,$7A
33EE  FEE1    	 cp   $E1
33F0  CA2834  	 jp   z,$3428
33F3  FEE3    	 cp   $E3
33F5  CA2834  	 jp   z,$3428
33F8  167C    	 ld   d,$7C
33FA  FEE5    	 cp   $E5
33FC  CA2834  	 jp   z,$3428
33FF  FEE7    	 cp   $E7
3401  CA2834  	 jp   z,$3428
3404  167E    	 ld   d,$7E
3406  FEE9    	 cp   $E9
3408  CA2834  	 jp   z,$3428
340B  FEEB    	 cp   $EB
340D  CA2834  	 jp   z,$3428
3410  167D    	 ld   d,$7D
3412  FEED    	 cp   $ED
3414  CA2834  	 jp   z,$3428
3417  FEEF    	 cp   $EF
3419  CA2834  	 jp   z,$3428
341C  167B    	 ld   d,$7B
341E  FEDD    	 cp   $DD
3420  CA2834  	 jp   z,$3428
3423  FEDF    	 cp   $DF
3425  CA2834  	 jp   z,$3428
3428  CBD4    	 set  2,h
342A  5E      	 ld   e,(hl)
342B  219E80  	 ld   hl,$809E
342E  73      	 ld   (hl),e
342F  23      	 inc  hl
3430  72      	 ld   (hl),d
3431  23      	 inc  hl
3432  3601    	 ld   (hl),$01
3434  E5      	 push hl
3435  D5      	 push de
3436  C5      	 push bc
3437  F5      	 push af
3438  CD5149  	 call $4951
343B  214080  	 ld   hl,$8040
343E  115934  	 ld   de,$3459
3441  0603    	 ld   b,$03
3443  3601    	 ld   (hl),$01
3445  23      	 inc  hl
3446  AF      	 xor  a
3447  1A      	 ld   a,(de)
3448  8E      	 adc  a,(hl)
3449  27      	 daa
344A  77      	 ld   (hl),a
344B  23      	 inc  hl
344C  13      	 inc  de
344D  10F8    	 djnz $3447
344F  3E84    	 ld   a,$84
3451  3200B8  	 ld   ($B800),a
3454  F1      	 pop  af
3455  C1      	 pop  bc
3456  D1      	 pop  de
3457  E1      	 pop  hl
3458  C9      	 ret
3459  00      	 nop
345A  010021  	 ld   bc,$2100
345D  08      	 ex   af,af'
345E  85      	 add  a,l
345F  7E      	 ld   a,(hl)
3460  A7      	 and  a
3461  C27B34  	 jp   nz,$347B
3464  3601    	 ld   (hl),$01
3466  212885  	 ld   hl,$8528
3469  016035  	 ld   bc,$3560
346C  CDCB3B  	 call $3BCB
346F  212D85  	 ld   hl,$852D
3472  013335  	 ld   bc,$3533
3475  CDCB3B  	 call $3BCB
3478  CD2A35  	 call $352A
347B  212985  	 ld   hl,$8529
347E  110085  	 ld   de,$8500
3481  01EFFF  	 ld   bc,$FFEF
3484  1A      	 ld   a,(de)
3485  A7      	 and  a
3486  CCFC34  	 call z,$34FC
3489  210A85  	 ld   hl,$850A
348C  7E      	 ld   a,(hl)
348D  A7      	 and  a
348E  C2A834  	 jp   nz,$34A8
3491  3601    	 ld   (hl),$01
3493  216885  	 ld   hl,$8568
3496  01B135  	 ld   bc,$35B1
3499  CDCB3B  	 call $3BCB
349C  216D85  	 ld   hl,$856D
349F  013335  	 ld   bc,$3533
34A2  CDCB3B  	 call $3BCB
34A5  CD2A35  	 call $352A
34A8  216985  	 ld   hl,$8569
34AB  110485  	 ld   de,$8504
34AE  01EFFF  	 ld   bc,$FFEF
34B1  1A      	 ld   a,(de)
34B2  A7      	 and  a
34B3  CCFC34  	 call z,$34FC
34B6  210B85  	 ld   hl,$850B
34B9  7E      	 ld   a,(hl)
34BA  A7      	 and  a
34BB  C2D534  	 jp   nz,$34D5
34BE  3601    	 ld   (hl),$01
34C0  218885  	 ld   hl,$8588
34C3  010236  	 ld   bc,$3602
34C6  CDCB3B  	 call $3BCB
34C9  218D85  	 ld   hl,$858D
34CC  013335  	 ld   bc,$3533
34CF  CDCB3B  	 call $3BCB
34D2  CD2A35  	 call $352A
34D5  218985  	 ld   hl,$8589
34D8  110685  	 ld   de,$8506
34DB  01EFFF  	 ld   bc,$FFEF
34DE  1A      	 ld   a,(de)
34DF  A7      	 and  a
34E0  CCFC34  	 call z,$34FC
34E3  210085  	 ld   hl,$8500
34E6  7E      	 ld   a,(hl)
34E7  A7      	 and  a
34E8  C44735  	 call nz,$3547
34EB  210485  	 ld   hl,$8504
34EE  7E      	 ld   a,(hl)
34EF  A7      	 and  a
34F0  C49835  	 call nz,$3598
34F3  210685  	 ld   hl,$8506
34F6  7E      	 ld   a,(hl)
34F7  A7      	 and  a
34F8  C4E935  	 call nz,$35E9
34FB  C9      	 ret
34FC  C5      	 push bc
34FD  46      	 ld   b,(hl)
34FE  2B      	 dec  hl
34FF  7E      	 ld   a,(hl)
3500  B0      	 or   b
3501  C1      	 pop  bc
3502  C21E35  	 jp   nz,$351E
3505  09      	 add  hl,bc
3506  7E      	 ld   a,(hl)
3507  FE03    	 cp   $03
3509  C21A35  	 jp   nz,$351A
350C  23      	 inc  hl
350D  7E      	 ld   a,(hl)
350E  E607    	 and  $07
3510  FE04    	 cp   $04
3512  C0      	 ret  nz
3513  23      	 inc  hl
3514  7E      	 ld   a,(hl)
3515  E607    	 and  $07
3517  FE02    	 cp   $02
3519  C0      	 ret  nz
351A  3E01    	 ld   a,$01
351C  12      	 ld   (de),a
351D  C9      	 ret
351E  7E      	 ld   a,(hl)
351F  A7      	 and  a
3520  CA2535  	 jp   z,$3525
3523  35      	 dec  (hl)
3524  C9      	 ret
3525  363C    	 ld   (hl),$3C
3527  23      	 inc  hl
3528  35      	 dec  (hl)
3529  C9      	 ret
352A  AF      	 xor  a
352B  23      	 inc  hl
352C  77      	 ld   (hl),a
352D  01E8FF  	 ld   bc,$FFE8
3530  09      	 add  hl,bc
3531  77      	 ld   (hl),a
3532  C9      	 ret
3533  3C      	 inc  a
3534  78      	 ld   a,b
3535  3C      	 inc  a
3536  64      	 ld   h,h
3537  3C      	 inc  a
3538  5A      	 ld   e,d
3539  3C      	 inc  a
353A  46      	 ld   b,(hl)
353B  3C      	 inc  a
353C  3C      	 inc  a
353D  3C      	 inc  a
353E  323C28  	 ld   ($283C),a
3541  3C      	 inc  a
3542  1E3C    	 ld   e,$3C
3544  14      	 inc  d
3545  3C      	 inc  a
3546  00      	 nop
3547  23      	 inc  hl
3548  7E      	 ld   a,(hl)
3549  A7      	 and  a
354A  C27435  	 jp   nz,$3574
354D  3601    	 ld   (hl),$01
354F  111085  	 ld   de,$8510
3552  217B35  	 ld   hl,$357B
3555  011D00  	 ld   bc,$001D
3558  EDB0    	 ldir
355A  3E87    	 ld   a,$87
355C  3200B8  	 ld   ($B800),a
355F  C9      	 ret
3560  3002    	 jr   nc,$3564
3562  3002    	 jr   nc,$3566
3564  3002    	 jr   nc,$3568
3566  34      	 inc  (hl)
3567  013000  	 ld   bc,$0030
356A  3000    	 jr   nc,$356C
356C  3000    	 jr   nc,$356E
356E  3000    	 jr   nc,$3570
3570  1000    	 djnz $3572
3572  1000    	 djnz $3574
3574  211785  	 ld   hl,$8517
3577  CD3A36  	 call $363A
357A  C9      	 ret
357B  00      	 nop
357C  00      	 nop
357D  00      	 nop
357E  05      	 dec  b
357F  1C      	 inc  e
3580  00      	 nop
3581  00      	 nop
3582  01B442  	 ld   bc,$42B4
3585  00      	 nop
3586  00      	 nop
3587  00      	 nop
3588  FF      	 rst  $38
3589  010001  	 ld   bc,$0100
358C  FF      	 rst  $38
358D  00      	 nop
358E  00      	 nop
358F  00      	 nop
3590  00      	 nop
3591  00      	 nop
3592  00      	 nop
3593  00      	 nop
3594  00      	 nop
3595  00      	 nop
3596  010023  	 ld   bc,$2300
3599  7E      	 ld   a,(hl)
359A  A7      	 and  a
359B  C2C535  	 jp   nz,$35C5
359E  3601    	 ld   (hl),$01
35A0  115085  	 ld   de,$8550
35A3  21CC35  	 ld   hl,$35CC
35A6  011D00  	 ld   bc,$001D
35A9  EDB0    	 ldir
35AB  3E87    	 ld   a,$87
35AD  3200B8  	 ld   ($B800),a
35B0  C9      	 ret
35B1  14      	 inc  d
35B2  1614    	 ld   d,$14
35B4  14      	 inc  d
35B5  14      	 inc  d
35B6  0F      	 rrca
35B7  14      	 inc  d
35B8  0D      	 dec  c
35B9  00      	 nop
35BA  0B      	 dec  bc
35BB  00      	 nop
35BC  09      	 add  hl,bc
35BD  1806    	 jr   $35C5
35BF  2805    	 jr   z,$35C6
35C1  2805    	 jr   z,$35C8
35C3  1004    	 djnz $35C9
35C5  215785  	 ld   hl,$8557
35C8  CD3A36  	 call $363A
35CB  C9      	 ret
35CC  00      	 nop
35CD  00      	 nop
35CE  00      	 nop
35CF  0D      	 dec  c
35D0  1C      	 inc  e
35D1  00      	 nop
35D2  00      	 nop
35D3  013442  	 ld   bc,$4234
35D6  00      	 nop
35D7  00      	 nop
35D8  00      	 nop
35D9  FF      	 rst  $38
35DA  010001  	 ld   bc,$0100
35DD  FF      	 rst  $38
35DE  00      	 nop
35DF  00      	 nop
35E0  00      	 nop
35E1  00      	 nop
35E2  00      	 nop
35E3  00      	 nop
35E4  00      	 nop
35E5  00      	 nop
35E6  00      	 nop
35E7  010023  	 ld   bc,$2300
35EA  7E      	 ld   a,(hl)
35EB  A7      	 and  a
35EC  C21636  	 jp   nz,$3616
35EF  3601    	 ld   (hl),$01
35F1  117085  	 ld   de,$8570
35F4  211D36  	 ld   hl,$361D
35F7  011D00  	 ld   bc,$001D
35FA  EDB0    	 ldir
35FC  3E87    	 ld   a,$87
35FE  3200B8  	 ld   ($B800),a
3601  C9      	 ret
3602  24      	 inc  h
3603  0624    	 ld   b,$24
3605  0614    	 ld   b,$14
3607  02      	 ld   (bc),a
3608  00      	 nop
3609  02      	 ld   (bc),a
360A  3000    	 jr   nc,$360C
360C  3000    	 jr   nc,$360E
360E  3000    	 jr   nc,$3610
3610  3000    	 jr   nc,$3612
3612  1000    	 djnz $3614
3614  1000    	 djnz $3616
3616  217785  	 ld   hl,$8577
3619  CD3A36  	 call $363A
361C  C9      	 ret
361D  00      	 nop
361E  00      	 nop
361F  00      	 nop
3620  111C00  	 ld   de,$001C
3623  00      	 nop
3624  0134C2  	 ld   bc,$C234
3627  00      	 nop
3628  00      	 nop
3629  00      	 nop
362A  FF      	 rst  $38
362B  010001  	 ld   bc,$0100
362E  FF      	 rst  $38
362F  00      	 nop
3630  00      	 nop
3631  00      	 nop
3632  00      	 nop
3633  00      	 nop
3634  00      	 nop
3635  00      	 nop
3636  00      	 nop
3637  00      	 nop
3638  0100E5  	 ld   bc,$E500
363B  EB      	 ex   de,hl
363C  211800  	 ld   hl,$0018
363F  19      	 add  hl,de
3640  54      	 ld   d,h
3641  5D      	 ld   e,l
3642  2B      	 dec  hl
3643  1A      	 ld   a,(de)
3644  A7      	 and  a
3645  01EAFF  	 ld   bc,$FFEA
3648  CCFC34  	 call z,$34FC
364B  E1      	 pop  hl
364C  7E      	 ld   a,(hl)
364D  FE01    	 cp   $01
364F  CA6C36  	 jp   z,$366C
3652  FE03    	 cp   $03
3654  CAB236  	 jp   z,$36B2
3657  FE04    	 cp   $04
3659  CAD93A  	 jp   z,$3AD9
365C  FE05    	 cp   $05
365E  CA183B  	 jp   z,$3B18
3661  FE06    	 cp   $06
3663  CA4C3B  	 jp   z,$3B4C
3666  FE07    	 cp   $07
3668  CA803B  	 jp   z,$3B80
366B  C9      	 ret
366C  3A3E80  	 ld   a,($803E)
366F  A7      	 and  a
3670  C0      	 ret  nz
3671  EB      	 ex   de,hl
3672  42      	 ld   b,d
3673  4B      	 ld   c,e
3674  211300  	 ld   hl,$0013
3677  19      	 add  hl,de
3678  1B      	 dec  de
3679  1B      	 dec  de
367A  1B      	 dec  de
367B  1B      	 dec  de
367C  34      	 inc  (hl)
367D  7E      	 ld   a,(hl)
367E  FE80    	 cp   $80
3680  D29436  	 jp   nc,$3694
3683  E61F    	 and  $1F
3685  FE10    	 cp   $10
3687  DA8E36  	 jp   c,$368E
368A  CD983A  	 call $3A98
368D  C9      	 ret
368E  061F    	 ld   b,$1F
3690  CD9E36  	 call $369E
3693  C9      	 ret
3694  23      	 inc  hl
3695  3600    	 ld   (hl),$00
3697  3E03    	 ld   a,$03
3699  02      	 ld   (bc),a
369A  CD983A  	 call $3A98
369D  C9      	 ret
369E  1A      	 ld   a,(de)
369F  210500  	 ld   hl,$0005
36A2  19      	 add  hl,de
36A3  EB      	 ex   de,hl
36A4  6F      	 ld   l,a
36A5  2680    	 ld   h,$80
36A7  70      	 ld   (hl),b
36A8  2B      	 dec  hl
36A9  1A      	 ld   a,(de)
36AA  77      	 ld   (hl),a
36AB  23      	 inc  hl
36AC  23      	 inc  hl
36AD  23      	 inc  hl
36AE  13      	 inc  de
36AF  1A      	 ld   a,(de)
36B0  77      	 ld   (hl),a
36B1  C9      	 ret
36B2  EB      	 ex   de,hl
36B3  211000  	 ld   hl,$0010
36B6  19      	 add  hl,de
36B7  7E      	 ld   a,(hl)
36B8  A7      	 and  a
36B9  CAC236  	 jp   z,$36C2
36BC  35      	 dec  (hl)
36BD  EB      	 ex   de,hl
36BE  23      	 inc  hl
36BF  C3B137  	 jp   $37B1
36C2  13      	 inc  de
36C3  01FBFF  	 ld   bc,$FFFB
36C6  09      	 add  hl,bc
36C7  EB      	 ex   de,hl
36C8  0607    	 ld   b,$07
36CA  3E14    	 ld   a,$14
36CC  BE      	 cp   (hl)
36CD  CAD836  	 jp   z,$36D8
36D0  C620    	 add  a,$20
36D2  10F8    	 djnz $36CC
36D4  23      	 inc  hl
36D5  C3B037  	 jp   $37B0
36D8  23      	 inc  hl
36D9  0607    	 ld   b,$07
36DB  3E22    	 ld   a,$22
36DD  BE      	 cp   (hl)
36DE  CA4537  	 jp   z,$3745
36E1  C620    	 add  a,$20
36E3  10F8    	 djnz $36DD
36E5  C3B037  	 jp   $37B0
36E8  ED5F    	 ld   a,r
36EA  E603    	 and  $03
36EC  FE01    	 cp   $01
36EE  C2F436  	 jp   nz,$36F4
36F1  3601    	 ld   (hl),$01
36F3  C9      	 ret
36F4  FE02    	 cp   $02
36F6  C2FC36  	 jp   nz,$36FC
36F9  3602    	 ld   (hl),$02
36FB  C9      	 ret
36FC  FE03    	 cp   $03
36FE  C20437  	 jp   nz,$3704
3701  3604    	 ld   (hl),$04
3703  C9      	 ret
3704  FE00    	 cp   $00
3706  C0      	 ret  nz
3707  3608    	 ld   (hl),$08
3709  C9      	 ret
370A  42      	 ld   b,d
370B  4B      	 ld   c,e
370C  54      	 ld   d,h
370D  5D      	 ld   e,l
370E  1B      	 dec  de
370F  EB      	 ex   de,hl
3710  0A      	 ld   a,(bc)
3711  A7      	 and  a
3712  C22D37  	 jp   nz,$372D
3715  3E01    	 ld   a,$01
3717  02      	 ld   (bc),a
3718  3A0380  	 ld   a,($8003)
371B  BE      	 cp   (hl)
371C  2B      	 dec  hl
371D  EB      	 ex   de,hl
371E  CA2A37  	 jp   z,$372A
3721  DA2737  	 jp   c,$3727
3724  3604    	 ld   (hl),$04
3726  C9      	 ret
3727  3608    	 ld   (hl),$08
3729  C9      	 ret
372A  3600    	 ld   (hl),$00
372C  C9      	 ret
372D  2B      	 dec  hl
372E  3E00    	 ld   a,$00
3730  02      	 ld   (bc),a
3731  3A0080  	 ld   a,($8000)
3734  BE      	 cp   (hl)
3735  EB      	 ex   de,hl
3736  CA4237  	 jp   z,$3742
3739  DA3F37  	 jp   c,$373F
373C  3602    	 ld   (hl),$02
373E  C9      	 ret
373F  3601    	 ld   (hl),$01
3741  C9      	 ret
3742  3600    	 ld   (hl),$00
3744  C9      	 ret
3745  E5      	 push hl
3746  011300  	 ld   bc,$0013
3749  09      	 add  hl,bc
374A  34      	 inc  (hl)
374B  44      	 ld   b,h
374C  4D      	 ld   c,l
374D  E1      	 pop  hl
374E  23      	 inc  hl
374F  7D      	 ld   a,l
3750  E6F0    	 and  $F0
3752  FE10    	 cp   $10
3754  C26937  	 jp   nz,$3769
3757  0A      	 ld   a,(bc)
3758  E603    	 and  $03
375A  FE00    	 cp   $00
375C  C40A37  	 call nz,$370A
375F  EB      	 ex   de,hl
3760  210D00  	 ld   hl,$000D
3763  19      	 add  hl,de
3764  3630    	 ld   (hl),$30
3766  C3AE37  	 jp   $37AE
3769  FE30    	 cp   $30
376B  C28037  	 jp   nz,$3780
376E  0A      	 ld   a,(bc)
376F  E603    	 and  $03
3771  FE02    	 cp   $02
3773  C40A37  	 call nz,$370A
3776  EB      	 ex   de,hl
3777  210D00  	 ld   hl,$000D
377A  19      	 add  hl,de
377B  3610    	 ld   (hl),$10
377D  C3AE37  	 jp   $37AE
3780  FE50    	 cp   $50
3782  C29737  	 jp   nz,$3797
3785  0A      	 ld   a,(bc)
3786  E607    	 and  $07
3788  FE05    	 cp   $05
378A  C40A37  	 call nz,$370A
378D  EB      	 ex   de,hl
378E  210D00  	 ld   hl,$000D
3791  19      	 add  hl,de
3792  3620    	 ld   (hl),$20
3794  C3AE37  	 jp   $37AE
3797  FE70    	 cp   $70
3799  00      	 nop
379A  00      	 nop
379B  00      	 nop
379C  C29A37  	 jp   nz,$379A
379F  0A      	 ld   a,(bc)
37A0  E607    	 and  $07
37A2  FE07    	 cp   $07
37A4  C40A37  	 call nz,$370A
37A7  EB      	 ex   de,hl
37A8  210D00  	 ld   hl,$000D
37AB  19      	 add  hl,de
37AC  3610    	 ld   (hl),$10
37AE  EB      	 ex   de,hl
37AF  2B      	 dec  hl
37B0  2B      	 dec  hl
37B1  54      	 ld   d,h
37B2  5D      	 ld   e,l
37B3  7E      	 ld   a,(hl)
37B4  23      	 inc  hl
37B5  E607    	 and  $07
37B7  FE04    	 cp   $04
37B9  C23F3A  	 jp   nz,$3A3F
37BC  7E      	 ld   a,(hl)
37BD  E607    	 and  $07
37BF  FE02    	 cp   $02
37C1  C23F3A  	 jp   nz,$3A3F
37C4  EB      	 ex   de,hl
37C5  CDAF3A  	 call $3AAF
37C8  01E2FF  	 ld   bc,$FFE2
37CB  09      	 add  hl,bc
37CC  3EFE    	 ld   a,$FE
37CE  BE      	 cp   (hl)
37CF  C2EE37  	 jp   nz,$37EE
37D2  1B      	 dec  de
37D3  3E95    	 ld   a,$95
37D5  3200B8  	 ld   ($B800),a
37D8  3E04    	 ld   a,$04
37DA  12      	 ld   (de),a
37DB  211400  	 ld   hl,$0014
37DE  19      	 add  hl,de
37DF  3601    	 ld   (hl),$01
37E1  21FDFF  	 ld   hl,$FFFD
37E4  19      	 add  hl,de
37E5  361C    	 ld   (hl),$1C
37E7  210300  	 ld   hl,$0003
37EA  19      	 add  hl,de
37EB  3600    	 ld   (hl),$00
37ED  13      	 inc  de
37EE  EB      	 ex   de,hl
37EF  23      	 inc  hl
37F0  54      	 ld   d,h
37F1  5D      	 ld   e,l
37F2  23      	 inc  hl
37F3  1B      	 dec  de
37F4  7E      	 ld   a,(hl)
37F5  0F      	 rrca
37F6  DAC038  	 jp   c,$38C0
37F9  0F      	 rrca
37FA  DA0C39  	 jp   c,$390C
37FD  0F      	 rrca
37FE  DA5839  	 jp   c,$3958
3801  0F      	 rrca
3802  DAA639  	 jp   c,$39A6
3805  EB      	 ex   de,hl
3806  21FCFF  	 ld   hl,$FFFC
3809  19      	 add  hl,de
380A  35      	 dec  (hl)
380B  EB      	 ex   de,hl
380C  23      	 inc  hl
380D  23      	 inc  hl
380E  3E00    	 ld   a,$00
3810  77      	 ld   (hl),a
3811  23      	 inc  hl
3812  23      	 inc  hl
3813  23      	 inc  hl
3814  77      	 ld   (hl),a
3815  C3593A  	 jp   $3A59
3818  13      	 inc  de
3819  13      	 inc  de
381A  1A      	 ld   a,(de)
381B  FE03    	 cp   $03
381D  D27038  	 jp   nc,$3870
3820  ED5F    	 ld   a,r
3822  E60F    	 and  $0F
3824  FE02    	 cp   $02
3826  DA4038  	 jp   c,$3840
3829  FE09    	 cp   $09
382B  3EEF    	 ld   a,$EF
382D  DA5D38  	 jp   c,$385D
3830  21E1FF  	 ld   hl,$FFE1
3833  09      	 add  hl,bc
3834  BE      	 cp   (hl)
3835  DA5738  	 jp   c,$3857
3838  21E3FF  	 ld   hl,$FFE3
383B  09      	 add  hl,bc
383C  BE      	 cp   (hl)
383D  DA5138  	 jp   c,$3851
3840  EB      	 ex   de,hl
3841  7E      	 ld   a,(hl)
3842  FE01    	 cp   $01
3844  CA4C38  	 jp   z,$384C
3847  3601    	 ld   (hl),$01
3849  C30538  	 jp   $3805
384C  3602    	 ld   (hl),$02
384E  C30538  	 jp   $3805
3851  EB      	 ex   de,hl
3852  3604    	 ld   (hl),$04
3854  C30538  	 jp   $3805
3857  EB      	 ex   de,hl
3858  3608    	 ld   (hl),$08
385A  C30538  	 jp   $3805
385D  21E3FF  	 ld   hl,$FFE3
3860  09      	 add  hl,bc
3861  BE      	 cp   (hl)
3862  DA5138  	 jp   c,$3851
3865  21E1FF  	 ld   hl,$FFE1
3868  09      	 add  hl,bc
3869  BE      	 cp   (hl)
386A  DA5738  	 jp   c,$3857
386D  C34038  	 jp   $3840
3870  ED5F    	 ld   a,r
3872  E60F    	 and  $0F
3874  FE02    	 cp   $02
3876  DA9038  	 jp   c,$3890
3879  FE09    	 cp   $09
387B  3EEF    	 ld   a,$EF
387D  DAAD38  	 jp   c,$38AD
3880  21C2FF  	 ld   hl,$FFC2
3883  09      	 add  hl,bc
3884  BE      	 cp   (hl)
3885  DAA138  	 jp   c,$38A1
3888  210200  	 ld   hl,$0002
388B  09      	 add  hl,bc
388C  BE      	 cp   (hl)
388D  DAA738  	 jp   c,$38A7
3890  EB      	 ex   de,hl
3891  7E      	 ld   a,(hl)
3892  FE04    	 cp   $04
3894  CA9C38  	 jp   z,$389C
3897  3604    	 ld   (hl),$04
3899  C30538  	 jp   $3805
389C  3608    	 ld   (hl),$08
389E  C30538  	 jp   $3805
38A1  EB      	 ex   de,hl
38A2  3602    	 ld   (hl),$02
38A4  C30538  	 jp   $3805
38A7  EB      	 ex   de,hl
38A8  3601    	 ld   (hl),$01
38AA  C30538  	 jp   $3805
38AD  210200  	 ld   hl,$0002
38B0  09      	 add  hl,bc
38B1  BE      	 cp   (hl)
38B2  DAA738  	 jp   c,$38A7
38B5  21C2FF  	 ld   hl,$FFC2
38B8  09      	 add  hl,bc
38B9  BE      	 cp   (hl)
38BA  DAA138  	 jp   c,$38A1
38BD  C39038  	 jp   $3890
38C0  23      	 inc  hl
38C1  3600    	 ld   (hl),$00
38C3  23      	 inc  hl
38C4  1A      	 ld   a,(de)
38C5  FE0C    	 cp   $0C
38C7  CA0538  	 jp   z,$3805
38CA  D2D338  	 jp   nc,$38D3
38CD  3E0C    	 ld   a,$0C
38CF  12      	 ld   (de),a
38D0  C30538  	 jp   $3805
38D3  13      	 inc  de
38D4  CDAF3A  	 call $3AAF
38D7  44      	 ld   b,h
38D8  4D      	 ld   c,l
38D9  210200  	 ld   hl,$0002
38DC  09      	 add  hl,bc
38DD  3EEF    	 ld   a,$EF
38DF  BE      	 cp   (hl)
38E0  D21838  	 jp   nc,$3818
38E3  210D00  	 ld   hl,$000D
38E6  19      	 add  hl,de
38E7  EB      	 ex   de,hl
38E8  21E2FF  	 ld   hl,$FFE2
38EB  CDCA3A  	 call $3ACA
38EE  A7      	 and  a
38EF  C2F838  	 jp   nz,$38F8
38F2  210200  	 ld   hl,$0002
38F5  CDCA3A  	 call $3ACA
38F8  21F7FF  	 ld   hl,$FFF7
38FB  19      	 add  hl,de
38FC  54      	 ld   d,h
38FD  5D      	 ld   e,l
38FE  13      	 inc  de
38FF  1A      	 ld   a,(de)
3900  77      	 ld   (hl),a
3901  3E00    	 ld   a,$00
3903  13      	 inc  de
3904  13      	 inc  de
3905  12      	 ld   (de),a
3906  210600  	 ld   hl,$0006
3909  C3473A  	 jp   $3A47
390C  23      	 inc  hl
390D  3680    	 ld   (hl),$80
390F  23      	 inc  hl
3910  1A      	 ld   a,(de)
3911  FEE4    	 cp   $E4
3913  CA0538  	 jp   z,$3805
3916  DA1F39  	 jp   c,$391F
3919  3EE4    	 ld   a,$E4
391B  12      	 ld   (de),a
391C  C30538  	 jp   $3805
391F  13      	 inc  de
3920  CDAF3A  	 call $3AAF
3923  44      	 ld   b,h
3924  4D      	 ld   c,l
3925  21C2FF  	 ld   hl,$FFC2
3928  09      	 add  hl,bc
3929  3EEF    	 ld   a,$EF
392B  BE      	 cp   (hl)
392C  D21838  	 jp   nc,$3818
392F  210D00  	 ld   hl,$000D
3932  19      	 add  hl,de
3933  EB      	 ex   de,hl
3934  21E2FF  	 ld   hl,$FFE2
3937  CDCA3A  	 call $3ACA
393A  A7      	 and  a
393B  C24439  	 jp   nz,$3944
393E  21C2FF  	 ld   hl,$FFC2
3941  CDCA3A  	 call $3ACA
3944  21F7FF  	 ld   hl,$FFF7
3947  19      	 add  hl,de
3948  54      	 ld   d,h
3949  5D      	 ld   e,l
394A  13      	 inc  de
394B  13      	 inc  de
394C  1A      	 ld   a,(de)
394D  77      	 ld   (hl),a
394E  3E00    	 ld   a,$00
3950  13      	 inc  de
3951  12      	 ld   (de),a
3952  210600  	 ld   hl,$0006
3955  C3473A  	 jp   $3A47
3958  23      	 inc  hl
3959  3604    	 ld   (hl),$04
395B  23      	 inc  hl
395C  13      	 inc  de
395D  1A      	 ld   a,(de)
395E  FEEC    	 cp   $EC
3960  CA0538  	 jp   z,$3805
3963  DA6C39  	 jp   c,$396C
3966  3EE4    	 ld   a,$E4
3968  12      	 ld   (de),a
3969  C30538  	 jp   $3805
396C  CDAF3A  	 call $3AAF
396F  44      	 ld   b,h
3970  4D      	 ld   c,l
3971  21E3FF  	 ld   hl,$FFE3
3974  09      	 add  hl,bc
3975  3EEF    	 ld   a,$EF
3977  BE      	 cp   (hl)
3978  D21838  	 jp   nc,$3818
397B  210D00  	 ld   hl,$000D
397E  19      	 add  hl,de
397F  EB      	 ex   de,hl
3980  21E2FF  	 ld   hl,$FFE2
3983  CDCA3A  	 call $3ACA
3986  A7      	 and  a
3987  C29039  	 jp   nz,$3990
398A  21E3FF  	 ld   hl,$FFE3
398D  CDCA3A  	 call $3ACA
3990  21F7FF  	 ld   hl,$FFF7
3993  19      	 add  hl,de
3994  3E00    	 ld   a,$00
3996  77      	 ld   (hl),a
3997  23      	 inc  hl
3998  23      	 inc  hl
3999  23      	 inc  hl
399A  54      	 ld   d,h
399B  5D      	 ld   e,l
399C  13      	 inc  de
399D  1A      	 ld   a,(de)
399E  77      	 ld   (hl),a
399F  EB      	 ex   de,hl
39A0  210600  	 ld   hl,$0006
39A3  C3473A  	 jp   $3A47
39A6  23      	 inc  hl
39A7  3608    	 ld   (hl),$08
39A9  23      	 inc  hl
39AA  13      	 inc  de
39AB  1A      	 ld   a,(de)
39AC  FE14    	 cp   $14
39AE  CA0538  	 jp   z,$3805
39B1  D2BA39  	 jp   nc,$39BA
39B4  3E14    	 ld   a,$14
39B6  12      	 ld   (de),a
39B7  C30538  	 jp   $3805
39BA  CDAF3A  	 call $3AAF
39BD  44      	 ld   b,h
39BE  4D      	 ld   c,l
39BF  21E1FF  	 ld   hl,$FFE1
39C2  09      	 add  hl,bc
39C3  3EEF    	 ld   a,$EF
39C5  BE      	 cp   (hl)
39C6  D21838  	 jp   nc,$3818
39C9  210D00  	 ld   hl,$000D
39CC  19      	 add  hl,de
39CD  EB      	 ex   de,hl
39CE  21E2FF  	 ld   hl,$FFE2
39D1  CDCA3A  	 call $3ACA
39D4  A7      	 and  a
39D5  C2DE39  	 jp   nz,$39DE
39D8  21E1FF  	 ld   hl,$FFE1
39DB  CDCA3A  	 call $3ACA
39DE  21F7FF  	 ld   hl,$FFF7
39E1  19      	 add  hl,de
39E2  3E00    	 ld   a,$00
39E4  77      	 ld   (hl),a
39E5  23      	 inc  hl
39E6  23      	 inc  hl
39E7  23      	 inc  hl
39E8  54      	 ld   d,h
39E9  5D      	 ld   e,l
39EA  13      	 inc  de
39EB  13      	 inc  de
39EC  1A      	 ld   a,(de)
39ED  77      	 ld   (hl),a
39EE  EB      	 ex   de,hl
39EF  210600  	 ld   hl,$0006
39F2  C3473A  	 jp   $3A47
39F5  7E      	 ld   a,(hl)
39F6  FE01    	 cp   $01
39F8  C2FE39  	 jp   nz,$39FE
39FB  3602    	 ld   (hl),$02
39FD  C9      	 ret
39FE  FEFF    	 cp   $FF
3A00  C0      	 ret  nz
3A01  36FE    	 ld   (hl),$FE
3A03  C9      	 ret
3A04  7E      	 ld   a,(hl)
3A05  FE02    	 cp   $02
3A07  C20D3A  	 jp   nz,$3A0D
3A0A  3601    	 ld   (hl),$01
3A0C  C9      	 ret
3A0D  FEFE    	 cp   $FE
3A0F  C0      	 ret  nz
3A10  36FF    	 ld   (hl),$FF
3A12  C9      	 ret
3A13  00      	 nop
3A14  00      	 nop
3A15  00      	 nop
3A16  00      	 nop
3A17  2B      	 dec  hl
3A18  2B      	 dec  hl
3A19  2B      	 dec  hl
3A1A  13      	 inc  de
3A1B  1A      	 ld   a,(de)
3A1C  E603    	 and  $03
3A1E  A7      	 and  a
3A1F  C2243A  	 jp   nz,$3A24
3A22  3E03    	 ld   a,$03
3A24  3D      	 dec  a
3A25  12      	 ld   (de),a
3A26  FE01    	 cp   $01
3A28  C2353A  	 jp   nz,$3A35
3A2B  CDF539  	 call $39F5
3A2E  23      	 inc  hl
3A2F  23      	 inc  hl
3A30  23      	 inc  hl
3A31  CDF539  	 call $39F5
3A34  C9      	 ret
3A35  CD043A  	 call $3A04
3A38  23      	 inc  hl
3A39  23      	 inc  hl
3A3A  23      	 inc  hl
3A3B  CD043A  	 call $3A04
3A3E  C9      	 ret
3A3F  210700  	 ld   hl,$0007
3A42  19      	 add  hl,de
3A43  EB      	 ex   de,hl
3A44  210600  	 ld   hl,$0006
3A47  19      	 add  hl,de
3A48  EB      	 ex   de,hl
3A49  44      	 ld   b,h
3A4A  4D      	 ld   c,l
3A4B  211000  	 ld   hl,$0010
3A4E  09      	 add  hl,bc
3A4F  7E      	 ld   a,(hl)
3A50  60      	 ld   h,b
3A51  69      	 ld   l,c
3A52  A7      	 and  a
3A53  C4133A  	 call nz,$3A13
3A56  00      	 nop
3A57  00      	 nop
3A58  00      	 nop
3A59  00      	 nop
3A5A  00      	 nop
3A5B  00      	 nop
3A5C  54      	 ld   d,h
3A5D  5D      	 ld   e,l
3A5E  01FAFF  	 ld   bc,$FFFA
3A61  09      	 add  hl,bc
3A62  1A      	 ld   a,(de)
3A63  86      	 add  a,(hl)
3A64  77      	 ld   (hl),a
3A65  1B      	 dec  de
3A66  1B      	 dec  de
3A67  1B      	 dec  de
3A68  2B      	 dec  hl
3A69  1A      	 ld   a,(de)
3A6A  86      	 add  a,(hl)
3A6B  77      	 ld   (hl),a
3A6C  2B      	 dec  hl
3A6D  2B      	 dec  hl
3A6E  7E      	 ld   a,(hl)
3A6F  3C      	 inc  a
3A70  E607    	 and  $07
3A72  77      	 ld   (hl),a
3A73  FE04    	 cp   $04
3A75  DA7D3A  	 jp   c,$3A7D
3A78  3600    	 ld   (hl),$00
3A7A  2B      	 dec  hl
3A7B  34      	 inc  (hl)
3A7C  23      	 inc  hl
3A7D  2B      	 dec  hl
3A7E  1B      	 dec  de
3A7F  CD863A  	 call $3A86
3A82  CD983A  	 call $3A98
3A85  C9      	 ret
3A86  7E      	 ld   a,(hl)
3A87  E603    	 and  $03
3A89  47      	 ld   b,a
3A8A  1A      	 ld   a,(de)
3A8B  E6CC    	 and  $CC
3A8D  4F      	 ld   c,a
3A8E  2B      	 dec  hl
3A8F  7E      	 ld   a,(hl)
3A90  E630    	 and  $30
3A92  B0      	 or   b
3A93  B1      	 or   c
3A94  77      	 ld   (hl),a
3A95  EB      	 ex   de,hl
3A96  1B      	 dec  de
3A97  C9      	 ret
3A98  1A      	 ld   a,(de)
3A99  6F      	 ld   l,a
3A9A  2680    	 ld   h,$80
3A9C  13      	 inc  de
3A9D  1A      	 ld   a,(de)
3A9E  77      	 ld   (hl),a
3A9F  13      	 inc  de
3AA0  13      	 inc  de
3AA1  13      	 inc  de
3AA2  13      	 inc  de
3AA3  2B      	 dec  hl
3AA4  1A      	 ld   a,(de)
3AA5  77      	 ld   (hl),a
3AA6  23      	 inc  hl
3AA7  23      	 inc  hl
3AA8  3606    	 ld   (hl),$06
3AAA  23      	 inc  hl
3AAB  13      	 inc  de
3AAC  1A      	 ld   a,(de)
3AAD  77      	 ld   (hl),a
3AAE  C9      	 ret
3AAF  1A      	 ld   a,(de)
3AB0  0F      	 rrca
3AB1  0F      	 rrca
3AB2  0F      	 rrca
3AB3  E61F    	 and  $1F
3AB5  6F      	 ld   l,a
3AB6  1B      	 dec  de
3AB7  1A      	 ld   a,(de)
3AB8  ED44    	 neg
3ABA  07      	 rlca
3ABB  07      	 rlca
3ABC  67      	 ld   h,a
3ABD  E6E0    	 and  $E0
3ABF  B5      	 or   l
3AC0  6F      	 ld   l,a
3AC1  7C      	 ld   a,h
3AC2  E603    	 and  $03
3AC4  67      	 ld   h,a
3AC5  3E90    	 ld   a,$90
3AC7  84      	 add  a,h
3AC8  67      	 ld   h,a
3AC9  C9      	 ret
3ACA  09      	 add  hl,bc
3ACB  3EF4    	 ld   a,$F4
3ACD  BE      	 cp   (hl)
3ACE  CAD53A  	 jp   z,$3AD5
3AD1  3E00    	 ld   a,$00
3AD3  12      	 ld   (de),a
3AD4  C9      	 ret
3AD5  3E01    	 ld   a,$01
3AD7  12      	 ld   (de),a
3AD8  C9      	 ret
3AD9  EB      	 ex   de,hl
3ADA  21F9FF  	 ld   hl,$FFF9
3ADD  19      	 add  hl,de
3ADE  34      	 inc  (hl)
3ADF  7E      	 ld   a,(hl)
3AE0  FE10    	 cp   $10
3AE2  DA0F3B  	 jp   c,$3B0F
3AE5  CAFA3A  	 jp   z,$3AFA
3AE8  E607    	 and  $07
3AEA  FE00    	 cp   $00
3AEC  C2003B  	 jp   nz,$3B00
3AEF  21FDFF  	 ld   hl,$FFFD
3AF2  19      	 add  hl,de
3AF3  3E80    	 ld   a,$80
3AF5  86      	 add  a,(hl)
3AF6  77      	 ld   (hl),a
3AF7  C3003B  	 jp   $3B00
3AFA  21FDFF  	 ld   hl,$FFFD
3AFD  19      	 add  hl,de
3AFE  365C    	 ld   (hl),$5C
3B00  62      	 ld   h,d
3B01  6B      	 ld   l,e
3B02  23      	 inc  hl
3B03  23      	 inc  hl
3B04  7E      	 ld   a,(hl)
3B05  C602    	 add  a,$02
3B07  FEE0    	 cp   $E0
3B09  DA0E3B  	 jp   c,$3B0E
3B0C  3EE0    	 ld   a,$E0
3B0E  77      	 ld   (hl),a
3B0F  21FCFF  	 ld   hl,$FFFC
3B12  19      	 add  hl,de
3B13  EB      	 ex   de,hl
3B14  CD983A  	 call $3A98
3B17  C9      	 ret
3B18  EB      	 ex   de,hl
3B19  21FAFF  	 ld   hl,$FFFA
3B1C  19      	 add  hl,de
3B1D  34      	 inc  (hl)
3B1E  7E      	 ld   a,(hl)
3B1F  23      	 inc  hl
3B20  23      	 inc  hl
3B21  23      	 inc  hl
3B22  FE01    	 cp   $01
3B24  C2293B  	 jp   nz,$3B29
3B27  365D    	 ld   (hl),$5D
3B29  FE08    	 cp   $08
3B2B  C2303B  	 jp   nz,$3B30
3B2E  3631    	 ld   (hl),$31
3B30  FE14    	 cp   $14
3B32  C2373B  	 jp   nz,$3B37
3B35  3630    	 ld   (hl),$30
3B37  FE20    	 cp   $20
3B39  C23E3B  	 jp   nz,$3B3E
3B3C  3628    	 ld   (hl),$28
3B3E  FE80    	 cp   $80
3B40  DA463B  	 jp   c,$3B46
3B43  3E07    	 ld   a,$07
3B45  12      	 ld   (de),a
3B46  EB      	 ex   de,hl
3B47  1B      	 dec  de
3B48  CD983A  	 call $3A98
3B4B  C9      	 ret
3B4C  EB      	 ex   de,hl
3B4D  21FAFF  	 ld   hl,$FFFA
3B50  19      	 add  hl,de
3B51  34      	 inc  (hl)
3B52  7E      	 ld   a,(hl)
3B53  23      	 inc  hl
3B54  23      	 inc  hl
3B55  23      	 inc  hl
3B56  FE01    	 cp   $01
3B58  C25D3B  	 jp   nz,$3B5D
3B5B  361C    	 ld   (hl),$1C
3B5D  FE08    	 cp   $08
3B5F  C2643B  	 jp   nz,$3B64
3B62  361D    	 ld   (hl),$1D
3B64  FE14    	 cp   $14
3B66  C26B3B  	 jp   nz,$3B6B
3B69  361E    	 ld   (hl),$1E
3B6B  FE20    	 cp   $20
3B6D  C2723B  	 jp   nz,$3B72
3B70  3628    	 ld   (hl),$28
3B72  FE80    	 cp   $80
3B74  DA7A3B  	 jp   c,$3B7A
3B77  3E07    	 ld   a,$07
3B79  12      	 ld   (de),a
3B7A  EB      	 ex   de,hl
3B7B  1B      	 dec  de
3B7C  CD983A  	 call $3A98
3B7F  C9      	 ret
3B80  0E00    	 ld   c,$00
3B82  23      	 inc  hl
3B83  71      	 ld   (hl),c
3B84  23      	 inc  hl
3B85  71      	 ld   (hl),c
3B86  54      	 ld   d,h
3B87  7D      	 ld   a,l
3B88  FE19    	 cp   $19
3B8A  C2913B  	 jp   nz,$3B91
3B8D  59      	 ld   e,c
3B8E  C3B03B  	 jp   $3BB0
3B91  FE39    	 cp   $39
3B93  C29B3B  	 jp   nz,$3B9B
3B96  1E02    	 ld   e,$02
3B98  C3B03B  	 jp   $3BB0
3B9B  FE59    	 cp   $59
3B9D  C2A53B  	 jp   nz,$3BA5
3BA0  1E04    	 ld   e,$04
3BA2  C3B03B  	 jp   $3BB0
3BA5  FE79    	 cp   $79
3BA7  CAAE3B  	 jp   z,$3BAE
3BAA  00      	 nop
3BAB  C3AA3B  	 jp   $3BAA
3BAE  1E06    	 ld   e,$06
3BB0  EB      	 ex   de,hl
3BB1  71      	 ld   (hl),c
3BB2  23      	 inc  hl
3BB3  71      	 ld   (hl),c
3BB4  EB      	 ex   de,hl
3BB5  11FAFF  	 ld   de,$FFFA
3BB8  19      	 add  hl,de
3BB9  EB      	 ex   de,hl
3BBA  211500  	 ld   hl,$0015
3BBD  01EB3B  	 ld   bc,$3BEB
3BC0  19      	 add  hl,de
3BC1  CDCB3B  	 call $3BCB
3BC4  CD983A  	 call $3A98
3BC7  C9      	 ret
3BC8  00      	 nop
3BC9  00      	 nop
3BCA  00      	 nop
3BCB  E5      	 push hl
3BCC  60      	 ld   h,b
3BCD  69      	 ld   l,c
3BCE  3A0181  	 ld   a,($8101)
3BD1  FE09    	 cp   $09
3BD3  DAD83B  	 jp   c,$3BD8
3BD6  3E09    	 ld   a,$09
3BD8  A7      	 and  a
3BD9  CAE13B  	 jp   z,$3BE1
3BDC  47      	 ld   b,a
3BDD  23      	 inc  hl
3BDE  23      	 inc  hl
3BDF  10FC    	 djnz $3BDD
3BE1  4E      	 ld   c,(hl)
3BE2  23      	 inc  hl
3BE3  46      	 ld   b,(hl)
3BE4  E1      	 pop  hl
3BE5  71      	 ld   (hl),c
3BE6  23      	 inc  hl
3BE7  70      	 ld   (hl),b
3BE8  C9      	 ret
3BE9  00      	 nop
3BEA  00      	 nop
3BEB  00      	 nop
3BEC  08      	 ex   af,af'
3BED  14      	 inc  d
3BEE  04      	 inc  b
3BEF  00      	 nop
3BF0  04      	 inc  b
3BF1  00      	 nop
3BF2  04      	 inc  b
3BF3  14      	 inc  d
3BF4  03      	 inc  bc
3BF5  14      	 inc  d
3BF6  03      	 inc  bc
3BF7  14      	 inc  d
3BF8  03      	 inc  bc
3BF9  14      	 inc  d
3BFA  02      	 ld   (bc),a
3BFB  14      	 inc  d
3BFC  02      	 ld   (bc),a
3BFD  14      	 inc  d
3BFE  02      	 ld   (bc),a
3BFF  00      	 nop
3C00  00      	 nop
3C01  00      	 nop
3C02  00      	 nop
3C03  00      	 nop
3C04  00      	 nop
3C05  210886  	 ld   hl,$8608
3C08  7E      	 ld   a,(hl)
3C09  A7      	 and  a
3C0A  C2183C  	 jp   nz,$3C18
3C0D  3601    	 ld   (hl),$01
3C0F  212886  	 ld   hl,$8628
3C12  01073D  	 ld   bc,$3D07
3C15  CDE93C  	 call $3CE9
3C18  110086  	 ld   de,$8600
3C1B  212986  	 ld   hl,$8629
3C1E  1A      	 ld   a,(de)
3C1F  A7      	 and  a
3C20  CC523C  	 call z,$3C52
3C23  210986  	 ld   hl,$8609
3C26  7E      	 ld   a,(hl)
3C27  A7      	 and  a
3C28  C2363C  	 jp   nz,$3C36
3C2B  3601    	 ld   (hl),$01
3C2D  214886  	 ld   hl,$8648
3C30  011D3D  	 ld   bc,$3D1D
3C33  CDE93C  	 call $3CE9
3C36  110286  	 ld   de,$8602
3C39  214986  	 ld   hl,$8649
3C3C  1A      	 ld   a,(de)
3C3D  A7      	 and  a
3C3E  CC523C  	 call z,$3C52
3C41  210086  	 ld   hl,$8600
3C44  7E      	 ld   a,(hl)
3C45  A7      	 and  a
3C46  C4693C  	 call nz,$3C69
3C49  210286  	 ld   hl,$8602
3C4C  7E      	 ld   a,(hl)
3C4D  A7      	 and  a
3C4E  C4A93C  	 call nz,$3CA9
3C51  C9      	 ret
3C52  46      	 ld   b,(hl)
3C53  2B      	 dec  hl
3C54  7E      	 ld   a,(hl)
3C55  B0      	 or   b
3C56  C25D3C  	 jp   nz,$3C5D
3C59  3E01    	 ld   a,$01
3C5B  12      	 ld   (de),a
3C5C  C9      	 ret
3C5D  7E      	 ld   a,(hl)
3C5E  A7      	 and  a
3C5F  CA643C  	 jp   z,$3C64
3C62  35      	 dec  (hl)
3C63  C9      	 ret
3C64  36FF    	 ld   (hl),$FF
3C66  23      	 inc  hl
3C67  35      	 dec  (hl)
3C68  C9      	 ret
3C69  23      	 inc  hl
3C6A  7E      	 ld   a,(hl)
3C6B  A7      	 and  a
3C6C  C2823C  	 jp   nz,$3C82
3C6F  3601    	 ld   (hl),$01
3C71  111086  	 ld   de,$8610
3C74  21893C  	 ld   hl,$3C89
3C77  012000  	 ld   bc,$0020
3C7A  EDB0    	 ldir
3C7C  3E86    	 ld   a,$86
3C7E  3200B8  	 ld   ($B800),a
3C81  C9      	 ret
3C82  211786  	 ld   hl,$8617
3C85  CD313D  	 call $3D31
3C88  C9      	 ret
3C89  00      	 nop
3C8A  00      	 nop
3C8B  00      	 nop
3C8C  15      	 dec  d
3C8D  2C      	 inc  l
3C8E  00      	 nop
3C8F  00      	 nop
3C90  01B4C2  	 ld   bc,$C2B4
3C93  00      	 nop
3C94  00      	 nop
3C95  00      	 nop
3C96  FF      	 rst  $38
3C97  010001  	 ld   bc,$0100
3C9A  FF      	 rst  $38
3C9B  00      	 nop
3C9C  00      	 nop
3C9D  00      	 nop
3C9E  00      	 nop
3C9F  00      	 nop
3CA0  00      	 nop
3CA1  00      	 nop
3CA2  00      	 nop
3CA3  00      	 nop
3CA4  010000  	 ld   bc,$0000
3CA7  00      	 nop
3CA8  00      	 nop
3CA9  23      	 inc  hl
3CAA  7E      	 ld   a,(hl)
3CAB  A7      	 and  a
3CAC  C2C23C  	 jp   nz,$3CC2
3CAF  3601    	 ld   (hl),$01
3CB1  113086  	 ld   de,$8630
3CB4  21C93C  	 ld   hl,$3CC9
3CB7  012000  	 ld   bc,$0020
3CBA  EDB0    	 ldir
3CBC  3E86    	 ld   a,$86
3CBE  3200B8  	 ld   ($B800),a
3CC1  C9      	 ret
3CC2  213786  	 ld   hl,$8637
3CC5  CD313D  	 call $3D31
3CC8  C9      	 ret
3CC9  00      	 nop
3CCA  00      	 nop
3CCB  00      	 nop
3CCC  19      	 add  hl,de
3CCD  2C      	 inc  l
3CCE  00      	 nop
3CCF  00      	 nop
3CD0  01B4C2  	 ld   bc,$C2B4
3CD3  00      	 nop
3CD4  00      	 nop
3CD5  00      	 nop
3CD6  FF      	 rst  $38
3CD7  010001  	 ld   bc,$0100
3CDA  FF      	 rst  $38
3CDB  00      	 nop
3CDC  00      	 nop
3CDD  00      	 nop
3CDE  00      	 nop
3CDF  00      	 nop
3CE0  00      	 nop
3CE1  00      	 nop
3CE2  00      	 nop
3CE3  00      	 nop
3CE4  010000  	 ld   bc,$0000
3CE7  00      	 nop
3CE8  00      	 nop
3CE9  E5      	 push hl
3CEA  60      	 ld   h,b
3CEB  69      	 ld   l,c
3CEC  3A0181  	 ld   a,($8101)
3CEF  FE09    	 cp   $09
3CF1  DAF63C  	 jp   c,$3CF6
3CF4  3E09    	 ld   a,$09
3CF6  A7      	 and  a
3CF7  CAFF3C  	 jp   z,$3CFF
3CFA  47      	 ld   b,a
3CFB  23      	 inc  hl
3CFC  23      	 inc  hl
3CFD  10FC    	 djnz $3CFB
3CFF  4E      	 ld   c,(hl)
3D00  23      	 inc  hl
3D01  46      	 ld   b,(hl)
3D02  E1      	 pop  hl
3D03  71      	 ld   (hl),c
3D04  23      	 inc  hl
3D05  70      	 ld   (hl),b
3D06  C9      	 ret
3D07  3001    	 jr   nc,$3D0A
3D09  00      	 nop
3D0A  01B000  	 ld   bc,$00B0
3D0D  70      	 ld   (hl),b
3D0E  00      	 nop
3D0F  3000    	 jr   nc,$3D11
3D11  3000    	 jr   nc,$3D13
3D13  3000    	 jr   nc,$3D15
3D15  3000    	 jr   nc,$3D17
3D17  3000    	 jr   nc,$3D19
3D19  00      	 nop
3D1A  00      	 nop
3D1B  00      	 nop
3D1C  00      	 nop
3D1D  90      	 sub  b
3D1E  03      	 inc  bc
3D1F  2003    	 jr   nz,$3D24
3D21  E0      	 ret  po
3D22  02      	 ld   (bc),a
3D23  A0      	 and  b
3D24  02      	 ld   (bc),a
3D25  60      	 ld   h,b
3D26  02      	 ld   (bc),a
3D27  40      	 ld   b,b
3D28  02      	 ld   (bc),a
3D29  2002    	 jr   nz,$3D2D
3D2B  D0      	 ret  nc
3D2C  019001  	 ld   bc,$0190
3D2F  50      	 ld   d,b
3D30  00      	 nop
3D31  7E      	 ld   a,(hl)
3D32  FE01    	 cp   $01
3D34  CA513D  	 jp   z,$3D51
3D37  FE03    	 cp   $03
3D39  CA973D  	 jp   z,$3D97
3D3C  FE04    	 cp   $04
3D3E  CA0D42  	 jp   z,$420D
3D41  FE05    	 cp   $05
3D43  CA4C42  	 jp   z,$424C
3D46  FE06    	 cp   $06
3D48  CA8042  	 jp   z,$4280
3D4B  FE07    	 cp   $07
3D4D  CAB442  	 jp   z,$42B4
3D50  C9      	 ret
3D51  3A3E80  	 ld   a,($803E)
3D54  A7      	 and  a
3D55  C0      	 ret  nz
3D56  EB      	 ex   de,hl
3D57  42      	 ld   b,d
3D58  4B      	 ld   c,e
3D59  211300  	 ld   hl,$0013
3D5C  19      	 add  hl,de
3D5D  1B      	 dec  de
3D5E  1B      	 dec  de
3D5F  1B      	 dec  de
3D60  1B      	 dec  de
3D61  34      	 inc  (hl)
3D62  7E      	 ld   a,(hl)
3D63  FE80    	 cp   $80
3D65  D2793D  	 jp   nc,$3D79
3D68  E61F    	 and  $1F
3D6A  FE10    	 cp   $10
3D6C  DA733D  	 jp   c,$3D73
3D6F  CDA541  	 call $41A5
3D72  C9      	 ret
3D73  062F    	 ld   b,$2F
3D75  CD833D  	 call $3D83
3D78  C9      	 ret
3D79  23      	 inc  hl
3D7A  3600    	 ld   (hl),$00
3D7C  3E03    	 ld   a,$03
3D7E  02      	 ld   (bc),a
3D7F  CDA541  	 call $41A5
3D82  C9      	 ret
3D83  1A      	 ld   a,(de)
3D84  210500  	 ld   hl,$0005
3D87  19      	 add  hl,de
3D88  EB      	 ex   de,hl
3D89  6F      	 ld   l,a
3D8A  2680    	 ld   h,$80
3D8C  70      	 ld   (hl),b
3D8D  2B      	 dec  hl
3D8E  1A      	 ld   a,(de)
3D8F  77      	 ld   (hl),a
3D90  23      	 inc  hl
3D91  23      	 inc  hl
3D92  23      	 inc  hl
3D93  13      	 inc  de
3D94  1A      	 ld   a,(de)
3D95  77      	 ld   (hl),a
3D96  C9      	 ret
3D97  EB      	 ex   de,hl
3D98  211000  	 ld   hl,$0010
3D9B  19      	 add  hl,de
3D9C  7E      	 ld   a,(hl)
3D9D  A7      	 and  a
3D9E  CAA73D  	 jp   z,$3DA7
3DA1  35      	 dec  (hl)
3DA2  EB      	 ex   de,hl
3DA3  23      	 inc  hl
3DA4  C38C3E  	 jp   $3E8C
3DA7  13      	 inc  de
3DA8  01FBFF  	 ld   bc,$FFFB
3DAB  09      	 add  hl,bc
3DAC  EB      	 ex   de,hl
3DAD  0607    	 ld   b,$07
3DAF  3E14    	 ld   a,$14
3DB1  BE      	 cp   (hl)
3DB2  CABD3D  	 jp   z,$3DBD
3DB5  C620    	 add  a,$20
3DB7  10F8    	 djnz $3DB1
3DB9  23      	 inc  hl
3DBA  C38B3E  	 jp   $3E8B
3DBD  23      	 inc  hl
3DBE  0607    	 ld   b,$07
3DC0  3E22    	 ld   a,$22
3DC2  BE      	 cp   (hl)
3DC3  CA3D3E  	 jp   z,$3E3D
3DC6  C620    	 add  a,$20
3DC8  10F8    	 djnz $3DC2
3DCA  C38B3E  	 jp   $3E8B
3DCD  ED5F    	 ld   a,r
3DCF  E603    	 and  $03
3DD1  FE01    	 cp   $01
3DD3  C2D93D  	 jp   nz,$3DD9
3DD6  3601    	 ld   (hl),$01
3DD8  C9      	 ret
3DD9  FE02    	 cp   $02
3DDB  C2E13D  	 jp   nz,$3DE1
3DDE  3602    	 ld   (hl),$02
3DE0  C9      	 ret
3DE1  FE03    	 cp   $03
3DE3  C2E93D  	 jp   nz,$3DE9
3DE6  3604    	 ld   (hl),$04
3DE8  C9      	 ret
3DE9  FE00    	 cp   $00
3DEB  C0      	 ret  nz
3DEC  3608    	 ld   (hl),$08
3DEE  C9      	 ret
3DEF  42      	 ld   b,d
3DF0  4B      	 ld   c,e
3DF1  54      	 ld   d,h
3DF2  5D      	 ld   e,l
3DF3  1B      	 dec  de
3DF4  EB      	 ex   de,hl
3DF5  0A      	 ld   a,(bc)
3DF6  3C      	 inc  a
3DF7  FE09    	 cp   $09
3DF9  DAFE3D  	 jp   c,$3DFE
3DFC  3E00    	 ld   a,$00
3DFE  02      	 ld   (bc),a
3DFF  FE01    	 cp   $01
3E01  CA283E  	 jp   z,$3E28
3E04  FE03    	 cp   $03
3E06  CA283E  	 jp   z,$3E28
3E09  FE04    	 cp   $04
3E0B  CA283E  	 jp   z,$3E28
3E0E  FE06    	 cp   $06
3E10  CA283E  	 jp   z,$3E28
3E13  3A0380  	 ld   a,($8003)
3E16  BE      	 cp   (hl)
3E17  2B      	 dec  hl
3E18  EB      	 ex   de,hl
3E19  CA253E  	 jp   z,$3E25
3E1C  DA223E  	 jp   c,$3E22
3E1F  3604    	 ld   (hl),$04
3E21  C9      	 ret
3E22  3608    	 ld   (hl),$08
3E24  C9      	 ret
3E25  3600    	 ld   (hl),$00
3E27  C9      	 ret
3E28  2B      	 dec  hl
3E29  3A0080  	 ld   a,($8000)
3E2C  BE      	 cp   (hl)
3E2D  EB      	 ex   de,hl
3E2E  CA3A3E  	 jp   z,$3E3A
3E31  DA373E  	 jp   c,$3E37
3E34  3602    	 ld   (hl),$02
3E36  C9      	 ret
3E37  3601    	 ld   (hl),$01
3E39  C9      	 ret
3E3A  3600    	 ld   (hl),$00
3E3C  C9      	 ret
3E3D  E5      	 push hl
3E3E  011300  	 ld   bc,$0013
3E41  09      	 add  hl,bc
3E42  34      	 inc  (hl)
3E43  44      	 ld   b,h
3E44  4D      	 ld   c,l
3E45  E1      	 pop  hl
3E46  23      	 inc  hl
3E47  7D      	 ld   a,l
3E48  E6F0    	 and  $F0
3E4A  FE10    	 cp   $10
3E4C  C26D3E  	 jp   nz,$3E6D
3E4F  0A      	 ld   a,(bc)
3E50  F5      	 push af
3E51  E603    	 and  $03
3E53  FE00    	 cp   $00
3E55  C4EF3D  	 call nz,$3DEF
3E58  EB      	 ex   de,hl
3E59  210D00  	 ld   hl,$000D
3E5C  19      	 add  hl,de
3E5D  F1      	 pop  af
3E5E  CB67    	 bit  4,a
3E60  CA683E  	 jp   z,$3E68
3E63  3630    	 ld   (hl),$30
3E65  C3893E  	 jp   $3E89
3E68  3610    	 ld   (hl),$10
3E6A  C3893E  	 jp   $3E89
3E6D  FE30    	 cp   $30
3E6F  00      	 nop
3E70  00      	 nop
3E71  00      	 nop
3E72  C2703E  	 jp   nz,$3E70
3E75  0A      	 ld   a,(bc)
3E76  F5      	 push af
3E77  E603    	 and  $03
3E79  FE02    	 cp   $02
3E7B  C4EF3D  	 call nz,$3DEF
3E7E  EB      	 ex   de,hl
3E7F  210D00  	 ld   hl,$000D
3E82  19      	 add  hl,de
3E83  F1      	 pop  af
3E84  C618    	 add  a,$18
3E86  C35E3E  	 jp   $3E5E
3E89  EB      	 ex   de,hl
3E8A  2B      	 dec  hl
3E8B  2B      	 dec  hl
3E8C  54      	 ld   d,h
3E8D  5D      	 ld   e,l
3E8E  7E      	 ld   a,(hl)
3E8F  23      	 inc  hl
3E90  E607    	 and  $07
3E92  FE04    	 cp   $04
3E94  C20241  	 jp   nz,$4102
3E97  7E      	 ld   a,(hl)
3E98  E607    	 and  $07
3E9A  FE02    	 cp   $02
3E9C  C20241  	 jp   nz,$4102
3E9F  EB      	 ex   de,hl
3EA0  CDBC41  	 call $41BC
3EA3  01E2FF  	 ld   bc,$FFE2
3EA6  09      	 add  hl,bc
3EA7  3EFE    	 ld   a,$FE
3EA9  BE      	 cp   (hl)
3EAA  C2C93E  	 jp   nz,$3EC9
3EAD  1B      	 dec  de
3EAE  3E95    	 ld   a,$95
3EB0  3200B8  	 ld   ($B800),a
3EB3  3E04    	 ld   a,$04
3EB5  12      	 ld   (de),a
3EB6  211400  	 ld   hl,$0014
3EB9  19      	 add  hl,de
3EBA  3601    	 ld   (hl),$01
3EBC  21FDFF  	 ld   hl,$FFFD
3EBF  19      	 add  hl,de
3EC0  362C    	 ld   (hl),$2C
3EC2  210300  	 ld   hl,$0003
3EC5  19      	 add  hl,de
3EC6  3600    	 ld   (hl),$00
3EC8  13      	 inc  de
3EC9  EB      	 ex   de,hl
3ECA  23      	 inc  hl
3ECB  54      	 ld   d,h
3ECC  5D      	 ld   e,l
3ECD  23      	 inc  hl
3ECE  1B      	 dec  de
3ECF  7E      	 ld   a,(hl)
3ED0  0F      	 rrca
3ED1  DA913F  	 jp   c,$3F91
3ED4  0F      	 rrca
3ED5  DAEC3F  	 jp   c,$3FEC
3ED8  0F      	 rrca
3ED9  DA4740  	 jp   c,$4047
3EDC  0F      	 rrca
3EDD  DAA440  	 jp   c,$40A4
3EE0  EB      	 ex   de,hl
3EE1  21FCFF  	 ld   hl,$FFFC
3EE4  19      	 add  hl,de
3EE5  35      	 dec  (hl)
3EE6  EB      	 ex   de,hl
3EE7  23      	 inc  hl
3EE8  23      	 inc  hl
3EE9  3E00    	 ld   a,$00
3EEB  77      	 ld   (hl),a
3EEC  23      	 inc  hl
3EED  23      	 inc  hl
3EEE  23      	 inc  hl
3EEF  77      	 ld   (hl),a
3EF0  C36641  	 jp   $4166
3EF3  13      	 inc  de
3EF4  13      	 inc  de
3EF5  1A      	 ld   a,(de)
3EF6  FE03    	 cp   $03
3EF8  D2463F  	 jp   nc,$3F46
3EFB  ED5F    	 ld   a,r
3EFD  E60F    	 and  $0F
3EFF  FE09    	 cp   $09
3F01  3EDF    	 ld   a,$DF
3F03  DA333F  	 jp   c,$3F33
3F06  21E1FF  	 ld   hl,$FFE1
3F09  09      	 add  hl,bc
3F0A  BE      	 cp   (hl)
3F0B  DA2D3F  	 jp   c,$3F2D
3F0E  21E3FF  	 ld   hl,$FFE3
3F11  09      	 add  hl,bc
3F12  BE      	 cp   (hl)
3F13  DA273F  	 jp   c,$3F27
3F16  EB      	 ex   de,hl
3F17  7E      	 ld   a,(hl)
3F18  FE01    	 cp   $01
3F1A  CA223F  	 jp   z,$3F22
3F1D  3601    	 ld   (hl),$01
3F1F  C3E03E  	 jp   $3EE0
3F22  3602    	 ld   (hl),$02
3F24  C3E03E  	 jp   $3EE0
3F27  EB      	 ex   de,hl
3F28  3604    	 ld   (hl),$04
3F2A  C3E03E  	 jp   $3EE0
3F2D  EB      	 ex   de,hl
3F2E  3608    	 ld   (hl),$08
3F30  C3E03E  	 jp   $3EE0
3F33  21E3FF  	 ld   hl,$FFE3
3F36  09      	 add  hl,bc
3F37  BE      	 cp   (hl)
3F38  DA273F  	 jp   c,$3F27
3F3B  21E1FF  	 ld   hl,$FFE1
3F3E  09      	 add  hl,bc
3F3F  BE      	 cp   (hl)
3F40  DA2D3F  	 jp   c,$3F2D
3F43  C3163F  	 jp   $3F16
3F46  ED5F    	 ld   a,r
3F48  E60F    	 and  $0F
3F4A  FE09    	 cp   $09
3F4C  3EDF    	 ld   a,$DF
3F4E  DA7E3F  	 jp   c,$3F7E
3F51  21C2FF  	 ld   hl,$FFC2
3F54  09      	 add  hl,bc
3F55  BE      	 cp   (hl)
3F56  DA723F  	 jp   c,$3F72
3F59  210200  	 ld   hl,$0002
3F5C  09      	 add  hl,bc
3F5D  BE      	 cp   (hl)
3F5E  DA783F  	 jp   c,$3F78
3F61  EB      	 ex   de,hl
3F62  7E      	 ld   a,(hl)
3F63  FE04    	 cp   $04
3F65  CA6D3F  	 jp   z,$3F6D
3F68  3604    	 ld   (hl),$04
3F6A  C3E03E  	 jp   $3EE0
3F6D  3608    	 ld   (hl),$08
3F6F  C3E03E  	 jp   $3EE0
3F72  EB      	 ex   de,hl
3F73  3602    	 ld   (hl),$02
3F75  C3E03E  	 jp   $3EE0
3F78  EB      	 ex   de,hl
3F79  3601    	 ld   (hl),$01
3F7B  C3E03E  	 jp   $3EE0
3F7E  210200  	 ld   hl,$0002
3F81  09      	 add  hl,bc
3F82  BE      	 cp   (hl)
3F83  DA783F  	 jp   c,$3F78
3F86  21C2FF  	 ld   hl,$FFC2
3F89  09      	 add  hl,bc
3F8A  BE      	 cp   (hl)
3F8B  DA723F  	 jp   c,$3F72
3F8E  C3613F  	 jp   $3F61
3F91  23      	 inc  hl
3F92  3600    	 ld   (hl),$00
3F94  23      	 inc  hl
3F95  1A      	 ld   a,(de)
3F96  FE0C    	 cp   $0C
3F98  CAE03E  	 jp   z,$3EE0
3F9B  D2A43F  	 jp   nc,$3FA4
3F9E  3E0C    	 ld   a,$0C
3FA0  12      	 ld   (de),a
3FA1  C3E03E  	 jp   $3EE0
3FA4  13      	 inc  de
3FA5  CDBC41  	 call $41BC
3FA8  44      	 ld   b,h
3FA9  4D      	 ld   c,l
3FAA  210200  	 ld   hl,$0002
3FAD  09      	 add  hl,bc
3FAE  3EDF    	 ld   a,$DF
3FB0  BE      	 cp   (hl)
3FB1  D2F33E  	 jp   nc,$3EF3
3FB4  210B00  	 ld   hl,$000B
3FB7  19      	 add  hl,de
3FB8  EB      	 ex   de,hl
3FB9  21E2FF  	 ld   hl,$FFE2
3FBC  CDD741  	 call $41D7
3FBF  A7      	 and  a
3FC0  C2C93F  	 jp   nz,$3FC9
3FC3  210200  	 ld   hl,$0002
3FC6  CDD741  	 call $41D7
3FC9  13      	 inc  de
3FCA  13      	 inc  de
3FCB  21E2FF  	 ld   hl,$FFE2
3FCE  CDFE41  	 call $41FE
3FD1  A7      	 and  a
3FD2  C2DB3F  	 jp   nz,$3FDB
3FD5  210200  	 ld   hl,$0002
3FD8  CDFE41  	 call $41FE
3FDB  21F7FF  	 ld   hl,$FFF7
3FDE  19      	 add  hl,de
3FDF  54      	 ld   d,h
3FE0  5D      	 ld   e,l
3FE1  13      	 inc  de
3FE2  1A      	 ld   a,(de)
3FE3  77      	 ld   (hl),a
3FE4  3E00    	 ld   a,$00
3FE6  13      	 inc  de
3FE7  13      	 inc  de
3FE8  12      	 ld   (de),a
3FE9  C31441  	 jp   $4114
3FEC  23      	 inc  hl
3FED  3680    	 ld   (hl),$80
3FEF  23      	 inc  hl
3FF0  1A      	 ld   a,(de)
3FF1  FEE4    	 cp   $E4
3FF3  CAE03E  	 jp   z,$3EE0
3FF6  DAFF3F  	 jp   c,$3FFF
3FF9  3EE4    	 ld   a,$E4
3FFB  12      	 ld   (de),a
3FFC  C3E03E  	 jp   $3EE0
3FFF  13      	 inc  de
4000  CDBC41  	 call $41BC
4003  44      	 ld   b,h
4004  4D      	 ld   c,l
4005  21C2FF  	 ld   hl,$FFC2
4008  09      	 add  hl,bc
4009  3EDF    	 ld   a,$DF
400B  BE      	 cp   (hl)
400C  D2F33E  	 jp   nc,$3EF3
400F  210B00  	 ld   hl,$000B
4012  19      	 add  hl,de
4013  EB      	 ex   de,hl
4014  21E2FF  	 ld   hl,$FFE2
4017  CDD741  	 call $41D7
401A  A7      	 and  a
401B  C22440  	 jp   nz,$4024
401E  21C2FF  	 ld   hl,$FFC2
4021  CDD741  	 call $41D7
4024  13      	 inc  de
4025  13      	 inc  de
4026  21E2FF  	 ld   hl,$FFE2
4029  CDFE41  	 call $41FE
402C  A7      	 and  a
402D  C23640  	 jp   nz,$4036
4030  21C2FF  	 ld   hl,$FFC2
4033  CDFE41  	 call $41FE
4036  21F7FF  	 ld   hl,$FFF7
4039  19      	 add  hl,de
403A  54      	 ld   d,h
403B  5D      	 ld   e,l
403C  13      	 inc  de
403D  13      	 inc  de
403E  1A      	 ld   a,(de)
403F  77      	 ld   (hl),a
4040  3E00    	 ld   a,$00
4042  13      	 inc  de
4043  12      	 ld   (de),a
4044  C31441  	 jp   $4114
4047  23      	 inc  hl
4048  3604    	 ld   (hl),$04
404A  23      	 inc  hl
404B  13      	 inc  de
404C  1A      	 ld   a,(de)
404D  FEEC    	 cp   $EC
404F  CAE03E  	 jp   z,$3EE0
4052  DA5B40  	 jp   c,$405B
4055  3EEC    	 ld   a,$EC
4057  12      	 ld   (de),a
4058  C3E03E  	 jp   $3EE0
405B  CDBC41  	 call $41BC
405E  44      	 ld   b,h
405F  4D      	 ld   c,l
4060  21E3FF  	 ld   hl,$FFE3
4063  09      	 add  hl,bc
4064  3EDF    	 ld   a,$DF
4066  BE      	 cp   (hl)
4067  D2F33E  	 jp   nc,$3EF3
406A  210B00  	 ld   hl,$000B
406D  19      	 add  hl,de
406E  EB      	 ex   de,hl
406F  21E2FF  	 ld   hl,$FFE2
4072  CDD741  	 call $41D7
4075  A7      	 and  a
4076  C27F40  	 jp   nz,$407F
4079  21E3FF  	 ld   hl,$FFE3
407C  CDD741  	 call $41D7
407F  13      	 inc  de
4080  13      	 inc  de
4081  21E2FF  	 ld   hl,$FFE2
4084  CDFE41  	 call $41FE
4087  A7      	 and  a
4088  C29140  	 jp   nz,$4091
408B  21E3FF  	 ld   hl,$FFE3
408E  CDFE41  	 call $41FE
4091  21F7FF  	 ld   hl,$FFF7
4094  19      	 add  hl,de
4095  3E00    	 ld   a,$00
4097  77      	 ld   (hl),a
4098  23      	 inc  hl
4099  23      	 inc  hl
409A  23      	 inc  hl
409B  54      	 ld   d,h
409C  5D      	 ld   e,l
409D  13      	 inc  de
409E  1A      	 ld   a,(de)
409F  77      	 ld   (hl),a
40A0  EB      	 ex   de,hl
40A1  C31441  	 jp   $4114
40A4  23      	 inc  hl
40A5  3644    	 ld   (hl),$44
40A7  23      	 inc  hl
40A8  13      	 inc  de
40A9  1A      	 ld   a,(de)
40AA  FE14    	 cp   $14
40AC  CAE03E  	 jp   z,$3EE0
40AF  D2B840  	 jp   nc,$40B8
40B2  3E14    	 ld   a,$14
40B4  12      	 ld   (de),a
40B5  C3E03E  	 jp   $3EE0
40B8  CDBC41  	 call $41BC
40BB  44      	 ld   b,h
40BC  4D      	 ld   c,l
40BD  21E1FF  	 ld   hl,$FFE1
40C0  09      	 add  hl,bc
40C1  3EDF    	 ld   a,$DF
40C3  BE      	 cp   (hl)
40C4  D2F33E  	 jp   nc,$3EF3
40C7  210B00  	 ld   hl,$000B
40CA  19      	 add  hl,de
40CB  EB      	 ex   de,hl
40CC  21E2FF  	 ld   hl,$FFE2
40CF  CDD741  	 call $41D7
40D2  A7      	 and  a
40D3  C2DC40  	 jp   nz,$40DC
40D6  21E1FF  	 ld   hl,$FFE1
40D9  CDD741  	 call $41D7
40DC  13      	 inc  de
40DD  13      	 inc  de
40DE  21E2FF  	 ld   hl,$FFE2
40E1  CDFE41  	 call $41FE
40E4  A7      	 and  a
40E5  C2EE40  	 jp   nz,$40EE
40E8  21E1FF  	 ld   hl,$FFE1
40EB  CDFE41  	 call $41FE
40EE  21F7FF  	 ld   hl,$FFF7
40F1  19      	 add  hl,de
40F2  3E00    	 ld   a,$00
40F4  77      	 ld   (hl),a
40F5  23      	 inc  hl
40F6  23      	 inc  hl
40F7  23      	 inc  hl
40F8  54      	 ld   d,h
40F9  5D      	 ld   e,l
40FA  13      	 inc  de
40FB  13      	 inc  de
40FC  1A      	 ld   a,(de)
40FD  77      	 ld   (hl),a
40FE  EB      	 ex   de,hl
40FF  C31441  	 jp   $4114
4102  210700  	 ld   hl,$0007
4105  19      	 add  hl,de
4106  EB      	 ex   de,hl
4107  210E00  	 ld   hl,$000E
410A  19      	 add  hl,de
410B  44      	 ld   b,h
410C  4D      	 ld   c,l
410D  210500  	 ld   hl,$0005
4110  19      	 add  hl,de
4111  C32241  	 jp   $4122
4114  210E00  	 ld   hl,$000E
4117  19      	 add  hl,de
4118  44      	 ld   b,h
4119  4D      	 ld   c,l
411A  3600    	 ld   (hl),$00
411C  210500  	 ld   hl,$0005
411F  19      	 add  hl,de
4120  3600    	 ld   (hl),$00
4122  EB      	 ex   de,hl
4123  1B      	 dec  de
4124  1A      	 ld   a,(de)
4125  A7      	 and  a
4126  CA3741  	 jp   z,$4137
4129  13      	 inc  de
412A  1A      	 ld   a,(de)
412B  3C      	 inc  a
412C  E603    	 and  $03
412E  12      	 ld   (de),a
412F  FE01    	 cp   $01
4131  CA6641  	 jp   z,$4166
4134  C35A41  	 jp   $415A
4137  13      	 inc  de
4138  13      	 inc  de
4139  1A      	 ld   a,(de)
413A  A7      	 and  a
413B  CA4B41  	 jp   z,$414B
413E  0A      	 ld   a,(bc)
413F  3C      	 inc  a
4140  E601    	 and  $01
4142  02      	 ld   (bc),a
4143  FE01    	 cp   $01
4145  CA6641  	 jp   z,$4166
4148  C35A41  	 jp   $415A
414B  0A      	 ld   a,(bc)
414C  3C      	 inc  a
414D  E607    	 and  $07
414F  02      	 ld   (bc),a
4150  FE03    	 cp   $03
4152  CA5A41  	 jp   z,$415A
4155  FE05    	 cp   $05
4157  C26641  	 jp   nz,$4166
415A  54      	 ld   d,h
415B  5D      	 ld   e,l
415C  21F9FF  	 ld   hl,$FFF9
415F  19      	 add  hl,de
4160  1B      	 dec  de
4161  1B      	 dec  de
4162  1B      	 dec  de
4163  C37941  	 jp   $4179
4166  00      	 nop
4167  00      	 nop
4168  00      	 nop
4169  54      	 ld   d,h
416A  5D      	 ld   e,l
416B  01FAFF  	 ld   bc,$FFFA
416E  09      	 add  hl,bc
416F  1A      	 ld   a,(de)
4170  86      	 add  a,(hl)
4171  77      	 ld   (hl),a
4172  1B      	 dec  de
4173  1B      	 dec  de
4174  1B      	 dec  de
4175  2B      	 dec  hl
4176  1A      	 ld   a,(de)
4177  86      	 add  a,(hl)
4178  77      	 ld   (hl),a
4179  2B      	 dec  hl
417A  2B      	 dec  hl
417B  7E      	 ld   a,(hl)
417C  3C      	 inc  a
417D  E607    	 and  $07
417F  77      	 ld   (hl),a
4180  FE04    	 cp   $04
4182  DA8A41  	 jp   c,$418A
4185  3600    	 ld   (hl),$00
4187  2B      	 dec  hl
4188  34      	 inc  (hl)
4189  23      	 inc  hl
418A  2B      	 dec  hl
418B  1B      	 dec  de
418C  CD9341  	 call $4193
418F  CDA541  	 call $41A5
4192  C9      	 ret
4193  7E      	 ld   a,(hl)
4194  E603    	 and  $03
4196  47      	 ld   b,a
4197  1A      	 ld   a,(de)
4198  E6CC    	 and  $CC
419A  4F      	 ld   c,a
419B  2B      	 dec  hl
419C  7E      	 ld   a,(hl)
419D  E630    	 and  $30
419F  B0      	 or   b
41A0  B1      	 or   c
41A1  77      	 ld   (hl),a
41A2  EB      	 ex   de,hl
41A3  1B      	 dec  de
41A4  C9      	 ret
41A5  1A      	 ld   a,(de)
41A6  6F      	 ld   l,a
41A7  2680    	 ld   h,$80
41A9  13      	 inc  de
41AA  1A      	 ld   a,(de)
41AB  77      	 ld   (hl),a
41AC  13      	 inc  de
41AD  13      	 inc  de
41AE  13      	 inc  de
41AF  13      	 inc  de
41B0  2B      	 dec  hl
41B1  1A      	 ld   a,(de)
41B2  77      	 ld   (hl),a
41B3  23      	 inc  hl
41B4  23      	 inc  hl
41B5  3606    	 ld   (hl),$06
41B7  23      	 inc  hl
41B8  13      	 inc  de
41B9  1A      	 ld   a,(de)
41BA  77      	 ld   (hl),a
41BB  C9      	 ret
41BC  1A      	 ld   a,(de)
41BD  0F      	 rrca
41BE  0F      	 rrca
41BF  0F      	 rrca
41C0  E61F    	 and  $1F
41C2  6F      	 ld   l,a
41C3  1B      	 dec  de
41C4  1A      	 ld   a,(de)
41C5  ED44    	 neg
41C7  07      	 rlca
41C8  07      	 rlca
41C9  67      	 ld   h,a
41CA  E6E0    	 and  $E0
41CC  B5      	 or   l
41CD  6F      	 ld   l,a
41CE  7C      	 ld   a,h
41CF  E603    	 and  $03
41D1  67      	 ld   h,a
41D2  3E90    	 ld   a,$90
41D4  84      	 add  a,h
41D5  67      	 ld   h,a
41D6  C9      	 ret
41D7  09      	 add  hl,bc
41D8  3EE1    	 ld   a,$E1
41DA  BE      	 cp   (hl)
41DB  CAFA41  	 jp   z,$41FA
41DE  3EE2    	 ld   a,$E2
41E0  BE      	 cp   (hl)
41E1  CAFA41  	 jp   z,$41FA
41E4  3EE3    	 ld   a,$E3
41E6  BE      	 cp   (hl)
41E7  CAFA41  	 jp   z,$41FA
41EA  3EE4    	 ld   a,$E4
41EC  BE      	 cp   (hl)
41ED  CAFA41  	 jp   z,$41FA
41F0  00      	 nop
41F1  00      	 nop
41F2  00      	 nop
41F3  00      	 nop
41F4  00      	 nop
41F5  00      	 nop
41F6  3E00    	 ld   a,$00
41F8  12      	 ld   (de),a
41F9  C9      	 ret
41FA  3E01    	 ld   a,$01
41FC  12      	 ld   (de),a
41FD  C9      	 ret
41FE  09      	 add  hl,bc
41FF  3EE0    	 ld   a,$E0
4201  BE      	 cp   (hl)
4202  CA0942  	 jp   z,$4209
4205  3E00    	 ld   a,$00
4207  12      	 ld   (de),a
4208  C9      	 ret
4209  3E01    	 ld   a,$01
420B  12      	 ld   (de),a
420C  C9      	 ret
420D  EB      	 ex   de,hl
420E  21F9FF  	 ld   hl,$FFF9
4211  19      	 add  hl,de
4212  34      	 inc  (hl)
4213  7E      	 ld   a,(hl)
4214  FE10    	 cp   $10
4216  DA4342  	 jp   c,$4243
4219  CA2E42  	 jp   z,$422E
421C  E607    	 and  $07
421E  FE00    	 cp   $00
4220  C23442  	 jp   nz,$4234
4223  21FDFF  	 ld   hl,$FFFD
4226  19      	 add  hl,de
4227  3E80    	 ld   a,$80
4229  86      	 add  a,(hl)
422A  77      	 ld   (hl),a
422B  C33442  	 jp   $4234
422E  21FDFF  	 ld   hl,$FFFD
4231  19      	 add  hl,de
4232  3624    	 ld   (hl),$24
4234  62      	 ld   h,d
4235  6B      	 ld   l,e
4236  23      	 inc  hl
4237  23      	 inc  hl
4238  7E      	 ld   a,(hl)
4239  C602    	 add  a,$02
423B  FEE0    	 cp   $E0
423D  DA4242  	 jp   c,$4242
4240  3EE0    	 ld   a,$E0
4242  77      	 ld   (hl),a
4243  21FCFF  	 ld   hl,$FFFC
4246  19      	 add  hl,de
4247  EB      	 ex   de,hl
4248  CDA541  	 call $41A5
424B  C9      	 ret
424C  EB      	 ex   de,hl
424D  21FAFF  	 ld   hl,$FFFA
4250  19      	 add  hl,de
4251  34      	 inc  (hl)
4252  7E      	 ld   a,(hl)
4253  23      	 inc  hl
4254  23      	 inc  hl
4255  23      	 inc  hl
4256  FE01    	 cp   $01
4258  C25D42  	 jp   nz,$425D
425B  362D    	 ld   (hl),$2D
425D  FE08    	 cp   $08
425F  C26442  	 jp   nz,$4264
4262  3631    	 ld   (hl),$31
4264  FE14    	 cp   $14
4266  C26B42  	 jp   nz,$426B
4269  3630    	 ld   (hl),$30
426B  FE20    	 cp   $20
426D  C27242  	 jp   nz,$4272
4270  3629    	 ld   (hl),$29
4272  FE80    	 cp   $80
4274  DA7A42  	 jp   c,$427A
4277  3E07    	 ld   a,$07
4279  12      	 ld   (de),a
427A  EB      	 ex   de,hl
427B  1B      	 dec  de
427C  CDA541  	 call $41A5
427F  C9      	 ret
4280  EB      	 ex   de,hl
4281  21FAFF  	 ld   hl,$FFFA
4284  19      	 add  hl,de
4285  34      	 inc  (hl)
4286  7E      	 ld   a,(hl)
4287  23      	 inc  hl
4288  23      	 inc  hl
4289  23      	 inc  hl
428A  FE01    	 cp   $01
428C  C29142  	 jp   nz,$4291
428F  362C    	 ld   (hl),$2C
4291  FE08    	 cp   $08
4293  C29842  	 jp   nz,$4298
4296  362D    	 ld   (hl),$2D
4298  FE14    	 cp   $14
429A  C29F42  	 jp   nz,$429F
429D  362E    	 ld   (hl),$2E
429F  FE20    	 cp   $20
42A1  C2A642  	 jp   nz,$42A6
42A4  3629    	 ld   (hl),$29
42A6  FE80    	 cp   $80
42A8  DAAE42  	 jp   c,$42AE
42AB  3E07    	 ld   a,$07
42AD  12      	 ld   (de),a
42AE  EB      	 ex   de,hl
42AF  1B      	 dec  de
42B0  CDA541  	 call $41A5
42B3  C9      	 ret
42B4  0E00    	 ld   c,$00
42B6  23      	 inc  hl
42B7  71      	 ld   (hl),c
42B8  23      	 inc  hl
42B9  71      	 ld   (hl),c
42BA  54      	 ld   d,h
42BB  7D      	 ld   a,l
42BC  FE19    	 cp   $19
42BE  C2C542  	 jp   nz,$42C5
42C1  59      	 ld   e,c
42C2  C3E442  	 jp   $42E4
42C5  FE39    	 cp   $39
42C7  C2CF42  	 jp   nz,$42CF
42CA  1E02    	 ld   e,$02
42CC  C3E442  	 jp   $42E4
42CF  FE59    	 cp   $59
42D1  C2D942  	 jp   nz,$42D9
42D4  1E04    	 ld   e,$04
42D6  C3E442  	 jp   $42E4
42D9  FE79    	 cp   $79
42DB  CAE242  	 jp   z,$42E2
42DE  00      	 nop
42DF  C3DE42  	 jp   $42DE
42E2  1E06    	 ld   e,$06
42E4  EB      	 ex   de,hl
42E5  71      	 ld   (hl),c
42E6  23      	 inc  hl
42E7  71      	 ld   (hl),c
42E8  EB      	 ex   de,hl
42E9  11FAFF  	 ld   de,$FFFA
42EC  19      	 add  hl,de
42ED  EB      	 ex   de,hl
42EE  010243  	 ld   bc,$4302
42F1  211500  	 ld   hl,$0015
42F4  19      	 add  hl,de
42F5  CDE93C  	 call $3CE9
42F8  CDA541  	 call $41A5
42FB  C9      	 ret
42FC  00      	 nop
42FD  00      	 nop
42FE  00      	 nop
42FF  00      	 nop
4300  00      	 nop
4301  00      	 nop
4302  70      	 ld   (hl),b
4303  02      	 ld   (bc),a
4304  70      	 ld   (hl),b
4305  01F000  	 ld   bc,$00F0
4308  F0      	 ret  p
4309  00      	 nop
430A  F0      	 ret  p
430B  00      	 nop
430C  F0      	 ret  p
430D  00      	 nop
430E  F0      	 ret  p
430F  00      	 nop
4310  F0      	 ret  p
4311  00      	 nop
4312  F0      	 ret  p
4313  00      	 nop
4314  F0      	 ret  p
4315  00      	 nop
4316  00      	 nop
4317  00      	 nop
4318  00      	 nop
4319  00      	 nop
431A  00      	 nop
431B  00      	 nop
431C  3A00B0  	 ld   a,($B000)
431F  E680    	 and  $80
4321  C0      	 ret  nz
4322  3A1F84  	 ld   a,($841F)
4325  FE01    	 cp   $01
4327  C0      	 ret  nz
4328  3A3E80  	 ld   a,($803E)
432B  A7      	 and  a
432C  C0      	 ret  nz
432D  CD7343  	 call $4373
4330  CD8E43  	 call $438E
4333  CDA943  	 call $43A9
4336  CDC443  	 call $43C4
4339  CDDF43  	 call $43DF
433C  C9      	 ret
433D  CDFA43  	 call $43FA
4340  CD0744  	 call $4407
4343  CD1444  	 call $4414
4346  CD4244  	 call $4442
4349  CD4F44  	 call $444F
434C  CDBE44  	 call $44BE
434F  C9      	 ret
4350  DD7E03  	 ld   a,(ix+$03)
4353  FD4603  	 ld   b,(iy+$03)
4356  94      	 sub  h
4357  B8      	 cp   b
4358  D0      	 ret  nc
4359  85      	 add  a,l
435A  B8      	 cp   b
435B  D8      	 ret  c
435C  DD7E00  	 ld   a,(ix+$00)
435F  FD4600  	 ld   b,(iy+$00)
4362  92      	 sub  d
4363  B8      	 cp   b
4364  D0      	 ret  nc
4365  83      	 add  a,e
4366  B8      	 cp   b
4367  D8      	 ret  c
4368  3E81    	 ld   a,$81
436A  3200B8  	 ld   ($B800),a
436D  211F84  	 ld   hl,$841F
4370  3602    	 ld   (hl),$02
4372  C9      	 ret
4373  3A0185  	 ld   a,($8501)
4376  A7      	 and  a
4377  C8      	 ret  z
4378  3A2B85  	 ld   a,($852B)
437B  A7      	 and  a
437C  C0      	 ret  nz
437D  DD210080	 ld   ix,$8000
4381  FD210480	 ld   iy,$8004
4385  110E07  	 ld   de,$070E
4388  210E07  	 ld   hl,$070E
438B  C35043  	 jp   $4350
438E  3A0485  	 ld   a,($8504)
4391  A7      	 and  a
4392  C8      	 ret  z
4393  3A6B85  	 ld   a,($856B)
4396  A7      	 and  a
4397  C0      	 ret  nz
4398  DD210080	 ld   ix,$8000
439C  FD210C80	 ld   iy,$800C
43A0  110E07  	 ld   de,$070E
43A3  210E07  	 ld   hl,$070E
43A6  C35043  	 jp   $4350
43A9  3A0785  	 ld   a,($8507)
43AC  A7      	 and  a
43AD  C8      	 ret  z
43AE  3A8B85  	 ld   a,($858B)
43B1  A7      	 and  a
43B2  C0      	 ret  nz
43B3  DD210080	 ld   ix,$8000
43B7  FD211080	 ld   iy,$8010
43BB  110E07  	 ld   de,$070E
43BE  210E07  	 ld   hl,$070E
43C1  C35043  	 jp   $4350
43C4  3A0186  	 ld   a,($8601)
43C7  A7      	 and  a
43C8  C8      	 ret  z
43C9  3A2B86  	 ld   a,($862B)
43CC  A7      	 and  a
43CD  C0      	 ret  nz
43CE  DD210080	 ld   ix,$8000
43D2  FD211480	 ld   iy,$8014
43D6  110A05  	 ld   de,$050A
43D9  210A05  	 ld   hl,$050A
43DC  C35043  	 jp   $4350
43DF  3A0386  	 ld   a,($8603)
43E2  A7      	 and  a
43E3  C8      	 ret  z
43E4  3A4B86  	 ld   a,($864B)
43E7  A7      	 and  a
43E8  C0      	 ret  nz
43E9  DD210080	 ld   ix,$8000
43ED  FD211880	 ld   iy,$8018
43F1  110A05  	 ld   de,$050A
43F4  210A05  	 ld   hl,$050A
43F7  C35043  	 jp   $4350
43FA  211785  	 ld   hl,$8517
43FD  7E      	 ld   a,(hl)
43FE  FE04    	 cp   $04
4400  C0      	 ret  nz
4401  110780  	 ld   de,$8007
4404  C31E44  	 jp   $441E
4407  215785  	 ld   hl,$8557
440A  7E      	 ld   a,(hl)
440B  FE04    	 cp   $04
440D  C0      	 ret  nz
440E  110F80  	 ld   de,$800F
4411  C31E44  	 jp   $441E
4414  217785  	 ld   hl,$8577
4417  7E      	 ld   a,(hl)
4418  FE04    	 cp   $04
441A  C0      	 ret  nz
441B  111380  	 ld   de,$8013
441E  1A      	 ld   a,(de)
441F  FEE0    	 cp   $E0
4421  D23544  	 jp   nc,$4435
4424  CD8B45  	 call $458B
4427  FE37    	 cp   $37
4429  C0      	 ret  nz
442A  3605    	 ld   (hl),$05
442C  3E96    	 ld   a,$96
442E  3200B8  	 ld   ($B800),a
4431  C33C44  	 jp   $443C
4434  C9      	 ret
4435  3606    	 ld   (hl),$06
4437  3E83    	 ld   a,$83
4439  3200B8  	 ld   ($B800),a
443C  1601    	 ld   d,$01
443E  CDAF45  	 call $45AF
4441  C9      	 ret
4442  211786  	 ld   hl,$8617
4445  7E      	 ld   a,(hl)
4446  FE04    	 cp   $04
4448  C0      	 ret  nz
4449  111780  	 ld   de,$8017
444C  C35944  	 jp   $4459
444F  213786  	 ld   hl,$8637
4452  7E      	 ld   a,(hl)
4453  FE04    	 cp   $04
4455  C0      	 ret  nz
4456  111B80  	 ld   de,$801B
4459  1A      	 ld   a,(de)
445A  FEE0    	 cp   $E0
445C  D26A44  	 jp   nc,$446A
445F  CD8B45  	 call $458B
4462  FE37    	 cp   $37
4464  C0      	 ret  nz
4465  3605    	 ld   (hl),$05
4467  C37744  	 jp   $4477
446A  3606    	 ld   (hl),$06
446C  3E82    	 ld   a,$82
446E  3200B8  	 ld   ($B800),a
4471  1602    	 ld   d,$02
4473  CDAF45  	 call $45AF
4476  C9      	 ret
4477  3E97    	 ld   a,$97
4479  3200B8  	 ld   ($B800),a
447C  1602    	 ld   d,$02
447E  CDAF45  	 call $45AF
4481  1601    	 ld   d,$01
4483  3A2B85  	 ld   a,($852B)
4486  A7      	 and  a
4487  C29744  	 jp   nz,$4497
448A  CDAF45  	 call $45AF
448D  211785  	 ld   hl,$8517
4490  3606    	 ld   (hl),$06
4492  212B85  	 ld   hl,$852B
4495  3601    	 ld   (hl),$01
4497  3A6B85  	 ld   a,($856B)
449A  A7      	 and  a
449B  C2AB44  	 jp   nz,$44AB
449E  CDAF45  	 call $45AF
44A1  215785  	 ld   hl,$8557
44A4  3606    	 ld   (hl),$06
44A6  216B85  	 ld   hl,$856B
44A9  3601    	 ld   (hl),$01
44AB  3A8B85  	 ld   a,($858B)
44AE  A7      	 and  a
44AF  C0      	 ret  nz
44B0  CDAF45  	 call $45AF
44B3  217785  	 ld   hl,$8577
44B6  3606    	 ld   (hl),$06
44B8  218B85  	 ld   hl,$858B
44BB  3601    	 ld   (hl),$01
44BD  C9      	 ret
44BE  3AC085  	 ld   a,($85C0)
44C1  A7      	 and  a
44C2  C8      	 ret  z
44C3  CDD344  	 call $44D3
44C6  CDEA44  	 call $44EA
44C9  CD0145  	 call $4501
44CC  CD2845  	 call $4528
44CF  CD3F45  	 call $453F
44D2  C9      	 ret
44D3  3A0185  	 ld   a,($8501)
44D6  A7      	 and  a
44D7  C8      	 ret  z
44D8  3A2B85  	 ld   a,($852B)
44DB  A7      	 and  a
44DC  C0      	 ret  nz
44DD  FD210480	 ld   iy,$8004
44E1  211845  	 ld   hl,$4518
44E4  111785  	 ld   de,$8517
44E7  C36645  	 jp   $4566
44EA  3A0485  	 ld   a,($8504)
44ED  A7      	 and  a
44EE  C8      	 ret  z
44EF  3A6B85  	 ld   a,($856B)
44F2  A7      	 and  a
44F3  C0      	 ret  nz
44F4  FD210C80	 ld   iy,$800C
44F8  211845  	 ld   hl,$4518
44FB  115785  	 ld   de,$8557
44FE  C36645  	 jp   $4566
4501  3A0785  	 ld   a,($8507)
4504  A7      	 and  a
4505  C8      	 ret  z
4506  3A8B85  	 ld   a,($858B)
4509  A7      	 and  a
450A  C0      	 ret  nz
450B  FD211080	 ld   iy,$8010
450F  211845  	 ld   hl,$4518
4512  117785  	 ld   de,$8577
4515  C36645  	 jp   $4566
4518  21FDFF  	 ld   hl,$FFFD
451B  19      	 add  hl,de
451C  361C    	 ld   (hl),$1C
451E  211400  	 ld   hl,$0014
4521  19      	 add  hl,de
4522  3601    	 ld   (hl),$01
4524  EB      	 ex   de,hl
4525  3604    	 ld   (hl),$04
4527  C9      	 ret
4528  3A0186  	 ld   a,($8601)
452B  A7      	 and  a
452C  C8      	 ret  z
452D  3A2B86  	 ld   a,($862B)
4530  A7      	 and  a
4531  C0      	 ret  nz
4532  FD211480	 ld   iy,$8014
4536  215645  	 ld   hl,$4556
4539  111786  	 ld   de,$8617
453C  C36645  	 jp   $4566
453F  3A0386  	 ld   a,($8603)
4542  A7      	 and  a
4543  C8      	 ret  z
4544  3A4B86  	 ld   a,($864B)
4547  A7      	 and  a
4548  C0      	 ret  nz
4549  FD211880	 ld   iy,$8018
454D  215645  	 ld   hl,$4556
4550  113786  	 ld   de,$8637
4553  C36645  	 jp   $4566
4556  21FDFF  	 ld   hl,$FFFD
4559  19      	 add  hl,de
455A  362C    	 ld   (hl),$2C
455C  211400  	 ld   hl,$0014
455F  19      	 add  hl,de
4560  3601    	 ld   (hl),$01
4562  EB      	 ex   de,hl
4563  3604    	 ld   (hl),$04
4565  C9      	 ret
4566  DD211C80	 ld   ix,$801C
456A  D9      	 exx
456B  111008  	 ld   de,$0810
456E  211202  	 ld   hl,$0212
4571  DD7E03  	 ld   a,(ix+$03)
4574  FD4603  	 ld   b,(iy+$03)
4577  94      	 sub  h
4578  B8      	 cp   b
4579  D0      	 ret  nc
457A  85      	 add  a,l
457B  B8      	 cp   b
457C  D8      	 ret  c
457D  DD7E00  	 ld   a,(ix+$00)
4580  FD4600  	 ld   b,(iy+$00)
4583  92      	 sub  d
4584  B8      	 cp   b
4585  D0      	 ret  nc
4586  83      	 add  a,e
4587  B8      	 cp   b
4588  D8      	 ret  c
4589  D9      	 exx
458A  E9      	 jp   (hl)
458B  1A      	 ld   a,(de)
458C  0F      	 rrca
458D  0F      	 rrca
458E  0F      	 rrca
458F  E61F    	 and  $1F
4591  4F      	 ld   c,a
4592  1B      	 dec  de
4593  1B      	 dec  de
4594  1B      	 dec  de
4595  1A      	 ld   a,(de)
4596  ED44    	 neg
4598  07      	 rlca
4599  07      	 rlca
459A  47      	 ld   b,a
459B  E6E0    	 and  $E0
459D  B1      	 or   c
459E  4F      	 ld   c,a
459F  78      	 ld   a,b
45A0  E603    	 and  $03
45A2  47      	 ld   b,a
45A3  3E90    	 ld   a,$90
45A5  80      	 add  a,b
45A6  47      	 ld   b,a
45A7  EB      	 ex   de,hl
45A8  21E1FF  	 ld   hl,$FFE1
45AB  09      	 add  hl,bc
45AC  7E      	 ld   a,(hl)
45AD  EB      	 ex   de,hl
45AE  C9      	 ret
45AF  AF      	 xor  a
45B0  214080  	 ld   hl,$8040
45B3  3601    	 ld   (hl),$01
45B5  0E00    	 ld   c,$00
45B7  1E00    	 ld   e,$00
45B9  23      	 inc  hl
45BA  79      	 ld   a,c
45BB  8E      	 adc  a,(hl)
45BC  27      	 daa
45BD  77      	 ld   (hl),a
45BE  23      	 inc  hl
45BF  7A      	 ld   a,d
45C0  8E      	 adc  a,(hl)
45C1  27      	 daa
45C2  77      	 ld   (hl),a
45C3  23      	 inc  hl
45C4  7B      	 ld   a,e
45C5  8E      	 adc  a,(hl)
45C6  27      	 daa
45C7  77      	 ld   (hl),a
45C8  C9      	 ret
45C9  F8      	 ret  m
45CA  34      	 inc  (hl)
45CB  FE24    	 cp   $24
45CD  F7      	 rst  $30
45CE  33      	 inc  sp
45CF  F624    	 or   $24
45D1  FC24F6  	 call m,$F624
45D4  24      	 inc  h
45D5  03      	 inc  bc
45D6  2A9132  	 ld   hl,($3291)
45D9  91      	 sub  c
45DA  AA      	 xor  d
45DB  92      	 sub  d
45DC  03      	 inc  bc
45DD  2E91    	 ld   l,$91
45DF  AA      	 xor  d
45E0  92      	 sub  d
45E1  B2      	 or   d
45E2  92      	 sub  d
45E3  03      	 inc  bc
45E4  A6      	 and  (hl)
45E5  91      	 sub  c
45E6  AE      	 xor  (hl)
45E7  92      	 sub  d
45E8  329103  	 ld   ($0391),a
45EB  2692    	 ld   h,$92
45ED  AE      	 xor  (hl)
45EE  92      	 sub  d
45EF  BA      	 cp   d
45F0  92      	 sub  d
45F1  21C080  	 ld   hl,$80C0
45F4  7E      	 ld   a,(hl)
45F5  A7      	 and  a
45F6  CA7846  	 jp   z,$4678
45F9  23      	 inc  hl
45FA  7E      	 ld   a,(hl)
45FB  A7      	 and  a
45FC  C21646  	 jp   nz,$4616
45FF  110E46  	 ld   de,$460E
4602  010700  	 ld   bc,$0007
4605  EB      	 ex   de,hl
4606  EDB0    	 ldir
4608  3E94    	 ld   a,$94
460A  3200B8  	 ld   ($B800),a
460D  C9      	 ret
460E  010000  	 ld   bc,$0000
4611  00      	 nop
4612  00      	 nop
4613  00      	 nop
4614  00      	 nop
4615  00      	 nop
4616  23      	 inc  hl
4617  7E      	 ld   a,(hl)
4618  FE01    	 cp   $01
461A  CA3F46  	 jp   z,$463F
461D  FE02    	 cp   $02
461F  CA6A46  	 jp   z,$466A
4622  CD8446  	 call $4684
4625  DD4600  	 ld   b,(ix+$00)
4628  78      	 ld   a,b
4629  A7      	 and  a
462A  C8      	 ret  z
462B  DD23    	 inc  ix
462D  11C945  	 ld   de,$45C9
4630  CD9846  	 call $4698
4633  21C280  	 ld   hl,$80C2
4636  3601    	 ld   (hl),$01
4638  23      	 inc  hl
4639  3600    	 ld   (hl),$00
463B  23      	 inc  hl
463C  3600    	 ld   (hl),$00
463E  C9      	 ret
463F  23      	 inc  hl
4640  34      	 inc  (hl)
4641  3E06    	 ld   a,$06
4643  BE      	 cp   (hl)
4644  D0      	 ret  nc
4645  3600    	 ld   (hl),$00
4647  23      	 inc  hl
4648  34      	 inc  (hl)
4649  7E      	 ld   a,(hl)
464A  FE08    	 cp   $08
464C  D8      	 ret  c
464D  CD8446  	 call $4684
4650  DD4600  	 ld   b,(ix+$00)
4653  78      	 ld   a,b
4654  A7      	 and  a
4655  C8      	 ret  z
4656  DD23    	 inc  ix
4658  11CF45  	 ld   de,$45CF
465B  CD9846  	 call $4698
465E  21C280  	 ld   hl,$80C2
4661  3602    	 ld   (hl),$02
4663  23      	 inc  hl
4664  3600    	 ld   (hl),$00
4666  23      	 inc  hl
4667  3600    	 ld   (hl),$00
4669  C9      	 ret
466A  23      	 inc  hl
466B  34      	 inc  (hl)
466C  3E06    	 ld   a,$06
466E  BE      	 cp   (hl)
466F  D0      	 ret  nc
4670  3600    	 ld   (hl),$00
4672  23      	 inc  hl
4673  34      	 inc  (hl)
4674  7E      	 ld   a,(hl)
4675  FE08    	 cp   $08
4677  D8      	 ret  c
4678  21C080  	 ld   hl,$80C0
467B  3E00    	 ld   a,$00
467D  0608    	 ld   b,$08
467F  77      	 ld   (hl),a
4680  23      	 inc  hl
4681  10FC    	 djnz $467F
4683  C9      	 ret
4684  DD21D545	 ld   ix,$45D5
4688  3A0181  	 ld   a,($8101)
468B  E603    	 and  $03
468D  110700  	 ld   de,$0007
4690  A7      	 and  a
4691  C8      	 ret  z
4692  DD19    	 add  ix,de
4694  3D      	 dec  a
4695  C39046  	 jp   $4690
4698  DD6E00  	 ld   l,(ix+$00)
469B  DD6601  	 ld   h,(ix+$01)
469E  C5      	 push bc
469F  D5      	 push de
46A0  0602    	 ld   b,$02
46A2  0E03    	 ld   c,$03
46A4  CD6D1D  	 call $1D6D
46A7  D1      	 pop  de
46A8  C1      	 pop  bc
46A9  DD23    	 inc  ix
46AB  DD23    	 inc  ix
46AD  10E9    	 djnz $4698
46AF  C9      	 ret
46B0  FD      	 db   $fd
46B1  FF      	 rst  $38
46B2  FD25    	 dec  iyh
46B4  25      	 dec  h
46B5  25      	 dec  h
46B6  25      	 dec  h
46B7  FD      	 db   $fd
46B8  FF      	 rst  $38
46B9  FD      	 db   $fd
46BA  FEFE    	 cp   $FE
46BC  FEFE    	 cp   $FE
46BE  FEFD    	 cp   $FD
46C0  FF      	 rst  $38
46C1  FD      	 db   $fd
46C2  FEFE    	 cp   $FE
46C4  FEFE    	 cp   $FE
46C6  FEFD    	 cp   $FD
46C8  FF      	 rst  $38
46C9  FD      	 db   $fd
46CA  FEFE    	 cp   $FE
46CC  FEFE    	 cp   $FE
46CE  FEFD    	 cp   $FD
46D0  FF      	 rst  $38
46D1  FD      	 db   $fd
46D2  FEFE    	 cp   $FE
46D4  FEFE    	 cp   $FE
46D6  FEFD    	 cp   $FD
46D8  FF      	 rst  $38
46D9  FD25    	 dec  iyh
46DB  25      	 dec  h
46DC  25      	 dec  h
46DD  25      	 dec  h
46DE  FD      	 db   $fd
46DF  FF      	 rst  $38
46E0  FDA691  	 and  (iy-$6f)
46E3  B6      	 or   (hl)
46E4  92      	 sub  d
46E5  00      	 nop
46E6  90      	 sub  b
46E7  2691    	 ld   h,$91
46E9  B6      	 or   (hl)
46EA  90      	 sub  b
46EB  00      	 nop
46EC  90      	 sub  b
46ED  A6      	 and  (hl)
46EE  92      	 sub  d
46EF  3692    	 ld   (hl),$92
46F1  00      	 nop
46F2  90      	 sub  b
46F3  2E91    	 ld   l,$91
46F5  B6      	 or   (hl)
46F6  91      	 sub  c
46F7  00      	 nop
46F8  90      	 sub  b
46F9  21E080  	 ld   hl,$80E0
46FC  7E      	 ld   a,(hl)
46FD  A7      	 and  a
46FE  C20D47  	 jp   nz,$470D
4701  21E080  	 ld   hl,$80E0
4704  0608    	 ld   b,$08
4706  3E00    	 ld   a,$00
4708  77      	 ld   (hl),a
4709  23      	 inc  hl
470A  10FC    	 djnz $4708
470C  C9      	 ret
470D  47      	 ld   b,a
470E  23      	 inc  hl
470F  7E      	 ld   a,(hl)
4710  A7      	 and  a
4711  C23447  	 jp   nz,$4734
4714  3601    	 ld   (hl),$01
4716  23      	 inc  hl
4717  78      	 ld   a,b
4718  E60F    	 and  $0F
471A  77      	 ld   (hl),a
471B  78      	 ld   a,b
471C  E6F0    	 and  $F0
471E  0F      	 rrca
471F  0F      	 rrca
4720  0F      	 rrca
4721  0F      	 rrca
4722  23      	 inc  hl
4723  77      	 ld   (hl),a
4724  23      	 inc  hl
4725  3600    	 ld   (hl),$00
4727  23      	 inc  hl
4728  3600    	 ld   (hl),$00
472A  23      	 inc  hl
472B  3600    	 ld   (hl),$00
472D  3E93    	 ld   a,$93
472F  3200B8  	 ld   ($B800),a
4732  C9      	 ret
4733  00      	 nop
4734  23      	 inc  hl
4735  7E      	 ld   a,(hl)
4736  FE01    	 cp   $01
4738  CA5747  	 jp   z,$4757
473B  FE02    	 cp   $02
473D  CA9D47  	 jp   z,$479D
4740  C30147  	 jp   $4701
4743  00      	 nop
4744  00      	 nop
4745  C9      	 ret
4746  CDE347  	 call $47E3
4749  C30147  	 jp   $4701
474C  3E00    	 ld   a,$00
474E  322284  	 ld   ($8422),a
4751  3E01    	 ld   a,$01
4753  321F84  	 ld   ($841F),a
4756  C9      	 ret
4757  23      	 inc  hl
4758  23      	 inc  hl
4759  23      	 inc  hl
475A  34      	 inc  (hl)
475B  3E03    	 ld   a,$03
475D  BE      	 cp   (hl)
475E  D0      	 ret  nc
475F  3600    	 ld   (hl),$00
4761  23      	 inc  hl
4762  34      	 inc  (hl)
4763  7E      	 ld   a,(hl)
4764  FE01    	 cp   $01
4766  11BE46  	 ld   de,$46BE
4769  CA9247  	 jp   z,$4792
476C  FE02    	 cp   $02
476E  11C546  	 ld   de,$46C5
4771  CA9247  	 jp   z,$4792
4774  FE03    	 cp   $03
4776  11CC46  	 ld   de,$46CC
4779  CA9247  	 jp   z,$4792
477C  FE04    	 cp   $04
477E  11D346  	 ld   de,$46D3
4781  CA9247  	 jp   z,$4792
4784  FE0C    	 cp   $0C
4786  11DA46  	 ld   de,$46DA
4789  CA4647  	 jp   z,$4746
478C  FE05    	 cp   $05
478E  CA4C47  	 jp   z,$474C
4791  C9      	 ret
4792  3A0684  	 ld   a,($8406)
4795  D608    	 sub  $08
4797  320684  	 ld   ($8406),a
479A  C3E347  	 jp   $47E3
479D  23      	 inc  hl
479E  23      	 inc  hl
479F  23      	 inc  hl
47A0  34      	 inc  (hl)
47A1  3E03    	 ld   a,$03
47A3  BE      	 cp   (hl)
47A4  D0      	 ret  nc
47A5  3600    	 ld   (hl),$00
47A7  23      	 inc  hl
47A8  34      	 inc  (hl)
47A9  7E      	 ld   a,(hl)
47AA  FE01    	 cp   $01
47AC  11CC46  	 ld   de,$46CC
47AF  CAD847  	 jp   z,$47D8
47B2  FE02    	 cp   $02
47B4  11C546  	 ld   de,$46C5
47B7  CAD847  	 jp   z,$47D8
47BA  FE03    	 cp   $03
47BC  11BE46  	 ld   de,$46BE
47BF  CAD847  	 jp   z,$47D8
47C2  FE04    	 cp   $04
47C4  11B746  	 ld   de,$46B7
47C7  CAD847  	 jp   z,$47D8
47CA  FE0C    	 cp   $0C
47CC  11B046  	 ld   de,$46B0
47CF  CA4647  	 jp   z,$4746
47D2  FE05    	 cp   $05
47D4  CA4C47  	 jp   z,$474C
47D7  C9      	 ret
47D8  3A0684  	 ld   a,($8406)
47DB  C608    	 add  a,$08
47DD  320684  	 ld   ($8406),a
47E0  C3E347  	 jp   $47E3
47E3  D5      	 push de
47E4  CDF447  	 call $47F4
47E7  2B      	 dec  hl
47E8  2B      	 dec  hl
47E9  2B      	 dec  hl
47EA  5E      	 ld   e,(hl)
47EB  1600    	 ld   d,$00
47ED  DD19    	 add  ix,de
47EF  D1      	 pop  de
47F0  CD0848  	 call $4808
47F3  C9      	 ret
47F4  DD21E146	 ld   ix,$46E1
47F8  3A0181  	 ld   a,($8101)
47FB  E603    	 and  $03
47FD  110600  	 ld   de,$0006
4800  A7      	 and  a
4801  C8      	 ret  z
4802  DD19    	 add  ix,de
4804  3D      	 dec  a
4805  C30048  	 jp   $4800
4808  E5      	 push hl
4809  DD6601  	 ld   h,(ix+$01)
480C  DD6E00  	 ld   l,(ix+$00)
480F  0601    	 ld   b,$01
4811  0E07    	 ld   c,$07
4813  CD6D1D  	 call $1D6D
4816  E1      	 pop  hl
4817  C9      	 ret
4818  212081  	 ld   hl,$8120
481B  DD21B549	 ld   ix,$49B5
481F  FD21FD49	 ld   iy,$49FD
4823  111200  	 ld   de,$0012
4826  3A0181  	 ld   a,($8101)
4829  E603    	 and  $03
482B  A7      	 and  a
482C  CA3748  	 jp   z,$4837
482F  DD19    	 add  ix,de
4831  FD19    	 add  iy,de
4833  3D      	 dec  a
4834  C32B48  	 jp   $482B
4837  0609    	 ld   b,$09
4839  7E      	 ld   a,(hl)
483A  A7      	 and  a
483B  CA4548  	 jp   z,$4845
483E  FE02    	 cp   $02
4840  C27948  	 jp   nz,$4879
4843  3600    	 ld   (hl),$00
4845  E5      	 push hl
4846  D5      	 push de
4847  C5      	 push bc
4848  DD6E00  	 ld   l,(ix+$00)
484B  DD6601  	 ld   h,(ix+$01)
484E  FD5E00  	 ld   e,(iy+$00)
4851  FD5601  	 ld   d,(iy+$01)
4854  0602    	 ld   b,$02
4856  0E02    	 ld   c,$02
4858  E5      	 push hl
4859  CD6D1D  	 call $1D6D
485C  E1      	 pop  hl
485D  1A      	 ld   a,(de)
485E  112000  	 ld   de,$0020
4861  0602    	 ld   b,$02
4863  0E02    	 ld   c,$02
4865  CBD4    	 set  2,h
4867  CD911D  	 call $1D91
486A  C1      	 pop  bc
486B  D1      	 pop  de
486C  E1      	 pop  hl
486D  23      	 inc  hl
486E  DD23    	 inc  ix
4870  DD23    	 inc  ix
4872  FD23    	 inc  iy
4874  FD23    	 inc  iy
4876  10C1    	 djnz $4839
4878  C9      	 ret
4879  E5      	 push hl
487A  D5      	 push de
487B  C5      	 push bc
487C  DD6E00  	 ld   l,(ix+$00)
487F  DD6601  	 ld   h,(ix+$01)
4882  112000  	 ld   de,$0020
4885  3E25    	 ld   a,$25
4887  0602    	 ld   b,$02
4889  0E02    	 ld   c,$02
488B  E5      	 push hl
488C  CD911D  	 call $1D91
488F  E1      	 pop  hl
4890  3E87    	 ld   a,$87
4892  112000  	 ld   de,$0020
4895  0602    	 ld   b,$02
4897  0E02    	 ld   c,$02
4899  CBD4    	 set  2,h
489B  CD911D  	 call $1D91
489E  C36A48  	 jp   $486A
48A1  D9      	 exx
48A2  212081  	 ld   hl,$8120
48A5  DD21B549	 ld   ix,$49B5
48A9  0609    	 ld   b,$09
48AB  111200  	 ld   de,$0012
48AE  3A0181  	 ld   a,($8101)
48B1  E603    	 and  $03
48B3  A7      	 and  a
48B4  CABD48  	 jp   z,$48BD
48B7  DD19    	 add  ix,de
48B9  3D      	 dec  a
48BA  C3B348  	 jp   $48B3
48BD  D9      	 exx
48BE  DD7E00  	 ld   a,(ix+$00)
48C1  3C      	 inc  a
48C2  BD      	 cp   l
48C3  CACC48  	 jp   z,$48CC
48C6  C620    	 add  a,$20
48C8  BD      	 cp   l
48C9  C2D748  	 jp   nz,$48D7
48CC  DD7E01  	 ld   a,(ix+$01)
48CF  BC      	 cp   h
48D0  C2D748  	 jp   nz,$48D7
48D3  79      	 ld   a,c
48D4  D9      	 exx
48D5  77      	 ld   (hl),a
48D6  D9      	 exx
48D7  D9      	 exx
48D8  23      	 inc  hl
48D9  DD23    	 inc  ix
48DB  DD23    	 inc  ix
48DD  10DE    	 djnz $48BD
48DF  D9      	 exx
48E0  C9      	 ret
48E1  214081  	 ld   hl,$8140
48E4  010000  	 ld   bc,$0000
48E7  7E      	 ld   a,(hl)
48E8  A7      	 and  a
48E9  CAF348  	 jp   z,$48F3
48EC  23      	 inc  hl
48ED  23      	 inc  hl
48EE  0C      	 inc  c
48EF  0C      	 inc  c
48F0  C3E748  	 jp   $48E7
48F3  72      	 ld   (hl),d
48F4  23      	 inc  hl
48F5  73      	 ld   (hl),e
48F6  DD21A349	 ld   ix,$49A3
48FA  DD09    	 add  ix,bc
48FC  DD6E00  	 ld   l,(ix+$00)
48FF  DD6601  	 ld   h,(ix+$01)
4902  72      	 ld   (hl),d
4903  CBD4    	 set  2,h
4905  73      	 ld   (hl),e
4906  214080  	 ld   hl,$8040
4909  112049  	 ld   de,$4920
490C  0603    	 ld   b,$03
490E  3601    	 ld   (hl),$01
4910  23      	 inc  hl
4911  AF      	 xor  a
4912  1A      	 ld   a,(de)
4913  8E      	 adc  a,(hl)
4914  27      	 daa
4915  77      	 ld   (hl),a
4916  23      	 inc  hl
4917  13      	 inc  de
4918  10F8    	 djnz $4912
491A  3E84    	 ld   a,$84
491C  3200B8  	 ld   ($B800),a
491F  C9      	 ret
4920  00      	 nop
4921  02      	 ld   (bc),a
4922  00      	 nop
4923  3E09    	 ld   a,$09
4925  214081  	 ld   hl,$8140
4928  010000  	 ld   bc,$0000
492B  08      	 ex   af,af'
492C  7E      	 ld   a,(hl)
492D  A7      	 and  a
492E  C43B49  	 call nz,$493B
4931  23      	 inc  hl
4932  23      	 inc  hl
4933  0C      	 inc  c
4934  0C      	 inc  c
4935  08      	 ex   af,af'
4936  3D      	 dec  a
4937  C22B49  	 jp   nz,$492B
493A  C9      	 ret
493B  E5      	 push hl
493C  56      	 ld   d,(hl)
493D  23      	 inc  hl
493E  5E      	 ld   e,(hl)
493F  DD21A349	 ld   ix,$49A3
4943  DD09    	 add  ix,bc
4945  DD6E00  	 ld   l,(ix+$00)
4948  DD6601  	 ld   h,(ix+$01)
494B  72      	 ld   (hl),d
494C  CBD4    	 set  2,h
494E  73      	 ld   (hl),e
494F  E1      	 pop  hl
4950  C9      	 ret
4951  212081  	 ld   hl,$8120
4954  DD21B549	 ld   ix,$49B5
4958  111200  	 ld   de,$0012
495B  3A0181  	 ld   a,($8101)
495E  E603    	 and  $03
4960  A7      	 and  a
4961  CA6A49  	 jp   z,$496A
4964  DD19    	 add  ix,de
4966  3D      	 dec  a
4967  C36049  	 jp   $4960
496A  0609    	 ld   b,$09
496C  7E      	 ld   a,(hl)
496D  FE02    	 cp   $02
496F  CA7A49  	 jp   z,$497A
4972  23      	 inc  hl
4973  DD23    	 inc  ix
4975  DD23    	 inc  ix
4977  10F3    	 djnz $496C
4979  C9      	 ret
497A  C5      	 push bc
497B  E5      	 push hl
497C  DD6E00  	 ld   l,(ix+$00)
497F  DD6601  	 ld   h,(ix+$01)
4982  112000  	 ld   de,$0020
4985  3E25    	 ld   a,$25
4987  0602    	 ld   b,$02
4989  0E02    	 ld   c,$02
498B  E5      	 push hl
498C  CD911D  	 call $1D91
498F  E1      	 pop  hl
4990  3E87    	 ld   a,$87
4992  112000  	 ld   de,$0020
4995  0602    	 ld   b,$02
4997  0E02    	 ld   c,$02
4999  CBD4    	 set  2,h
499B  CD911D  	 call $1D91
499E  E1      	 pop  hl
499F  C1      	 pop  bc
49A0  C37249  	 jp   $4972
49A3  FD      	 db   $fd
49A4  91      	 sub  c
49A5  BD      	 cp   l
49A6  91      	 sub  c
49A7  DD      	 db   $dd
49A8  91      	 sub  c
49A9  FC91BC  	 call m,$BC91
49AC  91      	 sub  c
49AD  DC91FB  	 call c,$FB91
49B0  91      	 sub  c
49B1  BB      	 cp   e
49B2  91      	 sub  c
49B3  DB91    	 in   a,($91)
49B5  C490DC  	 call nz,$DC90
49B8  90      	 sub  b
49B9  C8      	 ret  z
49BA  91      	 sub  c
49BB  48      	 ld   c,b
49BC  92      	 sub  d
49BD  50      	 ld   d,b
49BE  92      	 sub  d
49BF  D8      	 ret  c
49C0  92      	 sub  d
49C1  44      	 ld   b,h
49C2  93      	 sub  e
49C3  50      	 ld   d,b
49C4  93      	 sub  e
49C5  5C      	 ld   e,h
49C6  93      	 sub  e
49C7  C490CC  	 call nz,$CC90
49CA  90      	 sub  b
49CB  DC90C8  	 call c,$C890
49CE  91      	 sub  c
49CF  D49144  	 call nc,$4491
49D2  92      	 sub  d
49D3  D8      	 ret  c
49D4  92      	 sub  d
49D5  44      	 ld   b,h
49D6  93      	 sub  e
49D7  5C      	 ld   e,h
49D8  93      	 sub  e
49D9  C490CC  	 call nz,$CC90
49DC  90      	 sub  b
49DD  D0      	 ret  nc
49DE  90      	 sub  b
49DF  DC90CC  	 call c,$CC90
49E2  91      	 sub  c
49E3  DC9248  	 call c,$4892
49E6  93      	 sub  e
49E7  54      	 ld   d,h
49E8  93      	 sub  e
49E9  58      	 ld   e,b
49EA  93      	 sub  e
49EB  C490CC  	 call nz,$CC90
49EE  90      	 sub  b
49EF  D0      	 ret  nc
49F0  90      	 sub  b
49F1  44      	 ld   b,h
49F2  91      	 sub  c
49F3  D0      	 ret  nc
49F4  91      	 sub  c
49F5  44      	 ld   b,h
49F6  93      	 sub  e
49F7  48      	 ld   c,b
49F8  93      	 sub  e
49F9  4C      	 ld   c,h
49FA  93      	 sub  e
49FB  54      	 ld   d,h
49FC  93      	 sub  e
49FD  4C      	 ld   c,h
49FE  4A      	 ld   c,d
49FF  51      	 ld   d,c
4A00  4A      	 ld   c,d
4A01  56      	 ld   d,(hl)
4A02  4A      	 ld   c,d
4A03  5B      	 ld   e,e
4A04  4A      	 ld   c,d
4A05  60      	 ld   h,b
4A06  4A      	 ld   c,d
4A07  4C      	 ld   c,h
4A08  4A      	 ld   c,d
4A09  51      	 ld   d,c
4A0A  4A      	 ld   c,d
4A0B  56      	 ld   d,(hl)
4A0C  4A      	 ld   c,d
4A0D  5B      	 ld   e,e
4A0E  4A      	 ld   c,d
4A0F  60      	 ld   h,b
4A10  4A      	 ld   c,d
4A11  4C      	 ld   c,h
4A12  4A      	 ld   c,d
4A13  51      	 ld   d,c
4A14  4A      	 ld   c,d
4A15  56      	 ld   d,(hl)
4A16  4A      	 ld   c,d
4A17  5B      	 ld   e,e
4A18  4A      	 ld   c,d
4A19  60      	 ld   h,b
4A1A  4A      	 ld   c,d
4A1B  4C      	 ld   c,h
4A1C  4A      	 ld   c,d
4A1D  51      	 ld   d,c
4A1E  4A      	 ld   c,d
4A1F  56      	 ld   d,(hl)
4A20  4A      	 ld   c,d
4A21  5B      	 ld   e,e
4A22  4A      	 ld   c,d
4A23  60      	 ld   h,b
4A24  4A      	 ld   c,d
4A25  4C      	 ld   c,h
4A26  4A      	 ld   c,d
4A27  51      	 ld   d,c
4A28  4A      	 ld   c,d
4A29  56      	 ld   d,(hl)
4A2A  4A      	 ld   c,d
4A2B  5B      	 ld   e,e
4A2C  4A      	 ld   c,d
4A2D  60      	 ld   h,b
4A2E  4A      	 ld   c,d
4A2F  4C      	 ld   c,h
4A30  4A      	 ld   c,d
4A31  51      	 ld   d,c
4A32  4A      	 ld   c,d
4A33  56      	 ld   d,(hl)
4A34  4A      	 ld   c,d
4A35  5B      	 ld   e,e
4A36  4A      	 ld   c,d
4A37  60      	 ld   h,b
4A38  4A      	 ld   c,d
4A39  4C      	 ld   c,h
4A3A  4A      	 ld   c,d
4A3B  51      	 ld   d,c
4A3C  4A      	 ld   c,d
4A3D  56      	 ld   d,(hl)
4A3E  4A      	 ld   c,d
4A3F  5B      	 ld   e,e
4A40  4A      	 ld   c,d
4A41  60      	 ld   h,b
4A42  4A      	 ld   c,d
4A43  4C      	 ld   c,h
4A44  4A      	 ld   c,d
4A45  00      	 nop
4A46  00      	 nop
4A47  00      	 nop
4A48  00      	 nop
4A49  00      	 nop
4A4A  00      	 nop
4A4B  00      	 nop
4A4C  E0      	 ret  po
4A4D  E1      	 pop  hl
4A4E  E2E387  	 jp   po,$87E3
4A51  E4E5E6  	 call po,$E6E5
4A54  E7      	 rst  $20
4A55  87      	 add  a,a
4A56  E8      	 ret  pe
4A57  E9      	 jp   (hl)
4A58  EAEB87  	 jp   pe,$87EB
4A5B  ECEDEE  	 call pe,$EEED
4A5E  EF      	 rst  $28
4A5F  87      	 add  a,a
4A60  DCDDDE  	 call c,$DEDD
4A63  DF      	 rst  $18
4A64  87      	 add  a,a
4A65  00      	 nop
4A66  00      	 nop
4A67  00      	 nop
4A68  00      	 nop
4A69  00      	 nop
4A6A  00      	 nop
4A6B  00      	 nop
4A6C  3AA080  	 ld   a,($80A0)
4A6F  A7      	 and  a
4A70  C2984A  	 jp   nz,$4A98
4A73  219C80  	 ld   hl,$809C
4A76  3E00    	 ld   a,$00
4A78  060F    	 ld   b,$0F
4A7A  77      	 ld   (hl),a
4A7B  23      	 inc  hl
4A7C  10FC    	 djnz $4A7A
4A7E  C3814A  	 jp   $4A81
4A81  210880  	 ld   hl,$8008
4A84  3AA580  	 ld   a,($80A5)
4A87  77      	 ld   (hl),a
4A88  23      	 inc  hl
4A89  3AA680  	 ld   a,($80A6)
4A8C  77      	 ld   (hl),a
4A8D  23      	 inc  hl
4A8E  3AA780  	 ld   a,($80A7)
4A91  77      	 ld   (hl),a
4A92  23      	 inc  hl
4A93  3AA880  	 ld   a,($80A8)
4A96  77      	 ld   (hl),a
4A97  C9      	 ret
4A98  3AA180  	 ld   a,($80A1)
4A9B  A7      	 and  a
4A9C  C20F4B  	 jp   nz,$4B0F
4A9F  11A180  	 ld   de,$80A1
4AA2  21034B  	 ld   hl,$4B03
4AA5  010900  	 ld   bc,$0009
4AA8  EDB0    	 ldir
4AAA  3A0684  	 ld   a,($8406)
4AAD  C600    	 add  a,$00
4AAF  32A580  	 ld   ($80A5),a
4AB2  3A0784  	 ld   a,($8407)
4AB5  C6F0    	 add  a,$F0
4AB7  32A880  	 ld   ($80A8),a
4ABA  3A9F80  	 ld   a,($809F)
4ABD  0E00    	 ld   c,$00
4ABF  FE7A    	 cp   $7A
4AC1  CAE34A  	 jp   z,$4AE3
4AC4  0C      	 inc  c
4AC5  0C      	 inc  c
4AC6  FE7E    	 cp   $7E
4AC8  CAE34A  	 jp   z,$4AE3
4ACB  0C      	 inc  c
4ACC  0C      	 inc  c
4ACD  FE7C    	 cp   $7C
4ACF  CAE34A  	 jp   z,$4AE3
4AD2  0C      	 inc  c
4AD3  0C      	 inc  c
4AD4  FE7D    	 cp   $7D
4AD6  CAE34A  	 jp   z,$4AE3
4AD9  0C      	 inc  c
4ADA  0C      	 inc  c
4ADB  FE7B    	 cp   $7B
4ADD  CAE34A  	 jp   z,$4AE3
4AE0  C3734A  	 jp   $4A73
4AE3  21F54A  	 ld   hl,$4AF5
4AE6  0600    	 ld   b,$00
4AE8  09      	 add  hl,bc
4AE9  7E      	 ld   a,(hl)
4AEA  32A680  	 ld   ($80A6),a
4AED  23      	 inc  hl
4AEE  7E      	 ld   a,(hl)
4AEF  32A780  	 ld   ($80A7),a
4AF2  C3814A  	 jp   $4A81
4AF5  320736  	 ld   ($3607),a
4AF8  07      	 rlca
4AF9  34      	 inc  (hl)
4AFA  07      	 rlca
4AFB  35      	 dec  (hl)
4AFC  07      	 rlca
4AFD  33      	 inc  sp
4AFE  07      	 rlca
4AFF  00      	 nop
4B00  00      	 nop
4B01  00      	 nop
4B02  00      	 nop
4B03  010100  	 ld   bc,$0001
4B06  00      	 nop
4B07  00      	 nop
4B08  00      	 nop
4B09  00      	 nop
4B0A  00      	 nop
4B0B  00      	 nop
4B0C  00      	 nop
4B0D  00      	 nop
4B0E  00      	 nop
4B0F  3AA280  	 ld   a,($80A2)
4B12  FE01    	 cp   $01
4B14  CA244B  	 jp   z,$4B24
4B17  FE02    	 cp   $02
4B19  CA374B  	 jp   z,$4B37
4B1C  FE03    	 cp   $03
4B1E  CA564B  	 jp   z,$4B56
4B21  C3734A  	 jp   $4A73
4B24  3A0684  	 ld   a,($8406)
4B27  C600    	 add  a,$00
4B29  32A580  	 ld   ($80A5),a
4B2C  3A0784  	 ld   a,($8407)
4B2F  C6F0    	 add  a,$F0
4B31  32A880  	 ld   ($80A8),a
4B34  C3814A  	 jp   $4A81
4B37  3AA380  	 ld   a,($80A3)
4B3A  3C      	 inc  a
4B3B  32A380  	 ld   ($80A3),a
4B3E  FE0A    	 cp   $0A
4B40  DA4B4B  	 jp   c,$4B4B
4B43  3E03    	 ld   a,$03
4B45  32A280  	 ld   ($80A2),a
4B48  C3814A  	 jp   $4A81
4B4B  3AA880  	 ld   a,($80A8)
4B4E  C602    	 add  a,$02
4B50  32A880  	 ld   ($80A8),a
4B53  C3814A  	 jp   $4A81
4B56  219E80  	 ld   hl,$809E
4B59  5E      	 ld   e,(hl)
4B5A  23      	 inc  hl
4B5B  56      	 ld   d,(hl)
4B5C  CDE148  	 call $48E1
4B5F  2A9C80  	 ld   hl,($809C)
4B62  0E01    	 ld   c,$01
4B64  CDA148  	 call $48A1
4B67  C3734A  	 jp   $4A73
4B6A  3E00    	 ld   a,$00
4B6C  328081  	 ld   ($8180),a
4B6F  3A8081  	 ld   a,($8180)
4B72  A7      	 and  a
4B73  C28A4B  	 jp   nz,$4B8A
4B76  3E39    	 ld   a,$39
4B78  326590  	 ld   ($9065),a
4B7B  3E85    	 ld   a,$85
4B7D  326594  	 ld   ($9465),a
4B80  3E3A    	 ld   a,$3A
4B82  328590  	 ld   ($9085),a
4B85  3E85    	 ld   a,$85
4B87  328594  	 ld   ($9485),a
4B8A  3E00    	 ld   a,$00
4B8C  328181  	 ld   ($8181),a
4B8F  3A8181  	 ld   a,($8181)
4B92  A7      	 and  a
4B93  C2AA4B  	 jp   nz,$4BAA
4B96  3E39    	 ld   a,$39
4B98  328593  	 ld   ($9385),a
4B9B  3E85    	 ld   a,$85
4B9D  328597  	 ld   ($9785),a
4BA0  3E3A    	 ld   a,$3A
4BA2  32A593  	 ld   ($93A5),a
4BA5  3E85    	 ld   a,$85
4BA7  32A597  	 ld   ($97A5),a
4BAA  C9      	 ret
4BAB  3AC185  	 ld   a,($85C1)
4BAE  A7      	 and  a
4BAF  C2BF4B  	 jp   nz,$4BBF
4BB2  32C085  	 ld   ($85C0),a
4BB5  21C485  	 ld   hl,$85C4
4BB8  060C    	 ld   b,$0C
4BBA  77      	 ld   (hl),a
4BBB  23      	 inc  hl
4BBC  10FC    	 djnz $4BBA
4BBE  C9      	 ret
4BBF  3AC485  	 ld   a,($85C4)
4BC2  A7      	 and  a
4BC3  C2034C  	 jp   nz,$4C03
4BC6  21C185  	 ld   hl,$85C1
4BC9  11C485  	 ld   de,$85C4
4BCC  010300  	 ld   bc,$0003
4BCF  EDB0    	 ldir
4BD1  3E95    	 ld   a,$95
4BD3  3200B8  	 ld   ($B800),a
4BD6  3E01    	 ld   a,$01
4BD8  32C085  	 ld   ($85C0),a
4BDB  3AC585  	 ld   a,($85C5)
4BDE  FE80    	 cp   $80
4BE0  DAF34B  	 jp   c,$4BF3
4BE3  3E25    	 ld   a,$25
4BE5  326590  	 ld   ($9065),a
4BE8  328590  	 ld   ($9085),a
4BEB  3E01    	 ld   a,$01
4BED  328081  	 ld   ($8180),a
4BF0  C31E4C  	 jp   $4C1E
4BF3  3E25    	 ld   a,$25
4BF5  328593  	 ld   ($9385),a
4BF8  32A593  	 ld   ($93A5),a
4BFB  3E01    	 ld   a,$01
4BFD  328181  	 ld   ($8181),a
4C00  C31E4C  	 jp   $4C1E
4C03  3AC685  	 ld   a,($85C6)
4C06  FEE0    	 cp   $E0
4C08  D2134C  	 jp   nc,$4C13
4C0B  C602    	 add  a,$02
4C0D  32C685  	 ld   ($85C6),a
4C10  C31E4C  	 jp   $4C1E
4C13  21C085  	 ld   hl,$85C0
4C16  0610    	 ld   b,$10
4C18  3E00    	 ld   a,$00
4C1A  77      	 ld   (hl),a
4C1B  23      	 inc  hl
4C1C  10FC    	 djnz $4C1A
4C1E  211C80  	 ld   hl,$801C
4C21  3AC585  	 ld   a,($85C5)
4C24  77      	 ld   (hl),a
4C25  23      	 inc  hl
4C26  3E37    	 ld   a,$37
4C28  77      	 ld   (hl),a
4C29  23      	 inc  hl
4C2A  3E05    	 ld   a,$05
4C2C  77      	 ld   (hl),a
4C2D  23      	 inc  hl
4C2E  3AC685  	 ld   a,($85C6)
4C31  77      	 ld   (hl),a
4C32  C9      	 ret
4C33  00      	 nop
4C34  00      	 nop
4C35  00      	 nop
4C36  00      	 nop
4C37  00      	 nop
4C38  00      	 nop
4C39  00      	 nop
4C3A  00      	 nop
4C3B  00      	 nop
4C3C  00      	 nop
4C3D  00      	 nop
4C3E  00      	 nop
4C3F  00      	 nop
4C40  00      	 nop
4C41  00      	 nop
4C42  00      	 nop
4C43  00      	 nop
4C44  00      	 nop
4C45  00      	 nop
4C46  00      	 nop
4C47  00      	 nop
4C48  00      	 nop
4C49  00      	 nop
4C4A  00      	 nop
4C4B  00      	 nop
4C4C  00      	 nop
4C4D  00      	 nop
4C4E  00      	 nop
4C4F  00      	 nop
4C50  00      	 nop
4C51  00      	 nop
4C52  00      	 nop
4C53  00      	 nop
4C54  00      	 nop
4C55  00      	 nop
4C56  00      	 nop
4C57  00      	 nop
4C58  00      	 nop
4C59  00      	 nop
4C5A  00      	 nop
4C5B  00      	 nop
4C5C  00      	 nop
4C5D  00      	 nop
4C5E  00      	 nop
4C5F  00      	 nop
4C60  00      	 nop
4C61  00      	 nop
4C62  00      	 nop
4C63  00      	 nop
4C64  00      	 nop
4C65  00      	 nop
4C66  00      	 nop
4C67  00      	 nop
4C68  00      	 nop
4C69  00      	 nop
4C6A  00      	 nop
4C6B  00      	 nop
4C6C  00      	 nop
4C6D  00      	 nop
4C6E  00      	 nop
4C6F  00      	 nop
4C70  00      	 nop
4C71  00      	 nop
4C72  00      	 nop
4C73  00      	 nop
4C74  00      	 nop
4C75  00      	 nop
4C76  00      	 nop
4C77  00      	 nop
4C78  00      	 nop
4C79  00      	 nop
4C7A  00      	 nop
4C7B  00      	 nop
4C7C  00      	 nop
4C7D  00      	 nop
4C7E  00      	 nop
4C7F  00      	 nop
4C80  00      	 nop
4C81  00      	 nop
4C82  00      	 nop
4C83  00      	 nop
4C84  00      	 nop
4C85  00      	 nop
4C86  00      	 nop
4C87  00      	 nop
4C88  00      	 nop
4C89  00      	 nop
4C8A  00      	 nop
4C8B  00      	 nop
4C8C  00      	 nop
4C8D  00      	 nop
4C8E  00      	 nop
4C8F  00      	 nop
4C90  00      	 nop
4C91  00      	 nop
4C92  00      	 nop
4C93  00      	 nop
4C94  00      	 nop
4C95  00      	 nop
4C96  00      	 nop
4C97  00      	 nop
4C98  00      	 nop
4C99  00      	 nop
4C9A  00      	 nop
4C9B  00      	 nop
4C9C  00      	 nop
4C9D  00      	 nop
4C9E  00      	 nop
4C9F  00      	 nop
4CA0  00      	 nop
4CA1  00      	 nop
4CA2  00      	 nop
4CA3  00      	 nop
4CA4  00      	 nop
4CA5  00      	 nop
4CA6  00      	 nop
4CA7  00      	 nop
4CA8  00      	 nop
4CA9  00      	 nop
4CAA  00      	 nop
4CAB  00      	 nop
4CAC  00      	 nop
4CAD  00      	 nop
4CAE  00      	 nop
4CAF  00      	 nop
4CB0  00      	 nop
4CB1  00      	 nop
4CB2  00      	 nop
4CB3  00      	 nop
4CB4  00      	 nop
4CB5  00      	 nop
4CB6  00      	 nop
4CB7  00      	 nop
4CB8  00      	 nop
4CB9  00      	 nop
4CBA  00      	 nop
4CBB  00      	 nop
4CBC  00      	 nop
4CBD  00      	 nop
4CBE  00      	 nop
4CBF  00      	 nop
4CC0  00      	 nop
4CC1  00      	 nop
4CC2  00      	 nop
4CC3  00      	 nop
4CC4  00      	 nop
4CC5  00      	 nop
4CC6  00      	 nop
4CC7  00      	 nop
4CC8  00      	 nop
4CC9  00      	 nop
4CCA  00      	 nop
4CCB  00      	 nop
4CCC  00      	 nop
4CCD  00      	 nop
4CCE  00      	 nop
4CCF  00      	 nop
4CD0  00      	 nop
4CD1  00      	 nop
4CD2  00      	 nop
4CD3  00      	 nop
4CD4  00      	 nop
4CD5  00      	 nop
4CD6  00      	 nop
4CD7  00      	 nop
4CD8  00      	 nop
4CD9  00      	 nop
4CDA  00      	 nop
4CDB  00      	 nop
4CDC  00      	 nop
4CDD  00      	 nop
4CDE  00      	 nop
4CDF  00      	 nop
4CE0  00      	 nop
4CE1  00      	 nop
4CE2  00      	 nop
4CE3  00      	 nop
4CE4  00      	 nop
4CE5  00      	 nop
4CE6  00      	 nop
4CE7  00      	 nop
4CE8  00      	 nop
4CE9  00      	 nop
4CEA  00      	 nop
4CEB  00      	 nop
4CEC  00      	 nop
4CED  00      	 nop
4CEE  00      	 nop
4CEF  00      	 nop
4CF0  00      	 nop
4CF1  00      	 nop
4CF2  00      	 nop
4CF3  00      	 nop
4CF4  00      	 nop
4CF5  00      	 nop
4CF6  00      	 nop
4CF7  00      	 nop
4CF8  00      	 nop
4CF9  00      	 nop
4CFA  00      	 nop
4CFB  00      	 nop
4CFC  00      	 nop
4CFD  00      	 nop
4CFE  00      	 nop
4CFF  00      	 nop
4D00  00      	 nop
4D01  00      	 nop
4D02  00      	 nop
4D03  00      	 nop
4D04  00      	 nop
4D05  00      	 nop
4D06  00      	 nop
4D07  00      	 nop
4D08  00      	 nop
4D09  00      	 nop
4D0A  00      	 nop
4D0B  00      	 nop
4D0C  00      	 nop
4D0D  00      	 nop
4D0E  00      	 nop
4D0F  00      	 nop
4D10  00      	 nop
4D11  00      	 nop
4D12  00      	 nop
4D13  00      	 nop
4D14  00      	 nop
4D15  00      	 nop
4D16  00      	 nop
4D17  00      	 nop
4D18  00      	 nop
4D19  00      	 nop
4D1A  00      	 nop
4D1B  00      	 nop
4D1C  00      	 nop
4D1D  00      	 nop
4D1E  00      	 nop
4D1F  00      	 nop
4D20  00      	 nop
4D21  00      	 nop
4D22  00      	 nop
4D23  00      	 nop
4D24  00      	 nop
4D25  00      	 nop
4D26  00      	 nop
4D27  00      	 nop
4D28  00      	 nop
4D29  00      	 nop
4D2A  00      	 nop
4D2B  00      	 nop
4D2C  00      	 nop
4D2D  00      	 nop
4D2E  00      	 nop
4D2F  00      	 nop
4D30  00      	 nop
4D31  00      	 nop
4D32  00      	 nop
4D33  00      	 nop
4D34  00      	 nop
4D35  00      	 nop
4D36  00      	 nop
4D37  00      	 nop
4D38  00      	 nop
4D39  00      	 nop
4D3A  00      	 nop
4D3B  00      	 nop
4D3C  00      	 nop
4D3D  00      	 nop
4D3E  00      	 nop
4D3F  00      	 nop
4D40  00      	 nop
4D41  00      	 nop
4D42  00      	 nop
4D43  00      	 nop
4D44  00      	 nop
4D45  00      	 nop
4D46  00      	 nop
4D47  00      	 nop
4D48  00      	 nop
4D49  00      	 nop
4D4A  00      	 nop
4D4B  00      	 nop
4D4C  00      	 nop
4D4D  00      	 nop
4D4E  00      	 nop
4D4F  00      	 nop
4D50  00      	 nop
4D51  00      	 nop
4D52  00      	 nop
4D53  00      	 nop
4D54  00      	 nop
4D55  00      	 nop
4D56  00      	 nop
4D57  00      	 nop
4D58  00      	 nop
4D59  00      	 nop
4D5A  00      	 nop
4D5B  00      	 nop
4D5C  00      	 nop
4D5D  00      	 nop
4D5E  00      	 nop
4D5F  00      	 nop
4D60  00      	 nop
4D61  00      	 nop
4D62  00      	 nop
4D63  00      	 nop
4D64  00      	 nop
4D65  00      	 nop
4D66  00      	 nop
4D67  00      	 nop
4D68  00      	 nop
4D69  00      	 nop
4D6A  00      	 nop
4D6B  00      	 nop
4D6C  00      	 nop
4D6D  00      	 nop
4D6E  00      	 nop
4D6F  00      	 nop
4D70  00      	 nop
4D71  00      	 nop
4D72  00      	 nop
4D73  00      	 nop
4D74  00      	 nop
4D75  00      	 nop
4D76  00      	 nop
4D77  00      	 nop
4D78  00      	 nop
4D79  00      	 nop
4D7A  00      	 nop
4D7B  00      	 nop
4D7C  00      	 nop
4D7D  00      	 nop
4D7E  00      	 nop
4D7F  00      	 nop
4D80  00      	 nop
4D81  00      	 nop
4D82  00      	 nop
4D83  00      	 nop
4D84  00      	 nop
4D85  00      	 nop
4D86  00      	 nop
4D87  00      	 nop
4D88  00      	 nop
4D89  00      	 nop
4D8A  00      	 nop
4D8B  00      	 nop
4D8C  00      	 nop
4D8D  00      	 nop
4D8E  00      	 nop
4D8F  00      	 nop
4D90  00      	 nop
4D91  00      	 nop
4D92  00      	 nop
4D93  00      	 nop
4D94  00      	 nop
4D95  00      	 nop
4D96  00      	 nop
4D97  00      	 nop
4D98  00      	 nop
4D99  00      	 nop
4D9A  00      	 nop
4D9B  00      	 nop
4D9C  00      	 nop
4D9D  00      	 nop
4D9E  00      	 nop
4D9F  00      	 nop
4DA0  00      	 nop
4DA1  00      	 nop
4DA2  00      	 nop
4DA3  00      	 nop
4DA4  00      	 nop
4DA5  00      	 nop
4DA6  00      	 nop
4DA7  00      	 nop
4DA8  00      	 nop
4DA9  00      	 nop
4DAA  00      	 nop
4DAB  00      	 nop
4DAC  00      	 nop
4DAD  00      	 nop
4DAE  00      	 nop
4DAF  00      	 nop
4DB0  00      	 nop
4DB1  00      	 nop
4DB2  00      	 nop
4DB3  00      	 nop
4DB4  00      	 nop
4DB5  00      	 nop
4DB6  00      	 nop
4DB7  00      	 nop
4DB8  00      	 nop
4DB9  00      	 nop
4DBA  00      	 nop
4DBB  00      	 nop
4DBC  00      	 nop
4DBD  00      	 nop
4DBE  00      	 nop
4DBF  00      	 nop
4DC0  00      	 nop
4DC1  00      	 nop
4DC2  00      	 nop
4DC3  00      	 nop
4DC4  00      	 nop
4DC5  00      	 nop
4DC6  00      	 nop
4DC7  00      	 nop
4DC8  00      	 nop
4DC9  00      	 nop
4DCA  00      	 nop
4DCB  00      	 nop
4DCC  00      	 nop
4DCD  00      	 nop
4DCE  00      	 nop
4DCF  00      	 nop
4DD0  00      	 nop
4DD1  00      	 nop
4DD2  00      	 nop
4DD3  00      	 nop
4DD4  00      	 nop
4DD5  00      	 nop
4DD6  00      	 nop
4DD7  00      	 nop
4DD8  00      	 nop
4DD9  00      	 nop
4DDA  00      	 nop
4DDB  00      	 nop
4DDC  00      	 nop
4DDD  00      	 nop
4DDE  00      	 nop
4DDF  00      	 nop
4DE0  00      	 nop
4DE1  00      	 nop
4DE2  00      	 nop
4DE3  00      	 nop
4DE4  00      	 nop
4DE5  00      	 nop
4DE6  00      	 nop
4DE7  00      	 nop
4DE8  00      	 nop
4DE9  00      	 nop
4DEA  00      	 nop
4DEB  00      	 nop
4DEC  00      	 nop
4DED  00      	 nop
4DEE  00      	 nop
4DEF  00      	 nop
4DF0  00      	 nop
4DF1  00      	 nop
4DF2  00      	 nop
4DF3  00      	 nop
4DF4  00      	 nop
4DF5  00      	 nop
4DF6  00      	 nop
4DF7  00      	 nop
4DF8  00      	 nop
4DF9  00      	 nop
4DFA  00      	 nop
4DFB  00      	 nop
4DFC  00      	 nop
4DFD  00      	 nop
4DFE  00      	 nop
4DFF  00      	 nop
4E00  00      	 nop
4E01  00      	 nop
4E02  00      	 nop
4E03  00      	 nop
4E04  00      	 nop
4E05  00      	 nop
4E06  00      	 nop
4E07  00      	 nop
4E08  00      	 nop
4E09  00      	 nop
4E0A  00      	 nop
4E0B  00      	 nop
4E0C  00      	 nop
4E0D  00      	 nop
4E0E  00      	 nop
4E0F  00      	 nop
4E10  00      	 nop
4E11  00      	 nop
4E12  00      	 nop
4E13  00      	 nop
4E14  00      	 nop
4E15  00      	 nop
4E16  00      	 nop
4E17  00      	 nop
4E18  00      	 nop
4E19  00      	 nop
4E1A  00      	 nop
4E1B  00      	 nop
4E1C  00      	 nop
4E1D  00      	 nop
4E1E  00      	 nop
4E1F  00      	 nop
4E20  00      	 nop
4E21  00      	 nop
4E22  00      	 nop
4E23  00      	 nop
4E24  00      	 nop
4E25  00      	 nop
4E26  00      	 nop
4E27  00      	 nop
4E28  00      	 nop
4E29  00      	 nop
4E2A  00      	 nop
4E2B  00      	 nop
4E2C  00      	 nop
4E2D  00      	 nop
4E2E  00      	 nop
4E2F  00      	 nop
4E30  00      	 nop
4E31  00      	 nop
4E32  00      	 nop
4E33  00      	 nop
4E34  00      	 nop
4E35  00      	 nop
4E36  00      	 nop
4E37  00      	 nop
4E38  00      	 nop
4E39  00      	 nop
4E3A  00      	 nop
4E3B  00      	 nop
4E3C  00      	 nop
4E3D  00      	 nop
4E3E  00      	 nop
4E3F  00      	 nop
4E40  00      	 nop
4E41  00      	 nop
4E42  00      	 nop
4E43  00      	 nop
4E44  00      	 nop
4E45  00      	 nop
4E46  00      	 nop
4E47  00      	 nop
4E48  00      	 nop
4E49  00      	 nop
4E4A  00      	 nop
4E4B  00      	 nop
4E4C  00      	 nop
4E4D  00      	 nop
4E4E  00      	 nop
4E4F  00      	 nop
4E50  00      	 nop
4E51  00      	 nop
4E52  00      	 nop
4E53  00      	 nop
4E54  00      	 nop
4E55  00      	 nop
4E56  00      	 nop
4E57  00      	 nop
4E58  00      	 nop
4E59  00      	 nop
4E5A  00      	 nop
4E5B  00      	 nop
4E5C  00      	 nop
4E5D  00      	 nop
4E5E  00      	 nop
4E5F  00      	 nop
4E60  00      	 nop
4E61  00      	 nop
4E62  00      	 nop
4E63  00      	 nop
4E64  00      	 nop
4E65  00      	 nop
4E66  00      	 nop
4E67  00      	 nop
4E68  00      	 nop
4E69  00      	 nop
4E6A  00      	 nop
4E6B  00      	 nop
4E6C  00      	 nop
4E6D  00      	 nop
4E6E  00      	 nop
4E6F  00      	 nop
4E70  00      	 nop
4E71  00      	 nop
4E72  00      	 nop
4E73  00      	 nop
4E74  00      	 nop
4E75  00      	 nop
4E76  00      	 nop
4E77  00      	 nop
4E78  00      	 nop
4E79  00      	 nop
4E7A  00      	 nop
4E7B  00      	 nop
4E7C  00      	 nop
4E7D  00      	 nop
4E7E  00      	 nop
4E7F  00      	 nop
4E80  00      	 nop
4E81  00      	 nop
4E82  00      	 nop
4E83  00      	 nop
4E84  00      	 nop
4E85  00      	 nop
4E86  00      	 nop
4E87  00      	 nop
4E88  00      	 nop
4E89  00      	 nop
4E8A  00      	 nop
4E8B  00      	 nop
4E8C  00      	 nop
4E8D  00      	 nop
4E8E  00      	 nop
4E8F  00      	 nop
4E90  00      	 nop
4E91  00      	 nop
4E92  00      	 nop
4E93  00      	 nop
4E94  00      	 nop
4E95  00      	 nop
4E96  00      	 nop
4E97  00      	 nop
4E98  00      	 nop
4E99  00      	 nop
4E9A  00      	 nop
4E9B  00      	 nop
4E9C  00      	 nop
4E9D  00      	 nop
4E9E  00      	 nop
4E9F  00      	 nop
4EA0  00      	 nop
4EA1  00      	 nop
4EA2  00      	 nop
4EA3  00      	 nop
4EA4  00      	 nop
4EA5  00      	 nop
4EA6  00      	 nop
4EA7  00      	 nop
4EA8  00      	 nop
4EA9  00      	 nop
4EAA  00      	 nop
4EAB  00      	 nop
4EAC  00      	 nop
4EAD  00      	 nop
4EAE  00      	 nop
4EAF  00      	 nop
4EB0  00      	 nop
4EB1  00      	 nop
4EB2  00      	 nop
4EB3  00      	 nop
4EB4  00      	 nop
4EB5  00      	 nop
4EB6  00      	 nop
4EB7  00      	 nop
4EB8  00      	 nop
4EB9  00      	 nop
4EBA  00      	 nop
4EBB  00      	 nop
4EBC  00      	 nop
4EBD  00      	 nop
4EBE  00      	 nop
4EBF  00      	 nop
4EC0  00      	 nop
4EC1  00      	 nop
4EC2  00      	 nop
4EC3  00      	 nop
4EC4  00      	 nop
4EC5  00      	 nop
4EC6  00      	 nop
4EC7  00      	 nop
4EC8  00      	 nop
4EC9  00      	 nop
4ECA  00      	 nop
4ECB  00      	 nop
4ECC  00      	 nop
4ECD  00      	 nop
4ECE  00      	 nop
4ECF  00      	 nop
4ED0  00      	 nop
4ED1  00      	 nop
4ED2  00      	 nop
4ED3  00      	 nop
4ED4  00      	 nop
4ED5  00      	 nop
4ED6  00      	 nop
4ED7  00      	 nop
4ED8  00      	 nop
4ED9  00      	 nop
4EDA  00      	 nop
4EDB  00      	 nop
4EDC  00      	 nop
4EDD  00      	 nop
4EDE  00      	 nop
4EDF  00      	 nop
4EE0  00      	 nop
4EE1  00      	 nop
4EE2  00      	 nop
4EE3  00      	 nop
4EE4  00      	 nop
4EE5  00      	 nop
4EE6  00      	 nop
4EE7  00      	 nop
4EE8  00      	 nop
4EE9  00      	 nop
4EEA  00      	 nop
4EEB  00      	 nop
4EEC  00      	 nop
4EED  00      	 nop
4EEE  00      	 nop
4EEF  00      	 nop
4EF0  00      	 nop
4EF1  00      	 nop
4EF2  00      	 nop
4EF3  00      	 nop
4EF4  00      	 nop
4EF5  00      	 nop
4EF6  00      	 nop
4EF7  00      	 nop
4EF8  00      	 nop
4EF9  00      	 nop
4EFA  00      	 nop
4EFB  00      	 nop
4EFC  00      	 nop
4EFD  00      	 nop
4EFE  00      	 nop
4EFF  00      	 nop
4F00  00      	 nop
4F01  00      	 nop
4F02  00      	 nop
4F03  00      	 nop
4F04  00      	 nop
4F05  00      	 nop
4F06  00      	 nop
4F07  00      	 nop
4F08  00      	 nop
4F09  00      	 nop
4F0A  00      	 nop
4F0B  00      	 nop
4F0C  00      	 nop
4F0D  00      	 nop
4F0E  00      	 nop
4F0F  00      	 nop
4F10  00      	 nop
4F11  00      	 nop
4F12  00      	 nop
4F13  00      	 nop
4F14  00      	 nop
4F15  00      	 nop
4F16  00      	 nop
4F17  00      	 nop
4F18  00      	 nop
4F19  00      	 nop
4F1A  00      	 nop
4F1B  00      	 nop
4F1C  00      	 nop
4F1D  00      	 nop
4F1E  00      	 nop
4F1F  00      	 nop
4F20  00      	 nop
4F21  00      	 nop
4F22  00      	 nop
4F23  00      	 nop
4F24  00      	 nop
4F25  00      	 nop
4F26  00      	 nop
4F27  00      	 nop
4F28  00      	 nop
4F29  00      	 nop
4F2A  00      	 nop
4F2B  00      	 nop
4F2C  00      	 nop
4F2D  00      	 nop
4F2E  00      	 nop
4F2F  00      	 nop
4F30  00      	 nop
4F31  00      	 nop
4F32  00      	 nop
4F33  00      	 nop
4F34  00      	 nop
4F35  00      	 nop
4F36  00      	 nop
4F37  00      	 nop
4F38  00      	 nop
4F39  00      	 nop
4F3A  00      	 nop
4F3B  00      	 nop
4F3C  00      	 nop
4F3D  00      	 nop
4F3E  00      	 nop
4F3F  00      	 nop
4F40  00      	 nop
4F41  00      	 nop
4F42  00      	 nop
4F43  00      	 nop
4F44  00      	 nop
4F45  00      	 nop
4F46  00      	 nop
4F47  00      	 nop
4F48  00      	 nop
4F49  00      	 nop
4F4A  00      	 nop
4F4B  00      	 nop
4F4C  00      	 nop
4F4D  00      	 nop
4F4E  00      	 nop
4F4F  00      	 nop
4F50  00      	 nop
4F51  00      	 nop
4F52  00      	 nop
4F53  00      	 nop
4F54  00      	 nop
4F55  00      	 nop
4F56  00      	 nop
4F57  00      	 nop
4F58  00      	 nop
4F59  00      	 nop
4F5A  00      	 nop
4F5B  00      	 nop
4F5C  00      	 nop
4F5D  00      	 nop
4F5E  00      	 nop
4F5F  00      	 nop
4F60  00      	 nop
4F61  00      	 nop
4F62  00      	 nop
4F63  00      	 nop
4F64  00      	 nop
4F65  00      	 nop
4F66  00      	 nop
4F67  00      	 nop
4F68  00      	 nop
4F69  00      	 nop
4F6A  00      	 nop
4F6B  00      	 nop
4F6C  00      	 nop
4F6D  00      	 nop
4F6E  00      	 nop
4F6F  00      	 nop
4F70  00      	 nop
4F71  00      	 nop
4F72  00      	 nop
4F73  00      	 nop
4F74  00      	 nop
4F75  00      	 nop
4F76  00      	 nop
4F77  00      	 nop
4F78  00      	 nop
4F79  00      	 nop
4F7A  00      	 nop
4F7B  00      	 nop
4F7C  00      	 nop
4F7D  00      	 nop
4F7E  00      	 nop
4F7F  00      	 nop
4F80  00      	 nop
4F81  00      	 nop
4F82  00      	 nop
4F83  00      	 nop
4F84  00      	 nop
4F85  00      	 nop
4F86  00      	 nop
4F87  00      	 nop
4F88  00      	 nop
4F89  00      	 nop
4F8A  00      	 nop
4F8B  00      	 nop
4F8C  00      	 nop
4F8D  00      	 nop
4F8E  00      	 nop
4F8F  00      	 nop
4F90  00      	 nop
4F91  00      	 nop
4F92  00      	 nop
4F93  00      	 nop
4F94  00      	 nop
4F95  00      	 nop
4F96  00      	 nop
4F97  00      	 nop
4F98  00      	 nop
4F99  00      	 nop
4F9A  00      	 nop
4F9B  00      	 nop
4F9C  00      	 nop
4F9D  00      	 nop
4F9E  00      	 nop
4F9F  00      	 nop
4FA0  00      	 nop
4FA1  00      	 nop
4FA2  00      	 nop
4FA3  00      	 nop
4FA4  00      	 nop
4FA5  00      	 nop
4FA6  00      	 nop
4FA7  00      	 nop
4FA8  00      	 nop
4FA9  00      	 nop
4FAA  00      	 nop
4FAB  00      	 nop
4FAC  00      	 nop
4FAD  00      	 nop
4FAE  00      	 nop
4FAF  00      	 nop
4FB0  00      	 nop
4FB1  00      	 nop
4FB2  00      	 nop
4FB3  00      	 nop
4FB4  00      	 nop
4FB5  00      	 nop
4FB6  00      	 nop
4FB7  00      	 nop
4FB8  00      	 nop
4FB9  00      	 nop
4FBA  00      	 nop
4FBB  00      	 nop
4FBC  00      	 nop
4FBD  00      	 nop
4FBE  00      	 nop
4FBF  00      	 nop
4FC0  00      	 nop
4FC1  00      	 nop
4FC2  00      	 nop
4FC3  00      	 nop
4FC4  00      	 nop
4FC5  00      	 nop
4FC6  00      	 nop
4FC7  00      	 nop
4FC8  00      	 nop
4FC9  00      	 nop
4FCA  00      	 nop
4FCB  00      	 nop
4FCC  00      	 nop
4FCD  00      	 nop
4FCE  00      	 nop
4FCF  00      	 nop
4FD0  00      	 nop
4FD1  00      	 nop
4FD2  00      	 nop
4FD3  00      	 nop
4FD4  00      	 nop
4FD5  00      	 nop
4FD6  00      	 nop
4FD7  00      	 nop
4FD8  00      	 nop
4FD9  00      	 nop
4FDA  00      	 nop
4FDB  00      	 nop
4FDC  00      	 nop
4FDD  00      	 nop
4FDE  00      	 nop
4FDF  00      	 nop
4FE0  00      	 nop
4FE1  00      	 nop
4FE2  00      	 nop
4FE3  00      	 nop
4FE4  00      	 nop
4FE5  00      	 nop
4FE6  00      	 nop
4FE7  00      	 nop
4FE8  00      	 nop
4FE9  00      	 nop
4FEA  00      	 nop
4FEB  00      	 nop
4FEC  00      	 nop
4FED  00      	 nop
4FEE  00      	 nop
4FEF  00      	 nop
4FF0  00      	 nop
4FF1  00      	 nop
4FF2  00      	 nop
4FF3  00      	 nop
4FF4  00      	 nop
4FF5  00      	 nop
4FF6  00      	 nop
4FF7  00      	 nop
4FF8  00      	 nop
4FF9  00      	 nop
4FFA  00      	 nop
4FFB  00      	 nop
4FFC  00      	 nop
4FFD  00      	 nop
4FFE  00      	 nop
4FFF  00      	 nop
5000  00      	 nop
5001  00      	 nop
5002  00      	 nop
5003  00      	 nop
5004  00      	 nop
5005  00      	 nop
5006  00      	 nop
5007  00      	 nop
5008  00      	 nop
5009  00      	 nop
500A  00      	 nop
500B  00      	 nop
500C  00      	 nop
500D  00      	 nop
500E  00      	 nop
500F  00      	 nop
5010  00      	 nop
5011  00      	 nop
5012  00      	 nop
5013  00      	 nop
5014  00      	 nop
5015  00      	 nop
5016  00      	 nop
5017  00      	 nop
5018  00      	 nop
5019  00      	 nop
501A  00      	 nop
501B  00      	 nop
501C  00      	 nop
501D  00      	 nop
501E  00      	 nop
501F  00      	 nop
5020  00      	 nop
5021  00      	 nop
5022  00      	 nop
5023  00      	 nop
5024  00      	 nop
5025  00      	 nop
5026  00      	 nop
5027  00      	 nop
5028  00      	 nop
5029  00      	 nop
502A  00      	 nop
502B  00      	 nop
502C  00      	 nop
502D  00      	 nop
502E  00      	 nop
502F  00      	 nop
5030  00      	 nop
5031  00      	 nop
5032  00      	 nop
5033  00      	 nop
5034  00      	 nop
5035  00      	 nop
5036  00      	 nop
5037  00      	 nop
5038  00      	 nop
5039  00      	 nop
503A  00      	 nop
503B  00      	 nop
503C  00      	 nop
503D  00      	 nop
503E  00      	 nop
503F  00      	 nop
5040  00      	 nop
5041  00      	 nop
5042  00      	 nop
5043  00      	 nop
5044  00      	 nop
5045  00      	 nop
5046  00      	 nop
5047  00      	 nop
5048  00      	 nop
5049  00      	 nop
504A  00      	 nop
504B  00      	 nop
504C  00      	 nop
504D  00      	 nop
504E  00      	 nop
504F  00      	 nop
5050  00      	 nop
5051  00      	 nop
5052  00      	 nop
5053  00      	 nop
5054  00      	 nop
5055  00      	 nop
5056  00      	 nop
5057  00      	 nop
5058  00      	 nop
5059  00      	 nop
505A  00      	 nop
505B  00      	 nop
505C  00      	 nop
505D  00      	 nop
505E  00      	 nop
505F  00      	 nop
5060  00      	 nop
5061  00      	 nop
5062  00      	 nop
5063  00      	 nop
5064  00      	 nop
5065  00      	 nop
5066  00      	 nop
5067  00      	 nop
5068  00      	 nop
5069  00      	 nop
506A  00      	 nop
506B  00      	 nop
506C  00      	 nop
506D  00      	 nop
506E  00      	 nop
506F  00      	 nop
5070  00      	 nop
5071  00      	 nop
5072  00      	 nop
5073  00      	 nop
5074  00      	 nop
5075  00      	 nop
5076  00      	 nop
5077  00      	 nop
5078  00      	 nop
5079  00      	 nop
507A  00      	 nop
507B  00      	 nop
507C  00      	 nop
507D  00      	 nop
507E  00      	 nop
507F  00      	 nop
5080  00      	 nop
5081  00      	 nop
5082  00      	 nop
5083  00      	 nop
5084  00      	 nop
5085  00      	 nop
5086  00      	 nop
5087  00      	 nop
5088  00      	 nop
5089  00      	 nop
508A  00      	 nop
508B  00      	 nop
508C  00      	 nop
508D  00      	 nop
508E  00      	 nop
508F  00      	 nop
5090  00      	 nop
5091  00      	 nop
5092  00      	 nop
5093  00      	 nop
5094  00      	 nop
5095  00      	 nop
5096  00      	 nop
5097  00      	 nop
5098  00      	 nop
5099  00      	 nop
509A  00      	 nop
509B  00      	 nop
509C  00      	 nop
509D  00      	 nop
509E  00      	 nop
509F  00      	 nop
50A0  00      	 nop
50A1  00      	 nop
50A2  00      	 nop
50A3  00      	 nop
50A4  00      	 nop
50A5  00      	 nop
50A6  00      	 nop
50A7  00      	 nop
50A8  00      	 nop
50A9  00      	 nop
50AA  00      	 nop
50AB  00      	 nop
50AC  00      	 nop
50AD  00      	 nop
50AE  00      	 nop
50AF  00      	 nop
50B0  00      	 nop
50B1  00      	 nop
50B2  00      	 nop
50B3  00      	 nop
50B4  00      	 nop
50B5  00      	 nop
50B6  00      	 nop
50B7  00      	 nop
50B8  00      	 nop
50B9  00      	 nop
50BA  00      	 nop
50BB  00      	 nop
50BC  00      	 nop
50BD  00      	 nop
50BE  00      	 nop
50BF  00      	 nop
50C0  00      	 nop
50C1  00      	 nop
50C2  00      	 nop
50C3  00      	 nop
50C4  00      	 nop
50C5  00      	 nop
50C6  00      	 nop
50C7  00      	 nop
50C8  00      	 nop
50C9  00      	 nop
50CA  00      	 nop
50CB  00      	 nop
50CC  00      	 nop
50CD  00      	 nop
50CE  00      	 nop
50CF  00      	 nop
50D0  00      	 nop
50D1  00      	 nop
50D2  00      	 nop
50D3  00      	 nop
50D4  00      	 nop
50D5  00      	 nop
50D6  00      	 nop
50D7  00      	 nop
50D8  00      	 nop
50D9  00      	 nop
50DA  00      	 nop
50DB  00      	 nop
50DC  00      	 nop
50DD  00      	 nop
50DE  00      	 nop
50DF  00      	 nop
50E0  00      	 nop
50E1  00      	 nop
50E2  00      	 nop
50E3  00      	 nop
50E4  00      	 nop
50E5  00      	 nop
50E6  00      	 nop
50E7  00      	 nop
50E8  00      	 nop
50E9  00      	 nop
50EA  00      	 nop
50EB  00      	 nop
50EC  00      	 nop
50ED  00      	 nop
50EE  00      	 nop
50EF  00      	 nop
50F0  00      	 nop
50F1  00      	 nop
50F2  00      	 nop
50F3  00      	 nop
50F4  00      	 nop
50F5  00      	 nop
50F6  00      	 nop
50F7  00      	 nop
50F8  00      	 nop
50F9  00      	 nop
50FA  00      	 nop
50FB  00      	 nop
50FC  00      	 nop
50FD  00      	 nop
50FE  00      	 nop
50FF  00      	 nop
5100  00      	 nop
5101  00      	 nop
5102  00      	 nop
5103  00      	 nop
5104  00      	 nop
5105  00      	 nop
5106  00      	 nop
5107  00      	 nop
5108  00      	 nop
5109  00      	 nop
510A  00      	 nop
510B  00      	 nop
510C  00      	 nop
510D  00      	 nop
510E  00      	 nop
510F  00      	 nop
5110  00      	 nop
5111  00      	 nop
5112  00      	 nop
5113  00      	 nop
5114  00      	 nop
5115  00      	 nop
5116  00      	 nop
5117  00      	 nop
5118  00      	 nop
5119  00      	 nop
511A  00      	 nop
511B  00      	 nop
511C  00      	 nop
511D  00      	 nop
511E  00      	 nop
511F  00      	 nop
5120  00      	 nop
5121  00      	 nop
5122  00      	 nop
5123  00      	 nop
5124  00      	 nop
5125  00      	 nop
5126  00      	 nop
5127  00      	 nop
5128  00      	 nop
5129  00      	 nop
512A  00      	 nop
512B  00      	 nop
512C  00      	 nop
512D  00      	 nop
512E  00      	 nop
512F  00      	 nop
5130  00      	 nop
5131  00      	 nop
5132  00      	 nop
5133  00      	 nop
5134  00      	 nop
5135  00      	 nop
5136  00      	 nop
5137  00      	 nop
5138  00      	 nop
5139  00      	 nop
513A  00      	 nop
513B  00      	 nop
513C  00      	 nop
513D  00      	 nop
513E  00      	 nop
513F  00      	 nop
5140  00      	 nop
5141  00      	 nop
5142  00      	 nop
5143  00      	 nop
5144  00      	 nop
5145  00      	 nop
5146  00      	 nop
5147  00      	 nop
5148  00      	 nop
5149  00      	 nop
514A  00      	 nop
514B  00      	 nop
514C  00      	 nop
514D  00      	 nop
514E  00      	 nop
514F  00      	 nop
5150  00      	 nop
5151  00      	 nop
5152  00      	 nop
5153  00      	 nop
5154  00      	 nop
5155  00      	 nop
5156  00      	 nop
5157  00      	 nop
5158  00      	 nop
5159  00      	 nop
515A  00      	 nop
515B  00      	 nop
515C  00      	 nop
515D  00      	 nop
515E  00      	 nop
515F  00      	 nop
5160  00      	 nop
5161  00      	 nop
5162  00      	 nop
5163  00      	 nop
5164  00      	 nop
5165  00      	 nop
5166  00      	 nop
5167  00      	 nop
5168  00      	 nop
5169  00      	 nop
516A  00      	 nop
516B  00      	 nop
516C  00      	 nop
516D  00      	 nop
516E  00      	 nop
516F  00      	 nop
5170  00      	 nop
5171  00      	 nop
5172  00      	 nop
5173  00      	 nop
5174  00      	 nop
5175  00      	 nop
5176  00      	 nop
5177  00      	 nop
5178  00      	 nop
5179  00      	 nop
517A  00      	 nop
517B  00      	 nop
517C  00      	 nop
517D  00      	 nop
517E  00      	 nop
517F  00      	 nop
5180  00      	 nop
5181  00      	 nop
5182  00      	 nop
5183  00      	 nop
5184  00      	 nop
5185  00      	 nop
5186  00      	 nop
5187  00      	 nop
5188  00      	 nop
5189  00      	 nop
518A  00      	 nop
518B  00      	 nop
518C  00      	 nop
518D  00      	 nop
518E  00      	 nop
518F  00      	 nop
5190  00      	 nop
5191  00      	 nop
5192  00      	 nop
5193  00      	 nop
5194  00      	 nop
5195  00      	 nop
5196  00      	 nop
5197  00      	 nop
5198  00      	 nop
5199  00      	 nop
519A  00      	 nop
519B  00      	 nop
519C  00      	 nop
519D  00      	 nop
519E  00      	 nop
519F  00      	 nop
51A0  00      	 nop
51A1  00      	 nop
51A2  00      	 nop
51A3  00      	 nop
51A4  00      	 nop
51A5  00      	 nop
51A6  00      	 nop
51A7  00      	 nop
51A8  00      	 nop
51A9  00      	 nop
51AA  00      	 nop
51AB  00      	 nop
51AC  00      	 nop
51AD  00      	 nop
51AE  00      	 nop
51AF  00      	 nop
51B0  00      	 nop
51B1  00      	 nop
51B2  00      	 nop
51B3  00      	 nop
51B4  00      	 nop
51B5  00      	 nop
51B6  00      	 nop
51B7  00      	 nop
51B8  00      	 nop
51B9  00      	 nop
51BA  00      	 nop
51BB  00      	 nop
51BC  00      	 nop
51BD  00      	 nop
51BE  00      	 nop
51BF  00      	 nop
51C0  00      	 nop
51C1  00      	 nop
51C2  00      	 nop
51C3  00      	 nop
51C4  00      	 nop
51C5  00      	 nop
51C6  00      	 nop
51C7  00      	 nop
51C8  00      	 nop
51C9  00      	 nop
51CA  00      	 nop
51CB  00      	 nop
51CC  00      	 nop
51CD  00      	 nop
51CE  00      	 nop
51CF  00      	 nop
51D0  00      	 nop
51D1  00      	 nop
51D2  00      	 nop
51D3  00      	 nop
51D4  00      	 nop
51D5  00      	 nop
51D6  00      	 nop
51D7  00      	 nop
51D8  00      	 nop
51D9  00      	 nop
51DA  00      	 nop
51DB  00      	 nop
51DC  00      	 nop
51DD  00      	 nop
51DE  00      	 nop
51DF  00      	 nop
51E0  00      	 nop
51E1  00      	 nop
51E2  00      	 nop
51E3  00      	 nop
51E4  00      	 nop
51E5  00      	 nop
51E6  00      	 nop
51E7  00      	 nop
51E8  00      	 nop
51E9  00      	 nop
51EA  00      	 nop
51EB  00      	 nop
51EC  00      	 nop
51ED  00      	 nop
51EE  00      	 nop
51EF  00      	 nop
51F0  00      	 nop
51F1  00      	 nop
51F2  00      	 nop
51F3  00      	 nop
51F4  00      	 nop
51F5  00      	 nop
51F6  00      	 nop
51F7  00      	 nop
51F8  00      	 nop
51F9  00      	 nop
51FA  00      	 nop
51FB  00      	 nop
51FC  00      	 nop
51FD  00      	 nop
51FE  00      	 nop
51FF  00      	 nop
5200  00      	 nop
5201  00      	 nop
5202  00      	 nop
5203  00      	 nop
5204  00      	 nop
5205  00      	 nop
5206  00      	 nop
5207  00      	 nop
5208  00      	 nop
5209  00      	 nop
520A  00      	 nop
520B  00      	 nop
520C  00      	 nop
520D  00      	 nop
520E  00      	 nop
520F  00      	 nop
5210  00      	 nop
5211  00      	 nop
5212  00      	 nop
5213  00      	 nop
5214  00      	 nop
5215  00      	 nop
5216  00      	 nop
5217  00      	 nop
5218  00      	 nop
5219  00      	 nop
521A  00      	 nop
521B  00      	 nop
521C  00      	 nop
521D  00      	 nop
521E  00      	 nop
521F  00      	 nop
5220  00      	 nop
5221  00      	 nop
5222  00      	 nop
5223  00      	 nop
5224  00      	 nop
5225  00      	 nop
5226  00      	 nop
5227  00      	 nop
5228  00      	 nop
5229  00      	 nop
522A  00      	 nop
522B  00      	 nop
522C  00      	 nop
522D  00      	 nop
522E  00      	 nop
522F  00      	 nop
5230  00      	 nop
5231  00      	 nop
5232  00      	 nop
5233  00      	 nop
5234  00      	 nop
5235  00      	 nop
5236  00      	 nop
5237  00      	 nop
5238  00      	 nop
5239  00      	 nop
523A  00      	 nop
523B  00      	 nop
523C  00      	 nop
523D  00      	 nop
523E  00      	 nop
523F  00      	 nop
5240  00      	 nop
5241  00      	 nop
5242  00      	 nop
5243  00      	 nop
5244  00      	 nop
5245  00      	 nop
5246  00      	 nop
5247  00      	 nop
5248  00      	 nop
5249  00      	 nop
524A  00      	 nop
524B  00      	 nop
524C  00      	 nop
524D  00      	 nop
524E  00      	 nop
524F  00      	 nop
5250  00      	 nop
5251  00      	 nop
5252  00      	 nop
5253  00      	 nop
5254  00      	 nop
5255  00      	 nop
5256  00      	 nop
5257  00      	 nop
5258  00      	 nop
5259  00      	 nop
525A  00      	 nop
525B  00      	 nop
525C  00      	 nop
525D  00      	 nop
525E  00      	 nop
525F  00      	 nop
5260  00      	 nop
5261  00      	 nop
5262  00      	 nop
5263  00      	 nop
5264  00      	 nop
5265  00      	 nop
5266  00      	 nop
5267  00      	 nop
5268  00      	 nop
5269  00      	 nop
526A  00      	 nop
526B  00      	 nop
526C  00      	 nop
526D  00      	 nop
526E  00      	 nop
526F  00      	 nop
5270  00      	 nop
5271  00      	 nop
5272  00      	 nop
5273  00      	 nop
5274  00      	 nop
5275  00      	 nop
5276  00      	 nop
5277  00      	 nop
5278  00      	 nop
5279  00      	 nop
527A  00      	 nop
527B  00      	 nop
527C  00      	 nop
527D  00      	 nop
527E  00      	 nop
527F  00      	 nop
5280  00      	 nop
5281  00      	 nop
5282  00      	 nop
5283  00      	 nop
5284  00      	 nop
5285  00      	 nop
5286  00      	 nop
5287  00      	 nop
5288  00      	 nop
5289  00      	 nop
528A  00      	 nop
528B  00      	 nop
528C  00      	 nop
528D  00      	 nop
528E  00      	 nop
528F  00      	 nop
5290  00      	 nop
5291  00      	 nop
5292  00      	 nop
5293  00      	 nop
5294  00      	 nop
5295  00      	 nop
5296  00      	 nop
5297  00      	 nop
5298  00      	 nop
5299  00      	 nop
529A  00      	 nop
529B  00      	 nop
529C  00      	 nop
529D  00      	 nop
529E  00      	 nop
529F  00      	 nop
52A0  00      	 nop
52A1  00      	 nop
52A2  00      	 nop
52A3  00      	 nop
52A4  00      	 nop
52A5  00      	 nop
52A6  00      	 nop
52A7  00      	 nop
52A8  00      	 nop
52A9  00      	 nop
52AA  00      	 nop
52AB  00      	 nop
52AC  00      	 nop
52AD  00      	 nop
52AE  00      	 nop
52AF  00      	 nop
52B0  00      	 nop
52B1  00      	 nop
52B2  00      	 nop
52B3  00      	 nop
52B4  00      	 nop
52B5  00      	 nop
52B6  00      	 nop
52B7  00      	 nop
52B8  00      	 nop
52B9  00      	 nop
52BA  00      	 nop
52BB  00      	 nop
52BC  00      	 nop
52BD  00      	 nop
52BE  00      	 nop
52BF  00      	 nop
52C0  00      	 nop
52C1  00      	 nop
52C2  00      	 nop
52C3  00      	 nop
52C4  00      	 nop
52C5  00      	 nop
52C6  00      	 nop
52C7  00      	 nop
52C8  00      	 nop
52C9  00      	 nop
52CA  00      	 nop
52CB  00      	 nop
52CC  00      	 nop
52CD  00      	 nop
52CE  00      	 nop
52CF  00      	 nop
52D0  00      	 nop
52D1  00      	 nop
52D2  00      	 nop
52D3  00      	 nop
52D4  00      	 nop
52D5  00      	 nop
52D6  00      	 nop
52D7  00      	 nop
52D8  00      	 nop
52D9  00      	 nop
52DA  00      	 nop
52DB  00      	 nop
52DC  00      	 nop
52DD  00      	 nop
52DE  00      	 nop
52DF  00      	 nop
52E0  00      	 nop
52E1  00      	 nop
52E2  00      	 nop
52E3  00      	 nop
52E4  00      	 nop
52E5  00      	 nop
52E6  00      	 nop
52E7  00      	 nop
52E8  00      	 nop
52E9  00      	 nop
52EA  00      	 nop
52EB  00      	 nop
52EC  00      	 nop
52ED  00      	 nop
52EE  00      	 nop
52EF  00      	 nop
52F0  00      	 nop
52F1  00      	 nop
52F2  00      	 nop
52F3  00      	 nop
52F4  00      	 nop
52F5  00      	 nop
52F6  00      	 nop
52F7  00      	 nop
52F8  00      	 nop
52F9  00      	 nop
52FA  00      	 nop
52FB  00      	 nop
52FC  00      	 nop
52FD  00      	 nop
52FE  00      	 nop
52FF  00      	 nop
5300  00      	 nop
5301  00      	 nop
5302  00      	 nop
5303  00      	 nop
5304  00      	 nop
5305  00      	 nop
5306  00      	 nop
5307  00      	 nop
5308  00      	 nop
5309  00      	 nop
530A  00      	 nop
530B  00      	 nop
530C  00      	 nop
530D  00      	 nop
530E  00      	 nop
530F  00      	 nop
5310  00      	 nop
5311  00      	 nop
5312  00      	 nop
5313  00      	 nop
5314  00      	 nop
5315  00      	 nop
5316  00      	 nop
5317  00      	 nop
5318  00      	 nop
5319  00      	 nop
531A  00      	 nop
531B  00      	 nop
531C  00      	 nop
531D  00      	 nop
531E  00      	 nop
531F  00      	 nop
5320  00      	 nop
5321  00      	 nop
5322  00      	 nop
5323  00      	 nop
5324  00      	 nop
5325  00      	 nop
5326  00      	 nop
5327  00      	 nop
5328  00      	 nop
5329  00      	 nop
532A  00      	 nop
532B  00      	 nop
532C  00      	 nop
532D  00      	 nop
532E  00      	 nop
532F  00      	 nop
5330  00      	 nop
5331  00      	 nop
5332  00      	 nop
5333  00      	 nop
5334  00      	 nop
5335  00      	 nop
5336  00      	 nop
5337  00      	 nop
5338  00      	 nop
5339  00      	 nop
533A  00      	 nop
533B  00      	 nop
533C  00      	 nop
533D  00      	 nop
533E  00      	 nop
533F  00      	 nop
5340  00      	 nop
5341  00      	 nop
5342  00      	 nop
5343  00      	 nop
5344  00      	 nop
5345  00      	 nop
5346  00      	 nop
5347  00      	 nop
5348  00      	 nop
5349  00      	 nop
534A  00      	 nop
534B  00      	 nop
534C  00      	 nop
534D  00      	 nop
534E  00      	 nop
534F  00      	 nop
5350  00      	 nop
5351  00      	 nop
5352  00      	 nop
5353  00      	 nop
5354  00      	 nop
5355  00      	 nop
5356  00      	 nop
5357  00      	 nop
5358  00      	 nop
5359  00      	 nop
535A  00      	 nop
535B  00      	 nop
535C  00      	 nop
535D  00      	 nop
535E  00      	 nop
535F  00      	 nop
5360  00      	 nop
5361  00      	 nop
5362  00      	 nop
5363  00      	 nop
5364  00      	 nop
5365  00      	 nop
5366  00      	 nop
5367  00      	 nop
5368  00      	 nop
5369  00      	 nop
536A  00      	 nop
536B  00      	 nop
536C  00      	 nop
536D  00      	 nop
536E  00      	 nop
536F  00      	 nop
5370  00      	 nop
5371  00      	 nop
5372  00      	 nop
5373  00      	 nop
5374  00      	 nop
5375  00      	 nop
5376  00      	 nop
5377  00      	 nop
5378  00      	 nop
5379  00      	 nop
537A  00      	 nop
537B  00      	 nop
537C  00      	 nop
537D  00      	 nop
537E  00      	 nop
537F  00      	 nop
5380  00      	 nop
5381  00      	 nop
5382  00      	 nop
5383  00      	 nop
5384  00      	 nop
5385  00      	 nop
5386  00      	 nop
5387  00      	 nop
5388  00      	 nop
5389  00      	 nop
538A  00      	 nop
538B  00      	 nop
538C  00      	 nop
538D  00      	 nop
538E  00      	 nop
538F  00      	 nop
5390  00      	 nop
5391  00      	 nop
5392  00      	 nop
5393  00      	 nop
5394  00      	 nop
5395  00      	 nop
5396  00      	 nop
5397  00      	 nop
5398  00      	 nop
5399  00      	 nop
539A  00      	 nop
539B  00      	 nop
539C  00      	 nop
539D  00      	 nop
539E  00      	 nop
539F  00      	 nop
53A0  00      	 nop
53A1  00      	 nop
53A2  00      	 nop
53A3  00      	 nop
53A4  00      	 nop
53A5  00      	 nop
53A6  00      	 nop
53A7  00      	 nop
53A8  00      	 nop
53A9  00      	 nop
53AA  00      	 nop
53AB  00      	 nop
53AC  00      	 nop
53AD  00      	 nop
53AE  00      	 nop
53AF  00      	 nop
53B0  00      	 nop
53B1  00      	 nop
53B2  00      	 nop
53B3  00      	 nop
53B4  00      	 nop
53B5  00      	 nop
53B6  00      	 nop
53B7  00      	 nop
53B8  00      	 nop
53B9  00      	 nop
53BA  00      	 nop
53BB  00      	 nop
53BC  00      	 nop
53BD  00      	 nop
53BE  00      	 nop
53BF  00      	 nop
53C0  00      	 nop
53C1  00      	 nop
53C2  00      	 nop
53C3  00      	 nop
53C4  00      	 nop
53C5  00      	 nop
53C6  00      	 nop
53C7  00      	 nop
53C8  00      	 nop
53C9  00      	 nop
53CA  00      	 nop
53CB  00      	 nop
53CC  00      	 nop
53CD  00      	 nop
53CE  00      	 nop
53CF  00      	 nop
53D0  00      	 nop
53D1  00      	 nop
53D2  00      	 nop
53D3  00      	 nop
53D4  00      	 nop
53D5  00      	 nop
53D6  00      	 nop
53D7  00      	 nop
53D8  00      	 nop
53D9  00      	 nop
53DA  00      	 nop
53DB  00      	 nop
53DC  00      	 nop
53DD  00      	 nop
53DE  00      	 nop
53DF  00      	 nop
53E0  00      	 nop
53E1  00      	 nop
53E2  00      	 nop
53E3  00      	 nop
53E4  00      	 nop
53E5  00      	 nop
53E6  00      	 nop
53E7  00      	 nop
53E8  00      	 nop
53E9  00      	 nop
53EA  00      	 nop
53EB  00      	 nop
53EC  00      	 nop
53ED  00      	 nop
53EE  00      	 nop
53EF  00      	 nop
53F0  00      	 nop
53F1  00      	 nop
53F2  00      	 nop
53F3  00      	 nop
53F4  00      	 nop
53F5  00      	 nop
53F6  00      	 nop
53F7  00      	 nop
53F8  00      	 nop
53F9  00      	 nop
53FA  00      	 nop
53FB  00      	 nop
53FC  00      	 nop
53FD  00      	 nop
53FE  00      	 nop
53FF  00      	 nop
5400  00      	 nop
5401  00      	 nop
5402  00      	 nop
5403  00      	 nop
5404  00      	 nop
5405  00      	 nop
5406  00      	 nop
5407  00      	 nop
5408  00      	 nop
5409  00      	 nop
540A  00      	 nop
540B  00      	 nop
540C  00      	 nop
540D  00      	 nop
540E  00      	 nop
540F  00      	 nop
5410  00      	 nop
5411  00      	 nop
5412  00      	 nop
5413  00      	 nop
5414  00      	 nop
5415  00      	 nop
5416  00      	 nop
5417  00      	 nop
5418  00      	 nop
5419  00      	 nop
541A  00      	 nop
541B  00      	 nop
541C  00      	 nop
541D  00      	 nop
541E  00      	 nop
541F  00      	 nop
5420  00      	 nop
5421  00      	 nop
5422  00      	 nop
5423  00      	 nop
5424  00      	 nop
5425  00      	 nop
5426  00      	 nop
5427  00      	 nop
5428  00      	 nop
5429  00      	 nop
542A  00      	 nop
542B  00      	 nop
542C  00      	 nop
542D  00      	 nop
542E  00      	 nop
542F  00      	 nop
5430  00      	 nop
5431  00      	 nop
5432  00      	 nop
5433  00      	 nop
5434  00      	 nop
5435  00      	 nop
5436  00      	 nop
5437  00      	 nop
5438  00      	 nop
5439  00      	 nop
543A  00      	 nop
543B  00      	 nop
543C  00      	 nop
543D  00      	 nop
543E  00      	 nop
543F  00      	 nop
5440  00      	 nop
5441  00      	 nop
5442  00      	 nop
5443  00      	 nop
5444  00      	 nop
5445  00      	 nop
5446  00      	 nop
5447  00      	 nop
5448  00      	 nop
5449  00      	 nop
544A  00      	 nop
544B  00      	 nop
544C  00      	 nop
544D  00      	 nop
544E  00      	 nop
544F  00      	 nop
5450  00      	 nop
5451  00      	 nop
5452  00      	 nop
5453  00      	 nop
5454  00      	 nop
5455  00      	 nop
5456  00      	 nop
5457  00      	 nop
5458  00      	 nop
5459  00      	 nop
545A  00      	 nop
545B  00      	 nop
545C  00      	 nop
545D  00      	 nop
545E  00      	 nop
545F  00      	 nop
5460  00      	 nop
5461  00      	 nop
5462  00      	 nop
5463  00      	 nop
5464  00      	 nop
5465  00      	 nop
5466  00      	 nop
5467  00      	 nop
5468  00      	 nop
5469  00      	 nop
546A  00      	 nop
546B  00      	 nop
546C  00      	 nop
546D  00      	 nop
546E  00      	 nop
546F  00      	 nop
5470  00      	 nop
5471  00      	 nop
5472  00      	 nop
5473  00      	 nop
5474  00      	 nop
5475  00      	 nop
5476  00      	 nop
5477  00      	 nop
5478  00      	 nop
5479  00      	 nop
547A  00      	 nop
547B  00      	 nop
547C  00      	 nop
547D  00      	 nop
547E  00      	 nop
547F  00      	 nop
5480  00      	 nop
5481  00      	 nop
5482  00      	 nop
5483  00      	 nop
5484  00      	 nop
5485  00      	 nop
5486  00      	 nop
5487  00      	 nop
5488  00      	 nop
5489  00      	 nop
548A  00      	 nop
548B  00      	 nop
548C  00      	 nop
548D  00      	 nop
548E  00      	 nop
548F  00      	 nop
5490  00      	 nop
5491  00      	 nop
5492  00      	 nop
5493  00      	 nop
5494  00      	 nop
5495  00      	 nop
5496  00      	 nop
5497  00      	 nop
5498  00      	 nop
5499  00      	 nop
549A  00      	 nop
549B  00      	 nop
549C  00      	 nop
549D  00      	 nop
549E  00      	 nop
549F  00      	 nop
54A0  00      	 nop
54A1  00      	 nop
54A2  00      	 nop
54A3  00      	 nop
54A4  00      	 nop
54A5  00      	 nop
54A6  00      	 nop
54A7  00      	 nop
54A8  00      	 nop
54A9  00      	 nop
54AA  00      	 nop
54AB  00      	 nop
54AC  00      	 nop
54AD  00      	 nop
54AE  00      	 nop
54AF  00      	 nop
54B0  00      	 nop
54B1  00      	 nop
54B2  00      	 nop
54B3  00      	 nop
54B4  00      	 nop
54B5  00      	 nop
54B6  00      	 nop
54B7  00      	 nop
54B8  00      	 nop
54B9  00      	 nop
54BA  00      	 nop
54BB  00      	 nop
54BC  00      	 nop
54BD  00      	 nop
54BE  00      	 nop
54BF  00      	 nop
54C0  00      	 nop
54C1  00      	 nop
54C2  00      	 nop
54C3  00      	 nop
54C4  00      	 nop
54C5  00      	 nop
54C6  00      	 nop
54C7  00      	 nop
54C8  00      	 nop
54C9  00      	 nop
54CA  00      	 nop
54CB  00      	 nop
54CC  00      	 nop
54CD  00      	 nop
54CE  00      	 nop
54CF  00      	 nop
54D0  00      	 nop
54D1  00      	 nop
54D2  00      	 nop
54D3  00      	 nop
54D4  00      	 nop
54D5  00      	 nop
54D6  00      	 nop
54D7  00      	 nop
54D8  00      	 nop
54D9  00      	 nop
54DA  00      	 nop
54DB  00      	 nop
54DC  00      	 nop
54DD  00      	 nop
54DE  00      	 nop
54DF  00      	 nop
54E0  00      	 nop
54E1  00      	 nop
54E2  00      	 nop
54E3  00      	 nop
54E4  00      	 nop
54E5  00      	 nop
54E6  00      	 nop
54E7  00      	 nop
54E8  00      	 nop
54E9  00      	 nop
54EA  00      	 nop
54EB  00      	 nop
54EC  00      	 nop
54ED  00      	 nop
54EE  00      	 nop
54EF  00      	 nop
54F0  00      	 nop
54F1  00      	 nop
54F2  00      	 nop
54F3  00      	 nop
54F4  00      	 nop
54F5  00      	 nop
54F6  00      	 nop
54F7  00      	 nop
54F8  00      	 nop
54F9  00      	 nop
54FA  00      	 nop
54FB  00      	 nop
54FC  00      	 nop
54FD  00      	 nop
54FE  00      	 nop
54FF  00      	 nop
5500  00      	 nop
5501  00      	 nop
5502  00      	 nop
5503  00      	 nop
5504  00      	 nop
5505  00      	 nop
5506  00      	 nop
5507  00      	 nop
5508  00      	 nop
5509  00      	 nop
550A  00      	 nop
550B  00      	 nop
550C  00      	 nop
550D  00      	 nop
550E  00      	 nop
550F  00      	 nop
5510  00      	 nop
5511  00      	 nop
5512  00      	 nop
5513  00      	 nop
5514  00      	 nop
5515  00      	 nop
5516  00      	 nop
5517  00      	 nop
5518  00      	 nop
5519  00      	 nop
551A  00      	 nop
551B  00      	 nop
551C  00      	 nop
551D  00      	 nop
551E  00      	 nop
551F  00      	 nop
5520  00      	 nop
5521  00      	 nop
5522  00      	 nop
5523  00      	 nop
5524  00      	 nop
5525  00      	 nop
5526  00      	 nop
5527  00      	 nop
5528  00      	 nop
5529  00      	 nop
552A  00      	 nop
552B  00      	 nop
552C  00      	 nop
552D  00      	 nop
552E  00      	 nop
552F  00      	 nop
5530  00      	 nop
5531  00      	 nop
5532  00      	 nop
5533  00      	 nop
5534  00      	 nop
5535  00      	 nop
5536  00      	 nop
5537  00      	 nop
5538  00      	 nop
5539  00      	 nop
553A  00      	 nop
553B  00      	 nop
553C  00      	 nop
553D  00      	 nop
553E  00      	 nop
553F  00      	 nop
5540  00      	 nop
5541  00      	 nop
5542  00      	 nop
5543  00      	 nop
5544  00      	 nop
5545  00      	 nop
5546  00      	 nop
5547  00      	 nop
5548  00      	 nop
5549  00      	 nop
554A  00      	 nop
554B  00      	 nop
554C  00      	 nop
554D  00      	 nop
554E  00      	 nop
554F  00      	 nop
5550  00      	 nop
5551  00      	 nop
5552  00      	 nop
5553  00      	 nop
5554  00      	 nop
5555  00      	 nop
5556  00      	 nop
5557  00      	 nop
5558  00      	 nop
5559  00      	 nop
555A  00      	 nop
555B  00      	 nop
555C  00      	 nop
555D  00      	 nop
555E  00      	 nop
555F  00      	 nop
5560  00      	 nop
5561  00      	 nop
5562  00      	 nop
5563  00      	 nop
5564  00      	 nop
5565  00      	 nop
5566  00      	 nop
5567  00      	 nop
5568  00      	 nop
5569  00      	 nop
556A  00      	 nop
556B  00      	 nop
556C  00      	 nop
556D  00      	 nop
556E  00      	 nop
556F  00      	 nop
5570  00      	 nop
5571  00      	 nop
5572  00      	 nop
5573  00      	 nop
5574  00      	 nop
5575  00      	 nop
5576  00      	 nop
5577  00      	 nop
5578  00      	 nop
5579  00      	 nop
557A  00      	 nop
557B  00      	 nop
557C  00      	 nop
557D  00      	 nop
557E  00      	 nop
557F  00      	 nop
5580  00      	 nop
5581  00      	 nop
5582  00      	 nop
5583  00      	 nop
5584  00      	 nop
5585  00      	 nop
5586  00      	 nop
5587  00      	 nop
5588  00      	 nop
5589  00      	 nop
558A  00      	 nop
558B  00      	 nop
558C  00      	 nop
558D  00      	 nop
558E  00      	 nop
558F  00      	 nop
5590  00      	 nop
5591  00      	 nop
5592  00      	 nop
5593  00      	 nop
5594  00      	 nop
5595  00      	 nop
5596  00      	 nop
5597  00      	 nop
5598  00      	 nop
5599  00      	 nop
559A  00      	 nop
559B  00      	 nop
559C  00      	 nop
559D  00      	 nop
559E  00      	 nop
559F  00      	 nop
55A0  00      	 nop
55A1  00      	 nop
55A2  00      	 nop
55A3  00      	 nop
55A4  00      	 nop
55A5  00      	 nop
55A6  00      	 nop
55A7  00      	 nop
55A8  00      	 nop
55A9  00      	 nop
55AA  00      	 nop
55AB  00      	 nop
55AC  00      	 nop
55AD  00      	 nop
55AE  00      	 nop
55AF  00      	 nop
55B0  00      	 nop
55B1  00      	 nop
55B2  00      	 nop
55B3  00      	 nop
55B4  00      	 nop
55B5  00      	 nop
55B6  00      	 nop
55B7  00      	 nop
55B8  00      	 nop
55B9  00      	 nop
55BA  00      	 nop
55BB  00      	 nop
55BC  00      	 nop
55BD  00      	 nop
55BE  00      	 nop
55BF  00      	 nop
55C0  00      	 nop
55C1  00      	 nop
55C2  00      	 nop
55C3  00      	 nop
55C4  00      	 nop
55C5  00      	 nop
55C6  00      	 nop
55C7  00      	 nop
55C8  00      	 nop
55C9  00      	 nop
55CA  00      	 nop
55CB  00      	 nop
55CC  00      	 nop
55CD  00      	 nop
55CE  00      	 nop
55CF  00      	 nop
55D0  00      	 nop
55D1  00      	 nop
55D2  00      	 nop
55D3  00      	 nop
55D4  00      	 nop
55D5  00      	 nop
55D6  00      	 nop
55D7  00      	 nop
55D8  00      	 nop
55D9  00      	 nop
55DA  00      	 nop
55DB  00      	 nop
55DC  00      	 nop
55DD  00      	 nop
55DE  00      	 nop
55DF  00      	 nop
55E0  00      	 nop
55E1  00      	 nop
55E2  00      	 nop
55E3  00      	 nop
55E4  00      	 nop
55E5  00      	 nop
55E6  00      	 nop
55E7  00      	 nop
55E8  00      	 nop
55E9  00      	 nop
55EA  00      	 nop
55EB  00      	 nop
55EC  00      	 nop
55ED  00      	 nop
55EE  00      	 nop
55EF  00      	 nop
55F0  00      	 nop
55F1  00      	 nop
55F2  00      	 nop
55F3  00      	 nop
55F4  00      	 nop
55F5  00      	 nop
55F6  00      	 nop
55F7  00      	 nop
55F8  00      	 nop
55F9  00      	 nop
55FA  00      	 nop
55FB  00      	 nop
55FC  00      	 nop
55FD  00      	 nop
55FE  00      	 nop
55FF  00      	 nop
5600  00      	 nop
5601  00      	 nop
5602  00      	 nop
5603  00      	 nop
5604  00      	 nop
5605  00      	 nop
5606  00      	 nop
5607  00      	 nop
5608  00      	 nop
5609  00      	 nop
560A  00      	 nop
560B  00      	 nop
560C  00      	 nop
560D  00      	 nop
560E  00      	 nop
560F  00      	 nop
5610  00      	 nop
5611  00      	 nop
5612  00      	 nop
5613  00      	 nop
5614  00      	 nop
5615  00      	 nop
5616  00      	 nop
5617  00      	 nop
5618  00      	 nop
5619  00      	 nop
561A  00      	 nop
561B  00      	 nop
561C  00      	 nop
561D  00      	 nop
561E  00      	 nop
561F  00      	 nop
5620  00      	 nop
5621  00      	 nop
5622  00      	 nop
5623  00      	 nop
5624  00      	 nop
5625  00      	 nop
5626  00      	 nop
5627  00      	 nop
5628  00      	 nop
5629  00      	 nop
562A  00      	 nop
562B  00      	 nop
562C  00      	 nop
562D  00      	 nop
562E  00      	 nop
562F  00      	 nop
5630  00      	 nop
5631  00      	 nop
5632  00      	 nop
5633  00      	 nop
5634  00      	 nop
5635  00      	 nop
5636  00      	 nop
5637  00      	 nop
5638  00      	 nop
5639  00      	 nop
563A  00      	 nop
563B  00      	 nop
563C  00      	 nop
563D  00      	 nop
563E  00      	 nop
563F  00      	 nop
5640  00      	 nop
5641  00      	 nop
5642  00      	 nop
5643  00      	 nop
5644  00      	 nop
5645  00      	 nop
5646  00      	 nop
5647  00      	 nop
5648  00      	 nop
5649  00      	 nop
564A  00      	 nop
564B  00      	 nop
564C  00      	 nop
564D  00      	 nop
564E  00      	 nop
564F  00      	 nop
5650  00      	 nop
5651  00      	 nop
5652  00      	 nop
5653  00      	 nop
5654  00      	 nop
5655  00      	 nop
5656  00      	 nop
5657  00      	 nop
5658  00      	 nop
5659  00      	 nop
565A  00      	 nop
565B  00      	 nop
565C  00      	 nop
565D  00      	 nop
565E  00      	 nop
565F  00      	 nop
5660  00      	 nop
5661  00      	 nop
5662  00      	 nop
5663  00      	 nop
5664  00      	 nop
5665  00      	 nop
5666  00      	 nop
5667  00      	 nop
5668  00      	 nop
5669  00      	 nop
566A  00      	 nop
566B  00      	 nop
566C  00      	 nop
566D  00      	 nop
566E  00      	 nop
566F  00      	 nop
5670  00      	 nop
5671  00      	 nop
5672  00      	 nop
5673  00      	 nop
5674  00      	 nop
5675  00      	 nop
5676  00      	 nop
5677  00      	 nop
5678  00      	 nop
5679  00      	 nop
567A  00      	 nop
567B  00      	 nop
567C  00      	 nop
567D  00      	 nop
567E  00      	 nop
567F  00      	 nop
5680  00      	 nop
5681  00      	 nop
5682  00      	 nop
5683  00      	 nop
5684  00      	 nop
5685  00      	 nop
5686  00      	 nop
5687  00      	 nop
5688  00      	 nop
5689  00      	 nop
568A  00      	 nop
568B  00      	 nop
568C  00      	 nop
568D  00      	 nop
568E  00      	 nop
568F  00      	 nop
5690  00      	 nop
5691  00      	 nop
5692  00      	 nop
5693  00      	 nop
5694  00      	 nop
5695  00      	 nop
5696  00      	 nop
5697  00      	 nop
5698  00      	 nop
5699  00      	 nop
569A  00      	 nop
569B  00      	 nop
569C  00      	 nop
569D  00      	 nop
569E  00      	 nop
569F  00      	 nop
56A0  00      	 nop
56A1  00      	 nop
56A2  00      	 nop
56A3  00      	 nop
56A4  00      	 nop
56A5  00      	 nop
56A6  00      	 nop
56A7  00      	 nop
56A8  00      	 nop
56A9  00      	 nop
56AA  00      	 nop
56AB  00      	 nop
56AC  00      	 nop
56AD  00      	 nop
56AE  00      	 nop
56AF  00      	 nop
56B0  00      	 nop
56B1  00      	 nop
56B2  00      	 nop
56B3  00      	 nop
56B4  00      	 nop
56B5  00      	 nop
56B6  00      	 nop
56B7  00      	 nop
56B8  00      	 nop
56B9  00      	 nop
56BA  00      	 nop
56BB  00      	 nop
56BC  00      	 nop
56BD  00      	 nop
56BE  00      	 nop
56BF  00      	 nop
56C0  00      	 nop
56C1  00      	 nop
56C2  00      	 nop
56C3  00      	 nop
56C4  00      	 nop
56C5  00      	 nop
56C6  00      	 nop
56C7  00      	 nop
56C8  00      	 nop
56C9  00      	 nop
56CA  00      	 nop
56CB  00      	 nop
56CC  00      	 nop
56CD  00      	 nop
56CE  00      	 nop
56CF  00      	 nop
56D0  00      	 nop
56D1  00      	 nop
56D2  00      	 nop
56D3  00      	 nop
56D4  00      	 nop
56D5  00      	 nop
56D6  00      	 nop
56D7  00      	 nop
56D8  00      	 nop
56D9  00      	 nop
56DA  00      	 nop
56DB  00      	 nop
56DC  00      	 nop
56DD  00      	 nop
56DE  00      	 nop
56DF  00      	 nop
56E0  00      	 nop
56E1  00      	 nop
56E2  00      	 nop
56E3  00      	 nop
56E4  00      	 nop
56E5  00      	 nop
56E6  00      	 nop
56E7  00      	 nop
56E8  00      	 nop
56E9  00      	 nop
56EA  00      	 nop
56EB  00      	 nop
56EC  00      	 nop
56ED  00      	 nop
56EE  00      	 nop
56EF  00      	 nop
56F0  00      	 nop
56F1  00      	 nop
56F2  00      	 nop
56F3  00      	 nop
56F4  00      	 nop
56F5  00      	 nop
56F6  00      	 nop
56F7  00      	 nop
56F8  00      	 nop
56F9  00      	 nop
56FA  00      	 nop
56FB  00      	 nop
56FC  00      	 nop
56FD  00      	 nop
56FE  00      	 nop
56FF  00      	 nop
5700  00      	 nop
5701  00      	 nop
5702  00      	 nop
5703  00      	 nop
5704  00      	 nop
5705  00      	 nop
5706  00      	 nop
5707  00      	 nop
5708  00      	 nop
5709  00      	 nop
570A  00      	 nop
570B  00      	 nop
570C  00      	 nop
570D  00      	 nop
570E  00      	 nop
570F  00      	 nop
5710  00      	 nop
5711  00      	 nop
5712  00      	 nop
5713  00      	 nop
5714  00      	 nop
5715  00      	 nop
5716  00      	 nop
5717  00      	 nop
5718  00      	 nop
5719  00      	 nop
571A  00      	 nop
571B  00      	 nop
571C  00      	 nop
571D  00      	 nop
571E  00      	 nop
571F  00      	 nop
5720  00      	 nop
5721  00      	 nop
5722  00      	 nop
5723  00      	 nop
5724  00      	 nop
5725  00      	 nop
5726  00      	 nop
5727  00      	 nop
5728  00      	 nop
5729  00      	 nop
572A  00      	 nop
572B  00      	 nop
572C  00      	 nop
572D  00      	 nop
572E  00      	 nop
572F  00      	 nop
5730  00      	 nop
5731  00      	 nop
5732  00      	 nop
5733  00      	 nop
5734  00      	 nop
5735  00      	 nop
5736  00      	 nop
5737  00      	 nop
5738  00      	 nop
5739  00      	 nop
573A  00      	 nop
573B  00      	 nop
573C  00      	 nop
573D  00      	 nop
573E  00      	 nop
573F  00      	 nop
5740  00      	 nop
5741  00      	 nop
5742  00      	 nop
5743  00      	 nop
5744  00      	 nop
5745  00      	 nop
5746  00      	 nop
5747  00      	 nop
5748  00      	 nop
5749  00      	 nop
574A  00      	 nop
574B  00      	 nop
574C  00      	 nop
574D  00      	 nop
574E  00      	 nop
574F  00      	 nop
5750  00      	 nop
5751  00      	 nop
5752  00      	 nop
5753  00      	 nop
5754  00      	 nop
5755  00      	 nop
5756  00      	 nop
5757  00      	 nop
5758  00      	 nop
5759  00      	 nop
575A  00      	 nop
575B  00      	 nop
575C  00      	 nop
575D  00      	 nop
575E  00      	 nop
575F  00      	 nop
5760  00      	 nop
5761  00      	 nop
5762  00      	 nop
5763  00      	 nop
5764  00      	 nop
5765  00      	 nop
5766  00      	 nop
5767  00      	 nop
5768  00      	 nop
5769  00      	 nop
576A  00      	 nop
576B  00      	 nop
576C  00      	 nop
576D  00      	 nop
576E  00      	 nop
576F  00      	 nop
5770  00      	 nop
5771  00      	 nop
5772  00      	 nop
5773  00      	 nop
5774  00      	 nop
5775  00      	 nop
5776  00      	 nop
5777  00      	 nop
5778  00      	 nop
5779  00      	 nop
577A  00      	 nop
577B  00      	 nop
577C  00      	 nop
577D  00      	 nop
577E  00      	 nop
577F  00      	 nop
5780  00      	 nop
5781  00      	 nop
5782  00      	 nop
5783  00      	 nop
5784  00      	 nop
5785  00      	 nop
5786  00      	 nop
5787  00      	 nop
5788  00      	 nop
5789  00      	 nop
578A  00      	 nop
578B  00      	 nop
578C  00      	 nop
578D  00      	 nop
578E  00      	 nop
578F  00      	 nop
5790  00      	 nop
5791  00      	 nop
5792  00      	 nop
5793  00      	 nop
5794  00      	 nop
5795  00      	 nop
5796  00      	 nop
5797  00      	 nop
5798  00      	 nop
5799  00      	 nop
579A  00      	 nop
579B  00      	 nop
579C  00      	 nop
579D  00      	 nop
579E  00      	 nop
579F  00      	 nop
57A0  00      	 nop
57A1  00      	 nop
57A2  00      	 nop
57A3  00      	 nop
57A4  00      	 nop
57A5  00      	 nop
57A6  00      	 nop
57A7  00      	 nop
57A8  00      	 nop
57A9  00      	 nop
57AA  00      	 nop
57AB  00      	 nop
57AC  00      	 nop
57AD  00      	 nop
57AE  00      	 nop
57AF  00      	 nop
57B0  00      	 nop
57B1  00      	 nop
57B2  00      	 nop
57B3  00      	 nop
57B4  00      	 nop
57B5  00      	 nop
57B6  00      	 nop
57B7  00      	 nop
57B8  00      	 nop
57B9  00      	 nop
57BA  00      	 nop
57BB  00      	 nop
57BC  00      	 nop
57BD  00      	 nop
57BE  00      	 nop
57BF  00      	 nop
57C0  00      	 nop
57C1  00      	 nop
57C2  00      	 nop
57C3  00      	 nop
57C4  00      	 nop
57C5  00      	 nop
57C6  00      	 nop
57C7  00      	 nop
57C8  00      	 nop
57C9  00      	 nop
57CA  00      	 nop
57CB  00      	 nop
57CC  00      	 nop
57CD  00      	 nop
57CE  00      	 nop
57CF  00      	 nop
57D0  00      	 nop
57D1  00      	 nop
57D2  00      	 nop
57D3  00      	 nop
57D4  00      	 nop
57D5  00      	 nop
57D6  00      	 nop
57D7  00      	 nop
57D8  00      	 nop
57D9  00      	 nop
57DA  00      	 nop
57DB  00      	 nop
57DC  00      	 nop
57DD  00      	 nop
57DE  00      	 nop
57DF  00      	 nop
57E0  00      	 nop
57E1  00      	 nop
57E2  00      	 nop
57E3  00      	 nop
57E4  00      	 nop
57E5  00      	 nop
57E6  00      	 nop
57E7  00      	 nop
57E8  00      	 nop
57E9  00      	 nop
57EA  00      	 nop
57EB  00      	 nop
57EC  00      	 nop
57ED  00      	 nop
57EE  00      	 nop
57EF  00      	 nop
57F0  00      	 nop
57F1  00      	 nop
57F2  00      	 nop
57F3  00      	 nop
57F4  00      	 nop
57F5  00      	 nop
57F6  00      	 nop
57F7  00      	 nop
57F8  00      	 nop
57F9  00      	 nop
57FA  00      	 nop
57FB  00      	 nop
57FC  00      	 nop
57FD  00      	 nop
57FE  00      	 nop
57FF  00      	 nop
5800  00      	 nop
5801  00      	 nop
5802  00      	 nop
5803  00      	 nop
5804  00      	 nop
5805  00      	 nop
5806  00      	 nop
5807  00      	 nop
5808  00      	 nop
5809  00      	 nop
580A  00      	 nop
580B  00      	 nop
580C  00      	 nop
580D  00      	 nop
580E  00      	 nop
580F  00      	 nop
5810  00      	 nop
5811  00      	 nop
5812  00      	 nop
5813  00      	 nop
5814  00      	 nop
5815  00      	 nop
5816  00      	 nop
5817  00      	 nop
5818  00      	 nop
5819  00      	 nop
581A  00      	 nop
581B  00      	 nop
581C  00      	 nop
581D  00      	 nop
581E  00      	 nop
581F  00      	 nop
5820  00      	 nop
5821  00      	 nop
5822  00      	 nop
5823  00      	 nop
5824  00      	 nop
5825  00      	 nop
5826  00      	 nop
5827  00      	 nop
5828  00      	 nop
5829  00      	 nop
582A  00      	 nop
582B  00      	 nop
582C  00      	 nop
582D  00      	 nop
582E  00      	 nop
582F  00      	 nop
5830  00      	 nop
5831  00      	 nop
5832  00      	 nop
5833  00      	 nop
5834  00      	 nop
5835  00      	 nop
5836  00      	 nop
5837  00      	 nop
5838  00      	 nop
5839  00      	 nop
583A  00      	 nop
583B  00      	 nop
583C  00      	 nop
583D  00      	 nop
583E  00      	 nop
583F  00      	 nop
5840  00      	 nop
5841  00      	 nop
5842  00      	 nop
5843  00      	 nop
5844  00      	 nop
5845  00      	 nop
5846  00      	 nop
5847  00      	 nop
5848  00      	 nop
5849  00      	 nop
584A  00      	 nop
584B  00      	 nop
584C  00      	 nop
584D  00      	 nop
584E  00      	 nop
584F  00      	 nop
5850  00      	 nop
5851  00      	 nop
5852  00      	 nop
5853  00      	 nop
5854  00      	 nop
5855  00      	 nop
5856  00      	 nop
5857  00      	 nop
5858  00      	 nop
5859  00      	 nop
585A  00      	 nop
585B  00      	 nop
585C  00      	 nop
585D  00      	 nop
585E  00      	 nop
585F  00      	 nop
5860  00      	 nop
5861  00      	 nop
5862  00      	 nop
5863  00      	 nop
5864  00      	 nop
5865  00      	 nop
5866  00      	 nop
5867  00      	 nop
5868  00      	 nop
5869  00      	 nop
586A  00      	 nop
586B  00      	 nop
586C  00      	 nop
586D  00      	 nop
586E  00      	 nop
586F  00      	 nop
5870  00      	 nop
5871  00      	 nop
5872  00      	 nop
5873  00      	 nop
5874  00      	 nop
5875  00      	 nop
5876  00      	 nop
5877  00      	 nop
5878  00      	 nop
5879  00      	 nop
587A  00      	 nop
587B  00      	 nop
587C  00      	 nop
587D  00      	 nop
587E  00      	 nop
587F  00      	 nop
5880  00      	 nop
5881  00      	 nop
5882  00      	 nop
5883  00      	 nop
5884  00      	 nop
5885  00      	 nop
5886  00      	 nop
5887  00      	 nop
5888  00      	 nop
5889  00      	 nop
588A  00      	 nop
588B  00      	 nop
588C  00      	 nop
588D  00      	 nop
588E  00      	 nop
588F  00      	 nop
5890  00      	 nop
5891  00      	 nop
5892  00      	 nop
5893  00      	 nop
5894  00      	 nop
5895  00      	 nop
5896  00      	 nop
5897  00      	 nop
5898  00      	 nop
5899  00      	 nop
589A  00      	 nop
589B  00      	 nop
589C  00      	 nop
589D  00      	 nop
589E  00      	 nop
589F  00      	 nop
58A0  00      	 nop
58A1  00      	 nop
58A2  00      	 nop
58A3  00      	 nop
58A4  00      	 nop
58A5  00      	 nop
58A6  00      	 nop
58A7  00      	 nop
58A8  00      	 nop
58A9  00      	 nop
58AA  00      	 nop
58AB  00      	 nop
58AC  00      	 nop
58AD  00      	 nop
58AE  00      	 nop
58AF  00      	 nop
58B0  00      	 nop
58B1  00      	 nop
58B2  00      	 nop
58B3  00      	 nop
58B4  00      	 nop
58B5  00      	 nop
58B6  00      	 nop
58B7  00      	 nop
58B8  00      	 nop
58B9  00      	 nop
58BA  00      	 nop
58BB  00      	 nop
58BC  00      	 nop
58BD  00      	 nop
58BE  00      	 nop
58BF  00      	 nop
58C0  00      	 nop
58C1  00      	 nop
58C2  00      	 nop
58C3  00      	 nop
58C4  00      	 nop
58C5  00      	 nop
58C6  00      	 nop
58C7  00      	 nop
58C8  00      	 nop
58C9  00      	 nop
58CA  00      	 nop
58CB  00      	 nop
58CC  00      	 nop
58CD  00      	 nop
58CE  00      	 nop
58CF  00      	 nop
58D0  00      	 nop
58D1  00      	 nop
58D2  00      	 nop
58D3  00      	 nop
58D4  00      	 nop
58D5  00      	 nop
58D6  00      	 nop
58D7  00      	 nop
58D8  00      	 nop
58D9  00      	 nop
58DA  00      	 nop
58DB  00      	 nop
58DC  00      	 nop
58DD  00      	 nop
58DE  00      	 nop
58DF  00      	 nop
58E0  00      	 nop
58E1  00      	 nop
58E2  00      	 nop
58E3  00      	 nop
58E4  00      	 nop
58E5  00      	 nop
58E6  00      	 nop
58E7  00      	 nop
58E8  00      	 nop
58E9  00      	 nop
58EA  00      	 nop
58EB  00      	 nop
58EC  00      	 nop
58ED  00      	 nop
58EE  00      	 nop
58EF  00      	 nop
58F0  00      	 nop
58F1  00      	 nop
58F2  00      	 nop
58F3  00      	 nop
58F4  00      	 nop
58F5  00      	 nop
58F6  00      	 nop
58F7  00      	 nop
58F8  00      	 nop
58F9  00      	 nop
58FA  00      	 nop
58FB  00      	 nop
58FC  00      	 nop
58FD  00      	 nop
58FE  00      	 nop
58FF  00      	 nop
5900  00      	 nop
5901  00      	 nop
5902  00      	 nop
5903  00      	 nop
5904  00      	 nop
5905  00      	 nop
5906  00      	 nop
5907  00      	 nop
5908  00      	 nop
5909  00      	 nop
590A  00      	 nop
590B  00      	 nop
590C  00      	 nop
590D  00      	 nop
590E  00      	 nop
590F  00      	 nop
5910  00      	 nop
5911  00      	 nop
5912  00      	 nop
5913  00      	 nop
5914  00      	 nop
5915  00      	 nop
5916  00      	 nop
5917  00      	 nop
5918  00      	 nop
5919  00      	 nop
591A  00      	 nop
591B  00      	 nop
591C  00      	 nop
591D  00      	 nop
591E  00      	 nop
591F  00      	 nop
5920  00      	 nop
5921  00      	 nop
5922  00      	 nop
5923  00      	 nop
5924  00      	 nop
5925  00      	 nop
5926  00      	 nop
5927  00      	 nop
5928  00      	 nop
5929  00      	 nop
592A  00      	 nop
592B  00      	 nop
592C  00      	 nop
592D  00      	 nop
592E  00      	 nop
592F  00      	 nop
5930  00      	 nop
5931  00      	 nop
5932  00      	 nop
5933  00      	 nop
5934  00      	 nop
5935  00      	 nop
5936  00      	 nop
5937  00      	 nop
5938  00      	 nop
5939  00      	 nop
593A  00      	 nop
593B  00      	 nop
593C  00      	 nop
593D  00      	 nop
593E  00      	 nop
593F  00      	 nop
5940  00      	 nop
5941  00      	 nop
5942  00      	 nop
5943  00      	 nop
5944  00      	 nop
5945  00      	 nop
5946  00      	 nop
5947  00      	 nop
5948  00      	 nop
5949  00      	 nop
594A  00      	 nop
594B  00      	 nop
594C  00      	 nop
594D  00      	 nop
594E  00      	 nop
594F  00      	 nop
5950  00      	 nop
5951  00      	 nop
5952  00      	 nop
5953  00      	 nop
5954  00      	 nop
5955  00      	 nop
5956  00      	 nop
5957  00      	 nop
5958  00      	 nop
5959  00      	 nop
595A  00      	 nop
595B  00      	 nop
595C  00      	 nop
595D  00      	 nop
595E  00      	 nop
595F  00      	 nop
5960  00      	 nop
5961  00      	 nop
5962  00      	 nop
5963  00      	 nop
5964  00      	 nop
5965  00      	 nop
5966  00      	 nop
5967  00      	 nop
5968  00      	 nop
5969  00      	 nop
596A  00      	 nop
596B  00      	 nop
596C  00      	 nop
596D  00      	 nop
596E  00      	 nop
596F  00      	 nop
5970  00      	 nop
5971  00      	 nop
5972  00      	 nop
5973  00      	 nop
5974  00      	 nop
5975  00      	 nop
5976  00      	 nop
5977  00      	 nop
5978  00      	 nop
5979  00      	 nop
597A  00      	 nop
597B  00      	 nop
597C  00      	 nop
597D  00      	 nop
597E  00      	 nop
597F  00      	 nop
5980  00      	 nop
5981  00      	 nop
5982  00      	 nop
5983  00      	 nop
5984  00      	 nop
5985  00      	 nop
5986  00      	 nop
5987  00      	 nop
5988  00      	 nop
5989  00      	 nop
598A  00      	 nop
598B  00      	 nop
598C  00      	 nop
598D  00      	 nop
598E  00      	 nop
598F  00      	 nop
5990  00      	 nop
5991  00      	 nop
5992  00      	 nop
5993  00      	 nop
5994  00      	 nop
5995  00      	 nop
5996  00      	 nop
5997  00      	 nop
5998  00      	 nop
5999  00      	 nop
599A  00      	 nop
599B  00      	 nop
599C  00      	 nop
599D  00      	 nop
599E  00      	 nop
599F  00      	 nop
59A0  00      	 nop
59A1  00      	 nop
59A2  00      	 nop
59A3  00      	 nop
59A4  00      	 nop
59A5  00      	 nop
59A6  00      	 nop
59A7  00      	 nop
59A8  00      	 nop
59A9  00      	 nop
59AA  00      	 nop
59AB  00      	 nop
59AC  00      	 nop
59AD  00      	 nop
59AE  00      	 nop
59AF  00      	 nop
59B0  00      	 nop
59B1  00      	 nop
59B2  00      	 nop
59B3  00      	 nop
59B4  00      	 nop
59B5  00      	 nop
59B6  00      	 nop
59B7  00      	 nop
59B8  00      	 nop
59B9  00      	 nop
59BA  00      	 nop
59BB  00      	 nop
59BC  00      	 nop
59BD  00      	 nop
59BE  00      	 nop
59BF  00      	 nop
59C0  00      	 nop
59C1  00      	 nop
59C2  00      	 nop
59C3  00      	 nop
59C4  00      	 nop
59C5  00      	 nop
59C6  00      	 nop
59C7  00      	 nop
59C8  00      	 nop
59C9  00      	 nop
59CA  00      	 nop
59CB  00      	 nop
59CC  00      	 nop
59CD  00      	 nop
59CE  00      	 nop
59CF  00      	 nop
59D0  00      	 nop
59D1  00      	 nop
59D2  00      	 nop
59D3  00      	 nop
59D4  00      	 nop
59D5  00      	 nop
59D6  00      	 nop
59D7  00      	 nop
59D8  00      	 nop
59D9  00      	 nop
59DA  00      	 nop
59DB  00      	 nop
59DC  00      	 nop
59DD  00      	 nop
59DE  00      	 nop
59DF  00      	 nop
59E0  00      	 nop
59E1  00      	 nop
59E2  00      	 nop
59E3  00      	 nop
59E4  00      	 nop
59E5  00      	 nop
59E6  00      	 nop
59E7  00      	 nop
59E8  00      	 nop
59E9  00      	 nop
59EA  00      	 nop
59EB  00      	 nop
59EC  00      	 nop
59ED  00      	 nop
59EE  00      	 nop
59EF  00      	 nop
59F0  00      	 nop
59F1  00      	 nop
59F2  00      	 nop
59F3  00      	 nop
59F4  00      	 nop
59F5  00      	 nop
59F6  00      	 nop
59F7  00      	 nop
59F8  00      	 nop
59F9  00      	 nop
59FA  00      	 nop
59FB  00      	 nop
59FC  00      	 nop
59FD  00      	 nop
59FE  00      	 nop
59FF  00      	 nop
5A00  00      	 nop
5A01  00      	 nop
5A02  00      	 nop
5A03  00      	 nop
5A04  00      	 nop
5A05  00      	 nop
5A06  00      	 nop
5A07  00      	 nop
5A08  00      	 nop
5A09  00      	 nop
5A0A  00      	 nop
5A0B  00      	 nop
5A0C  00      	 nop
5A0D  00      	 nop
5A0E  00      	 nop
5A0F  00      	 nop
5A10  00      	 nop
5A11  00      	 nop
5A12  00      	 nop
5A13  00      	 nop
5A14  00      	 nop
5A15  00      	 nop
5A16  00      	 nop
5A17  00      	 nop
5A18  00      	 nop
5A19  00      	 nop
5A1A  00      	 nop
5A1B  00      	 nop
5A1C  00      	 nop
5A1D  00      	 nop
5A1E  00      	 nop
5A1F  00      	 nop
5A20  00      	 nop
5A21  00      	 nop
5A22  00      	 nop
5A23  00      	 nop
5A24  00      	 nop
5A25  00      	 nop
5A26  00      	 nop
5A27  00      	 nop
5A28  00      	 nop
5A29  00      	 nop
5A2A  00      	 nop
5A2B  00      	 nop
5A2C  00      	 nop
5A2D  00      	 nop
5A2E  00      	 nop
5A2F  00      	 nop
5A30  00      	 nop
5A31  00      	 nop
5A32  00      	 nop
5A33  00      	 nop
5A34  00      	 nop
5A35  00      	 nop
5A36  00      	 nop
5A37  00      	 nop
5A38  00      	 nop
5A39  00      	 nop
5A3A  00      	 nop
5A3B  00      	 nop
5A3C  00      	 nop
5A3D  00      	 nop
5A3E  00      	 nop
5A3F  00      	 nop
5A40  00      	 nop
5A41  00      	 nop
5A42  00      	 nop
5A43  00      	 nop
5A44  00      	 nop
5A45  00      	 nop
5A46  00      	 nop
5A47  00      	 nop
5A48  00      	 nop
5A49  00      	 nop
5A4A  00      	 nop
5A4B  00      	 nop
5A4C  00      	 nop
5A4D  00      	 nop
5A4E  00      	 nop
5A4F  00      	 nop
5A50  00      	 nop
5A51  00      	 nop
5A52  00      	 nop
5A53  00      	 nop
5A54  00      	 nop
5A55  00      	 nop
5A56  00      	 nop
5A57  00      	 nop
5A58  00      	 nop
5A59  00      	 nop
5A5A  00      	 nop
5A5B  00      	 nop
5A5C  00      	 nop
5A5D  00      	 nop
5A5E  00      	 nop
5A5F  00      	 nop
5A60  00      	 nop
5A61  00      	 nop
5A62  00      	 nop
5A63  00      	 nop
5A64  00      	 nop
5A65  00      	 nop
5A66  00      	 nop
5A67  00      	 nop
5A68  00      	 nop
5A69  00      	 nop
5A6A  00      	 nop
5A6B  00      	 nop
5A6C  00      	 nop
5A6D  00      	 nop
5A6E  00      	 nop
5A6F  00      	 nop
5A70  00      	 nop
5A71  00      	 nop
5A72  00      	 nop
5A73  00      	 nop
5A74  00      	 nop
5A75  00      	 nop
5A76  00      	 nop
5A77  00      	 nop
5A78  00      	 nop
5A79  00      	 nop
5A7A  00      	 nop
5A7B  00      	 nop
5A7C  00      	 nop
5A7D  00      	 nop
5A7E  00      	 nop
5A7F  00      	 nop
5A80  00      	 nop
5A81  00      	 nop
5A82  00      	 nop
5A83  00      	 nop
5A84  00      	 nop
5A85  00      	 nop
5A86  00      	 nop
5A87  00      	 nop
5A88  00      	 nop
5A89  00      	 nop
5A8A  00      	 nop
5A8B  00      	 nop
5A8C  00      	 nop
5A8D  00      	 nop
5A8E  00      	 nop
5A8F  00      	 nop
5A90  00      	 nop
5A91  00      	 nop
5A92  00      	 nop
5A93  00      	 nop
5A94  00      	 nop
5A95  00      	 nop
5A96  00      	 nop
5A97  00      	 nop
5A98  00      	 nop
5A99  00      	 nop
5A9A  00      	 nop
5A9B  00      	 nop
5A9C  00      	 nop
5A9D  00      	 nop
5A9E  00      	 nop
5A9F  00      	 nop
5AA0  00      	 nop
5AA1  00      	 nop
5AA2  00      	 nop
5AA3  00      	 nop
5AA4  00      	 nop
5AA5  00      	 nop
5AA6  00      	 nop
5AA7  00      	 nop
5AA8  00      	 nop
5AA9  00      	 nop
5AAA  00      	 nop
5AAB  00      	 nop
5AAC  00      	 nop
5AAD  00      	 nop
5AAE  00      	 nop
5AAF  00      	 nop
5AB0  00      	 nop
5AB1  00      	 nop
5AB2  00      	 nop
5AB3  00      	 nop
5AB4  00      	 nop
5AB5  00      	 nop
5AB6  00      	 nop
5AB7  00      	 nop
5AB8  00      	 nop
5AB9  00      	 nop
5ABA  00      	 nop
5ABB  00      	 nop
5ABC  00      	 nop
5ABD  00      	 nop
5ABE  00      	 nop
5ABF  00      	 nop
5AC0  00      	 nop
5AC1  00      	 nop
5AC2  00      	 nop
5AC3  00      	 nop
5AC4  00      	 nop
5AC5  00      	 nop
5AC6  00      	 nop
5AC7  00      	 nop
5AC8  00      	 nop
5AC9  00      	 nop
5ACA  00      	 nop
5ACB  00      	 nop
5ACC  00      	 nop
5ACD  00      	 nop
5ACE  00      	 nop
5ACF  00      	 nop
5AD0  00      	 nop
5AD1  00      	 nop
5AD2  00      	 nop
5AD3  00      	 nop
5AD4  00      	 nop
5AD5  00      	 nop
5AD6  00      	 nop
5AD7  00      	 nop
5AD8  00      	 nop
5AD9  00      	 nop
5ADA  00      	 nop
5ADB  00      	 nop
5ADC  00      	 nop
5ADD  00      	 nop
5ADE  00      	 nop
5ADF  00      	 nop
5AE0  00      	 nop
5AE1  00      	 nop
5AE2  00      	 nop
5AE3  00      	 nop
5AE4  00      	 nop
5AE5  00      	 nop
5AE6  00      	 nop
5AE7  00      	 nop
5AE8  00      	 nop
5AE9  00      	 nop
5AEA  00      	 nop
5AEB  00      	 nop
5AEC  00      	 nop
5AED  00      	 nop
5AEE  00      	 nop
5AEF  00      	 nop
5AF0  00      	 nop
5AF1  00      	 nop
5AF2  00      	 nop
5AF3  00      	 nop
5AF4  00      	 nop
5AF5  00      	 nop
5AF6  00      	 nop
5AF7  00      	 nop
5AF8  00      	 nop
5AF9  00      	 nop
5AFA  00      	 nop
5AFB  00      	 nop
5AFC  00      	 nop
5AFD  00      	 nop
5AFE  00      	 nop
5AFF  00      	 nop
5B00  00      	 nop
5B01  00      	 nop
5B02  00      	 nop
5B03  00      	 nop
5B04  00      	 nop
5B05  00      	 nop
5B06  00      	 nop
5B07  00      	 nop
5B08  00      	 nop
5B09  00      	 nop
5B0A  00      	 nop
5B0B  00      	 nop
5B0C  00      	 nop
5B0D  00      	 nop
5B0E  00      	 nop
5B0F  00      	 nop
5B10  00      	 nop
5B11  00      	 nop
5B12  00      	 nop
5B13  00      	 nop
5B14  00      	 nop
5B15  00      	 nop
5B16  00      	 nop
5B17  00      	 nop
5B18  00      	 nop
5B19  00      	 nop
5B1A  00      	 nop
5B1B  00      	 nop
5B1C  00      	 nop
5B1D  00      	 nop
5B1E  00      	 nop
5B1F  00      	 nop
5B20  00      	 nop
5B21  00      	 nop
5B22  00      	 nop
5B23  00      	 nop
5B24  00      	 nop
5B25  00      	 nop
5B26  00      	 nop
5B27  00      	 nop
5B28  00      	 nop
5B29  00      	 nop
5B2A  00      	 nop
5B2B  00      	 nop
5B2C  00      	 nop
5B2D  00      	 nop
5B2E  00      	 nop
5B2F  00      	 nop
5B30  00      	 nop
5B31  00      	 nop
5B32  00      	 nop
5B33  00      	 nop
5B34  00      	 nop
5B35  00      	 nop
5B36  00      	 nop
5B37  00      	 nop
5B38  00      	 nop
5B39  00      	 nop
5B3A  00      	 nop
5B3B  00      	 nop
5B3C  00      	 nop
5B3D  00      	 nop
5B3E  00      	 nop
5B3F  00      	 nop
5B40  00      	 nop
5B41  00      	 nop
5B42  00      	 nop
5B43  00      	 nop
5B44  00      	 nop
5B45  00      	 nop
5B46  00      	 nop
5B47  00      	 nop
5B48  00      	 nop
5B49  00      	 nop
5B4A  00      	 nop
5B4B  00      	 nop
5B4C  00      	 nop
5B4D  00      	 nop
5B4E  00      	 nop
5B4F  00      	 nop
5B50  00      	 nop
5B51  00      	 nop
5B52  00      	 nop
5B53  00      	 nop
5B54  00      	 nop
5B55  00      	 nop
5B56  00      	 nop
5B57  00      	 nop
5B58  00      	 nop
5B59  00      	 nop
5B5A  00      	 nop
5B5B  00      	 nop
5B5C  00      	 nop
5B5D  00      	 nop
5B5E  00      	 nop
5B5F  00      	 nop
5B60  00      	 nop
5B61  00      	 nop
5B62  00      	 nop
5B63  00      	 nop
5B64  00      	 nop
5B65  00      	 nop
5B66  00      	 nop
5B67  00      	 nop
5B68  00      	 nop
5B69  00      	 nop
5B6A  00      	 nop
5B6B  00      	 nop
5B6C  00      	 nop
5B6D  00      	 nop
5B6E  00      	 nop
5B6F  00      	 nop
5B70  00      	 nop
5B71  00      	 nop
5B72  00      	 nop
5B73  00      	 nop
5B74  00      	 nop
5B75  00      	 nop
5B76  00      	 nop
5B77  00      	 nop
5B78  00      	 nop
5B79  00      	 nop
5B7A  00      	 nop
5B7B  00      	 nop
5B7C  00      	 nop
5B7D  00      	 nop
5B7E  00      	 nop
5B7F  00      	 nop
5B80  00      	 nop
5B81  00      	 nop
5B82  00      	 nop
5B83  00      	 nop
5B84  00      	 nop
5B85  00      	 nop
5B86  00      	 nop
5B87  00      	 nop
5B88  00      	 nop
5B89  00      	 nop
5B8A  00      	 nop
5B8B  00      	 nop
5B8C  00      	 nop
5B8D  00      	 nop
5B8E  00      	 nop
5B8F  00      	 nop
5B90  00      	 nop
5B91  00      	 nop
5B92  00      	 nop
5B93  00      	 nop
5B94  00      	 nop
5B95  00      	 nop
5B96  00      	 nop
5B97  00      	 nop
5B98  00      	 nop
5B99  00      	 nop
5B9A  00      	 nop
5B9B  00      	 nop
5B9C  00      	 nop
5B9D  00      	 nop
5B9E  00      	 nop
5B9F  00      	 nop
5BA0  00      	 nop
5BA1  00      	 nop
5BA2  00      	 nop
5BA3  00      	 nop
5BA4  00      	 nop
5BA5  00      	 nop
5BA6  00      	 nop
5BA7  00      	 nop
5BA8  00      	 nop
5BA9  00      	 nop
5BAA  00      	 nop
5BAB  00      	 nop
5BAC  00      	 nop
5BAD  00      	 nop
5BAE  00      	 nop
5BAF  00      	 nop
5BB0  00      	 nop
5BB1  00      	 nop
5BB2  00      	 nop
5BB3  00      	 nop
5BB4  00      	 nop
5BB5  00      	 nop
5BB6  00      	 nop
5BB7  00      	 nop
5BB8  00      	 nop
5BB9  00      	 nop
5BBA  00      	 nop
5BBB  00      	 nop
5BBC  00      	 nop
5BBD  00      	 nop
5BBE  00      	 nop
5BBF  00      	 nop
5BC0  00      	 nop
5BC1  00      	 nop
5BC2  00      	 nop
5BC3  00      	 nop
5BC4  00      	 nop
5BC5  00      	 nop
5BC6  00      	 nop
5BC7  00      	 nop
5BC8  00      	 nop
5BC9  00      	 nop
5BCA  00      	 nop
5BCB  00      	 nop
5BCC  00      	 nop
5BCD  00      	 nop
5BCE  00      	 nop
5BCF  00      	 nop
5BD0  00      	 nop
5BD1  00      	 nop
5BD2  00      	 nop
5BD3  00      	 nop
5BD4  00      	 nop
5BD5  00      	 nop
5BD6  00      	 nop
5BD7  00      	 nop
5BD8  00      	 nop
5BD9  00      	 nop
5BDA  00      	 nop
5BDB  00      	 nop
5BDC  00      	 nop
5BDD  00      	 nop
5BDE  00      	 nop
5BDF  00      	 nop
5BE0  00      	 nop
5BE1  00      	 nop
5BE2  00      	 nop
5BE3  00      	 nop
5BE4  00      	 nop
5BE5  00      	 nop
5BE6  00      	 nop
5BE7  00      	 nop
5BE8  00      	 nop
5BE9  00      	 nop
5BEA  00      	 nop
5BEB  00      	 nop
5BEC  00      	 nop
5BED  00      	 nop
5BEE  00      	 nop
5BEF  00      	 nop
5BF0  00      	 nop
5BF1  00      	 nop
5BF2  00      	 nop
5BF3  00      	 nop
5BF4  00      	 nop
5BF5  00      	 nop
5BF6  00      	 nop
5BF7  00      	 nop
5BF8  00      	 nop
5BF9  00      	 nop
5BFA  00      	 nop
5BFB  00      	 nop
5BFC  00      	 nop
5BFD  00      	 nop
5BFE  00      	 nop
5BFF  00      	 nop
5C00  00      	 nop
5C01  00      	 nop
5C02  00      	 nop
5C03  00      	 nop
5C04  00      	 nop
5C05  00      	 nop
5C06  00      	 nop
5C07  00      	 nop
5C08  00      	 nop
5C09  00      	 nop
5C0A  00      	 nop
5C0B  00      	 nop
5C0C  00      	 nop
5C0D  00      	 nop
5C0E  00      	 nop
5C0F  00      	 nop
5C10  00      	 nop
5C11  00      	 nop
5C12  00      	 nop
5C13  00      	 nop
5C14  00      	 nop
5C15  00      	 nop
5C16  00      	 nop
5C17  00      	 nop
5C18  00      	 nop
5C19  00      	 nop
5C1A  00      	 nop
5C1B  00      	 nop
5C1C  00      	 nop
5C1D  00      	 nop
5C1E  00      	 nop
5C1F  00      	 nop
5C20  00      	 nop
5C21  00      	 nop
5C22  00      	 nop
5C23  00      	 nop
5C24  00      	 nop
5C25  00      	 nop
5C26  00      	 nop
5C27  00      	 nop
5C28  00      	 nop
5C29  00      	 nop
5C2A  00      	 nop
5C2B  00      	 nop
5C2C  00      	 nop
5C2D  00      	 nop
5C2E  00      	 nop
5C2F  00      	 nop
5C30  00      	 nop
5C31  00      	 nop
5C32  00      	 nop
5C33  00      	 nop
5C34  00      	 nop
5C35  00      	 nop
5C36  00      	 nop
5C37  00      	 nop
5C38  00      	 nop
5C39  00      	 nop
5C3A  00      	 nop
5C3B  00      	 nop
5C3C  00      	 nop
5C3D  00      	 nop
5C3E  00      	 nop
5C3F  00      	 nop
5C40  00      	 nop
5C41  00      	 nop
5C42  00      	 nop
5C43  00      	 nop
5C44  00      	 nop
5C45  00      	 nop
5C46  00      	 nop
5C47  00      	 nop
5C48  00      	 nop
5C49  00      	 nop
5C4A  00      	 nop
5C4B  00      	 nop
5C4C  00      	 nop
5C4D  00      	 nop
5C4E  00      	 nop
5C4F  00      	 nop
5C50  00      	 nop
5C51  00      	 nop
5C52  00      	 nop
5C53  00      	 nop
5C54  00      	 nop
5C55  00      	 nop
5C56  00      	 nop
5C57  00      	 nop
5C58  00      	 nop
5C59  00      	 nop
5C5A  00      	 nop
5C5B  00      	 nop
5C5C  00      	 nop
5C5D  00      	 nop
5C5E  00      	 nop
5C5F  00      	 nop
5C60  00      	 nop
5C61  00      	 nop
5C62  00      	 nop
5C63  00      	 nop
5C64  00      	 nop
5C65  00      	 nop
5C66  00      	 nop
5C67  00      	 nop
5C68  00      	 nop
5C69  00      	 nop
5C6A  00      	 nop
5C6B  00      	 nop
5C6C  00      	 nop
5C6D  00      	 nop
5C6E  00      	 nop
5C6F  00      	 nop
5C70  00      	 nop
5C71  00      	 nop
5C72  00      	 nop
5C73  00      	 nop
5C74  00      	 nop
5C75  00      	 nop
5C76  00      	 nop
5C77  00      	 nop
5C78  00      	 nop
5C79  00      	 nop
5C7A  00      	 nop
5C7B  00      	 nop
5C7C  00      	 nop
5C7D  00      	 nop
5C7E  00      	 nop
5C7F  00      	 nop
5C80  00      	 nop
5C81  00      	 nop
5C82  00      	 nop
5C83  00      	 nop
5C84  00      	 nop
5C85  00      	 nop
5C86  00      	 nop
5C87  00      	 nop
5C88  00      	 nop
5C89  00      	 nop
5C8A  00      	 nop
5C8B  00      	 nop
5C8C  00      	 nop
5C8D  00      	 nop
5C8E  00      	 nop
5C8F  00      	 nop
5C90  00      	 nop
5C91  00      	 nop
5C92  00      	 nop
5C93  00      	 nop
5C94  00      	 nop
5C95  00      	 nop
5C96  00      	 nop
5C97  00      	 nop
5C98  00      	 nop
5C99  00      	 nop
5C9A  00      	 nop
5C9B  00      	 nop
5C9C  00      	 nop
5C9D  00      	 nop
5C9E  00      	 nop
5C9F  00      	 nop
5CA0  00      	 nop
5CA1  00      	 nop
5CA2  00      	 nop
5CA3  00      	 nop
5CA4  00      	 nop
5CA5  00      	 nop
5CA6  00      	 nop
5CA7  00      	 nop
5CA8  00      	 nop
5CA9  00      	 nop
5CAA  00      	 nop
5CAB  00      	 nop
5CAC  00      	 nop
5CAD  00      	 nop
5CAE  00      	 nop
5CAF  00      	 nop
5CB0  00      	 nop
5CB1  00      	 nop
5CB2  00      	 nop
5CB3  00      	 nop
5CB4  00      	 nop
5CB5  00      	 nop
5CB6  00      	 nop
5CB7  00      	 nop
5CB8  00      	 nop
5CB9  00      	 nop
5CBA  00      	 nop
5CBB  00      	 nop
5CBC  00      	 nop
5CBD  00      	 nop
5CBE  00      	 nop
5CBF  00      	 nop
5CC0  00      	 nop
5CC1  00      	 nop
5CC2  00      	 nop
5CC3  00      	 nop
5CC4  00      	 nop
5CC5  00      	 nop
5CC6  00      	 nop
5CC7  00      	 nop
5CC8  00      	 nop
5CC9  00      	 nop
5CCA  00      	 nop
5CCB  00      	 nop
5CCC  00      	 nop
5CCD  00      	 nop
5CCE  00      	 nop
5CCF  00      	 nop
5CD0  00      	 nop
5CD1  00      	 nop
5CD2  00      	 nop
5CD3  00      	 nop
5CD4  00      	 nop
5CD5  00      	 nop
5CD6  00      	 nop
5CD7  00      	 nop
5CD8  00      	 nop
5CD9  00      	 nop
5CDA  00      	 nop
5CDB  00      	 nop
5CDC  00      	 nop
5CDD  00      	 nop
5CDE  00      	 nop
5CDF  00      	 nop
5CE0  00      	 nop
5CE1  00      	 nop
5CE2  00      	 nop
5CE3  00      	 nop
5CE4  00      	 nop
5CE5  00      	 nop
5CE6  00      	 nop
5CE7  00      	 nop
5CE8  00      	 nop
5CE9  00      	 nop
5CEA  00      	 nop
5CEB  00      	 nop
5CEC  00      	 nop
5CED  00      	 nop
5CEE  00      	 nop
5CEF  00      	 nop
5CF0  00      	 nop
5CF1  00      	 nop
5CF2  00      	 nop
5CF3  00      	 nop
5CF4  00      	 nop
5CF5  00      	 nop
5CF6  00      	 nop
5CF7  00      	 nop
5CF8  00      	 nop
5CF9  00      	 nop
5CFA  00      	 nop
5CFB  00      	 nop
5CFC  00      	 nop
5CFD  00      	 nop
5CFE  00      	 nop
5CFF  00      	 nop
5D00  00      	 nop
5D01  00      	 nop
5D02  00      	 nop
5D03  00      	 nop
5D04  00      	 nop
5D05  00      	 nop
5D06  00      	 nop
5D07  00      	 nop
5D08  00      	 nop
5D09  00      	 nop
5D0A  00      	 nop
5D0B  00      	 nop
5D0C  00      	 nop
5D0D  00      	 nop
5D0E  00      	 nop
5D0F  00      	 nop
5D10  00      	 nop
5D11  00      	 nop
5D12  00      	 nop
5D13  00      	 nop
5D14  00      	 nop
5D15  00      	 nop
5D16  00      	 nop
5D17  00      	 nop
5D18  00      	 nop
5D19  00      	 nop
5D1A  00      	 nop
5D1B  00      	 nop
5D1C  00      	 nop
5D1D  00      	 nop
5D1E  00      	 nop
5D1F  00      	 nop
5D20  00      	 nop
5D21  00      	 nop
5D22  00      	 nop
5D23  00      	 nop
5D24  00      	 nop
5D25  00      	 nop
5D26  00      	 nop
5D27  00      	 nop
5D28  00      	 nop
5D29  00      	 nop
5D2A  00      	 nop
5D2B  00      	 nop
5D2C  00      	 nop
5D2D  00      	 nop
5D2E  00      	 nop
5D2F  00      	 nop
5D30  00      	 nop
5D31  00      	 nop
5D32  00      	 nop
5D33  00      	 nop
5D34  00      	 nop
5D35  00      	 nop
5D36  00      	 nop
5D37  00      	 nop
5D38  00      	 nop
5D39  00      	 nop
5D3A  00      	 nop
5D3B  00      	 nop
5D3C  00      	 nop
5D3D  00      	 nop
5D3E  00      	 nop
5D3F  00      	 nop
5D40  00      	 nop
5D41  00      	 nop
5D42  00      	 nop
5D43  00      	 nop
5D44  00      	 nop
5D45  00      	 nop
5D46  00      	 nop
5D47  00      	 nop
5D48  00      	 nop
5D49  00      	 nop
5D4A  00      	 nop
5D4B  00      	 nop
5D4C  00      	 nop
5D4D  00      	 nop
5D4E  00      	 nop
5D4F  00      	 nop
5D50  00      	 nop
5D51  00      	 nop
5D52  00      	 nop
5D53  00      	 nop
5D54  00      	 nop
5D55  00      	 nop
5D56  00      	 nop
5D57  00      	 nop
5D58  00      	 nop
5D59  00      	 nop
5D5A  00      	 nop
5D5B  00      	 nop
5D5C  00      	 nop
5D5D  00      	 nop
5D5E  00      	 nop
5D5F  00      	 nop
5D60  00      	 nop
5D61  00      	 nop
5D62  00      	 nop
5D63  00      	 nop
5D64  00      	 nop
5D65  00      	 nop
5D66  00      	 nop
5D67  00      	 nop
5D68  00      	 nop
5D69  00      	 nop
5D6A  00      	 nop
5D6B  00      	 nop
5D6C  00      	 nop
5D6D  00      	 nop
5D6E  00      	 nop
5D6F  00      	 nop
5D70  00      	 nop
5D71  00      	 nop
5D72  00      	 nop
5D73  00      	 nop
5D74  00      	 nop
5D75  00      	 nop
5D76  00      	 nop
5D77  00      	 nop
5D78  00      	 nop
5D79  00      	 nop
5D7A  00      	 nop
5D7B  00      	 nop
5D7C  00      	 nop
5D7D  00      	 nop
5D7E  00      	 nop
5D7F  00      	 nop
5D80  00      	 nop
5D81  00      	 nop
5D82  00      	 nop
5D83  00      	 nop
5D84  00      	 nop
5D85  00      	 nop
5D86  00      	 nop
5D87  00      	 nop
5D88  00      	 nop
5D89  00      	 nop
5D8A  00      	 nop
5D8B  00      	 nop
5D8C  00      	 nop
5D8D  00      	 nop
5D8E  00      	 nop
5D8F  00      	 nop
5D90  00      	 nop
5D91  00      	 nop
5D92  00      	 nop
5D93  00      	 nop
5D94  00      	 nop
5D95  00      	 nop
5D96  00      	 nop
5D97  00      	 nop
5D98  00      	 nop
5D99  00      	 nop
5D9A  00      	 nop
5D9B  00      	 nop
5D9C  00      	 nop
5D9D  00      	 nop
5D9E  00      	 nop
5D9F  00      	 nop
5DA0  00      	 nop
5DA1  00      	 nop
5DA2  00      	 nop
5DA3  00      	 nop
5DA4  00      	 nop
5DA5  00      	 nop
5DA6  00      	 nop
5DA7  00      	 nop
5DA8  00      	 nop
5DA9  00      	 nop
5DAA  00      	 nop
5DAB  00      	 nop
5DAC  00      	 nop
5DAD  00      	 nop
5DAE  00      	 nop
5DAF  00      	 nop
5DB0  00      	 nop
5DB1  00      	 nop
5DB2  00      	 nop
5DB3  00      	 nop
5DB4  00      	 nop
5DB5  00      	 nop
5DB6  00      	 nop
5DB7  00      	 nop
5DB8  00      	 nop
5DB9  00      	 nop
5DBA  00      	 nop
5DBB  00      	 nop
5DBC  00      	 nop
5DBD  00      	 nop
5DBE  00      	 nop
5DBF  00      	 nop
5DC0  00      	 nop
5DC1  00      	 nop
5DC2  00      	 nop
5DC3  00      	 nop
5DC4  00      	 nop
5DC5  00      	 nop
5DC6  00      	 nop
5DC7  00      	 nop
5DC8  00      	 nop
5DC9  00      	 nop
5DCA  00      	 nop
5DCB  00      	 nop
5DCC  00      	 nop
5DCD  00      	 nop
5DCE  00      	 nop
5DCF  00      	 nop
5DD0  00      	 nop
5DD1  00      	 nop
5DD2  00      	 nop
5DD3  00      	 nop
5DD4  00      	 nop
5DD5  00      	 nop
5DD6  00      	 nop
5DD7  00      	 nop
5DD8  00      	 nop
5DD9  00      	 nop
5DDA  00      	 nop
5DDB  00      	 nop
5DDC  00      	 nop
5DDD  00      	 nop
5DDE  00      	 nop
5DDF  00      	 nop
5DE0  00      	 nop
5DE1  00      	 nop
5DE2  00      	 nop
5DE3  00      	 nop
5DE4  00      	 nop
5DE5  00      	 nop
5DE6  00      	 nop
5DE7  00      	 nop
5DE8  00      	 nop
5DE9  00      	 nop
5DEA  00      	 nop
5DEB  00      	 nop
5DEC  00      	 nop
5DED  00      	 nop
5DEE  00      	 nop
5DEF  00      	 nop
5DF0  00      	 nop
5DF1  00      	 nop
5DF2  00      	 nop
5DF3  00      	 nop
5DF4  00      	 nop
5DF5  00      	 nop
5DF6  00      	 nop
5DF7  00      	 nop
5DF8  00      	 nop
5DF9  00      	 nop
5DFA  00      	 nop
5DFB  00      	 nop
5DFC  00      	 nop
5DFD  00      	 nop
5DFE  00      	 nop
5DFF  00      	 nop
5E00  00      	 nop
5E01  00      	 nop
5E02  00      	 nop
5E03  00      	 nop
5E04  00      	 nop
5E05  00      	 nop
5E06  00      	 nop
5E07  00      	 nop
5E08  00      	 nop
5E09  00      	 nop
5E0A  00      	 nop
5E0B  00      	 nop
5E0C  00      	 nop
5E0D  00      	 nop
5E0E  00      	 nop
5E0F  00      	 nop
5E10  00      	 nop
5E11  00      	 nop
5E12  00      	 nop
5E13  00      	 nop
5E14  00      	 nop
5E15  00      	 nop
5E16  00      	 nop
5E17  00      	 nop
5E18  00      	 nop
5E19  00      	 nop
5E1A  00      	 nop
5E1B  00      	 nop
5E1C  00      	 nop
5E1D  00      	 nop
5E1E  00      	 nop
5E1F  00      	 nop
5E20  00      	 nop
5E21  00      	 nop
5E22  00      	 nop
5E23  00      	 nop
5E24  00      	 nop
5E25  00      	 nop
5E26  00      	 nop
5E27  00      	 nop
5E28  00      	 nop
5E29  00      	 nop
5E2A  00      	 nop
5E2B  00      	 nop
5E2C  00      	 nop
5E2D  00      	 nop
5E2E  00      	 nop
5E2F  00      	 nop
5E30  00      	 nop
5E31  00      	 nop
5E32  00      	 nop
5E33  00      	 nop
5E34  00      	 nop
5E35  00      	 nop
5E36  00      	 nop
5E37  00      	 nop
5E38  00      	 nop
5E39  00      	 nop
5E3A  00      	 nop
5E3B  00      	 nop
5E3C  00      	 nop
5E3D  00      	 nop
5E3E  00      	 nop
5E3F  00      	 nop
5E40  00      	 nop
5E41  00      	 nop
5E42  00      	 nop
5E43  00      	 nop
5E44  00      	 nop
5E45  00      	 nop
5E46  00      	 nop
5E47  00      	 nop
5E48  00      	 nop
5E49  00      	 nop
5E4A  00      	 nop
5E4B  00      	 nop
5E4C  00      	 nop
5E4D  00      	 nop
5E4E  00      	 nop
5E4F  00      	 nop
5E50  00      	 nop
5E51  00      	 nop
5E52  00      	 nop
5E53  00      	 nop
5E54  00      	 nop
5E55  00      	 nop
5E56  00      	 nop
5E57  00      	 nop
5E58  00      	 nop
5E59  00      	 nop
5E5A  00      	 nop
5E5B  00      	 nop
5E5C  00      	 nop
5E5D  00      	 nop
5E5E  00      	 nop
5E5F  00      	 nop
5E60  00      	 nop
5E61  00      	 nop
5E62  00      	 nop
5E63  00      	 nop
5E64  00      	 nop
5E65  00      	 nop
5E66  00      	 nop
5E67  00      	 nop
5E68  00      	 nop
5E69  00      	 nop
5E6A  00      	 nop
5E6B  00      	 nop
5E6C  00      	 nop
5E6D  00      	 nop
5E6E  00      	 nop
5E6F  00      	 nop
5E70  00      	 nop
5E71  00      	 nop
5E72  00      	 nop
5E73  00      	 nop
5E74  00      	 nop
5E75  00      	 nop
5E76  00      	 nop
5E77  00      	 nop
5E78  00      	 nop
5E79  00      	 nop
5E7A  00      	 nop
5E7B  00      	 nop
5E7C  00      	 nop
5E7D  00      	 nop
5E7E  00      	 nop
5E7F  00      	 nop
5E80  00      	 nop
5E81  00      	 nop
5E82  00      	 nop
5E83  00      	 nop
5E84  00      	 nop
5E85  00      	 nop
5E86  00      	 nop
5E87  00      	 nop
5E88  00      	 nop
5E89  00      	 nop
5E8A  00      	 nop
5E8B  00      	 nop
5E8C  00      	 nop
5E8D  00      	 nop
5E8E  00      	 nop
5E8F  00      	 nop
5E90  00      	 nop
5E91  00      	 nop
5E92  00      	 nop
5E93  00      	 nop
5E94  00      	 nop
5E95  00      	 nop
5E96  00      	 nop
5E97  00      	 nop
5E98  00      	 nop
5E99  00      	 nop
5E9A  00      	 nop
5E9B  00      	 nop
5E9C  00      	 nop
5E9D  00      	 nop
5E9E  00      	 nop
5E9F  00      	 nop
5EA0  00      	 nop
5EA1  00      	 nop
5EA2  00      	 nop
5EA3  00      	 nop
5EA4  00      	 nop
5EA5  00      	 nop
5EA6  00      	 nop
5EA7  00      	 nop
5EA8  00      	 nop
5EA9  00      	 nop
5EAA  00      	 nop
5EAB  00      	 nop
5EAC  00      	 nop
5EAD  00      	 nop
5EAE  00      	 nop
5EAF  00      	 nop
5EB0  00      	 nop
5EB1  00      	 nop
5EB2  00      	 nop
5EB3  00      	 nop
5EB4  00      	 nop
5EB5  00      	 nop
5EB6  00      	 nop
5EB7  00      	 nop
5EB8  00      	 nop
5EB9  00      	 nop
5EBA  00      	 nop
5EBB  00      	 nop
5EBC  00      	 nop
5EBD  00      	 nop
5EBE  00      	 nop
5EBF  00      	 nop
5EC0  00      	 nop
5EC1  00      	 nop
5EC2  00      	 nop
5EC3  00      	 nop
5EC4  00      	 nop
5EC5  00      	 nop
5EC6  00      	 nop
5EC7  00      	 nop
5EC8  00      	 nop
5EC9  00      	 nop
5ECA  00      	 nop
5ECB  00      	 nop
5ECC  00      	 nop
5ECD  00      	 nop
5ECE  00      	 nop
5ECF  00      	 nop
5ED0  00      	 nop
5ED1  00      	 nop
5ED2  00      	 nop
5ED3  00      	 nop
5ED4  00      	 nop
5ED5  00      	 nop
5ED6  00      	 nop
5ED7  00      	 nop
5ED8  00      	 nop
5ED9  00      	 nop
5EDA  00      	 nop
5EDB  00      	 nop
5EDC  00      	 nop
5EDD  00      	 nop
5EDE  00      	 nop
5EDF  00      	 nop
5EE0  00      	 nop
5EE1  00      	 nop
5EE2  00      	 nop
5EE3  00      	 nop
5EE4  00      	 nop
5EE5  00      	 nop
5EE6  00      	 nop
5EE7  00      	 nop
5EE8  00      	 nop
5EE9  00      	 nop
5EEA  00      	 nop
5EEB  00      	 nop
5EEC  00      	 nop
5EED  00      	 nop
5EEE  00      	 nop
5EEF  00      	 nop
5EF0  00      	 nop
5EF1  00      	 nop
5EF2  00      	 nop
5EF3  00      	 nop
5EF4  00      	 nop
5EF5  00      	 nop
5EF6  00      	 nop
5EF7  00      	 nop
5EF8  00      	 nop
5EF9  00      	 nop
5EFA  00      	 nop
5EFB  00      	 nop
5EFC  00      	 nop
5EFD  00      	 nop
5EFE  00      	 nop
5EFF  00      	 nop
5F00  00      	 nop
5F01  00      	 nop
5F02  00      	 nop
5F03  00      	 nop
5F04  00      	 nop
5F05  00      	 nop
5F06  00      	 nop
5F07  00      	 nop
5F08  00      	 nop
5F09  00      	 nop
5F0A  00      	 nop
5F0B  00      	 nop
5F0C  00      	 nop
5F0D  00      	 nop
5F0E  00      	 nop
5F0F  00      	 nop
5F10  00      	 nop
5F11  00      	 nop
5F12  00      	 nop
5F13  00      	 nop
5F14  00      	 nop
5F15  00      	 nop
5F16  00      	 nop
5F17  00      	 nop
5F18  00      	 nop
5F19  00      	 nop
5F1A  00      	 nop
5F1B  00      	 nop
5F1C  00      	 nop
5F1D  00      	 nop
5F1E  00      	 nop
5F1F  00      	 nop
5F20  00      	 nop
5F21  00      	 nop
5F22  00      	 nop
5F23  00      	 nop
5F24  00      	 nop
5F25  00      	 nop
5F26  00      	 nop
5F27  00      	 nop
5F28  00      	 nop
5F29  00      	 nop
5F2A  00      	 nop
5F2B  00      	 nop
5F2C  00      	 nop
5F2D  00      	 nop
5F2E  00      	 nop
5F2F  00      	 nop
5F30  00      	 nop
5F31  00      	 nop
5F32  00      	 nop
5F33  00      	 nop
5F34  00      	 nop
5F35  00      	 nop
5F36  00      	 nop
5F37  00      	 nop
5F38  00      	 nop
5F39  00      	 nop
5F3A  00      	 nop
5F3B  00      	 nop
5F3C  00      	 nop
5F3D  00      	 nop
5F3E  00      	 nop
5F3F  00      	 nop
5F40  00      	 nop
5F41  00      	 nop
5F42  00      	 nop
5F43  00      	 nop
5F44  00      	 nop
5F45  00      	 nop
5F46  00      	 nop
5F47  00      	 nop
5F48  00      	 nop
5F49  00      	 nop
5F4A  00      	 nop
5F4B  00      	 nop
5F4C  00      	 nop
5F4D  00      	 nop
5F4E  00      	 nop
5F4F  00      	 nop
5F50  00      	 nop
5F51  00      	 nop
5F52  00      	 nop
5F53  00      	 nop
5F54  00      	 nop
5F55  00      	 nop
5F56  00      	 nop
5F57  00      	 nop
5F58  00      	 nop
5F59  00      	 nop
5F5A  00      	 nop
5F5B  00      	 nop
5F5C  00      	 nop
5F5D  00      	 nop
5F5E  00      	 nop
5F5F  00      	 nop
5F60  00      	 nop
5F61  00      	 nop
5F62  00      	 nop
5F63  00      	 nop
5F64  00      	 nop
5F65  00      	 nop
5F66  00      	 nop
5F67  00      	 nop
5F68  00      	 nop
5F69  00      	 nop
5F6A  00      	 nop
5F6B  00      	 nop
5F6C  00      	 nop
5F6D  00      	 nop
5F6E  00      	 nop
5F6F  00      	 nop
5F70  00      	 nop
5F71  00      	 nop
5F72  00      	 nop
5F73  00      	 nop
5F74  00      	 nop
5F75  00      	 nop
5F76  00      	 nop
5F77  00      	 nop
5F78  00      	 nop
5F79  00      	 nop
5F7A  00      	 nop
5F7B  00      	 nop
5F7C  00      	 nop
5F7D  00      	 nop
5F7E  00      	 nop
5F7F  00      	 nop
5F80  00      	 nop
5F81  00      	 nop
5F82  00      	 nop
5F83  00      	 nop
5F84  00      	 nop
5F85  00      	 nop
5F86  00      	 nop
5F87  00      	 nop
5F88  00      	 nop
5F89  00      	 nop
5F8A  00      	 nop
5F8B  00      	 nop
5F8C  00      	 nop
5F8D  00      	 nop
5F8E  00      	 nop
5F8F  00      	 nop
5F90  00      	 nop
5F91  00      	 nop
5F92  00      	 nop
5F93  00      	 nop
5F94  00      	 nop
5F95  00      	 nop
5F96  00      	 nop
5F97  00      	 nop
5F98  00      	 nop
5F99  00      	 nop
5F9A  00      	 nop
5F9B  00      	 nop
5F9C  00      	 nop
5F9D  00      	 nop
5F9E  00      	 nop
5F9F  00      	 nop
5FA0  00      	 nop
5FA1  00      	 nop
5FA2  00      	 nop
5FA3  00      	 nop
5FA4  00      	 nop
5FA5  00      	 nop
5FA6  00      	 nop
5FA7  00      	 nop
5FA8  00      	 nop
5FA9  00      	 nop
5FAA  00      	 nop
5FAB  00      	 nop
5FAC  00      	 nop
5FAD  00      	 nop
5FAE  00      	 nop
5FAF  00      	 nop
5FB0  00      	 nop
5FB1  00      	 nop
5FB2  00      	 nop
5FB3  00      	 nop
5FB4  00      	 nop
5FB5  00      	 nop
5FB6  00      	 nop
5FB7  00      	 nop
5FB8  00      	 nop
5FB9  00      	 nop
5FBA  00      	 nop
5FBB  00      	 nop
5FBC  00      	 nop
5FBD  00      	 nop
5FBE  00      	 nop
5FBF  00      	 nop
5FC0  00      	 nop
5FC1  00      	 nop
5FC2  00      	 nop
5FC3  00      	 nop
5FC4  00      	 nop
5FC5  00      	 nop
5FC6  00      	 nop
5FC7  00      	 nop
5FC8  00      	 nop
5FC9  00      	 nop
5FCA  00      	 nop
5FCB  00      	 nop
5FCC  00      	 nop
5FCD  00      	 nop
5FCE  00      	 nop
5FCF  00      	 nop
5FD0  00      	 nop
5FD1  00      	 nop
5FD2  00      	 nop
5FD3  00      	 nop
5FD4  00      	 nop
5FD5  00      	 nop
5FD6  00      	 nop
5FD7  00      	 nop
5FD8  00      	 nop
5FD9  00      	 nop
5FDA  00      	 nop
5FDB  00      	 nop
5FDC  00      	 nop
5FDD  00      	 nop
5FDE  00      	 nop
5FDF  00      	 nop
5FE0  00      	 nop
5FE1  00      	 nop
5FE2  00      	 nop
5FE3  00      	 nop
5FE4  00      	 nop
5FE5  00      	 nop
5FE6  00      	 nop
5FE7  00      	 nop
5FE8  00      	 nop
5FE9  00      	 nop
5FEA  00      	 nop
5FEB  00      	 nop
5FEC  00      	 nop
5FED  00      	 nop
5FEE  00      	 nop
5FEF  00      	 nop
5FF0  00      	 nop
5FF1  00      	 nop
5FF2  00      	 nop
5FF3  00      	 nop
5FF4  00      	 nop
5FF5  00      	 nop
5FF6  00      	 nop
5FF7  00      	 nop
5FF8  00      	 nop
5FF9  00      	 nop
5FFA  00      	 nop
5FFB  00      	 nop
5FFC  00      	 nop
5FFD  00      	 nop
5FFE  00      	 nop



Statistics:

     3	passes
     0	jr promotions
     0	symbols
 24575	bytes
