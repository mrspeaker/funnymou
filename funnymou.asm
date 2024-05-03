$B800 : watchdog

0000: 00          nop
0001: 00          nop
0002: 00          nop
0003: 3E 00       ld   a,$00
0005: 32 00 B0    ld   ($B000),a
0008: C3 F1 07    jp   $07F1
000B: 00          nop
000C: 00          nop
000D: 00          nop
000E: 3A 00 B8    ld   a,($watchdog)
0011: 21 00 80    ld   hl,$8000
0014: 3E 88       ld   a,$88
0016: 0E 00       ld   c,$00
0018: 71          ld   (hl),c
0019: 23          inc  hl
001A: BC          cp   h
001B: C2 18 00    jp   nz,$0018
001E: 31 FE 87    ld   sp,$87FE
0021: 3A 00 B8    ld   a,($watchdog)
0024: CD 33 09    call $0933
0027: AF          xor  a
0028: 06 08       ld   b,$08
002A: 21 00 B0    ld   hl,$B000
002D: 77          ld   (hl),a
002E: 23          inc  hl
002F: 10 FC       djnz $002D
0031: 3A 00 B0    ld   a,($B000)
0034: 32 20 80    ld   ($8020),a
0037: 47          ld   b,a
0038: E6 07       and  $07
003A: 32 25 80    ld   ($8025),a
003D: 78          ld   a,b
003E: E6 18       and  $18
0040: 32 26 80    ld   ($8026),a
0043: 78          ld   a,b
0044: E6 20       and  $20
0046: 32 28 80    ld   ($8028),a
0049: 78          ld   a,b
004A: E6 40       and  $40
004C: 32 27 80    ld   ($8027),a
004F: C3 80 05    jp   $0580
0052: 00          nop
0053: 00          nop
0054: 00          nop
0055: 00          nop
0056: 00          nop
0057: 00          nop
0058: 00          nop
0059: 00          nop
005A: 00          nop
005B: 00          nop
005C: 00          nop
005D: 00          nop
005E: 00          nop
005F: 00          nop
0060: 00          nop
0061: 00          nop
0062: 00          nop
0063: 00          nop
0064: 00          nop
0065: 00          nop
0066: F5          push af
0067: 3E 00       ld   a,$00
0069: 32 00 B0    ld   ($B000),a
006C: C5          push bc
006D: D5          push de
006E: E5          push hl
006F: 08          ex   af,af'
0070: D9          exx
0071: F5          push af
0072: C5          push bc
0073: D5          push de
0074: E5          push hl
0075: DD E5       push ix
0077: FD E5       push iy
0079: 00          nop
007A: 00          nop
007B: 3A 00 B8    ld   a,($watchdog)
007E: 00          nop
007F: 00          nop
0080: 00          nop
0081: 00          nop
0082: CD 00 01    call $0100
0085: 00          nop
0086: 00          nop
0087: 00          nop
0088: 00          nop
0089: 00          nop
008A: 00          nop
008B: FD E1       pop  iy
008D: DD E1       pop  ix
008F: E1          pop  hl
0090: D1          pop  de
0091: C1          pop  bc
0092: F1          pop  af
0093: D9          exx
0094: 08          ex   af,af'
0095: E1          pop  hl
0096: D1          pop  de
0097: C1          pop  bc
0098: 3E 01       ld   a,$01
009A: 32 00 B0    ld   ($B000),a
009D: F1          pop  af
009E: C9          ret
009F: 00          nop
00A0: 00          nop
00A1: 00          nop
00A2: 00          nop
00A3: 00          nop
00A4: 00          nop
00A5: 00          nop
00A6: 00          nop
00A7: 00          nop
00A8: 00          nop
00A9: 00          nop
00AA: 00          nop
00AB: 00          nop
00AC: 00          nop
00AD: 00          nop
00AE: 00          nop
00AF: 00          nop
00B0: 00          nop
00B1: 00          nop
00B2: 00          nop
00B3: 00          nop
00B4: 00          nop
00B5: 00          nop
00B6: 00          nop
00B7: 00          nop
00B8: 00          nop
00B9: 00          nop
00BA: 00          nop
00BB: 00          nop
00BC: 00          nop
00BD: 00          nop
00BE: 00          nop
00BF: 00          nop
00C0: 00          nop
00C1: 00          nop
00C2: 00          nop
00C3: 00          nop
00C4: 00          nop
00C5: 00          nop
00C6: 00          nop
00C7: 00          nop
00C8: 00          nop
00C9: 00          nop
00CA: 00          nop
00CB: 00          nop
00CC: 00          nop
00CD: 00          nop
00CE: 00          nop
00CF: 00          nop
00D0: 00          nop
00D1: 00          nop
00D2: 00          nop
00D3: 00          nop
00D4: 00          nop
00D5: 00          nop
00D6: 00          nop
00D7: 00          nop
00D8: 00          nop
00D9: 00          nop
00DA: 00          nop
00DB: 00          nop
00DC: 00          nop
00DD: 00          nop
00DE: 00          nop
00DF: 00          nop
00E0: 00          nop
00E1: 00          nop
00E2: 00          nop
00E3: 00          nop
00E4: 00          nop
00E5: 00          nop
00E6: 00          nop
00E7: 00          nop
00E8: 00          nop
00E9: 00          nop
00EA: 00          nop
00EB: 00          nop
00EC: 00          nop
00ED: 00          nop
00EE: 00          nop
00EF: 00          nop
00F0: 00          nop
00F1: 00          nop
00F2: 00          nop
00F3: 00          nop
00F4: 00          nop
00F5: 00          nop
00F6: 00          nop
00F7: 00          nop
00F8: 00          nop
00F9: 00          nop
00FA: 00          nop
00FB: 00          nop
00FC: 00          nop
00FD: 00          nop
00FE: 00          nop
00FF: 00          nop
0100: 00          nop
0101: 00          nop
0102: 00          nop
0103: CD 43 07    call $0743
0106: CD 29 06    call $0629
0109: 3A 30 80    ld   a,($8030)
010C: A7          and  a
010D: C2 EB 01    jp   nz,$01EB
0110: 3A 00 A8    ld   a,($A800)
0113: E6 08       and  $08
0115: C2 23 01    jp   nz,$0123
0118: 3A 00 A8    ld   a,($A800)
011B: E6 04       and  $04
011D: C2 5B 01    jp   nz,$015B
0120: C3 EB 01    jp   $01EB
0123: 3A 23 80    ld   a,($8023)
0126: FE 02       cp   $02
0128: DA 18 01    jp   c,$0118
012B: 3E 02       ld   a,$02
012D: 32 30 80    ld   ($8030),a
0130: 3A 23 80    ld   a,($8023)
0133: D6 02       sub  $02
0135: 27          daa
0136: 32 23 80    ld   ($8023),a
0139: 3E 01       ld   a,$01
013B: 32 3C 80    ld   ($803C),a
013E: 3A 26 80    ld   a,($8026)
0141: A7          and  a
0142: C2 50 01    jp   nz,$0150
0145: 3E 03       ld   a,$03
0147: 32 00 82    ld   ($8200),a
014A: 32 00 83    ld   ($8300),a
014D: C3 93 01    jp   $0193
0150: 3E 05       ld   a,$05
0152: 32 00 82    ld   ($8200),a
0155: 32 00 83    ld   ($8300),a
0158: C3 93 01    jp   $0193
015B: 3A 23 80    ld   a,($8023)
015E: A7          and  a
015F: CA EB 01    jp   z,$01EB
0162: 3E 01       ld   a,$01
0164: 32 30 80    ld   ($8030),a
0167: 3A 23 80    ld   a,($8023)
016A: D6 01       sub  $01
016C: 27          daa
016D: 32 23 80    ld   ($8023),a
0170: 3E 00       ld   a,$00
0172: 32 3C 80    ld   ($803C),a
0175: 3A 26 80    ld   a,($8026)
0178: A7          and  a
0179: C2 89 01    jp   nz,$0189
017C: 3E 03       ld   a,$03
017E: 32 00 82    ld   ($8200),a
0181: 3E 00       ld   a,$00
0183: 32 00 83    ld   ($8300),a
0186: C3 93 01    jp   $0193
0189: 3E 05       ld   a,$05
018B: 32 00 82    ld   ($8200),a
018E: 3E 00       ld   a,$00
0190: 32 00 83    ld   ($8300),a
0193: 3E 00       ld   a,$00
0195: 21 00 81    ld   hl,$8100
0198: 06 03       ld   b,$03
019A: 77          ld   (hl),a
019B: 2C          inc  l
019C: C2 9A 01    jp   nz,$019A
019F: 24          inc  h
01A0: 2C          inc  l
01A1: 10 F7       djnz $019A
01A3: 3E 00       ld   a,$00
01A5: 32 31 80    ld   ($8031),a
01A8: 32 32 80    ld   ($8032),a
01AB: 32 33 80    ld   ($8033),a
01AE: 32 34 80    ld   ($8034),a
01B1: 32 35 80    ld   ($8035),a
01B4: 32 36 80    ld   ($8036),a
01B7: 32 3A 80    ld   ($803A),a
01BA: 3E F0       ld   a,$F0
01BC: 32 3D 80    ld   ($803D),a
01BF: 21 40 80    ld   hl,$8040
01C2: 3E 00       ld   a,$00
01C4: 06 0A       ld   b,$0A
01C6: 77          ld   (hl),a
01C7: 23          inc  hl
01C8: 10 FC       djnz $01C6
01CA: 00          nop
01CB: 06 01       ld   b,$01
01CD: CD BC 07    call $07BC
01D0: 3E 01       ld   a,$01
01D2: 32 03 B0    ld   ($B003),a
01D5: 3E E0       ld   a,$E0
01D7: 32 00 B8    ld   ($watchdog),a
01DA: 3E 01       ld   a,$01
01DC: 32 38 80    ld   ($8038),a
01DF: 3A 39 80    ld   a,($8039)
01E2: CB E7       set  4,a
01E4: 32 39 80    ld   ($8039),a
01E7: 00          nop
01E8: 00          nop
01E9: 00          nop
01EA: 00          nop
01EB: 3A 39 80    ld   a,($8039)
01EE: A7          and  a
01EF: C0          ret  nz
01F0: 3A 30 80    ld   a,($8030)
01F3: A7          and  a
01F4: C2 C7 02    jp   nz,$02C7
01F7: 3A 23 80    ld   a,($8023)
01FA: A7          and  a
01FB: C2 08 02    jp   nz,$0208
01FE: 3A 3B 80    ld   a,($803B)
0201: A7          and  a
0202: C2 42 02    jp   nz,$0242
0205: C3 88 02    jp   $0288
0208: FE 02       cp   $02
020A: D2 1B 02    jp   nc,$021B
020D: 3A 3B 80    ld   a,($803B)
0210: FE 02       cp   $02
0212: C8          ret  z
0213: 3E 01       ld   a,$01
0215: 32 39 80    ld   ($8039),a
0218: C3 29 02    jp   $0229
021B: 3A 3B 80    ld   a,($803B)
021E: FE 03       cp   $03
0220: C8          ret  z
0221: 3E 02       ld   a,$02
0223: 32 39 80    ld   ($8039),a
0226: C3 29 02    jp   $0229
0229: 21 00 81    ld   hl,$8100
022C: 3E 00       ld   a,$00
022E: 06 03       ld   b,$03
0230: 77          ld   (hl),a
0231: 2C          inc  l
0232: C2 30 02    jp   nz,$0230
0235: 24          inc  h
0236: 10 F8       djnz $0230
0238: 21 68 80    ld   hl,$8068
023B: 06 06       ld   b,$06
023D: 77          ld   (hl),a
023E: 23          inc  hl
023F: 10 FC       djnz $023D
0241: C9          ret
0242: 3A 33 80    ld   a,($8033)
0245: A7          and  a
0246: CA 5E 02    jp   z,$025E
0249: 3A 3B 80    ld   a,($803B)
024C: FE 01       cp   $01
024E: CA 75 02    jp   z,$0275
0251: FE 06       cp   $06
0253: CA 99 02    jp   z,$0299
0256: FE 07       cp   $07
0258: CA 88 02    jp   z,$0288
025B: C3 88 02    jp   $0288
025E: 3A 32 80    ld   a,($8032)
0261: A7          and  a
0262: CA AA 02    jp   z,$02AA
0265: 3A 3B 80    ld   a,($803B)
0268: FE 06       cp   $06
026A: CA 99 02    jp   z,$0299
026D: FE 07       cp   $07
026F: CA 88 02    jp   z,$0288
0272: C3 88 02    jp   $0288
0275: 3E 00       ld   a,$00
0277: 32 33 80    ld   ($8033),a
027A: 32 32 80    ld   ($8032),a
027D: 3A 39 80    ld   a,($8039)
0280: CB EF       set  5,a
0282: 32 39 80    ld   ($8039),a
0285: C3 29 02    jp   $0229
0288: 3E 00       ld   a,$00
028A: 32 33 80    ld   ($8033),a
028D: 32 32 80    ld   ($8032),a
0290: 3A 39 80    ld   a,($8039)
0293: CB FF       set  7,a
0295: 32 39 80    ld   ($8039),a
0298: C9          ret
0299: 3E 00       ld   a,$00
029B: 32 33 80    ld   ($8033),a
029E: 32 32 80    ld   ($8032),a
02A1: 3A 39 80    ld   a,($8039)
02A4: CB F7       set  6,a
02A6: 32 39 80    ld   ($8039),a
02A9: C9          ret
02AA: 3A 3B 80    ld   a,($803B)
02AD: FE 01       cp   $01
02AF: CA 94 46    jp   z,$4694
02B2: FE 06       cp   $06
02B4: CA BF 02    jp   z,$02BF
02B7: FE 07       cp   $07
02B9: CA C3 02    jp   z,$02C3
02BC: C3 88 02    jp   $0288
02BF: CD 91 23    call $2391
02C2: C9          ret
02C3: CD 68 24    call $2468
02C6: C9          ret
02C7: CD 38 06    call $0638
02CA: 3A 33 80    ld   a,($8033)
02CD: A7          and  a
02CE: C2 98 03    jp   nz,$0398
02D1: 3A 32 80    ld   a,($8032)
02D4: A7          and  a
02D5: C2 E0 04    jp   nz,$04E0
02D8: 3A 3B 80    ld   a,($803B)
02DB: FE 04       cp   $04
02DD: CA F5 02    jp   z,$02F5
02E0: FE 05       cp   $05
02E2: CA 6D 03    jp   z,$036D
02E5: FE 06       cp   $06
02E7: CA 91 23    jp   z,$2391
02EA: FE 07       cp   $07
02EC: CA 68 24    jp   z,$2468
02EF: FE 08       cp   $08
02F1: CA 56 45    jp   z,$4556
02F4: C9          ret
02F5: 3A 3D 80    ld   a,($803D)
02F8: 3D          dec  a
02F9: 32 3D 80    ld   ($803D),a
02FC: FE 7E       cp   $7E
02FE: C2 08 03    jp   nz,$0308
0301: 08          ex   af,af'
0302: 3E A0       ld   a,$A0
0304: 32 00 B8    ld   ($watchdog),a
0307: 08          ex   af,af'
0308: FE 77       cp   $77
030A: C2 14 03    jp   nz,$0314
030D: 08          ex   af,af'
030E: 3E E0       ld   a,$E0
0310: 32 00 B8    ld   ($watchdog),a
0313: 08          ex   af,af'
0314: A7          and  a
0315: CA 19 03    jp   z,$0319
0318: C9          ret
0319: 3A 30 80    ld   a,($8030)
031C: FE 02       cp   $02
031E: CA 32 03    jp   z,$0332
0321: 3E 00       ld   a,$00
0323: 32 30 80    ld   ($8030),a
0326: 32 3B 80    ld   ($803B),a
0329: 3A 39 80    ld   a,($8039)
032C: CB D7       set  2,a
032E: 32 39 80    ld   ($8039),a
0331: C9          ret
0332: 3A 31 80    ld   a,($8031)
0335: A7          and  a
0336: C2 53 03    jp   nz,$0353
0339: 3E 01       ld   a,$01
033B: 32 34 80    ld   ($8034),a
033E: 3A 35 80    ld   a,($8035)
0341: A7          and  a
0342: C2 21 03    jp   nz,$0321
0345: 3E 01       ld   a,$01
0347: 32 31 80    ld   ($8031),a
034A: 3A 39 80    ld   a,($8039)
034D: CB E7       set  4,a
034F: 32 39 80    ld   ($8039),a
0352: C9          ret
0353: 3E 01       ld   a,$01
0355: 32 35 80    ld   ($8035),a
0358: 3A 34 80    ld   a,($8034)
035B: A7          and  a
035C: C2 21 03    jp   nz,$0321
035F: 3E 00       ld   a,$00
0361: 32 31 80    ld   ($8031),a
0364: 3A 39 80    ld   a,($8039)
0367: CB E7       set  4,a
0369: 32 39 80    ld   ($8039),a
036C: C9          ret
036D: 3A 3D 80    ld   a,($803D)
0370: 3D          dec  a
0371: 32 3D 80    ld   ($803D),a
0374: FE 3E       cp   $3E
0376: CA 83 03    jp   z,$0383
0379: FE 37       cp   $37
037B: CA 89 03    jp   z,$0389
037E: A7          and  a
037F: CA 8F 03    jp   z,$038F
0382: C9          ret
0383: 3E A0       ld   a,$A0
0385: 32 00 B8    ld   ($watchdog),a
0388: C9          ret
0389: 3E E0       ld   a,$E0
038B: 32 00 B8    ld   ($watchdog),a
038E: C9          ret
038F: 3A 39 80    ld   a,($8039)
0392: CB EF       set  5,a
0394: 32 39 80    ld   ($8039),a
0397: C9          ret
0398: 3A 3B 80    ld   a,($803B)
039B: FE 06       cp   $06
039D: CA B5 03    jp   z,$03B5
03A0: FE 07       cp   $07
03A2: CA AB 03    jp   z,$03AB
03A5: FE 08       cp   $08
03A7: CA AB 03    jp   z,$03AB
03AA: C9          ret
03AB: 3A 31 80    ld   a,($8031)
03AE: A7          and  a
03AF: CA C1 04    jp   z,$04C1
03B2: C3 8B 04    jp   $048B
03B5: 3A 3C 80    ld   a,($803C)
03B8: A7          and  a
03B9: C2 1D 04    jp   nz,$041D
03BC: 21 00 81    ld   hl,$8100
03BF: 3E 00       ld   a,$00
03C1: BE          cp   (hl)
03C2: CA E9 03    jp   z,$03E9
03C5: 35          dec  (hl)
03C6: 21 00 81    ld   hl,$8100
03C9: 11 00 82    ld   de,$8200
03CC: 01 FF 00    ld   bc,$00FF
03CF: ED B0       ldir
03D1: 3A 00 81    ld   a,($8100)
03D4: A7          and  a
03D5: CA E9 03    jp   z,$03E9
03D8: 3E 00       ld   a,$00
03DA: 32 33 80    ld   ($8033),a
03DD: 32 32 80    ld   ($8032),a
03E0: 3A 39 80    ld   a,($8039)
03E3: CB E7       set  4,a
03E5: 32 39 80    ld   ($8039),a
03E8: C9          ret
03E9: 32 03 B0    ld   ($B003),a
03EC: 32 06 B0    ld   ($B006),a
03EF: 32 07 B0    ld   ($B007),a
03F2: 3E 01       ld   a,$01
03F4: 32 34 80    ld   ($8034),a
03F7: 32 35 80    ld   ($8035),a
03FA: 21 00 81    ld   hl,$8100
03FD: 06 84       ld   b,$84
03FF: 3E 00       ld   a,$00
0401: 77          ld   (hl),a
0402: 2C          inc  l
0403: C2 01 04    jp   nz,$0401
0406: 24          inc  h
0407: 78          ld   a,b
0408: BC          cp   h
0409: C2 FF 03    jp   nz,$03FF
040C: 3E 00       ld   a,$00
040E: 32 33 80    ld   ($8033),a
0411: 32 32 80    ld   ($8032),a
0414: 3A 39 80    ld   a,($8039)
0417: CB DF       set  3,a
0419: 32 39 80    ld   ($8039),a
041C: C9          ret
041D: 21 00 81    ld   hl,$8100
0420: 3E 00       ld   a,$00
0422: BE          cp   (hl)
0423: CA 27 04    jp   z,$0427
0426: 35          dec  (hl)
0427: 3A 31 80    ld   a,($8031)
042A: A7          and  a
042B: CA 3C 04    jp   z,$043C
042E: 21 00 81    ld   hl,$8100
0431: 11 00 83    ld   de,$8300
0434: 01 FF 00    ld   bc,$00FF
0437: ED B0       ldir
0439: C3 47 04    jp   $0447
043C: 21 00 81    ld   hl,$8100
043F: 11 00 82    ld   de,$8200
0442: 01 FF 00    ld   bc,$00FF
0445: ED B0       ldir
0447: 3A 00 81    ld   a,($8100)
044A: A7          and  a
044B: C2 73 04    jp   nz,$0473
044E: 3A 31 80    ld   a,($8031)
0451: A7          and  a
0452: CA 5D 04    jp   z,$045D
0455: 3E 01       ld   a,$01
0457: 32 35 80    ld   ($8035),a
045A: C3 62 04    jp   $0462
045D: 3E 01       ld   a,$01
045F: 32 34 80    ld   ($8034),a
0462: 3E 00       ld   a,$00
0464: 32 33 80    ld   ($8033),a
0467: 32 32 80    ld   ($8032),a
046A: 3A 39 80    ld   a,($8039)
046D: CB DF       set  3,a
046F: 32 39 80    ld   ($8039),a
0472: C9          ret
0473: 3A 31 80    ld   a,($8031)
0476: A7          and  a
0477: CA 84 04    jp   z,$0484
047A: 3A 00 82    ld   a,($8200)
047D: A7          and  a
047E: C2 C1 04    jp   nz,$04C1
0481: C3 8B 04    jp   $048B
0484: 3A 00 83    ld   a,($8300)
0487: A7          and  a
0488: CA C1 04    jp   z,$04C1
048B: 3A 27 80    ld   a,($8027)
048E: A7          and  a
048F: C2 A0 04    jp   nz,$04A0
0492: 3E 00       ld   a,$00
0494: 32 36 80    ld   ($8036),a
0497: 32 06 B0    ld   ($B006),a
049A: 32 07 B0    ld   ($B007),a
049D: C3 AB 04    jp   $04AB
04A0: 3E 01       ld   a,$01
04A2: 32 36 80    ld   ($8036),a
04A5: 32 06 B0    ld   ($B006),a
04A8: 32 07 B0    ld   ($B007),a
04AB: 3E 00       ld   a,$00
04AD: 32 33 80    ld   ($8033),a
04B0: 32 32 80    ld   ($8032),a
04B3: 3E 01       ld   a,$01
04B5: 32 31 80    ld   ($8031),a
04B8: 3A 39 80    ld   a,($8039)
04BB: CB E7       set  4,a
04BD: 32 39 80    ld   ($8039),a
04C0: C9          ret
04C1: 3E 00       ld   a,$00
04C3: 32 33 80    ld   ($8033),a
04C6: 32 32 80    ld   ($8032),a
04C9: 3E 00       ld   a,$00
04CB: 32 36 80    ld   ($8036),a
04CE: 32 06 B0    ld   ($B006),a
04D1: 32 07 B0    ld   ($B007),a
04D4: 32 31 80    ld   ($8031),a
04D7: 3A 39 80    ld   a,($8039)
04DA: CB E7       set  4,a
04DC: 32 39 80    ld   ($8039),a
04DF: C9          ret
04E0: 3A 3B 80    ld   a,($803B)
04E3: FE 06       cp   $06
04E5: CA 04 05    jp   z,$0504
04E8: FE 07       cp   $07
04EA: CA EE 04    jp   z,$04EE
04ED: C9          ret
04EE: 3E 00       ld   a,$00
04F0: 32 32 80    ld   ($8032),a
04F3: 32 33 80    ld   ($8033),a
04F6: 3E 08       ld   a,$08
04F8: 32 3B 80    ld   ($803B),a
04FB: 3A 39 80    ld   a,($8039)
04FE: CB D7       set  2,a
0500: 32 39 80    ld   ($8039),a
0503: C9          ret
0504: 3A 01 81    ld   a,($8101)
0507: C6 01       add  a,$01
0509: 27          daa
050A: 32 01 81    ld   ($8101),a
050D: 21 03 81    ld   hl,$8103
0510: 3E 00       ld   a,$00
0512: 06 FC       ld   b,$FC
0514: 77          ld   (hl),a
0515: 2C          inc  l
0516: 10 FC       djnz $0514
0518: 3A 31 80    ld   a,($8031)
051B: A7          and  a
051C: CA 2D 05    jp   z,$052D
051F: 21 00 81    ld   hl,$8100
0522: 11 00 83    ld   de,$8300
0525: 01 FF 00    ld   bc,$00FF
0528: ED B0       ldir
052A: C3 38 05    jp   $0538
052D: 21 00 81    ld   hl,$8100
0530: 11 00 82    ld   de,$8200
0533: 01 FF 00    ld   bc,$00FF
0536: ED B0       ldir
0538: 3E 00       ld   a,$00
053A: 32 32 80    ld   ($8032),a
053D: 32 33 80    ld   ($8033),a
0540: 3A 39 80    ld   a,($8039)
0543: CB F7       set  6,a
0545: 32 39 80    ld   ($8039),a
0548: C9          ret
0549: 00          nop
054A: 00          nop
054B: 00          nop
054C: 00          nop
054D: 00          nop
054E: 00          nop
054F: 00          nop
0550: 00          nop
0551: 00          nop
0552: 00          nop
0553: 00          nop
0554: 00          nop
0555: 00          nop
0556: 00          nop
0557: 00          nop
0558: 00          nop
0559: 00          nop
055A: 00          nop
055B: 00          nop
055C: 00          nop
055D: 00          nop
055E: 00          nop
055F: 00          nop
0560: 00          nop
0561: 00          nop
0562: 00          nop
0563: 00          nop
0564: 00          nop
0565: 00          nop
0566: 00          nop
0567: 00          nop
0568: 00          nop
0569: 00          nop
056A: 00          nop
056B: 00          nop
056C: 00          nop
056D: 00          nop
056E: 00          nop
056F: 00          nop
0570: 00          nop
0571: 00          nop
0572: 00          nop
0573: 00          nop
0574: 00          nop
0575: 00          nop
0576: 00          nop
0577: 00          nop
0578: 00          nop
0579: 00          nop
057A: 00          nop
057B: 00          nop
057C: 00          nop
057D: 00          nop
057E: 00          nop
057F: 00          nop
0580: CD C0 05    call $05C0
0583: CD E2 05    call $05E2
0586: 3A 00 B8    ld   a,($watchdog)
0589: 00          nop
058A: 00          nop
058B: 00          nop
058C: 3E 01       ld   a,$01
058E: 32 00 B0    ld   ($B000),a
0591: 32 02 B0    ld   ($B002),a
0594: 00          nop
0595: 00          nop
0596: 00          nop
0597: C3 D1 1F    jp   $1FD1
059A: 00          nop
059B: 00          nop
059C: 00          nop
059D: 00          nop
059E: 00          nop
059F: 00          nop
05A0: 00          nop
05A1: 00          nop
05A2: 00          nop
05A3: 00          nop
05A4: 00          nop
05A5: 00          nop
05A6: 00          nop
05A7: 00          nop
05A8: 00          nop
05A9: 00          nop
05AA: 00          nop
05AB: 00          nop
05AC: 00          nop
05AD: 00          nop
05AE: 00          nop
05AF: 00          nop
05B0: 00          nop
05B1: 00          nop
05B2: 00          nop
05B3: 00          nop
05B4: 00          nop
05B5: 00          nop
05B6: 00          nop
05B7: 00          nop
05B8: 00          nop
05B9: 00          nop
05BA: 00          nop
05BB: 00          nop
05BC: 00          nop
05BD: 00          nop
05BE: 00          nop
05BF: 00          nop
05C0: 21 80 93    ld   hl,$9380
05C3: 11 FA 05    ld   de,$05FA
05C6: 06 1A       ld   b,$1A
05C8: CD 1D 06    call $061D
05CB: 21 5F 91    ld   hl,$915F
05CE: 11 14 06    ld   de,$0614
05D1: 06 09       ld   b,$09
05D3: CD 1D 06    call $061D
05D6: 3E 00       ld   a,$00
05D8: 32 C1 92    ld   ($92C1),a
05DB: 32 61 90    ld   ($9061),a
05DE: 32 81 91    ld   ($9181),a
05E1: C9          ret
05E2: 21 01 94    ld   hl,$9401
05E5: 11 20 00    ld   de,$0020
05E8: 06 20       ld   b,$20
05EA: 3E 82       ld   a,$82
05EC: 77          ld   (hl),a
05ED: 19          add  hl,de
05EE: 10 FC       djnz $05EC
05F0: 21 1F 94    ld   hl,$941F
05F3: 06 10       ld   b,$10
05F5: 77          ld   (hl),a
05F6: 19          add  hl,de
05F7: 10 FC       djnz $05F5
05F9: C9          ret
05FA: 1C          inc  e
05FB: 0C          inc  c
05FC: 18 1B       jr   $0619
05FE: 0E 2E       ld   c,$2E
0600: 01 24 24    ld   bc,$2424
0603: 11 12 2E    ld   de,$2E12
0606: 1C          inc  e
0607: 0C          inc  c
0608: 18 1B       jr   $0625
060A: 0E 24       ld   c,$24
060C: 24          inc  h
060D: 1C          inc  e
060E: 0C          inc  c
060F: 18 1B       jr   $062C
0611: 0E 2E       ld   c,$2E
0613: 02          ld   (bc),a
0614: 0C          inc  c
0615: 1B          dec  de
0616: 0E 0D       ld   c,$0D
0618: 12          ld   (de),a
0619: 1D          dec  e
061A: 2E 00       ld   l,$00
061C: 24          inc  h
061D: 1A          ld   a,(de)
061E: 77          ld   (hl),a
061F: D5          push de
0620: 11 E0 FF    ld   de,$FFE0
0623: 19          add  hl,de
0624: D1          pop  de
0625: 13          inc  de
0626: 10 F5       djnz $061D
0628: C9          ret
0629: 00          nop
062A: 00          nop
062B: 00          nop
062C: 21 00 80    ld   hl,$8000
062F: 11 40 98    ld   de,$9840
0632: 01 20 00    ld   bc,$0020
0635: ED B0       ldir
0637: C9          ret
0638: 00          nop
0639: 00          nop
063A: 00          nop
063B: 3A 40 80    ld   a,($8040)
063E: A7          and  a
063F: C8          ret  z
0640: AF          xor  a
0641: 32 40 80    ld   ($8040),a
0644: 3A 31 80    ld   a,($8031)
0647: A7          and  a
0648: C2 53 06    jp   nz,$0653
064B: 21 44 80    ld   hl,$8044
064E: 0E 00       ld   c,$00
0650: C3 58 06    jp   $0658
0653: 21 47 80    ld   hl,$8047
0656: 0E 01       ld   c,$01
0658: 11 41 80    ld   de,$8041
065B: 06 03       ld   b,$03
065D: AF          xor  a
065E: 1A          ld   a,(de)
065F: 8E          adc  a,(hl)
0660: 27          daa
0661: 77          ld   (hl),a
0662: 13          inc  de
0663: 23          inc  hl
0664: 10 F8       djnz $065E
0666: C5          push bc
0667: D5          push de
0668: 3A 02 81    ld   a,($8102)
066B: A7          and  a
066C: C2 8A 06    jp   nz,$068A
066F: 3A 28 80    ld   a,($8028)
0672: A7          and  a
0673: C2 80 06    jp   nz,$0680
0676: 2B          dec  hl
0677: 7E          ld   a,(hl)
0678: FE 01       cp   $01
067A: DA BD 06    jp   c,$06BD
067D: C3 AA 06    jp   $06AA
0680: 2B          dec  hl
0681: 7E          ld   a,(hl)
0682: FE 02       cp   $02
0684: DA BD 06    jp   c,$06BD
0687: C3 AA 06    jp   $06AA
068A: FE 01       cp   $01
068C: C2 BD 06    jp   nz,$06BD
068F: 3A 28 80    ld   a,($8028)
0692: A7          and  a
0693: C2 A0 06    jp   nz,$06A0
0696: 2B          dec  hl
0697: 7E          ld   a,(hl)
0698: FE 05       cp   $05
069A: DA BD 06    jp   c,$06BD
069D: C3 AA 06    jp   $06AA
06A0: 2B          dec  hl
06A1: 7E          ld   a,(hl)
06A2: FE 10       cp   $10
06A4: DA BD 06    jp   c,$06BD
06A7: C3 AA 06    jp   $06AA
06AA: 3A 00 81    ld   a,($8100)
06AD: C6 01       add  a,$01
06AF: 32 00 81    ld   ($8100),a
06B2: 3A 02 81    ld   a,($8102)
06B5: C6 01       add  a,$01
06B7: 32 02 81    ld   ($8102),a
06BA: CD 2E 23    call $232E
06BD: D1          pop  de
06BE: C1          pop  bc
06BF: 1B          dec  de
06C0: 3E 00       ld   a,$00
06C2: 12          ld   (de),a
06C3: 1B          dec  de
06C4: 12          ld   (de),a
06C5: 1B          dec  de
06C6: 12          ld   (de),a
06C7: 00          nop
06C8: C3 EF 06    jp   $06EF
06CB: 61          ld   h,c
06CC: 93          sub  e
06CD: 41          ld   b,c
06CE: 93          sub  e
06CF: 21 93 01    ld   hl,$0193
06D2: 93          sub  e
06D3: E1          pop  hl
06D4: 92          sub  d
06D5: C1          pop  bc
06D6: 92          sub  d
06D7: 01 91 E1    ld   bc,$E191
06DA: 90          sub  b
06DB: C1          pop  bc
06DC: 90          sub  b
06DD: A1          and  c
06DE: 90          sub  b
06DF: 81          add  a,c
06E0: 90          sub  b
06E1: 61          ld   h,c
06E2: 90          sub  b
06E3: 21 92 01    ld   hl,$0192
06E6: 92          sub  d
06E7: E1          pop  hl
06E8: 91          sub  c
06E9: C1          pop  bc
06EA: 91          sub  c
06EB: A1          and  c
06EC: 91          sub  c
06ED: 81          add  a,c
06EE: 91          sub  c
06EF: 79          ld   a,c
06F0: A7          and  a
06F1: C2 FF 06    jp   nz,$06FF
06F4: DD 21 46 80 ld   ix,$8046
06F8: 21 CB 06    ld   hl,$06CB
06FB: CD 0A 07    call $070A
06FE: C9          ret
06FF: DD 21 49 80 ld   ix,$8049
0703: 21 D7 06    ld   hl,$06D7
0706: CD 0A 07    call $070A
0709: C9          ret
070A: 06 03       ld   b,$03
070C: 08          ex   af,af'
070D: 3E 06       ld   a,$06
070F: 08          ex   af,af'
0710: DD 7E 00    ld   a,(ix+$00)
0713: 4F          ld   c,a
0714: 0F          rrca
0715: 0F          rrca
0716: 0F          rrca
0717: 0F          rrca
0718: CD 24 07    call $0724
071B: 79          ld   a,c
071C: CD 24 07    call $0724
071F: DD 2B       dec  ix
0721: 10 ED       djnz $0710
0723: C9          ret
0724: 5E          ld   e,(hl)
0725: 23          inc  hl
0726: 56          ld   d,(hl)
0727: 23          inc  hl
0728: E6 0F       and  $0F
072A: A7          and  a
072B: CA 34 07    jp   z,$0734
072E: 12          ld   (de),a
072F: 08          ex   af,af'
0730: 3E 01       ld   a,$01
0732: 08          ex   af,af'
0733: C9          ret
0734: 08          ex   af,af'
0735: FE 01       cp   $01
0737: C2 3D 07    jp   nz,$073D
073A: 08          ex   af,af'
073B: 12          ld   (de),a
073C: C9          ret
073D: 3D          dec  a
073E: 08          ex   af,af'
073F: 3E 24       ld   a,$24
0741: 12          ld   (de),a
0742: C9          ret
0743: FD 21 20 80 ld   iy,$8020
0747: 3A 00 A8    ld   a,($A800)
074A: FD 77 01    ld   (iy+$01),a
074D: 4F          ld   c,a
074E: 06 00       ld   b,$00
0750: E6 01       and  $01
0752: CA 5B 07    jp   z,$075B
0755: FD 77 09    ld   (iy+$09),a
0758: C3 96 07    jp   $0796
075B: FD 7E 09    ld   a,(iy+$09)
075E: A7          and  a
075F: CA 96 07    jp   z,$0796
0762: FD 36 09 00 ld   (iy+$09),$00
0766: FD 7E 05    ld   a,(iy+$05)
0769: 07          rlca
076A: 5F          ld   e,a
076B: 16 00       ld   d,$00
076D: DD 21 D5 07 ld   ix,$07D5
0771: DD 19       add  ix,de
0773: DD 7E 00    ld   a,(ix+$00)
0776: FD 34 04    inc  (iy+$04)
0779: FD BE 04    cp   (iy+$04)
077C: C2 96 07    jp   nz,$0796
077F: FD 36 04 00 ld   (iy+$04),$00
0783: DD 7E 01    ld   a,(ix+$01)
0786: 04          inc  b
0787: FD 86 03    add  a,(iy+$03)
078A: 27          daa
078B: FE 09       cp   $09
078D: CA E5 07    jp   z,$07E5
0790: D2 E5 07    jp   nc,$07E5
0793: FD 77 03    ld   (iy+$03),a
0796: 79          ld   a,c
0797: E6 02       and  $02
0799: CA A2 07    jp   z,$07A2
079C: FD 77 0A    ld   (iy+$0a),a
079F: C3 BC 07    jp   $07BC
07A2: FD 7E 0A    ld   a,(iy+$0a)
07A5: A7          and  a
07A6: CA BC 07    jp   z,$07BC
07A9: AF          xor  a
07AA: FD 77 0A    ld   (iy+$0a),a
07AD: FD 7E 03    ld   a,(iy+$03)
07B0: FE 09       cp   $09
07B2: D2 E5 07    jp   nc,$07E5
07B5: 04          inc  b
07B6: C6 01       add  a,$01
07B8: 27          daa
07B9: FD 77 03    ld   (iy+$03),a
07BC: 78          ld   a,b
07BD: A7          and  a
07BE: C8          ret  z
07BF: 3A 23 80    ld   a,($8023)
07C2: 47          ld   b,a
07C3: E6 0F       and  $0F
07C5: 32 7F 90    ld   ($907F),a
07C8: 78          ld   a,b
07C9: 0F          rrca
07CA: 0F          rrca
07CB: 0F          rrca
07CC: 0F          rrca
07CD: E6 0F       and  $0F
07CF: 3E 24       ld   a,$24
07D1: 32 5F 90    ld   ($905F),a
07D4: C9          ret
07D5: 02          ld   (bc),a
07D6: 01 01 01    ld   bc,$0101
07D9: 01 02 01    ld   bc,$0102
07DC: 03          inc  bc
07DD: 01 04 01    ld   bc,$0104
07E0: 05          dec  b
07E1: 01 06 01    ld   bc,$0106
07E4: 07          rlca
07E5: FD 36 03 09 ld   (iy+$03),$09
07E9: AF          xor  a
07EA: 32 02 B0    ld   ($B002),a
07ED: 04          inc  b
07EE: C3 BC 07    jp   $07BC
07F1: 3A 00 B8    ld   a,($watchdog)
07F4: 21 00 90    ld   hl,$9000
07F7: 06 04       ld   b,$04
07F9: 3E 24       ld   a,$24
07FB: 77          ld   (hl),a
07FC: 2C          inc  l
07FD: C2 FB 07    jp   nz,$07FB
0800: 3A 00 B8    ld   a,($watchdog)
0803: 24          inc  h
0804: 10 F3       djnz $07F9
0806: 21 00 94    ld   hl,$9400
0809: 06 04       ld   b,$04
080B: 3E 80       ld   a,$80
080D: 77          ld   (hl),a
080E: 2C          inc  l
080F: C2 0D 08    jp   nz,$080D
0812: 3A 00 B8    ld   a,($watchdog)
0815: 24          inc  h
0816: 10 F3       djnz $080B
0818: 21 00 98    ld   hl,$9800
081B: 36 00       ld   (hl),$00
081D: 2C          inc  l
081E: C2 1B 08    jp   nz,$081B
0821: 21 00 B0    ld   hl,$B000
0824: 06 08       ld   b,$08
0826: 36 00       ld   (hl),$00
0828: 2C          inc  l
0829: 10 FB       djnz $0826
082B: 3A 00 B8    ld   a,($watchdog)
082E: 16 00       ld   d,$00
0830: 0E 20       ld   c,$20
0832: 21 00 80    ld   hl,$8000
0835: 06 08       ld   b,$08
0837: 79          ld   a,c
0838: C6 2F       add  a,$2F
083A: 77          ld   (hl),a
083B: 2C          inc  l
083C: 20 FA       jr   nz,$0838
083E: 3C          inc  a
083F: 24          inc  h
0840: 10 F6       djnz $0838
0842: 21 00 80    ld   hl,$8000
0845: 06 08       ld   b,$08
0847: 3A 00 B8    ld   a,($watchdog)
084A: 79          ld   a,c
084B: C6 2F       add  a,$2F
084D: BE          cp   (hl)
084E: C2 DD 08    jp   nz,$08DD
0851: 2C          inc  l
0852: 20 F7       jr   nz,$084B
0854: 3C          inc  a
0855: 24          inc  h
0856: 10 F3       djnz $084B
0858: 3A 00 B8    ld   a,($watchdog)
085B: 0D          dec  c
085C: 20 D4       jr   nz,$0832
085E: 14          inc  d
085F: 0E 20       ld   c,$20
0861: 21 00 90    ld   hl,$9000
0864: 06 04       ld   b,$04
0866: 79          ld   a,c
0867: C6 2F       add  a,$2F
0869: 77          ld   (hl),a
086A: 2C          inc  l
086B: 20 FA       jr   nz,$0867
086D: 3C          inc  a
086E: 24          inc  h
086F: 10 F6       djnz $0867
0871: 3A 00 B8    ld   a,($watchdog)
0874: 21 00 90    ld   hl,$9000
0877: 06 04       ld   b,$04
0879: 79          ld   a,c
087A: C6 2F       add  a,$2F
087C: BE          cp   (hl)
087D: C2 DD 08    jp   nz,$08DD
0880: 2C          inc  l
0881: 20 F7       jr   nz,$087A
0883: 3C          inc  a
0884: 24          inc  h
0885: 10 F3       djnz $087A
0887: 3A 00 B8    ld   a,($watchdog)
088A: 0D          dec  c
088B: 20 D4       jr   nz,$0861
088D: 14          inc  d
088E: 0E 20       ld   c,$20
0890: 21 00 94    ld   hl,$9400
0893: 06 04       ld   b,$04
0895: 79          ld   a,c
0896: C6 2F       add  a,$2F
0898: 77          ld   (hl),a
0899: 2C          inc  l
089A: 20 FA       jr   nz,$0896
089C: 3C          inc  a
089D: 24          inc  h
089E: 10 F6       djnz $0896
08A0: 21 00 94    ld   hl,$9400
08A3: 06 04       ld   b,$04
08A5: 79          ld   a,c
08A6: C6 2F       add  a,$2F
08A8: BE          cp   (hl)
08A9: C2 DD 08    jp   nz,$08DD
08AC: 2C          inc  l
08AD: 20 F7       jr   nz,$08A6
08AF: 3C          inc  a
08B0: 24          inc  h
08B1: 10 F3       djnz $08A6
08B3: 3A 00 B8    ld   a,($watchdog)
08B6: 0D          dec  c
08B7: 20 D7       jr   nz,$0890
08B9: 14          inc  d
08BA: 0E 20       ld   c,$20
08BC: 21 00 98    ld   hl,$9800
08BF: 79          ld   a,c
08C0: C6 2F       add  a,$2F
08C2: 77          ld   (hl),a
08C3: 2C          inc  l
08C4: 20 FA       jr   nz,$08C0
08C6: 21 00 98    ld   hl,$9800
08C9: 79          ld   a,c
08CA: C6 2F       add  a,$2F
08CC: BE          cp   (hl)
08CD: C2 DD 08    jp   nz,$08DD
08D0: 2C          inc  l
08D1: C2 CA 08    jp   nz,$08CA
08D4: 3A 00 B8    ld   a,($watchdog)
08D7: 0D          dec  c
08D8: 20 E2       jr   nz,$08BC
08DA: C3 0E 00    jp   $000E
08DD: 21 05 09    ld   hl,$0905
08E0: 7A          ld   a,d
08E1: A7          and  a
08E2: 28 05       jr   z,$08E9
08E4: 23          inc  hl
08E5: 23          inc  hl
08E6: 3D          dec  a
08E7: 20 FB       jr   nz,$08E4
08E9: 31 FE 87    ld   sp,$87FE
08EC: E5          push hl
08ED: CD 33 09    call $0933
08F0: E1          pop  hl
08F1: 5E          ld   e,(hl)
08F2: 23          inc  hl
08F3: 56          ld   d,(hl)
08F4: 21 50 92    ld   hl,$9250
08F7: 01 E0 FF    ld   bc,$FFE0
08FA: 1A          ld   a,(de)
08FB: FE FF       cp   $FF
08FD: CA 2D 09    jp   z,$092D
0900: 77          ld   (hl),a
0901: 13          inc  de
0902: 09          add  hl,bc
0903: 18 F5       jr   $08FA
0905: 0D          dec  c
0906: 09          add  hl,bc
0907: 15          dec  d
0908: 09          add  hl,bc
0909: 1D          dec  e
090A: 09          add  hl,bc
090B: 25          dec  h
090C: 09          add  hl,bc
090D: 1C          inc  e
090E: 1B          dec  de
090F: 0A          ld   a,(bc)
0910: 16 24       ld   d,$24
0912: 17          rla
0913: 10 FF       djnz $0914
0915: 1F          rra
0916: 1B          dec  de
0917: 0A          ld   a,(bc)
0918: 16 24       ld   d,$24
091A: 17          rla
091B: 10 FF       djnz $091C
091D: 0C          inc  c
091E: 1B          dec  de
091F: 0A          ld   a,(bc)
0920: 16 24       ld   d,$24
0922: 17          rla
0923: 10 FF       djnz $0924
0925: 18 1B       jr   $0942
0927: 0A          ld   a,(bc)
0928: 16 24       ld   d,$24
092A: 17          rla
092B: 10 FF       djnz $092C
092D: 3A 00 B8    ld   a,($watchdog)
0930: C3 2D 09    jp   $092D
0933: 3A 00 B8    ld   a,($watchdog)
0936: 21 00 90    ld   hl,$9000
0939: 06 04       ld   b,$04
093B: 36 24       ld   (hl),$24
093D: 2C          inc  l
093E: 20 FB       jr   nz,$093B
0940: 24          inc  h
0941: 10 F8       djnz $093B
0943: 3A 00 B8    ld   a,($watchdog)
0946: 21 00 94    ld   hl,$9400
0949: 06 04       ld   b,$04
094B: 36 80       ld   (hl),$80
094D: 2C          inc  l
094E: 20 FB       jr   nz,$094B
0950: 24          inc  h
0951: 10 F8       djnz $094B
0953: 3A 00 B8    ld   a,($watchdog)
0956: 21 00 98    ld   hl,$9800
0959: 36 00       ld   (hl),$00
095B: 2C          inc  l
095C: 20 FB       jr   nz,$0959
095E: 3A 00 B8    ld   a,($watchdog)
0961: C9          ret
0962: 00          nop
0963: 00          nop
0964: 00          nop
0965: 21 CE 92    ld   hl,$92CE
0968: 06 0D       ld   b,$0D
096A: 11 A1 09    ld   de,$09A1
096D: CD 95 09    call $0995
0970: 21 CE 96    ld   hl,$96CE
0973: CD 8A 09    call $098A
0976: 21 CF 92    ld   hl,$92CF
0979: 06 0D       ld   b,$0D
097B: 11 AE 09    ld   de,$09AE
097E: CD 95 09    call $0995
0981: 21 CF 96    ld   hl,$96CF
0984: CD 8A 09    call $098A
0987: 00          nop
0988: 00          nop
0989: C9          ret
098A: 11 E0 FF    ld   de,$FFE0
098D: 06 0D       ld   b,$0D
098F: 36 87       ld   (hl),$87
0991: 19          add  hl,de
0992: 10 FB       djnz $098F
0994: C9          ret
0995: C5          push bc
0996: 01 E0 FF    ld   bc,$FFE0
0999: 1A          ld   a,(de)
099A: 77          ld   (hl),a
099B: 09          add  hl,bc
099C: 13          inc  de
099D: C1          pop  bc
099E: 10 F5       djnz $0995
09A0: C9          ret
09A1: 24          inc  h
09A2: 19          add  hl,de
09A3: 15          dec  d
09A4: 0E 0A       ld   c,$0A
09A6: 1C          inc  e
09A7: 0E 24       ld   c,$24
09A9: 19          add  hl,de
09AA: 1B          dec  de
09AB: 0E 1C       ld   c,$1C
09AD: 1C          inc  e
09AE: 24          inc  h
09AF: 1C          inc  e
09B0: 11 18 1D    ld   de,$1D18
09B3: 24          inc  h
09B4: 0B          dec  bc
09B5: 1E 1D       ld   e,$1D
09B7: 1D          dec  e
09B8: 18 17       jr   $09D1
09BA: 24          inc  h
09BB: 00          nop
09BC: 00          nop
09BD: 00          nop
09BE: 21 43 90    ld   hl,$9043
09C1: 06 1C       ld   b,$1C
09C3: 0E 1D       ld   c,$1D
09C5: 11 EF 09    ld   de,$09EF
09C8: CD DC 09    call $09DC
09CB: 21 43 94    ld   hl,$9443
09CE: 06 1C       ld   b,$1C
09D0: 0E 1D       ld   c,$1D
09D2: 11 FF 0C    ld   de,$0CFF
09D5: CD DC 09    call $09DC
09D8: CD 62 09    call $0962
09DB: C9          ret
09DC: C5          push bc
09DD: E5          push hl
09DE: 1A          ld   a,(de)
09DF: 77          ld   (hl),a
09E0: 23          inc  hl
09E1: 13          inc  de
09E2: 10 FA       djnz $09DE
09E4: E1          pop  hl
09E5: 01 20 00    ld   bc,$0020
09E8: 09          add  hl,bc
09E9: C1          pop  bc
09EA: 0D          dec  c
09EB: C2 DC 09    jp   nz,$09DC
09EE: C9          ret
09EF: 24          inc  h
09F0: 24          inc  h
09F1: 24          inc  h
09F2: 24          inc  h
09F3: 24          inc  h
09F4: 24          inc  h
09F5: 24          inc  h
09F6: 24          inc  h
09F7: 24          inc  h
09F8: 24          inc  h
09F9: A1          and  c
09FA: A2          and  d
09FB: A2          and  d
09FC: 24          inc  h
09FD: 00          nop
09FE: 24          inc  h
09FF: 24          inc  h
0A00: 24          inc  h
0A01: 00          nop
0A02: 24          inc  h
0A03: 24          inc  h
0A04: 24          inc  h
0A05: 00          nop
0A06: 24          inc  h
0A07: 24          inc  h
0A08: 24          inc  h
0A09: 00          nop
0A0A: 24          inc  h
0A0B: 24          inc  h
0A0C: 24          inc  h
0A0D: 24          inc  h
0A0E: 24          inc  h
0A0F: 24          inc  h
0A10: 24          inc  h
0A11: 24          inc  h
0A12: 24          inc  h
0A13: 9B          sbc  a,e
0A14: 9C          sbc  a,h
0A15: 9D          sbc  a,l
0A16: A2          and  d
0A17: A2          and  d
0A18: 24          inc  h
0A19: 00          nop
0A1A: 24          inc  h
0A1B: 24          inc  h
0A1C: 24          inc  h
0A1D: 00          nop
0A1E: 24          inc  h
0A1F: 24          inc  h
0A20: 24          inc  h
0A21: 00          nop
0A22: 24          inc  h
0A23: 24          inc  h
0A24: 24          inc  h
0A25: 00          nop
0A26: 24          inc  h
0A27: 24          inc  h
0A28: 24          inc  h
0A29: 24          inc  h
0A2A: 24          inc  h
0A2B: 24          inc  h
0A2C: 24          inc  h
0A2D: 24          inc  h
0A2E: 24          inc  h
0A2F: 9E          sbc  a,(hl)
0A30: 9F          sbc  a,a
0A31: A0          and  b
0A32: A2          and  d
0A33: A2          and  d
0A34: 24          inc  h
0A35: 08          ex   af,af'
0A36: 24          inc  h
0A37: 24          inc  h
0A38: 24          inc  h
0A39: 04          inc  b
0A3A: 24          inc  h
0A3B: 24          inc  h
0A3C: 24          inc  h
0A3D: 06 24       ld   b,$24
0A3F: 24          inc  h
0A40: 24          inc  h
0A41: 02          ld   (bc),a
0A42: 24          inc  h
0A43: 24          inc  h
0A44: 24          inc  h
0A45: 24          inc  h
0A46: 24          inc  h
0A47: 24          inc  h
0A48: 24          inc  h
0A49: 24          inc  h
0A4A: 24          inc  h
0A4B: 9B          sbc  a,e
0A4C: 9C          sbc  a,h
0A4D: 9D          sbc  a,l
0A4E: A2          and  d
0A4F: A2          and  d
0A50: 24          inc  h
0A51: 24          inc  h
0A52: 24          inc  h
0A53: 24          inc  h
0A54: 24          inc  h
0A55: 24          inc  h
0A56: 24          inc  h
0A57: 24          inc  h
0A58: 24          inc  h
0A59: 24          inc  h
0A5A: 24          inc  h
0A5B: 24          inc  h
0A5C: 24          inc  h
0A5D: 24          inc  h
0A5E: 24          inc  h
0A5F: 24          inc  h
0A60: 24          inc  h
0A61: 24          inc  h
0A62: 24          inc  h
0A63: 24          inc  h
0A64: 24          inc  h
0A65: 24          inc  h
0A66: 24          inc  h
0A67: 9E          sbc  a,(hl)
0A68: 9F          sbc  a,a
0A69: A0          and  b
0A6A: A2          and  d
0A6B: A2          and  d
0A6C: 48          ld   c,b
0A6D: 49          ld   c,c
0A6E: 4A          ld   c,d
0A6F: 24          inc  h
0A70: 24          inc  h
0A71: 24          inc  h
0A72: 24          inc  h
0A73: 24          inc  h
0A74: 92          sub  d
0A75: 93          sub  e
0A76: 94          sub  h
0A77: 24          inc  h
0A78: 24          inc  h
0A79: 24          inc  h
0A7A: 24          inc  h
0A7B: 24          inc  h
0A7C: 24          inc  h
0A7D: 24          inc  h
0A7E: 24          inc  h
0A7F: 24          inc  h
0A80: 24          inc  h
0A81: 24          inc  h
0A82: 24          inc  h
0A83: 24          inc  h
0A84: 24          inc  h
0A85: A1          and  c
0A86: A2          and  d
0A87: A2          and  d
0A88: 4B          ld   c,e
0A89: 4C          ld   c,h
0A8A: 4D          ld   c,l
0A8B: 24          inc  h
0A8C: 24          inc  h
0A8D: A7          and  a
0A8E: 24          inc  h
0A8F: 24          inc  h
0A90: 95          sub  l
0A91: 96          sub  (hl)
0A92: 97          sub  a
0A93: 24          inc  h
0A94: 24          inc  h
0A95: A7          and  a
0A96: 24          inc  h
0A97: 24          inc  h
0A98: 24          inc  h
0A99: A4          and  h
0A9A: A6          and  (hl)
0A9B: A6          and  (hl)
0A9C: A6          and  (hl)
0A9D: A6          and  (hl)
0A9E: A6          and  (hl)
0A9F: A6          and  (hl)
0AA0: A6          and  (hl)
0AA1: A6          and  (hl)
0AA2: A2          and  d
0AA3: A2          and  d
0AA4: 4E          ld   c,(hl)
0AA5: 4F          ld   c,a
0AA6: 50          ld   d,b
0AA7: 24          inc  h
0AA8: 24          inc  h
0AA9: 24          inc  h
0AAA: 24          inc  h
0AAB: 24          inc  h
0AAC: 98          sbc  a,b
0AAD: 99          sbc  a,c
0AAE: 9A          sbc  a,d
0AAF: 24          inc  h
0AB0: 24          inc  h
0AB1: 24          inc  h
0AB2: 24          inc  h
0AB3: 24          inc  h
0AB4: A4          and  h
0AB5: A3          and  e
0AB6: A6          and  (hl)
0AB7: A6          and  (hl)
0AB8: A6          and  (hl)
0AB9: A6          and  (hl)
0ABA: A6          and  (hl)
0ABB: A6          and  (hl)
0ABC: A6          and  (hl)
0ABD: A6          and  (hl)
0ABE: A2          and  d
0ABF: A2          and  d
0AC0: 48          ld   c,b
0AC1: 49          ld   c,c
0AC2: 4A          ld   c,d
0AC3: 24          inc  h
0AC4: 48          ld   c,b
0AC5: 49          ld   c,c
0AC6: 4A          ld   c,d
0AC7: 24          inc  h
0AC8: 92          sub  d
0AC9: 93          sub  e
0ACA: 94          sub  h
0ACB: 24          inc  h
0ACC: 92          sub  d
0ACD: 93          sub  e
0ACE: 94          sub  h
0ACF: A4          and  h
0AD0: A3          and  e
0AD1: A3          and  e
0AD2: A6          and  (hl)
0AD3: A8          xor  b
0AD4: A9          xor  c
0AD5: A9          xor  c
0AD6: A9          xor  c
0AD7: AA          xor  d
0AD8: A6          and  (hl)
0AD9: A6          and  (hl)
0ADA: A2          and  d
0ADB: A2          and  d
0ADC: 4B          ld   c,e
0ADD: 4C          ld   c,h
0ADE: 4D          ld   c,l
0ADF: 24          inc  h
0AE0: 4B          ld   c,e
0AE1: 4C          ld   c,h
0AE2: 4D          ld   c,l
0AE3: 24          inc  h
0AE4: 95          sub  l
0AE5: 96          sub  (hl)
0AE6: 97          sub  a
0AE7: 24          inc  h
0AE8: 95          sub  l
0AE9: 96          sub  (hl)
0AEA: 97          sub  a
0AEB: A3          and  e
0AEC: A3          and  e
0AED: A3          and  e
0AEE: A6          and  (hl)
0AEF: AB          xor  e
0AF0: 24          inc  h
0AF1: 24          inc  h
0AF2: 24          inc  h
0AF3: AC          xor  h
0AF4: A6          and  (hl)
0AF5: A6          and  (hl)
0AF6: A2          and  d
0AF7: A2          and  d
0AF8: 4E          ld   c,(hl)
0AF9: 4F          ld   c,a
0AFA: 50          ld   d,b
0AFB: 24          inc  h
0AFC: 4E          ld   c,(hl)
0AFD: 4F          ld   c,a
0AFE: 50          ld   d,b
0AFF: 24          inc  h
0B00: 98          sbc  a,b
0B01: 99          sbc  a,c
0B02: 9A          sbc  a,d
0B03: 24          inc  h
0B04: 98          sbc  a,b
0B05: 99          sbc  a,c
0B06: 9A          sbc  a,d
0B07: A3          and  e
0B08: A3          and  e
0B09: A3          and  e
0B0A: A6          and  (hl)
0B0B: AB          xor  e
0B0C: 24          inc  h
0B0D: 24          inc  h
0B0E: 24          inc  h
0B0F: AC          xor  h
0B10: A6          and  (hl)
0B11: A6          and  (hl)
0B12: A2          and  d
0B13: A2          and  d
0B14: 48          ld   c,b
0B15: 49          ld   c,c
0B16: 4A          ld   c,d
0B17: 24          inc  h
0B18: 48          ld   c,b
0B19: 49          ld   c,c
0B1A: 4A          ld   c,d
0B1B: 24          inc  h
0B1C: 92          sub  d
0B1D: 93          sub  e
0B1E: 94          sub  h
0B1F: 24          inc  h
0B20: 92          sub  d
0B21: 93          sub  e
0B22: 94          sub  h
0B23: A3          and  e
0B24: A3          and  e
0B25: A3          and  e
0B26: A6          and  (hl)
0B27: AB          xor  e
0B28: 24          inc  h
0B29: 24          inc  h
0B2A: 24          inc  h
0B2B: AC          xor  h
0B2C: A6          and  (hl)
0B2D: A6          and  (hl)
0B2E: A2          and  d
0B2F: A2          and  d
0B30: 4B          ld   c,e
0B31: 4C          ld   c,h
0B32: 4D          ld   c,l
0B33: 24          inc  h
0B34: 4B          ld   c,e
0B35: 4C          ld   c,h
0B36: 4D          ld   c,l
0B37: 24          inc  h
0B38: 95          sub  l
0B39: 96          sub  (hl)
0B3A: 97          sub  a
0B3B: 24          inc  h
0B3C: 95          sub  l
0B3D: 96          sub  (hl)
0B3E: 97          sub  a
0B3F: A3          and  e
0B40: A3          and  e
0B41: A3          and  e
0B42: A6          and  (hl)
0B43: AD          xor  l
0B44: AE          xor  (hl)
0B45: AE          xor  (hl)
0B46: AE          xor  (hl)
0B47: AF          xor  a
0B48: A6          and  (hl)
0B49: A6          and  (hl)
0B4A: A2          and  d
0B4B: A2          and  d
0B4C: 4E          ld   c,(hl)
0B4D: 4F          ld   c,a
0B4E: 50          ld   d,b
0B4F: 24          inc  h
0B50: 4E          ld   c,(hl)
0B51: 4F          ld   c,a
0B52: 50          ld   d,b
0B53: 24          inc  h
0B54: 98          sbc  a,b
0B55: 99          sbc  a,c
0B56: 9A          sbc  a,d
0B57: 24          inc  h
0B58: 98          sbc  a,b
0B59: 99          sbc  a,c
0B5A: 9A          sbc  a,d
0B5B: A3          and  e
0B5C: A3          and  e
0B5D: A3          and  e
0B5E: A6          and  (hl)
0B5F: AB          xor  e
0B60: 24          inc  h
0B61: 24          inc  h
0B62: 24          inc  h
0B63: AC          xor  h
0B64: A6          and  (hl)
0B65: A6          and  (hl)
0B66: A2          and  d
0B67: A2          and  d
0B68: 24          inc  h
0B69: 24          inc  h
0B6A: 24          inc  h
0B6B: 24          inc  h
0B6C: 24          inc  h
0B6D: 24          inc  h
0B6E: 24          inc  h
0B6F: 24          inc  h
0B70: 24          inc  h
0B71: 24          inc  h
0B72: 24          inc  h
0B73: 24          inc  h
0B74: 24          inc  h
0B75: 24          inc  h
0B76: 24          inc  h
0B77: A3          and  e
0B78: A3          and  e
0B79: A3          and  e
0B7A: A6          and  (hl)
0B7B: AB          xor  e
0B7C: 24          inc  h
0B7D: 24          inc  h
0B7E: 24          inc  h
0B7F: AC          xor  h
0B80: A6          and  (hl)
0B81: A6          and  (hl)
0B82: A2          and  d
0B83: A2          and  d
0B84: 24          inc  h
0B85: 24          inc  h
0B86: 24          inc  h
0B87: 24          inc  h
0B88: 24          inc  h
0B89: 24          inc  h
0B8A: 24          inc  h
0B8B: 24          inc  h
0B8C: 24          inc  h
0B8D: 24          inc  h
0B8E: 24          inc  h
0B8F: 24          inc  h
0B90: 24          inc  h
0B91: 24          inc  h
0B92: 24          inc  h
0B93: A3          and  e
0B94: A3          and  e
0B95: A3          and  e
0B96: A6          and  (hl)
0B97: AB          xor  e
0B98: 24          inc  h
0B99: 24          inc  h
0B9A: 24          inc  h
0B9B: AC          xor  h
0B9C: A6          and  (hl)
0B9D: A6          and  (hl)
0B9E: A2          and  d
0B9F: A2          and  d
0BA0: 24          inc  h
0BA1: 00          nop
0BA2: 24          inc  h
0BA3: 24          inc  h
0BA4: 24          inc  h
0BA5: 00          nop
0BA6: 24          inc  h
0BA7: 24          inc  h
0BA8: 24          inc  h
0BA9: 00          nop
0BAA: 24          inc  h
0BAB: 24          inc  h
0BAC: 24          inc  h
0BAD: 00          nop
0BAE: 24          inc  h
0BAF: A3          and  e
0BB0: A3          and  e
0BB1: A3          and  e
0BB2: A6          and  (hl)
0BB3: AD          xor  l
0BB4: AE          xor  (hl)
0BB5: AE          xor  (hl)
0BB6: AE          xor  (hl)
0BB7: AF          xor  a
0BB8: A6          and  (hl)
0BB9: A6          and  (hl)
0BBA: A2          and  d
0BBB: A2          and  d
0BBC: 24          inc  h
0BBD: 00          nop
0BBE: 24          inc  h
0BBF: 24          inc  h
0BC0: 24          inc  h
0BC1: 00          nop
0BC2: 24          inc  h
0BC3: 24          inc  h
0BC4: 24          inc  h
0BC5: 00          nop
0BC6: 24          inc  h
0BC7: 24          inc  h
0BC8: 24          inc  h
0BC9: 00          nop
0BCA: 24          inc  h
0BCB: A3          and  e
0BCC: A3          and  e
0BCD: A3          and  e
0BCE: A6          and  (hl)
0BCF: AB          xor  e
0BD0: 24          inc  h
0BD1: 24          inc  h
0BD2: 24          inc  h
0BD3: AC          xor  h
0BD4: A6          and  (hl)
0BD5: A6          and  (hl)
0BD6: A2          and  d
0BD7: A2          and  d
0BD8: 24          inc  h
0BD9: 05          dec  b
0BDA: 24          inc  h
0BDB: 24          inc  h
0BDC: 24          inc  h
0BDD: 08          ex   af,af'
0BDE: 24          inc  h
0BDF: 24          inc  h
0BE0: 24          inc  h
0BE1: 00          nop
0BE2: 24          inc  h
0BE3: 24          inc  h
0BE4: 24          inc  h
0BE5: 05          dec  b
0BE6: 24          inc  h
0BE7: A3          and  e
0BE8: A3          and  e
0BE9: A3          and  e
0BEA: A6          and  (hl)
0BEB: AB          xor  e
0BEC: 24          inc  h
0BED: 24          inc  h
0BEE: 24          inc  h
0BEF: AC          xor  h
0BF0: A6          and  (hl)
0BF1: A6          and  (hl)
0BF2: A2          and  d
0BF3: A2          and  d
0BF4: 24          inc  h
0BF5: 01 24 24    ld   bc,$2424
0BF8: 24          inc  h
0BF9: 24          inc  h
0BFA: 24          inc  h
0BFB: 24          inc  h
0BFC: 24          inc  h
0BFD: 01 24 24    ld   bc,$2424
0C00: 24          inc  h
0C01: 24          inc  h
0C02: 24          inc  h
0C03: A3          and  e
0C04: A3          and  e
0C05: A3          and  e
0C06: A6          and  (hl)
0C07: AB          xor  e
0C08: 24          inc  h
0C09: 24          inc  h
0C0A: 24          inc  h
0C0B: AC          xor  h
0C0C: A6          and  (hl)
0C0D: A6          and  (hl)
0C0E: A2          and  d
0C0F: A2          and  d
0C10: 80          add  a,b
0C11: 81          add  a,c
0C12: 82          add  a,d
0C13: 24          inc  h
0C14: 24          inc  h
0C15: 24          inc  h
0C16: 24          inc  h
0C17: 24          inc  h
0C18: 89          adc  a,c
0C19: 8A          adc  a,d
0C1A: 8B          adc  a,e
0C1B: 24          inc  h
0C1C: 24          inc  h
0C1D: 24          inc  h
0C1E: 24          inc  h
0C1F: A5          and  l
0C20: A3          and  e
0C21: A3          and  e
0C22: A6          and  (hl)
0C23: B0          or   b
0C24: B1          or   c
0C25: B1          or   c
0C26: B1          or   c
0C27: B2          or   d
0C28: A6          and  (hl)
0C29: A6          and  (hl)
0C2A: A2          and  d
0C2B: A2          and  d
0C2C: 83          add  a,e
0C2D: 84          add  a,h
0C2E: 85          add  a,l
0C2F: 24          inc  h
0C30: 24          inc  h
0C31: A7          and  a
0C32: 24          inc  h
0C33: 24          inc  h
0C34: 8C          adc  a,h
0C35: 8D          adc  a,l
0C36: 8E          adc  a,(hl)
0C37: 24          inc  h
0C38: 24          inc  h
0C39: A7          and  a
0C3A: 24          inc  h
0C3B: 24          inc  h
0C3C: A5          and  l
0C3D: A3          and  e
0C3E: A6          and  (hl)
0C3F: A6          and  (hl)
0C40: A6          and  (hl)
0C41: A6          and  (hl)
0C42: A6          and  (hl)
0C43: A6          and  (hl)
0C44: A6          and  (hl)
0C45: A6          and  (hl)
0C46: A2          and  d
0C47: A2          and  d
0C48: 86          add  a,(hl)
0C49: 87          add  a,a
0C4A: 88          adc  a,b
0C4B: 24          inc  h
0C4C: 24          inc  h
0C4D: 24          inc  h
0C4E: 24          inc  h
0C4F: 24          inc  h
0C50: 8F          adc  a,a
0C51: 90          sub  b
0C52: 91          sub  c
0C53: 24          inc  h
0C54: 24          inc  h
0C55: 24          inc  h
0C56: 24          inc  h
0C57: 24          inc  h
0C58: 24          inc  h
0C59: A5          and  l
0C5A: A6          and  (hl)
0C5B: A6          and  (hl)
0C5C: A6          and  (hl)
0C5D: A6          and  (hl)
0C5E: A6          and  (hl)
0C5F: A6          and  (hl)
0C60: A6          and  (hl)
0C61: A6          and  (hl)
0C62: A2          and  d
0C63: A2          and  d
0C64: 80          add  a,b
0C65: 81          add  a,c
0C66: 82          add  a,d
0C67: 24          inc  h
0C68: 80          add  a,b
0C69: 81          add  a,c
0C6A: 82          add  a,d
0C6B: 24          inc  h
0C6C: 89          adc  a,c
0C6D: 8A          adc  a,d
0C6E: 8B          adc  a,e
0C6F: 24          inc  h
0C70: 89          adc  a,c
0C71: 8A          adc  a,d
0C72: 8B          adc  a,e
0C73: 24          inc  h
0C74: 24          inc  h
0C75: 24          inc  h
0C76: 24          inc  h
0C77: 24          inc  h
0C78: 24          inc  h
0C79: 24          inc  h
0C7A: 24          inc  h
0C7B: 9B          sbc  a,e
0C7C: 9C          sbc  a,h
0C7D: 9D          sbc  a,l
0C7E: A2          and  d
0C7F: A2          and  d
0C80: 83          add  a,e
0C81: 84          add  a,h
0C82: 85          add  a,l
0C83: 24          inc  h
0C84: 83          add  a,e
0C85: 84          add  a,h
0C86: 85          add  a,l
0C87: 24          inc  h
0C88: 8C          adc  a,h
0C89: 8D          adc  a,l
0C8A: 8E          adc  a,(hl)
0C8B: 24          inc  h
0C8C: 8C          adc  a,h
0C8D: 8D          adc  a,l
0C8E: 8E          adc  a,(hl)
0C8F: 24          inc  h
0C90: 24          inc  h
0C91: 24          inc  h
0C92: 24          inc  h
0C93: 24          inc  h
0C94: 24          inc  h
0C95: 24          inc  h
0C96: 24          inc  h
0C97: 9E          sbc  a,(hl)
0C98: 9F          sbc  a,a
0C99: A0          and  b
0C9A: A2          and  d
0C9B: A2          and  d
0C9C: 86          add  a,(hl)
0C9D: 87          add  a,a
0C9E: 88          adc  a,b
0C9F: 24          inc  h
0CA0: 86          add  a,(hl)
0CA1: 87          add  a,a
0CA2: 88          adc  a,b
0CA3: 24          inc  h
0CA4: 8F          adc  a,a
0CA5: 90          sub  b
0CA6: 91          sub  c
0CA7: 24          inc  h
0CA8: 8F          adc  a,a
0CA9: 90          sub  b
0CAA: 91          sub  c
0CAB: 24          inc  h
0CAC: 24          inc  h
0CAD: 24          inc  h
0CAE: 24          inc  h
0CAF: 24          inc  h
0CB0: 24          inc  h
0CB1: 24          inc  h
0CB2: 24          inc  h
0CB3: 9B          sbc  a,e
0CB4: 9C          sbc  a,h
0CB5: 9D          sbc  a,l
0CB6: A2          and  d
0CB7: A2          and  d
0CB8: 80          add  a,b
0CB9: 81          add  a,c
0CBA: 82          add  a,d
0CBB: 24          inc  h
0CBC: 80          add  a,b
0CBD: 81          add  a,c
0CBE: 82          add  a,d
0CBF: 24          inc  h
0CC0: 89          adc  a,c
0CC1: 8A          adc  a,d
0CC2: 8B          adc  a,e
0CC3: 24          inc  h
0CC4: 89          adc  a,c
0CC5: 8A          adc  a,d
0CC6: 8B          adc  a,e
0CC7: 24          inc  h
0CC8: 24          inc  h
0CC9: 24          inc  h
0CCA: 24          inc  h
0CCB: 24          inc  h
0CCC: 24          inc  h
0CCD: 24          inc  h
0CCE: 24          inc  h
0CCF: 9E          sbc  a,(hl)
0CD0: 9F          sbc  a,a
0CD1: A0          and  b
0CD2: A2          and  d
0CD3: A2          and  d
0CD4: 83          add  a,e
0CD5: 84          add  a,h
0CD6: 85          add  a,l
0CD7: 24          inc  h
0CD8: 83          add  a,e
0CD9: 84          add  a,h
0CDA: 85          add  a,l
0CDB: 24          inc  h
0CDC: 8C          adc  a,h
0CDD: 8D          adc  a,l
0CDE: 8E          adc  a,(hl)
0CDF: 24          inc  h
0CE0: 8C          adc  a,h
0CE1: 8D          adc  a,l
0CE2: 8E          adc  a,(hl)
0CE3: 24          inc  h
0CE4: 24          inc  h
0CE5: 24          inc  h
0CE6: 24          inc  h
0CE7: 24          inc  h
0CE8: 24          inc  h
0CE9: 24          inc  h
0CEA: 24          inc  h
0CEB: 24          inc  h
0CEC: 24          inc  h
0CED: A1          and  c
0CEE: A2          and  d
0CEF: A2          and  d
0CF0: 86          add  a,(hl)
0CF1: 87          add  a,a
0CF2: 88          adc  a,b
0CF3: 24          inc  h
0CF4: 86          add  a,(hl)
0CF5: 87          add  a,a
0CF6: 88          adc  a,b
0CF7: 24          inc  h
0CF8: 8F          adc  a,a
0CF9: 90          sub  b
0CFA: 91          sub  c
0CFB: 24          inc  h
0CFC: 8F          adc  a,a
0CFD: 90          sub  b
0CFE: 91          sub  c
0CFF: 83          add  a,e
0D00: 83          add  a,e
0D01: 83          add  a,e
0D02: 83          add  a,e
0D03: 83          add  a,e
0D04: 83          add  a,e
0D05: 83          add  a,e
0D06: 83          add  a,e
0D07: 83          add  a,e
0D08: 83          add  a,e
0D09: 81          add  a,c
0D0A: 81          add  a,c
0D0B: 81          add  a,c
0D0C: 80          add  a,b
0D0D: 86          add  a,(hl)
0D0E: 80          add  a,b
0D0F: 80          add  a,b
0D10: 80          add  a,b
0D11: 86          add  a,(hl)
0D12: 80          add  a,b
0D13: 80          add  a,b
0D14: 80          add  a,b
0D15: 86          add  a,(hl)
0D16: 80          add  a,b
0D17: 80          add  a,b
0D18: 80          add  a,b
0D19: 86          add  a,(hl)
0D1A: 80          add  a,b
0D1B: 83          add  a,e
0D1C: 83          add  a,e
0D1D: 83          add  a,e
0D1E: 83          add  a,e
0D1F: 83          add  a,e
0D20: 83          add  a,e
0D21: 83          add  a,e
0D22: 83          add  a,e
0D23: 81          add  a,c
0D24: 81          add  a,c
0D25: 81          add  a,c
0D26: 81          add  a,c
0D27: 81          add  a,c
0D28: 80          add  a,b
0D29: 86          add  a,(hl)
0D2A: 80          add  a,b
0D2B: 80          add  a,b
0D2C: 80          add  a,b
0D2D: 86          add  a,(hl)
0D2E: 80          add  a,b
0D2F: 80          add  a,b
0D30: 80          add  a,b
0D31: 86          add  a,(hl)
0D32: 80          add  a,b
0D33: 80          add  a,b
0D34: 80          add  a,b
0D35: 86          add  a,(hl)
0D36: 80          add  a,b
0D37: 83          add  a,e
0D38: 83          add  a,e
0D39: 83          add  a,e
0D3A: 83          add  a,e
0D3B: 83          add  a,e
0D3C: 83          add  a,e
0D3D: 83          add  a,e
0D3E: 83          add  a,e
0D3F: 81          add  a,c
0D40: 81          add  a,c
0D41: 81          add  a,c
0D42: 81          add  a,c
0D43: 81          add  a,c
0D44: 80          add  a,b
0D45: 86          add  a,(hl)
0D46: 80          add  a,b
0D47: 80          add  a,b
0D48: 80          add  a,b
0D49: 86          add  a,(hl)
0D4A: 80          add  a,b
0D4B: 80          add  a,b
0D4C: 80          add  a,b
0D4D: 86          add  a,(hl)
0D4E: 80          add  a,b
0D4F: 80          add  a,b
0D50: 80          add  a,b
0D51: 86          add  a,(hl)
0D52: 80          add  a,b
0D53: 83          add  a,e
0D54: 83          add  a,e
0D55: 83          add  a,e
0D56: 83          add  a,e
0D57: 83          add  a,e
0D58: 83          add  a,e
0D59: 83          add  a,e
0D5A: 83          add  a,e
0D5B: 81          add  a,c
0D5C: 81          add  a,c
0D5D: 81          add  a,c
0D5E: 81          add  a,c
0D5F: 81          add  a,c
0D60: 80          add  a,b
0D61: 80          add  a,b
0D62: 80          add  a,b
0D63: 80          add  a,b
0D64: 80          add  a,b
0D65: 80          add  a,b
0D66: 80          add  a,b
0D67: 80          add  a,b
0D68: 80          add  a,b
0D69: 80          add  a,b
0D6A: 80          add  a,b
0D6B: 80          add  a,b
0D6C: 80          add  a,b
0D6D: 80          add  a,b
0D6E: 80          add  a,b
0D6F: 83          add  a,e
0D70: 83          add  a,e
0D71: 83          add  a,e
0D72: 83          add  a,e
0D73: 83          add  a,e
0D74: 83          add  a,e
0D75: 83          add  a,e
0D76: 83          add  a,e
0D77: 81          add  a,c
0D78: 81          add  a,c
0D79: 81          add  a,c
0D7A: 81          add  a,c
0D7B: 81          add  a,c
0D7C: 87          add  a,a
0D7D: 87          add  a,a
0D7E: 87          add  a,a
0D7F: 80          add  a,b
0D80: 80          add  a,b
0D81: 80          add  a,b
0D82: 80          add  a,b
0D83: 80          add  a,b
0D84: 86          add  a,(hl)
0D85: 86          add  a,(hl)
0D86: 86          add  a,(hl)
0D87: 80          add  a,b
0D88: 80          add  a,b
0D89: 80          add  a,b
0D8A: 80          add  a,b
0D8B: 83          add  a,e
0D8C: 83          add  a,e
0D8D: 83          add  a,e
0D8E: 83          add  a,e
0D8F: 83          add  a,e
0D90: 83          add  a,e
0D91: 83          add  a,e
0D92: 83          add  a,e
0D93: 83          add  a,e
0D94: 83          add  a,e
0D95: 81          add  a,c
0D96: 81          add  a,c
0D97: 81          add  a,c
0D98: 87          add  a,a
0D99: 87          add  a,a
0D9A: 87          add  a,a
0D9B: 80          add  a,b
0D9C: 80          add  a,b
0D9D: 87          add  a,a
0D9E: 80          add  a,b
0D9F: 80          add  a,b
0DA0: 86          add  a,(hl)
0DA1: 86          add  a,(hl)
0DA2: 86          add  a,(hl)
0DA3: 80          add  a,b
0DA4: 80          add  a,b
0DA5: 87          add  a,a
0DA6: 80          add  a,b
0DA7: 83          add  a,e
0DA8: 83          add  a,e
0DA9: 83          add  a,e
0DAA: 86          add  a,(hl)
0DAB: 86          add  a,(hl)
0DAC: 86          add  a,(hl)
0DAD: 86          add  a,(hl)
0DAE: 86          add  a,(hl)
0DAF: 86          add  a,(hl)
0DB0: 86          add  a,(hl)
0DB1: 86          add  a,(hl)
0DB2: 81          add  a,c
0DB3: 81          add  a,c
0DB4: 87          add  a,a
0DB5: 87          add  a,a
0DB6: 87          add  a,a
0DB7: 80          add  a,b
0DB8: 80          add  a,b
0DB9: 80          add  a,b
0DBA: 80          add  a,b
0DBB: 80          add  a,b
0DBC: 86          add  a,(hl)
0DBD: 86          add  a,(hl)
0DBE: 86          add  a,(hl)
0DBF: 80          add  a,b
0DC0: 80          add  a,b
0DC1: 80          add  a,b
0DC2: 80          add  a,b
0DC3: 83          add  a,e
0DC4: 83          add  a,e
0DC5: 83          add  a,e
0DC6: 86          add  a,(hl)
0DC7: 86          add  a,(hl)
0DC8: 86          add  a,(hl)
0DC9: 86          add  a,(hl)
0DCA: 86          add  a,(hl)
0DCB: 86          add  a,(hl)
0DCC: 86          add  a,(hl)
0DCD: 86          add  a,(hl)
0DCE: 81          add  a,c
0DCF: 81          add  a,c
0DD0: 87          add  a,a
0DD1: 87          add  a,a
0DD2: 87          add  a,a
0DD3: 80          add  a,b
0DD4: 87          add  a,a
0DD5: 87          add  a,a
0DD6: 87          add  a,a
0DD7: 80          add  a,b
0DD8: 86          add  a,(hl)
0DD9: 86          add  a,(hl)
0DDA: 86          add  a,(hl)
0DDB: 80          add  a,b
0DDC: 86          add  a,(hl)
0DDD: 86          add  a,(hl)
0DDE: 86          add  a,(hl)
0DDF: 83          add  a,e
0DE0: 83          add  a,e
0DE1: 83          add  a,e
0DE2: 86          add  a,(hl)
0DE3: 85          add  a,l
0DE4: 85          add  a,l
0DE5: 85          add  a,l
0DE6: 85          add  a,l
0DE7: 85          add  a,l
0DE8: 86          add  a,(hl)
0DE9: 86          add  a,(hl)
0DEA: 81          add  a,c
0DEB: 81          add  a,c
0DEC: 87          add  a,a
0DED: 87          add  a,a
0DEE: 87          add  a,a
0DEF: 80          add  a,b
0DF0: 87          add  a,a
0DF1: 87          add  a,a
0DF2: 87          add  a,a
0DF3: 80          add  a,b
0DF4: 86          add  a,(hl)
0DF5: 86          add  a,(hl)
0DF6: 86          add  a,(hl)
0DF7: 80          add  a,b
0DF8: 86          add  a,(hl)
0DF9: 86          add  a,(hl)
0DFA: 86          add  a,(hl)
0DFB: 83          add  a,e
0DFC: 83          add  a,e
0DFD: 83          add  a,e
0DFE: 86          add  a,(hl)
0DFF: 85          add  a,l
0E00: 80          add  a,b
0E01: 80          add  a,b
0E02: 80          add  a,b
0E03: 85          add  a,l
0E04: 86          add  a,(hl)
0E05: 86          add  a,(hl)
0E06: 81          add  a,c
0E07: 81          add  a,c
0E08: 87          add  a,a
0E09: 87          add  a,a
0E0A: 87          add  a,a
0E0B: 80          add  a,b
0E0C: 87          add  a,a
0E0D: 87          add  a,a
0E0E: 87          add  a,a
0E0F: 80          add  a,b
0E10: 86          add  a,(hl)
0E11: 86          add  a,(hl)
0E12: 86          add  a,(hl)
0E13: 80          add  a,b
0E14: 86          add  a,(hl)
0E15: 86          add  a,(hl)
0E16: 86          add  a,(hl)
0E17: 83          add  a,e
0E18: 83          add  a,e
0E19: 83          add  a,e
0E1A: 86          add  a,(hl)
0E1B: 85          add  a,l
0E1C: 80          add  a,b
0E1D: 80          add  a,b
0E1E: 80          add  a,b
0E1F: 85          add  a,l
0E20: 86          add  a,(hl)
0E21: 86          add  a,(hl)
0E22: 81          add  a,c
0E23: 81          add  a,c
0E24: 87          add  a,a
0E25: 87          add  a,a
0E26: 87          add  a,a
0E27: 80          add  a,b
0E28: 87          add  a,a
0E29: 87          add  a,a
0E2A: 87          add  a,a
0E2B: 80          add  a,b
0E2C: 86          add  a,(hl)
0E2D: 86          add  a,(hl)
0E2E: 86          add  a,(hl)
0E2F: 80          add  a,b
0E30: 86          add  a,(hl)
0E31: 86          add  a,(hl)
0E32: 86          add  a,(hl)
0E33: 83          add  a,e
0E34: 83          add  a,e
0E35: 83          add  a,e
0E36: 86          add  a,(hl)
0E37: 85          add  a,l
0E38: 80          add  a,b
0E39: 80          add  a,b
0E3A: 80          add  a,b
0E3B: 85          add  a,l
0E3C: 86          add  a,(hl)
0E3D: 86          add  a,(hl)
0E3E: 81          add  a,c
0E3F: 81          add  a,c
0E40: 87          add  a,a
0E41: 87          add  a,a
0E42: 87          add  a,a
0E43: 80          add  a,b
0E44: 87          add  a,a
0E45: 87          add  a,a
0E46: 87          add  a,a
0E47: 80          add  a,b
0E48: 86          add  a,(hl)
0E49: 86          add  a,(hl)
0E4A: 86          add  a,(hl)
0E4B: 80          add  a,b
0E4C: 86          add  a,(hl)
0E4D: 86          add  a,(hl)
0E4E: 86          add  a,(hl)
0E4F: 83          add  a,e
0E50: 83          add  a,e
0E51: 83          add  a,e
0E52: 86          add  a,(hl)
0E53: 85          add  a,l
0E54: 85          add  a,l
0E55: 85          add  a,l
0E56: 85          add  a,l
0E57: 85          add  a,l
0E58: 86          add  a,(hl)
0E59: 86          add  a,(hl)
0E5A: 81          add  a,c
0E5B: 81          add  a,c
0E5C: 87          add  a,a
0E5D: 87          add  a,a
0E5E: 87          add  a,a
0E5F: 80          add  a,b
0E60: 87          add  a,a
0E61: 87          add  a,a
0E62: 87          add  a,a
0E63: 80          add  a,b
0E64: 86          add  a,(hl)
0E65: 86          add  a,(hl)
0E66: 86          add  a,(hl)
0E67: 80          add  a,b
0E68: 86          add  a,(hl)
0E69: 86          add  a,(hl)
0E6A: 86          add  a,(hl)
0E6B: 83          add  a,e
0E6C: 83          add  a,e
0E6D: 83          add  a,e
0E6E: 86          add  a,(hl)
0E6F: 85          add  a,l
0E70: 80          add  a,b
0E71: 80          add  a,b
0E72: 80          add  a,b
0E73: 85          add  a,l
0E74: 86          add  a,(hl)
0E75: 86          add  a,(hl)
0E76: 81          add  a,c
0E77: 81          add  a,c
0E78: 80          add  a,b
0E79: 80          add  a,b
0E7A: 80          add  a,b
0E7B: 80          add  a,b
0E7C: 80          add  a,b
0E7D: 80          add  a,b
0E7E: 80          add  a,b
0E7F: 80          add  a,b
0E80: 80          add  a,b
0E81: 80          add  a,b
0E82: 80          add  a,b
0E83: 80          add  a,b
0E84: 80          add  a,b
0E85: 80          add  a,b
0E86: 80          add  a,b
0E87: 83          add  a,e
0E88: 83          add  a,e
0E89: 83          add  a,e
0E8A: 86          add  a,(hl)
0E8B: 85          add  a,l
0E8C: 80          add  a,b
0E8D: 80          add  a,b
0E8E: 80          add  a,b
0E8F: 85          add  a,l
0E90: 86          add  a,(hl)
0E91: 86          add  a,(hl)
0E92: 81          add  a,c
0E93: 81          add  a,c
0E94: 80          add  a,b
0E95: 80          add  a,b
0E96: 80          add  a,b
0E97: 80          add  a,b
0E98: 80          add  a,b
0E99: 80          add  a,b
0E9A: 80          add  a,b
0E9B: 80          add  a,b
0E9C: 80          add  a,b
0E9D: 80          add  a,b
0E9E: 80          add  a,b
0E9F: 80          add  a,b
0EA0: 80          add  a,b
0EA1: 80          add  a,b
0EA2: 80          add  a,b
0EA3: 83          add  a,e
0EA4: 83          add  a,e
0EA5: 83          add  a,e
0EA6: 86          add  a,(hl)
0EA7: 85          add  a,l
0EA8: 80          add  a,b
0EA9: 80          add  a,b
0EAA: 80          add  a,b
0EAB: 85          add  a,l
0EAC: 86          add  a,(hl)
0EAD: 86          add  a,(hl)
0EAE: 81          add  a,c
0EAF: 81          add  a,c
0EB0: 80          add  a,b
0EB1: 86          add  a,(hl)
0EB2: 80          add  a,b
0EB3: 80          add  a,b
0EB4: 80          add  a,b
0EB5: 86          add  a,(hl)
0EB6: 80          add  a,b
0EB7: 80          add  a,b
0EB8: 80          add  a,b
0EB9: 86          add  a,(hl)
0EBA: 80          add  a,b
0EBB: 80          add  a,b
0EBC: 80          add  a,b
0EBD: 86          add  a,(hl)
0EBE: 80          add  a,b
0EBF: 83          add  a,e
0EC0: 83          add  a,e
0EC1: 83          add  a,e
0EC2: 86          add  a,(hl)
0EC3: 85          add  a,l
0EC4: 85          add  a,l
0EC5: 85          add  a,l
0EC6: 85          add  a,l
0EC7: 85          add  a,l
0EC8: 86          add  a,(hl)
0EC9: 86          add  a,(hl)
0ECA: 81          add  a,c
0ECB: 81          add  a,c
0ECC: 80          add  a,b
0ECD: 86          add  a,(hl)
0ECE: 80          add  a,b
0ECF: 80          add  a,b
0ED0: 80          add  a,b
0ED1: 86          add  a,(hl)
0ED2: 80          add  a,b
0ED3: 80          add  a,b
0ED4: 80          add  a,b
0ED5: 86          add  a,(hl)
0ED6: 80          add  a,b
0ED7: 80          add  a,b
0ED8: 80          add  a,b
0ED9: 86          add  a,(hl)
0EDA: 80          add  a,b
0EDB: 83          add  a,e
0EDC: 83          add  a,e
0EDD: 83          add  a,e
0EDE: 86          add  a,(hl)
0EDF: 85          add  a,l
0EE0: 80          add  a,b
0EE1: 80          add  a,b
0EE2: 80          add  a,b
0EE3: 85          add  a,l
0EE4: 86          add  a,(hl)
0EE5: 86          add  a,(hl)
0EE6: 81          add  a,c
0EE7: 81          add  a,c
0EE8: 80          add  a,b
0EE9: 86          add  a,(hl)
0EEA: 80          add  a,b
0EEB: 80          add  a,b
0EEC: 80          add  a,b
0EED: 86          add  a,(hl)
0EEE: 80          add  a,b
0EEF: 80          add  a,b
0EF0: 80          add  a,b
0EF1: 86          add  a,(hl)
0EF2: 80          add  a,b
0EF3: 80          add  a,b
0EF4: 80          add  a,b
0EF5: 86          add  a,(hl)
0EF6: 80          add  a,b
0EF7: 83          add  a,e
0EF8: 83          add  a,e
0EF9: 83          add  a,e
0EFA: 86          add  a,(hl)
0EFB: 85          add  a,l
0EFC: 80          add  a,b
0EFD: 80          add  a,b
0EFE: 80          add  a,b
0EFF: 85          add  a,l
0F00: 86          add  a,(hl)
0F01: 86          add  a,(hl)
0F02: 81          add  a,c
0F03: 81          add  a,c
0F04: 80          add  a,b
0F05: 86          add  a,(hl)
0F06: 80          add  a,b
0F07: 80          add  a,b
0F08: 80          add  a,b
0F09: 80          add  a,b
0F0A: 80          add  a,b
0F0B: 80          add  a,b
0F0C: 80          add  a,b
0F0D: 86          add  a,(hl)
0F0E: 80          add  a,b
0F0F: 80          add  a,b
0F10: 80          add  a,b
0F11: 80          add  a,b
0F12: 80          add  a,b
0F13: 83          add  a,e
0F14: 83          add  a,e
0F15: 83          add  a,e
0F16: 86          add  a,(hl)
0F17: 85          add  a,l
0F18: 80          add  a,b
0F19: 80          add  a,b
0F1A: 80          add  a,b
0F1B: 85          add  a,l
0F1C: 86          add  a,(hl)
0F1D: 86          add  a,(hl)
0F1E: 81          add  a,c
0F1F: 81          add  a,c
0F20: 84          add  a,h
0F21: 84          add  a,h
0F22: 84          add  a,h
0F23: 80          add  a,b
0F24: 80          add  a,b
0F25: 80          add  a,b
0F26: 80          add  a,b
0F27: 80          add  a,b
0F28: 86          add  a,(hl)
0F29: 86          add  a,(hl)
0F2A: 86          add  a,(hl)
0F2B: 80          add  a,b
0F2C: 80          add  a,b
0F2D: 80          add  a,b
0F2E: 80          add  a,b
0F2F: 83          add  a,e
0F30: 83          add  a,e
0F31: 83          add  a,e
0F32: 86          add  a,(hl)
0F33: 85          add  a,l
0F34: 85          add  a,l
0F35: 85          add  a,l
0F36: 85          add  a,l
0F37: 85          add  a,l
0F38: 86          add  a,(hl)
0F39: 86          add  a,(hl)
0F3A: 81          add  a,c
0F3B: 81          add  a,c
0F3C: 84          add  a,h
0F3D: 84          add  a,h
0F3E: 84          add  a,h
0F3F: 80          add  a,b
0F40: 80          add  a,b
0F41: 87          add  a,a
0F42: 80          add  a,b
0F43: 80          add  a,b
0F44: 86          add  a,(hl)
0F45: 86          add  a,(hl)
0F46: 86          add  a,(hl)
0F47: 80          add  a,b
0F48: 80          add  a,b
0F49: 87          add  a,a
0F4A: 80          add  a,b
0F4B: 83          add  a,e
0F4C: 83          add  a,e
0F4D: 83          add  a,e
0F4E: 86          add  a,(hl)
0F4F: 86          add  a,(hl)
0F50: 86          add  a,(hl)
0F51: 86          add  a,(hl)
0F52: 86          add  a,(hl)
0F53: 86          add  a,(hl)
0F54: 86          add  a,(hl)
0F55: 86          add  a,(hl)
0F56: 81          add  a,c
0F57: 81          add  a,c
0F58: 84          add  a,h
0F59: 84          add  a,h
0F5A: 84          add  a,h
0F5B: 80          add  a,b
0F5C: 80          add  a,b
0F5D: 80          add  a,b
0F5E: 80          add  a,b
0F5F: 80          add  a,b
0F60: 86          add  a,(hl)
0F61: 86          add  a,(hl)
0F62: 86          add  a,(hl)
0F63: 80          add  a,b
0F64: 80          add  a,b
0F65: 80          add  a,b
0F66: 80          add  a,b
0F67: 83          add  a,e
0F68: 83          add  a,e
0F69: 83          add  a,e
0F6A: 86          add  a,(hl)
0F6B: 86          add  a,(hl)
0F6C: 86          add  a,(hl)
0F6D: 86          add  a,(hl)
0F6E: 86          add  a,(hl)
0F6F: 86          add  a,(hl)
0F70: 86          add  a,(hl)
0F71: 86          add  a,(hl)
0F72: 81          add  a,c
0F73: 81          add  a,c
0F74: 84          add  a,h
0F75: 84          add  a,h
0F76: 84          add  a,h
0F77: 80          add  a,b
0F78: 84          add  a,h
0F79: 84          add  a,h
0F7A: 84          add  a,h
0F7B: 80          add  a,b
0F7C: 86          add  a,(hl)
0F7D: 86          add  a,(hl)
0F7E: 86          add  a,(hl)
0F7F: 80          add  a,b
0F80: 86          add  a,(hl)
0F81: 86          add  a,(hl)
0F82: 86          add  a,(hl)
0F83: 83          add  a,e
0F84: 83          add  a,e
0F85: 83          add  a,e
0F86: 83          add  a,e
0F87: 83          add  a,e
0F88: 83          add  a,e
0F89: 83          add  a,e
0F8A: 83          add  a,e
0F8B: 81          add  a,c
0F8C: 81          add  a,c
0F8D: 81          add  a,c
0F8E: 81          add  a,c
0F8F: 81          add  a,c
0F90: 84          add  a,h
0F91: 84          add  a,h
0F92: 84          add  a,h
0F93: 80          add  a,b
0F94: 84          add  a,h
0F95: 84          add  a,h
0F96: 84          add  a,h
0F97: 80          add  a,b
0F98: 86          add  a,(hl)
0F99: 86          add  a,(hl)
0F9A: 86          add  a,(hl)
0F9B: 80          add  a,b
0F9C: 86          add  a,(hl)
0F9D: 86          add  a,(hl)
0F9E: 86          add  a,(hl)
0F9F: 83          add  a,e
0FA0: 83          add  a,e
0FA1: 83          add  a,e
0FA2: 83          add  a,e
0FA3: 83          add  a,e
0FA4: 83          add  a,e
0FA5: 83          add  a,e
0FA6: 83          add  a,e
0FA7: 81          add  a,c
0FA8: 81          add  a,c
0FA9: 81          add  a,c
0FAA: 81          add  a,c
0FAB: 81          add  a,c
0FAC: 84          add  a,h
0FAD: 84          add  a,h
0FAE: 84          add  a,h
0FAF: 80          add  a,b
0FB0: 84          add  a,h
0FB1: 84          add  a,h
0FB2: 84          add  a,h
0FB3: 80          add  a,b
0FB4: 86          add  a,(hl)
0FB5: 86          add  a,(hl)
0FB6: 86          add  a,(hl)
0FB7: 80          add  a,b
0FB8: 86          add  a,(hl)
0FB9: 86          add  a,(hl)
0FBA: 86          add  a,(hl)
0FBB: 83          add  a,e
0FBC: 83          add  a,e
0FBD: 83          add  a,e
0FBE: 83          add  a,e
0FBF: 83          add  a,e
0FC0: 83          add  a,e
0FC1: 83          add  a,e
0FC2: 83          add  a,e
0FC3: 81          add  a,c
0FC4: 81          add  a,c
0FC5: 81          add  a,c
0FC6: 81          add  a,c
0FC7: 81          add  a,c
0FC8: 84          add  a,h
0FC9: 84          add  a,h
0FCA: 84          add  a,h
0FCB: 80          add  a,b
0FCC: 84          add  a,h
0FCD: 84          add  a,h
0FCE: 84          add  a,h
0FCF: 80          add  a,b
0FD0: 86          add  a,(hl)
0FD1: 86          add  a,(hl)
0FD2: 86          add  a,(hl)
0FD3: 80          add  a,b
0FD4: 86          add  a,(hl)
0FD5: 86          add  a,(hl)
0FD6: 86          add  a,(hl)
0FD7: 83          add  a,e
0FD8: 83          add  a,e
0FD9: 83          add  a,e
0FDA: 83          add  a,e
0FDB: 83          add  a,e
0FDC: 83          add  a,e
0FDD: 83          add  a,e
0FDE: 83          add  a,e
0FDF: 81          add  a,c
0FE0: 81          add  a,c
0FE1: 81          add  a,c
0FE2: 81          add  a,c
0FE3: 81          add  a,c
0FE4: 84          add  a,h
0FE5: 84          add  a,h
0FE6: 84          add  a,h
0FE7: 80          add  a,b
0FE8: 84          add  a,h
0FE9: 84          add  a,h
0FEA: 84          add  a,h
0FEB: 80          add  a,b
0FEC: 86          add  a,(hl)
0FED: 86          add  a,(hl)
0FEE: 86          add  a,(hl)
0FEF: 80          add  a,b
0FF0: 86          add  a,(hl)
0FF1: 86          add  a,(hl)
0FF2: 86          add  a,(hl)
0FF3: 83          add  a,e
0FF4: 83          add  a,e
0FF5: 83          add  a,e
0FF6: 83          add  a,e
0FF7: 83          add  a,e
0FF8: 83          add  a,e
0FF9: 83          add  a,e
0FFA: 83          add  a,e
0FFB: 83          add  a,e
0FFC: 83          add  a,e
0FFD: 81          add  a,c
0FFE: 81          add  a,c
0FFF: 81          add  a,c
1000: 84          add  a,h
1001: 84          add  a,h
1002: 84          add  a,h
1003: 80          add  a,b
1004: 84          add  a,h
1005: 84          add  a,h
1006: 84          add  a,h
1007: 80          add  a,b
1008: 86          add  a,(hl)
1009: 86          add  a,(hl)
100A: 86          add  a,(hl)
100B: 80          add  a,b
100C: 86          add  a,(hl)
100D: 86          add  a,(hl)
100E: 86          add  a,(hl)
100F: 3A 3E 80    ld   a,($803E)
1012: A7          and  a
1013: C2 38 10    jp   nz,$1038
1016: 3A 1F 84    ld   a,($841F)
1019: FE 02       cp   $02
101B: CA 38 10    jp   z,$1038
101E: 3A 1F 84    ld   a,($841F)
1021: FE 00       cp   $00
1023: CA 38 10    jp   z,$1038
1026: 3A 80 86    ld   a,($8680)
1029: A7          and  a
102A: C2 ED 10    jp   nz,$10ED
102D: 32 83 86    ld   ($8683),a
1030: 3A 7F 86    ld   a,($867F)
1033: A7          and  a
1034: C8          ret  z
1035: C3 46 10    jp   $1046
1038: 21 80 86    ld   hl,$8680
103B: 3E 00       ld   a,$00
103D: 06 10       ld   b,$10
103F: 77          ld   (hl),a
1040: 23          inc  hl
1041: 10 FC       djnz $103F
1043: C3 D6 10    jp   $10D6
1046: 3A C1 85    ld   a,($85C1)
1049: A7          and  a
104A: C0          ret  nz
104B: 3A 01 84    ld   a,($8401)
104E: E6 10       and  $10
1050: C8          ret  z
1051: CD 1B 25    call $251B
1054: 11 E2 FF    ld   de,$FFE2
1057: 19          add  hl,de
1058: 7E          ld   a,(hl)
1059: FE F0       cp   $F0
105B: D8          ret  c
105C: 3A 7F 86    ld   a,($867F)
105F: A7          and  a
1060: C8          ret  z
1061: D6 01       sub  $01
1063: 32 7F 86    ld   ($867F),a
1066: CD 6C 10    call $106C
1069: C3 9E 10    jp   $109E
106C: E5          push hl
106D: D5          push de
106E: C5          push bc
106F: F5          push af
1070: 21 C3 91    ld   hl,$91C3
1073: 3A 7F 86    ld   a,($867F)
1076: 0E 06       ld   c,$06
1078: 11 20 00    ld   de,$0020
107B: A7          and  a
107C: CA 87 10    jp   z,$1087
107F: 47          ld   b,a
1080: 3E 32       ld   a,$32
1082: 77          ld   (hl),a
1083: 19          add  hl,de
1084: 0D          dec  c
1085: 10 FB       djnz $1082
1087: 36 24       ld   (hl),$24
1089: 19          add  hl,de
108A: 0D          dec  c
108B: C2 87 10    jp   nz,$1087
108E: 21 C3 95    ld   hl,$95C3
1091: 3E 86       ld   a,$86
1093: 06 05       ld   b,$05
1095: 77          ld   (hl),a
1096: 19          add  hl,de
1097: 10 FC       djnz $1095
1099: F1          pop  af
109A: C1          pop  bc
109B: D1          pop  de
109C: E1          pop  hl
109D: C9          ret
109E: 3E 00       ld   a,$00
10A0: 32 83 86    ld   ($8683),a
10A3: 32 81 86    ld   ($8681),a
10A6: 32 82 86    ld   ($8682),a
10A9: 32 88 86    ld   ($8688),a
10AC: 32 89 86    ld   ($8689),a
10AF: 32 8A 86    ld   ($868A),a
10B2: 32 8B 86    ld   ($868B),a
10B5: 3E 01       ld   a,$01
10B7: 32 80 86    ld   ($8680),a
10BA: 21 84 86    ld   hl,$8684
10BD: 3A 06 84    ld   a,($8406)
10C0: 77          ld   (hl),a
10C1: 23          inc  hl
10C2: 3A 07 84    ld   a,($8407)
10C5: 77          ld   (hl),a
10C6: 23          inc  hl
10C7: 3E 3C       ld   a,$3C
10C9: 77          ld   (hl),a
10CA: 23          inc  hl
10CB: 3E 86       ld   a,$86
10CD: 77          ld   (hl),a
10CE: 3E 85       ld   a,$85
10D0: 32 00 B8    ld   ($watchdog),a
10D3: C3 D6 10    jp   $10D6
10D6: 21 1C 80    ld   hl,$801C
10D9: 3A 84 86    ld   a,($8684)
10DC: 77          ld   (hl),a
10DD: 23          inc  hl
10DE: 3A 86 86    ld   a,($8686)
10E1: 77          ld   (hl),a
10E2: 23          inc  hl
10E3: 3A 87 86    ld   a,($8687)
10E6: 77          ld   (hl),a
10E7: 23          inc  hl
10E8: 3A 85 86    ld   a,($8685)
10EB: 77          ld   (hl),a
10EC: C9          ret
10ED: 3A 8B 86    ld   a,($868B)
10F0: A7          and  a
10F1: C2 0D 11    jp   nz,$110D
10F4: 3A 8A 86    ld   a,($868A)
10F7: FE 14       cp   $14
10F9: CA 01 11    jp   z,$1101
10FC: 3C          inc  a
10FD: 32 8A 86    ld   ($868A),a
1100: C9          ret
1101: 3A 01 84    ld   a,($8401)
1104: E6 10       and  $10
1106: C8          ret  z
1107: 3E 01       ld   a,$01
1109: 32 8B 86    ld   ($868B),a
110C: C9          ret
110D: 21 88 86    ld   hl,$8688
1110: 34          inc  (hl)
1111: 7E          ld   a,(hl)
1112: FE 06       cp   $06
1114: D8          ret  c
1115: 36 00       ld   (hl),$00
1117: 23          inc  hl
1118: 34          inc  (hl)
1119: 7E          ld   a,(hl)
111A: FE 01       cp   $01
111C: CA 34 11    jp   z,$1134
111F: FE 02       cp   $02
1121: CA 4B 11    jp   z,$114B
1124: FE 05       cp   $05
1126: CA 4E 11    jp   z,$114E
1129: FE 09       cp   $09
112B: CA 5B 11    jp   z,$115B
112E: FE 0E       cp   $0E
1130: CA 68 11    jp   z,$1168
1133: C9          ret
1134: 3E 3E       ld   a,$3E
1136: 32 86 86    ld   ($8686),a
1139: 3E 87       ld   a,$87
113B: 32 87 86    ld   ($8687),a
113E: 3E 01       ld   a,$01
1140: 32 83 86    ld   ($8683),a
1143: 3E 88       ld   a,$88
1145: 32 00 B8    ld   ($watchdog),a
1148: C3 D6 10    jp   $10D6
114B: C3 D6 10    jp   $10D6
114E: 3E 3F       ld   a,$3F
1150: 32 86 86    ld   ($8686),a
1153: 3E 84       ld   a,$84
1155: 32 87 86    ld   ($8687),a
1158: C3 D6 10    jp   $10D6
115B: 3E 3D       ld   a,$3D
115D: 32 86 86    ld   ($8686),a
1160: 3E 87       ld   a,$87
1162: 32 87 86    ld   ($8687),a
1165: C3 D6 10    jp   $10D6
1168: C3 38 10    jp   $1038
116B: 00          nop
116C: 00          nop
116D: 3A 83 86    ld   a,($8683)
1170: A7          and  a
1171: C8          ret  z
1172: 3A 00 B0    ld   a,($B000)
1175: E6 80       and  $80
1177: C2 8C 11    jp   nz,$118C
117A: 3A 1F 84    ld   a,($841F)
117D: FE 01       cp   $01
117F: C2 8C 11    jp   nz,$118C
1182: 3A 3E 80    ld   a,($803E)
1185: A7          and  a
1186: C2 8C 11    jp   nz,$118C
1189: CD 9F 11    call $119F
118C: CD D9 11    call $11D9
118F: CD 05 12    call $1205
1192: CD 31 12    call $1231
1195: CD 5D 12    call $125D
1198: CD 91 12    call $1291
119B: CD BD 12    call $12BD
119E: C9          ret
119F: DD 21 00 80 ld   ix,$8000
11A3: FD 21 1C 80 ld   iy,$801C
11A7: 21 B4 11    ld   hl,$11B4
11AA: D9          exx
11AB: 11 10 08    ld   de,$0810
11AE: 21 10 08    ld   hl,$0810
11B1: C3 BF 11    jp   $11BF
11B4: 3E 81       ld   a,$81
11B6: 32 00 B8    ld   ($watchdog),a
11B9: 21 1F 84    ld   hl,$841F
11BC: 36 02       ld   (hl),$02
11BE: C9          ret
11BF: DD 7E 03    ld   a,(ix+$03)
11C2: FD 46 03    ld   b,(iy+$03)
11C5: 94          sub  h
11C6: B8          cp   b
11C7: D0          ret  nc
11C8: 85          add  a,l
11C9: B8          cp   b
11CA: D8          ret  c
11CB: DD 7E 00    ld   a,(ix+$00)
11CE: FD 46 00    ld   b,(iy+$00)
11D1: 92          sub  d
11D2: B8          cp   b
11D3: D0          ret  nc
11D4: 83          add  a,e
11D5: B8          cp   b
11D6: D8          ret  c
11D7: D9          exx
11D8: E9          jp   (hl)
11D9: 3A 01 85    ld   a,($8501)
11DC: A7          and  a
11DD: C8          ret  z
11DE: 3A 2B 85    ld   a,($852B)
11E1: A7          and  a
11E2: C0          ret  nz
11E3: DD 21 1C 80 ld   ix,$801C
11E7: FD 21 04 80 ld   iy,$8004
11EB: 21 F8 11    ld   hl,$11F8
11EE: D9          exx
11EF: 11 1C 0E    ld   de,$0E1C
11F2: 21 1C 0E    ld   hl,$0E1C
11F5: C3 BF 11    jp   $11BF
11F8: 21 17 85    ld   hl,$8517
11FB: 36 06       ld   (hl),$06
11FD: 21 2B 85    ld   hl,$852B
1200: 36 01       ld   (hl),$01
1202: C3 86 12    jp   $1286
1205: 3A 03 85    ld   a,($8503)
1208: A7          and  a
1209: C8          ret  z
120A: 3A 4B 85    ld   a,($854B)
120D: A7          and  a
120E: C0          ret  nz
120F: DD 21 1C 80 ld   ix,$801C
1213: FD 21 08 80 ld   iy,$8008
1217: 21 24 12    ld   hl,$1224
121A: D9          exx
121B: 11 1C 0E    ld   de,$0E1C
121E: 21 1C 0E    ld   hl,$0E1C
1221: C3 BF 11    jp   $11BF
1224: 21 37 85    ld   hl,$8537
1227: 36 06       ld   (hl),$06
1229: 21 4B 85    ld   hl,$854B
122C: 36 01       ld   (hl),$01
122E: C3 86 12    jp   $1286
1231: 3A 04 85    ld   a,($8504)
1234: A7          and  a
1235: C8          ret  z
1236: 3A 6B 85    ld   a,($856B)
1239: A7          and  a
123A: C0          ret  nz
123B: DD 21 1C 80 ld   ix,$801C
123F: FD 21 0C 80 ld   iy,$800C
1243: 21 50 12    ld   hl,$1250
1246: D9          exx
1247: 11 1C 0E    ld   de,$0E1C
124A: 21 1C 0E    ld   hl,$0E1C
124D: C3 BF 11    jp   $11BF
1250: 21 57 85    ld   hl,$8557
1253: 36 06       ld   (hl),$06
1255: 21 6B 85    ld   hl,$856B
1258: 36 01       ld   (hl),$01
125A: C3 86 12    jp   $1286
125D: 3A 07 85    ld   a,($8507)
1260: A7          and  a
1261: C8          ret  z
1262: 3A 8B 85    ld   a,($858B)
1265: A7          and  a
1266: C0          ret  nz
1267: DD 21 1C 80 ld   ix,$801C
126B: FD 21 10 80 ld   iy,$8010
126F: 21 7C 12    ld   hl,$127C
1272: D9          exx
1273: 11 1C 0E    ld   de,$0E1C
1276: 21 1C 0E    ld   hl,$0E1C
1279: C3 BF 11    jp   $11BF
127C: 21 77 85    ld   hl,$8577
127F: 36 06       ld   (hl),$06
1281: 21 8B 85    ld   hl,$858B
1284: 36 01       ld   (hl),$01
1286: 3E 83       ld   a,$83
1288: 32 00 B8    ld   ($watchdog),a
128B: 16 04       ld   d,$04
128D: CD F1 12    call $12F1
1290: C9          ret
1291: 3A 01 86    ld   a,($8601)
1294: A7          and  a
1295: C8          ret  z
1296: 3A 2B 86    ld   a,($862B)
1299: A7          and  a
129A: C0          ret  nz
129B: DD 21 1C 80 ld   ix,$801C
129F: FD 21 14 80 ld   iy,$8014
12A3: 21 B0 12    ld   hl,$12B0
12A6: D9          exx
12A7: 11 18 0C    ld   de,$0C18
12AA: 21 18 0C    ld   hl,$0C18
12AD: C3 BF 11    jp   $11BF
12B0: 21 17 86    ld   hl,$8617
12B3: 36 06       ld   (hl),$06
12B5: 21 2B 86    ld   hl,$862B
12B8: 36 01       ld   (hl),$01
12BA: C3 E6 12    jp   $12E6
12BD: 3A 03 86    ld   a,($8603)
12C0: A7          and  a
12C1: C8          ret  z
12C2: 3A 4B 86    ld   a,($864B)
12C5: A7          and  a
12C6: C0          ret  nz
12C7: DD 21 1C 80 ld   ix,$801C
12CB: FD 21 18 80 ld   iy,$8018
12CF: 21 DC 12    ld   hl,$12DC
12D2: D9          exx
12D3: 11 18 0C    ld   de,$0C18
12D6: 21 18 0C    ld   hl,$0C18
12D9: C3 BF 11    jp   $11BF
12DC: 21 37 86    ld   hl,$8637
12DF: 36 06       ld   (hl),$06
12E1: 21 4B 86    ld   hl,$864B
12E4: 36 01       ld   (hl),$01
12E6: 3E 82       ld   a,$82
12E8: 32 00 B8    ld   ($watchdog),a
12EB: 16 08       ld   d,$08
12ED: CD F1 12    call $12F1
12F0: C9          ret
12F1: AF          xor  a
12F2: 21 40 80    ld   hl,$8040
12F5: 36 01       ld   (hl),$01
12F7: 0E 00       ld   c,$00
12F9: 1E 00       ld   e,$00
12FB: 23          inc  hl
12FC: 79          ld   a,c
12FD: 8E          adc  a,(hl)
12FE: 27          daa
12FF: 77          ld   (hl),a
1300: 23          inc  hl
1301: 7A          ld   a,d
1302: 8E          adc  a,(hl)
1303: 27          daa
1304: 77          ld   (hl),a
1305: 23          inc  hl
1306: 7B          ld   a,e
1307: 8E          adc  a,(hl)
1308: 27          daa
1309: 77          ld   (hl),a
130A: C9          ret
130B: 3A 01 81    ld   a,($8101)
130E: E6 03       and  $03
1310: CA 22 13    jp   z,$1322
1313: FE 01       cp   $01
1315: CA 2B 13    jp   z,$132B
1318: FE 02       cp   $02
131A: CA 34 13    jp   z,$1334
131D: FE 03       cp   $03
131F: CA 3D 13    jp   z,$133D
1322: 3E 83       ld   a,$83
1324: 11 91 13    ld   de,$1391
1327: CD 46 13    call $1346
132A: C9          ret
132B: 3E 83       ld   a,$83
132D: 11 A1 16    ld   de,$16A1
1330: CD 46 13    call $1346
1333: C9          ret
1334: 3E 83       ld   a,$83
1336: 11 B1 19    ld   de,$19B1
1339: CD 46 13    call $1346
133C: C9          ret
133D: 3E 83       ld   a,$83
133F: 11 C1 1C    ld   de,$1CC1
1342: CD 46 13    call $1346
1345: C9          ret
1346: 21 43 90    ld   hl,$9043
1349: 06 1C       ld   b,$1C
134B: 0E 1C       ld   c,$1C
134D: 08          ex   af,af'
134E: CD 60 13    call $1360
1351: 08          ex   af,af'
1352: 11 20 00    ld   de,$0020
1355: 21 43 94    ld   hl,$9443
1358: 06 1C       ld   b,$1C
135A: 0E 1C       ld   c,$1C
135C: CD 84 13    call $1384
135F: C9          ret
1360: C5          push bc
1361: E5          push hl
1362: 1A          ld   a,(de)
1363: 77          ld   (hl),a
1364: 23          inc  hl
1365: 13          inc  de
1366: 10 FA       djnz $1362
1368: E1          pop  hl
1369: 01 20 00    ld   bc,$0020
136C: 09          add  hl,bc
136D: C1          pop  bc
136E: 0D          dec  c
136F: 20 EF       jr   nz,$1360
1371: C9          ret
1372: C5          push bc
1373: E5          push hl
1374: 1A          ld   a,(de)
1375: 77          ld   (hl),a
1376: 13          inc  de
1377: 23          inc  hl
1378: 10 FA       djnz $1374
137A: E1          pop  hl
137B: 01 E0 FF    ld   bc,$FFE0
137E: 09          add  hl,bc
137F: C1          pop  bc
1380: 0D          dec  c
1381: 20 EF       jr   nz,$1372
1383: C9          ret
1384: C5          push bc
1385: E5          push hl
1386: 77          ld   (hl),a
1387: 23          inc  hl
1388: 10 FC       djnz $1386
138A: E1          pop  hl
138B: 19          add  hl,de
138C: C1          pop  bc
138D: 0D          dec  c
138E: 20 F4       jr   nz,$1384
1390: C9          ret
1391: 25          dec  h
1392: 25          dec  h
1393: 25          dec  h
1394: 25          dec  h
1395: 25          dec  h
1396: 25          dec  h
1397: 25          dec  h
1398: 25          dec  h
1399: 25          dec  h
139A: 25          dec  h
139B: 25          dec  h
139C: 25          dec  h
139D: 25          dec  h
139E: 25          dec  h
139F: 25          dec  h
13A0: 25          dec  h
13A1: 25          dec  h
13A2: 25          dec  h
13A3: 25          dec  h
13A4: 25          dec  h
13A5: 25          dec  h
13A6: 25          dec  h
13A7: 25          dec  h
13A8: 25          dec  h
13A9: 25          dec  h
13AA: 25          dec  h
13AB: 25          dec  h
13AC: 25          dec  h
13AD: 25          dec  h
13AE: 25          dec  h
13AF: 25          dec  h
13B0: 25          dec  h
13B1: 25          dec  h
13B2: 25          dec  h
13B3: 25          dec  h
13B4: 25          dec  h
13B5: 25          dec  h
13B6: 25          dec  h
13B7: 25          dec  h
13B8: 25          dec  h
13B9: 25          dec  h
13BA: 25          dec  h
13BB: 25          dec  h
13BC: 25          dec  h
13BD: 25          dec  h
13BE: 25          dec  h
13BF: 25          dec  h
13C0: 25          dec  h
13C1: 25          dec  h
13C2: 25          dec  h
13C3: 25          dec  h
13C4: 25          dec  h
13C5: 25          dec  h
13C6: 25          dec  h
13C7: 25          dec  h
13C8: 25          dec  h
13C9: 25          dec  h
13CA: 25          dec  h
13CB: 25          dec  h
13CC: F5          push af
13CD: F5          push af
13CE: F5          push af
13CF: F5          push af
13D0: F5          push af
13D1: F5          push af
13D2: F5          push af
13D3: F5          push af
13D4: F5          push af
13D5: F5          push af
13D6: F5          push af
13D7: F5          push af
13D8: F5          push af
13D9: F5          push af
13DA: F5          push af
13DB: F5          push af
13DC: F5          push af
13DD: F5          push af
13DE: F5          push af
13DF: F5          push af
13E0: F5          push af
13E1: F5          push af
13E2: F5          push af
13E3: F5          push af
13E4: F4 25 25    call p,$2525
13E7: 25          dec  h
13E8: F4 25 25    call p,$2525
13EB: 25          dec  h
13EC: F4 25 25    call p,$2525
13EF: 25          dec  h
13F0: 25          dec  h
13F1: 25          dec  h
13F2: 25          dec  h
13F3: 25          dec  h
13F4: F4 25 25    call p,$2525
13F7: 25          dec  h
13F8: 25          dec  h
13F9: 25          dec  h
13FA: 25          dec  h
13FB: 25          dec  h
13FC: F4 25 25    call p,$2525
13FF: 25          dec  h
1400: F4 25 25    call p,$2525
1403: 25          dec  h
1404: F4 25 25    call p,$2525
1407: 25          dec  h
1408: F4 25 25    call p,$2525
140B: 25          dec  h
140C: 25          dec  h
140D: 25          dec  h
140E: 25          dec  h
140F: 25          dec  h
1410: F4 25 25    call p,$2525
1413: 25          dec  h
1414: 25          dec  h
1415: 25          dec  h
1416: 25          dec  h
1417: 25          dec  h
1418: F4 25 25    call p,$2525
141B: 25          dec  h
141C: F4 25 25    call p,$2525
141F: 25          dec  h
1420: F4 25 25    call p,$2525
1423: 25          dec  h
1424: F4 25 25    call p,$2525
1427: 25          dec  h
1428: 25          dec  h
1429: 25          dec  h
142A: 25          dec  h
142B: 25          dec  h
142C: F4 25 25    call p,$2525
142F: 25          dec  h
1430: 25          dec  h
1431: 25          dec  h
1432: 25          dec  h
1433: 25          dec  h
1434: F4 25 25    call p,$2525
1437: 25          dec  h
1438: F4 25 25    call p,$2525
143B: 25          dec  h
143C: F5          push af
143D: F5          push af
143E: F5          push af
143F: F5          push af
1440: F4 35 35    call p,$3535
1443: 35          dec  (hl)
1444: 35          dec  (hl)
1445: 25          dec  h
1446: 25          dec  h
1447: 25          dec  h
1448: F4 35 35    call p,$3535
144B: 35          dec  (hl)
144C: 35          dec  (hl)
144D: 25          dec  h
144E: 25          dec  h
144F: 25          dec  h
1450: F5          push af
1451: F5          push af
1452: F5          push af
1453: F5          push af
1454: F4 25 25    call p,$2525
1457: 25          dec  h
1458: F4 25 25    call p,$2525
145B: 25          dec  h
145C: F6 25       or   $25
145E: 37          scf
145F: 38 35       jr   c,$1496
1461: 25          dec  h
1462: 25          dec  h
1463: 25          dec  h
1464: F6 25       or   $25
1466: 37          scf
1467: 38 35       jr   c,$149E
1469: 25          dec  h
146A: 25          dec  h
146B: 25          dec  h
146C: F4 25 25    call p,$2525
146F: 25          dec  h
1470: 25          dec  h
1471: 25          dec  h
1472: 25          dec  h
1473: 25          dec  h
1474: F4 25 25    call p,$2525
1477: 25          dec  h
1478: FC 25 37    call m,$3725
147B: 38 35       jr   c,$14B2
147D: 25          dec  h
147E: 25          dec  h
147F: 25          dec  h
1480: FC 25 37    call m,$3725
1483: 38 35       jr   c,$14BA
1485: 25          dec  h
1486: 25          dec  h
1487: 25          dec  h
1488: F4 25 25    call p,$2525
148B: 25          dec  h
148C: 25          dec  h
148D: 25          dec  h
148E: 25          dec  h
148F: 25          dec  h
1490: F4 25 25    call p,$2525
1493: 25          dec  h
1494: F6 25       or   $25
1496: 37          scf
1497: 38 35       jr   c,$14CE
1499: 25          dec  h
149A: 25          dec  h
149B: 25          dec  h
149C: F6 25       or   $25
149E: 37          scf
149F: 38 35       jr   c,$14D6
14A1: 25          dec  h
14A2: 25          dec  h
14A3: 25          dec  h
14A4: F4 25 25    call p,$2525
14A7: 25          dec  h
14A8: 25          dec  h
14A9: 25          dec  h
14AA: 25          dec  h
14AB: 25          dec  h
14AC: F5          push af
14AD: F5          push af
14AE: F5          push af
14AF: F5          push af
14B0: F4 35 35    call p,$3535
14B3: 35          dec  (hl)
14B4: 35          dec  (hl)
14B5: 25          dec  h
14B6: 25          dec  h
14B7: 25          dec  h
14B8: F4 35 35    call p,$3535
14BB: 35          dec  (hl)
14BC: 35          dec  (hl)
14BD: 25          dec  h
14BE: 25          dec  h
14BF: 25          dec  h
14C0: F4 36 36    call p,$3636
14C3: 36 36       ld   (hl),$36
14C5: 25          dec  h
14C6: 25          dec  h
14C7: 25          dec  h
14C8: 25          dec  h
14C9: 25          dec  h
14CA: 25          dec  h
14CB: 25          dec  h
14CC: F4 25 25    call p,$2525
14CF: 25          dec  h
14D0: 25          dec  h
14D1: 25          dec  h
14D2: 25          dec  h
14D3: 25          dec  h
14D4: F4 25 25    call p,$2525
14D7: 25          dec  h
14D8: 25          dec  h
14D9: 25          dec  h
14DA: 25          dec  h
14DB: 25          dec  h
14DC: F4 25 25    call p,$2525
14DF: 25          dec  h
14E0: 36 25       ld   (hl),$25
14E2: 25          dec  h
14E3: 25          dec  h
14E4: 25          dec  h
14E5: 25          dec  h
14E6: 25          dec  h
14E7: 25          dec  h
14E8: F4 25 25    call p,$2525
14EB: 25          dec  h
14EC: 25          dec  h
14ED: 25          dec  h
14EE: 25          dec  h
14EF: 25          dec  h
14F0: F4 25 25    call p,$2525
14F3: 25          dec  h
14F4: 25          dec  h
14F5: 25          dec  h
14F6: 25          dec  h
14F7: 25          dec  h
14F8: F9          ld   sp,hl
14F9: 25          dec  h
14FA: 25          dec  h
14FB: 25          dec  h
14FC: 36 25       ld   (hl),$25
14FE: 25          dec  h
14FF: 25          dec  h
1500: 25          dec  h
1501: 25          dec  h
1502: 25          dec  h
1503: 25          dec  h
1504: F4 25 25    call p,$2525
1507: 25          dec  h
1508: 25          dec  h
1509: 25          dec  h
150A: 25          dec  h
150B: 25          dec  h
150C: F4 25 25    call p,$2525
150F: 25          dec  h
1510: 25          dec  h
1511: 25          dec  h
1512: 25          dec  h
1513: 25          dec  h
1514: F4 25 25    call p,$2525
1517: 25          dec  h
1518: 36 25       ld   (hl),$25
151A: 25          dec  h
151B: 25          dec  h
151C: 25          dec  h
151D: 25          dec  h
151E: 25          dec  h
151F: 25          dec  h
1520: F5          push af
1521: F5          push af
1522: F5          push af
1523: F5          push af
1524: F5          push af
1525: F5          push af
1526: F5          push af
1527: F5          push af
1528: F5          push af
1529: F5          push af
152A: F5          push af
152B: F5          push af
152C: F5          push af
152D: F5          push af
152E: F5          push af
152F: F5          push af
1530: F4 36 36    call p,$3636
1533: 36 36       ld   (hl),$36
1535: 25          dec  h
1536: 25          dec  h
1537: 25          dec  h
1538: FD 25       dec  iyh
153A: 25          dec  h
153B: 25          dec  h
153C: F4 25 25    call p,$2525
153F: 25          dec  h
1540: 25          dec  h
1541: 25          dec  h
1542: 25          dec  h
1543: 25          dec  h
1544: F4 25 25    call p,$2525
1547: 25          dec  h
1548: F4 25 25    call p,$2525
154B: 25          dec  h
154C: F4 25 25    call p,$2525
154F: 25          dec  h
1550: 25          dec  h
1551: 25          dec  h
1552: 25          dec  h
1553: 25          dec  h
1554: FF          rst  $38
1555: 25          dec  h
1556: 25          dec  h
1557: 25          dec  h
1558: F4 25 25    call p,$2525
155B: 25          dec  h
155C: 25          dec  h
155D: 25          dec  h
155E: 25          dec  h
155F: 25          dec  h
1560: F4 25 25    call p,$2525
1563: 25          dec  h
1564: F4 25 25    call p,$2525
1567: 25          dec  h
1568: F4 25 25    call p,$2525
156B: 25          dec  h
156C: 25          dec  h
156D: 25          dec  h
156E: 25          dec  h
156F: 25          dec  h
1570: FD 25       dec  iyh
1572: 25          dec  h
1573: 25          dec  h
1574: F4 25 25    call p,$2525
1577: 25          dec  h
1578: 25          dec  h
1579: 25          dec  h
157A: 25          dec  h
157B: 25          dec  h
157C: F4 25 25    call p,$2525
157F: 25          dec  h
1580: F4 25 25    call p,$2525
1583: 25          dec  h
1584: F4 25 25    call p,$2525
1587: 25          dec  h
1588: 25          dec  h
1589: 25          dec  h
158A: 25          dec  h
158B: 25          dec  h
158C: F5          push af
158D: F5          push af
158E: F5          push af
158F: F5          push af
1590: F4 35 35    call p,$3535
1593: 35          dec  (hl)
1594: 35          dec  (hl)
1595: 25          dec  h
1596: 25          dec  h
1597: 25          dec  h
1598: F5          push af
1599: F5          push af
159A: F5          push af
159B: F5          push af
159C: F5          push af
159D: F5          push af
159E: F5          push af
159F: F5          push af
15A0: F5          push af
15A1: F5          push af
15A2: F5          push af
15A3: F5          push af
15A4: F4 25 25    call p,$2525
15A7: 25          dec  h
15A8: F4 25 25    call p,$2525
15AB: 25          dec  h
15AC: F6 25       or   $25
15AE: 37          scf
15AF: 38 35       jr   c,$15E6
15B1: 25          dec  h
15B2: 25          dec  h
15B3: 25          dec  h
15B4: F4 25 25    call p,$2525
15B7: 25          dec  h
15B8: FD 25       dec  iyh
15BA: 25          dec  h
15BB: 25          dec  h
15BC: F4 25 25    call p,$2525
15BF: 25          dec  h
15C0: F4 25 25    call p,$2525
15C3: 25          dec  h
15C4: F4 25 25    call p,$2525
15C7: 25          dec  h
15C8: FC 25 37    call m,$3725
15CB: 38 35       jr   c,$1602
15CD: 25          dec  h
15CE: 25          dec  h
15CF: 25          dec  h
15D0: F4 25 25    call p,$2525
15D3: 25          dec  h
15D4: FF          rst  $38
15D5: 25          dec  h
15D6: 25          dec  h
15D7: 25          dec  h
15D8: F4 25 25    call p,$2525
15DB: 25          dec  h
15DC: F4 25 25    call p,$2525
15DF: 25          dec  h
15E0: F4 25 25    call p,$2525
15E3: 25          dec  h
15E4: F6 25       or   $25
15E6: 37          scf
15E7: 38 35       jr   c,$161E
15E9: 25          dec  h
15EA: 25          dec  h
15EB: 25          dec  h
15EC: F4 25 25    call p,$2525
15EF: 25          dec  h
15F0: FD 25       dec  iyh
15F2: 25          dec  h
15F3: 25          dec  h
15F4: F4 25 25    call p,$2525
15F7: 25          dec  h
15F8: F4 25 25    call p,$2525
15FB: 25          dec  h
15FC: F5          push af
15FD: F5          push af
15FE: F5          push af
15FF: F5          push af
1600: F4 35 35    call p,$3535
1603: 35          dec  (hl)
1604: 35          dec  (hl)
1605: 25          dec  h
1606: 25          dec  h
1607: 25          dec  h
1608: F4 25 25    call p,$2525
160B: 25          dec  h
160C: 25          dec  h
160D: 25          dec  h
160E: 25          dec  h
160F: 25          dec  h
1610: F5          push af
1611: F5          push af
1612: F5          push af
1613: F5          push af
1614: F4 25 25    call p,$2525
1617: 25          dec  h
1618: F4 25 25    call p,$2525
161B: 25          dec  h
161C: F4 25 25    call p,$2525
161F: 25          dec  h
1620: 25          dec  h
1621: 25          dec  h
1622: 25          dec  h
1623: 25          dec  h
1624: F4 25 25    call p,$2525
1627: 25          dec  h
1628: 25          dec  h
1629: 25          dec  h
162A: 25          dec  h
162B: 25          dec  h
162C: F4 25 25    call p,$2525
162F: 25          dec  h
1630: F4 25 25    call p,$2525
1633: 25          dec  h
1634: F4 25 25    call p,$2525
1637: 25          dec  h
1638: F4 25 25    call p,$2525
163B: 25          dec  h
163C: 25          dec  h
163D: 25          dec  h
163E: 25          dec  h
163F: 25          dec  h
1640: F4 25 25    call p,$2525
1643: 25          dec  h
1644: 25          dec  h
1645: 25          dec  h
1646: 25          dec  h
1647: 25          dec  h
1648: F4 25 25    call p,$2525
164B: 25          dec  h
164C: F4 25 25    call p,$2525
164F: 25          dec  h
1650: F4 25 25    call p,$2525
1653: 25          dec  h
1654: F4 25 25    call p,$2525
1657: 25          dec  h
1658: 25          dec  h
1659: 25          dec  h
165A: 25          dec  h
165B: 25          dec  h
165C: F4 25 25    call p,$2525
165F: 25          dec  h
1660: 25          dec  h
1661: 25          dec  h
1662: 25          dec  h
1663: 25          dec  h
1664: F4 25 25    call p,$2525
1667: 25          dec  h
1668: F4 25 25    call p,$2525
166B: 25          dec  h
166C: F5          push af
166D: F5          push af
166E: F5          push af
166F: F5          push af
1670: F5          push af
1671: F5          push af
1672: F5          push af
1673: F5          push af
1674: F5          push af
1675: F5          push af
1676: F5          push af
1677: F5          push af
1678: F5          push af
1679: F5          push af
167A: F5          push af
167B: F5          push af
167C: F5          push af
167D: F5          push af
167E: F5          push af
167F: F5          push af
1680: F5          push af
1681: F5          push af
1682: F5          push af
1683: F5          push af
1684: F4 25 25    call p,$2525
1687: 25          dec  h
1688: 25          dec  h
1689: 25          dec  h
168A: 25          dec  h
168B: 25          dec  h
168C: 25          dec  h
168D: 25          dec  h
168E: 25          dec  h
168F: 25          dec  h
1690: 25          dec  h
1691: 25          dec  h
1692: 25          dec  h
1693: 25          dec  h
1694: 25          dec  h
1695: 25          dec  h
1696: 25          dec  h
1697: 25          dec  h
1698: 25          dec  h
1699: 25          dec  h
169A: 25          dec  h
169B: 25          dec  h
169C: 25          dec  h
169D: 25          dec  h
169E: 25          dec  h
169F: 25          dec  h
16A0: 25          dec  h
16A1: 25          dec  h
16A2: 25          dec  h
16A3: 25          dec  h
16A4: 25          dec  h
16A5: 25          dec  h
16A6: 25          dec  h
16A7: 25          dec  h
16A8: 25          dec  h
16A9: 25          dec  h
16AA: 25          dec  h
16AB: 25          dec  h
16AC: 25          dec  h
16AD: 25          dec  h
16AE: 25          dec  h
16AF: 25          dec  h
16B0: 25          dec  h
16B1: 25          dec  h
16B2: 25          dec  h
16B3: 25          dec  h
16B4: 25          dec  h
16B5: 25          dec  h
16B6: 25          dec  h
16B7: 25          dec  h
16B8: 25          dec  h
16B9: 25          dec  h
16BA: 25          dec  h
16BB: 25          dec  h
16BC: 25          dec  h
16BD: 25          dec  h
16BE: 25          dec  h
16BF: 25          dec  h
16C0: 25          dec  h
16C1: 25          dec  h
16C2: 25          dec  h
16C3: 25          dec  h
16C4: 25          dec  h
16C5: 25          dec  h
16C6: 25          dec  h
16C7: 25          dec  h
16C8: 25          dec  h
16C9: 25          dec  h
16CA: 25          dec  h
16CB: 25          dec  h
16CC: 25          dec  h
16CD: 25          dec  h
16CE: 25          dec  h
16CF: 25          dec  h
16D0: 25          dec  h
16D1: 25          dec  h
16D2: 25          dec  h
16D3: 25          dec  h
16D4: 25          dec  h
16D5: 25          dec  h
16D6: 25          dec  h
16D7: 25          dec  h
16D8: 25          dec  h
16D9: 25          dec  h
16DA: 25          dec  h
16DB: 25          dec  h
16DC: F5          push af
16DD: F5          push af
16DE: F5          push af
16DF: F5          push af
16E0: F4 25 25    call p,$2525
16E3: 25          dec  h
16E4: F5          push af
16E5: F5          push af
16E6: F5          push af
16E7: F5          push af
16E8: F5          push af
16E9: F5          push af
16EA: F5          push af
16EB: F5          push af
16EC: F5          push af
16ED: F5          push af
16EE: F5          push af
16EF: F5          push af
16F0: F5          push af
16F1: F5          push af
16F2: F5          push af
16F3: F5          push af
16F4: F4 25 25    call p,$2525
16F7: 25          dec  h
16F8: F4 25 25    call p,$2525
16FB: 25          dec  h
16FC: F4 25 25    call p,$2525
16FF: 25          dec  h
1700: F4 25 25    call p,$2525
1703: 25          dec  h
1704: 25          dec  h
1705: 25          dec  h
1706: 25          dec  h
1707: 25          dec  h
1708: FD 25       dec  iyh
170A: 25          dec  h
170B: 25          dec  h
170C: F4 25 25    call p,$2525
170F: 25          dec  h
1710: F4 25 25    call p,$2525
1713: 25          dec  h
1714: F4 25 25    call p,$2525
1717: 25          dec  h
1718: F4 25 25    call p,$2525
171B: 25          dec  h
171C: F4 25 25    call p,$2525
171F: 25          dec  h
1720: 25          dec  h
1721: 25          dec  h
1722: 25          dec  h
1723: 25          dec  h
1724: FF          rst  $38
1725: 25          dec  h
1726: 25          dec  h
1727: 25          dec  h
1728: F4 25 25    call p,$2525
172B: 25          dec  h
172C: F4 25 25    call p,$2525
172F: 25          dec  h
1730: F4 25 25    call p,$2525
1733: 25          dec  h
1734: F4 25 25    call p,$2525
1737: 25          dec  h
1738: F4 25 25    call p,$2525
173B: 25          dec  h
173C: 25          dec  h
173D: 25          dec  h
173E: 25          dec  h
173F: 25          dec  h
1740: FD 25       dec  iyh
1742: 25          dec  h
1743: 25          dec  h
1744: F4 25 25    call p,$2525
1747: 25          dec  h
1748: F4 25 25    call p,$2525
174B: 25          dec  h
174C: F5          push af
174D: F5          push af
174E: F5          push af
174F: F5          push af
1750: F5          push af
1751: F5          push af
1752: F5          push af
1753: F5          push af
1754: F4 35 35    call p,$3535
1757: 35          dec  (hl)
1758: 35          dec  (hl)
1759: 25          dec  h
175A: 25          dec  h
175B: 25          dec  h
175C: 25          dec  h
175D: 25          dec  h
175E: 25          dec  h
175F: 25          dec  h
1760: F5          push af
1761: F5          push af
1762: F5          push af
1763: F5          push af
1764: F4 25 25    call p,$2525
1767: 25          dec  h
1768: 25          dec  h
1769: 25          dec  h
176A: 25          dec  h
176B: 25          dec  h
176C: F4 25 25    call p,$2525
176F: 25          dec  h
1770: F6 25       or   $25
1772: 37          scf
1773: 38 35       jr   c,$17AA
1775: 25          dec  h
1776: 25          dec  h
1777: 25          dec  h
1778: 25          dec  h
1779: 25          dec  h
177A: 25          dec  h
177B: 25          dec  h
177C: F4 25 25    call p,$2525
177F: 25          dec  h
1780: 25          dec  h
1781: 25          dec  h
1782: 25          dec  h
1783: 25          dec  h
1784: 25          dec  h
1785: 25          dec  h
1786: 25          dec  h
1787: 25          dec  h
1788: F4 25 25    call p,$2525
178B: 25          dec  h
178C: FC 25 37    call m,$3725
178F: 38 35       jr   c,$17C6
1791: 25          dec  h
1792: 25          dec  h
1793: 25          dec  h
1794: 25          dec  h
1795: 25          dec  h
1796: 25          dec  h
1797: 25          dec  h
1798: F4 25 25    call p,$2525
179B: 25          dec  h
179C: 25          dec  h
179D: 25          dec  h
179E: 25          dec  h
179F: 25          dec  h
17A0: 25          dec  h
17A1: 25          dec  h
17A2: 25          dec  h
17A3: 25          dec  h
17A4: F4 25 25    call p,$2525
17A7: 25          dec  h
17A8: F6 25       or   $25
17AA: 37          scf
17AB: 38 35       jr   c,$17E2
17AD: 25          dec  h
17AE: 25          dec  h
17AF: 25          dec  h
17B0: 25          dec  h
17B1: 25          dec  h
17B2: 25          dec  h
17B3: 25          dec  h
17B4: F4 25 25    call p,$2525
17B7: 25          dec  h
17B8: 25          dec  h
17B9: 25          dec  h
17BA: 25          dec  h
17BB: 25          dec  h
17BC: 25          dec  h
17BD: 25          dec  h
17BE: 25          dec  h
17BF: 25          dec  h
17C0: F5          push af
17C1: F5          push af
17C2: F5          push af
17C3: F5          push af
17C4: F4 35 35    call p,$3535
17C7: 35          dec  (hl)
17C8: 35          dec  (hl)
17C9: 25          dec  h
17CA: 25          dec  h
17CB: 25          dec  h
17CC: F5          push af
17CD: F5          push af
17CE: F5          push af
17CF: F5          push af
17D0: F4 36 36    call p,$3636
17D3: 36 36       ld   (hl),$36
17D5: 25          dec  h
17D6: 25          dec  h
17D7: 25          dec  h
17D8: FD 25       dec  iyh
17DA: 25          dec  h
17DB: 25          dec  h
17DC: F4 25 25    call p,$2525
17DF: 25          dec  h
17E0: F4 25 25    call p,$2525
17E3: 25          dec  h
17E4: 25          dec  h
17E5: 25          dec  h
17E6: 25          dec  h
17E7: 25          dec  h
17E8: F4 25 25    call p,$2525
17EB: 25          dec  h
17EC: F4 25 25    call p,$2525
17EF: 25          dec  h
17F0: 36 25       ld   (hl),$25
17F2: 25          dec  h
17F3: 25          dec  h
17F4: FF          rst  $38
17F5: 25          dec  h
17F6: 25          dec  h
17F7: 25          dec  h
17F8: F4 25 25    call p,$2525
17FB: 25          dec  h
17FC: F4 25 25    call p,$2525
17FF: 25          dec  h
1800: 25          dec  h
1801: 25          dec  h
1802: 25          dec  h
1803: 25          dec  h
1804: F4 25 25    call p,$2525
1807: 25          dec  h
1808: F9          ld   sp,hl
1809: 25          dec  h
180A: 25          dec  h
180B: 25          dec  h
180C: 36 25       ld   (hl),$25
180E: 25          dec  h
180F: 25          dec  h
1810: FD 25       dec  iyh
1812: 25          dec  h
1813: 25          dec  h
1814: F4 25 25    call p,$2525
1817: 25          dec  h
1818: F4 25 25    call p,$2525
181B: 25          dec  h
181C: 25          dec  h
181D: 25          dec  h
181E: 25          dec  h
181F: 25          dec  h
1820: F4 25 25    call p,$2525
1823: 25          dec  h
1824: F4 25 25    call p,$2525
1827: 25          dec  h
1828: 36 25       ld   (hl),$25
182A: 25          dec  h
182B: 25          dec  h
182C: F5          push af
182D: F5          push af
182E: F5          push af
182F: F5          push af
1830: F5          push af
1831: F5          push af
1832: F5          push af
1833: F5          push af
1834: F5          push af
1835: F5          push af
1836: F5          push af
1837: F5          push af
1838: F5          push af
1839: F5          push af
183A: F5          push af
183B: F5          push af
183C: F5          push af
183D: F5          push af
183E: F5          push af
183F: F5          push af
1840: F4 36 36    call p,$3636
1843: 36 36       ld   (hl),$36
1845: 25          dec  h
1846: 25          dec  h
1847: 25          dec  h
1848: F4 25 25    call p,$2525
184B: 25          dec  h
184C: F4 25 25    call p,$2525
184F: 25          dec  h
1850: 25          dec  h
1851: 25          dec  h
1852: 25          dec  h
1853: 25          dec  h
1854: F4 25 25    call p,$2525
1857: 25          dec  h
1858: 25          dec  h
1859: 25          dec  h
185A: 25          dec  h
185B: 25          dec  h
185C: F4 25 25    call p,$2525
185F: 25          dec  h
1860: 25          dec  h
1861: 25          dec  h
1862: 25          dec  h
1863: 25          dec  h
1864: F4 25 25    call p,$2525
1867: 25          dec  h
1868: F4 25 25    call p,$2525
186B: 25          dec  h
186C: 25          dec  h
186D: 25          dec  h
186E: 25          dec  h
186F: 25          dec  h
1870: F4 25 25    call p,$2525
1873: 25          dec  h
1874: 25          dec  h
1875: 25          dec  h
1876: 25          dec  h
1877: 25          dec  h
1878: F4 25 25    call p,$2525
187B: 25          dec  h
187C: 25          dec  h
187D: 25          dec  h
187E: 25          dec  h
187F: 25          dec  h
1880: F4 25 25    call p,$2525
1883: 25          dec  h
1884: F4 25 25    call p,$2525
1887: 25          dec  h
1888: 25          dec  h
1889: 25          dec  h
188A: 25          dec  h
188B: 25          dec  h
188C: F4 25 25    call p,$2525
188F: 25          dec  h
1890: 25          dec  h
1891: 25          dec  h
1892: 25          dec  h
1893: 25          dec  h
1894: F4 25 25    call p,$2525
1897: 25          dec  h
1898: 25          dec  h
1899: 25          dec  h
189A: 25          dec  h
189B: 25          dec  h
189C: F5          push af
189D: F5          push af
189E: F5          push af
189F: F5          push af
18A0: F4 35 35    call p,$3535
18A3: 35          dec  (hl)
18A4: 35          dec  (hl)
18A5: 25          dec  h
18A6: 25          dec  h
18A7: 25          dec  h
18A8: F4 35 35    call p,$3535
18AB: 35          dec  (hl)
18AC: 35          dec  (hl)
18AD: 25          dec  h
18AE: 25          dec  h
18AF: 25          dec  h
18B0: F5          push af
18B1: F5          push af
18B2: F5          push af
18B3: F5          push af
18B4: F4 25 25    call p,$2525
18B7: 25          dec  h
18B8: F4 25 25    call p,$2525
18BB: 25          dec  h
18BC: F6 25       or   $25
18BE: 37          scf
18BF: 38 35       jr   c,$18F6
18C1: 25          dec  h
18C2: 25          dec  h
18C3: 25          dec  h
18C4: F6 25       or   $25
18C6: 37          scf
18C7: 38 35       jr   c,$18FE
18C9: 25          dec  h
18CA: 25          dec  h
18CB: 25          dec  h
18CC: F4 25 25    call p,$2525
18CF: 25          dec  h
18D0: F4 25 25    call p,$2525
18D3: 25          dec  h
18D4: F4 25 25    call p,$2525
18D7: 25          dec  h
18D8: FC 25 37    call m,$3725
18DB: 38 35       jr   c,$1912
18DD: 25          dec  h
18DE: 25          dec  h
18DF: 25          dec  h
18E0: FC 25 37    call m,$3725
18E3: 38 35       jr   c,$191A
18E5: 25          dec  h
18E6: 25          dec  h
18E7: 25          dec  h
18E8: F4 25 25    call p,$2525
18EB: 25          dec  h
18EC: F4 25 25    call p,$2525
18EF: 25          dec  h
18F0: F4 25 25    call p,$2525
18F3: 25          dec  h
18F4: F6 25       or   $25
18F6: 37          scf
18F7: 38 35       jr   c,$192E
18F9: 25          dec  h
18FA: 25          dec  h
18FB: 25          dec  h
18FC: F6 25       or   $25
18FE: 37          scf
18FF: 38 35       jr   c,$1936
1901: 25          dec  h
1902: 25          dec  h
1903: 25          dec  h
1904: F4 25 25    call p,$2525
1907: 25          dec  h
1908: F4 25 25    call p,$2525
190B: 25          dec  h
190C: F5          push af
190D: F5          push af
190E: F5          push af
190F: F5          push af
1910: F4 35 35    call p,$3535
1913: 35          dec  (hl)
1914: 35          dec  (hl)
1915: 25          dec  h
1916: 25          dec  h
1917: 25          dec  h
1918: F4 35 35    call p,$3535
191B: 35          dec  (hl)
191C: 35          dec  (hl)
191D: 25          dec  h
191E: 25          dec  h
191F: 25          dec  h
1920: F5          push af
1921: F5          push af
1922: F5          push af
1923: F5          push af
1924: F4 25 25    call p,$2525
1927: 25          dec  h
1928: F4 25 25    call p,$2525
192B: 25          dec  h
192C: F4 25 25    call p,$2525
192F: 25          dec  h
1930: 25          dec  h
1931: 25          dec  h
1932: 25          dec  h
1933: 25          dec  h
1934: F4 25 25    call p,$2525
1937: 25          dec  h
1938: 25          dec  h
1939: 25          dec  h
193A: 25          dec  h
193B: 25          dec  h
193C: F4 25 25    call p,$2525
193F: 25          dec  h
1940: F4 25 25    call p,$2525
1943: 25          dec  h
1944: F4 25 25    call p,$2525
1947: 25          dec  h
1948: F4 25 25    call p,$2525
194B: 25          dec  h
194C: 25          dec  h
194D: 25          dec  h
194E: 25          dec  h
194F: 25          dec  h
1950: F4 25 25    call p,$2525
1953: 25          dec  h
1954: 25          dec  h
1955: 25          dec  h
1956: 25          dec  h
1957: 25          dec  h
1958: F4 25 25    call p,$2525
195B: 25          dec  h
195C: F4 25 25    call p,$2525
195F: 25          dec  h
1960: F4 25 25    call p,$2525
1963: 25          dec  h
1964: F4 25 25    call p,$2525
1967: 25          dec  h
1968: 25          dec  h
1969: 25          dec  h
196A: 25          dec  h
196B: 25          dec  h
196C: F4 25 25    call p,$2525
196F: 25          dec  h
1970: 25          dec  h
1971: 25          dec  h
1972: 25          dec  h
1973: 25          dec  h
1974: F4 25 25    call p,$2525
1977: 25          dec  h
1978: F4 25 25    call p,$2525
197B: 25          dec  h
197C: F5          push af
197D: F5          push af
197E: F5          push af
197F: F5          push af
1980: F5          push af
1981: F5          push af
1982: F5          push af
1983: F5          push af
1984: F5          push af
1985: F5          push af
1986: F5          push af
1987: F5          push af
1988: F5          push af
1989: F5          push af
198A: F5          push af
198B: F5          push af
198C: F5          push af
198D: F5          push af
198E: F5          push af
198F: F5          push af
1990: F5          push af
1991: F5          push af
1992: F5          push af
1993: F5          push af
1994: F4 25 25    call p,$2525
1997: 25          dec  h
1998: 25          dec  h
1999: 25          dec  h
199A: 25          dec  h
199B: 25          dec  h
199C: 25          dec  h
199D: 25          dec  h
199E: 25          dec  h
199F: 25          dec  h
19A0: 25          dec  h
19A1: 25          dec  h
19A2: 25          dec  h
19A3: 25          dec  h
19A4: 25          dec  h
19A5: 25          dec  h
19A6: 25          dec  h
19A7: 25          dec  h
19A8: 25          dec  h
19A9: 25          dec  h
19AA: 25          dec  h
19AB: 25          dec  h
19AC: 25          dec  h
19AD: 25          dec  h
19AE: 25          dec  h
19AF: 25          dec  h
19B0: 25          dec  h
19B1: 25          dec  h
19B2: 25          dec  h
19B3: 25          dec  h
19B4: 25          dec  h
19B5: 25          dec  h
19B6: 25          dec  h
19B7: 25          dec  h
19B8: 25          dec  h
19B9: 25          dec  h
19BA: 25          dec  h
19BB: 25          dec  h
19BC: 25          dec  h
19BD: 25          dec  h
19BE: 25          dec  h
19BF: 25          dec  h
19C0: 25          dec  h
19C1: 25          dec  h
19C2: 25          dec  h
19C3: 25          dec  h
19C4: 25          dec  h
19C5: 25          dec  h
19C6: 25          dec  h
19C7: 25          dec  h
19C8: 25          dec  h
19C9: 25          dec  h
19CA: 25          dec  h
19CB: 25          dec  h
19CC: 25          dec  h
19CD: 25          dec  h
19CE: 25          dec  h
19CF: 25          dec  h
19D0: 25          dec  h
19D1: 25          dec  h
19D2: 25          dec  h
19D3: 25          dec  h
19D4: 25          dec  h
19D5: 25          dec  h
19D6: 25          dec  h
19D7: 25          dec  h
19D8: 25          dec  h
19D9: 25          dec  h
19DA: 25          dec  h
19DB: 25          dec  h
19DC: 25          dec  h
19DD: 25          dec  h
19DE: 25          dec  h
19DF: 25          dec  h
19E0: 25          dec  h
19E1: 25          dec  h
19E2: 25          dec  h
19E3: 25          dec  h
19E4: 25          dec  h
19E5: 25          dec  h
19E6: 25          dec  h
19E7: 25          dec  h
19E8: 25          dec  h
19E9: 25          dec  h
19EA: 25          dec  h
19EB: 25          dec  h
19EC: F5          push af
19ED: F5          push af
19EE: F5          push af
19EF: F5          push af
19F0: F5          push af
19F1: F5          push af
19F2: F5          push af
19F3: F5          push af
19F4: F5          push af
19F5: F5          push af
19F6: F5          push af
19F7: F5          push af
19F8: F5          push af
19F9: F5          push af
19FA: F5          push af
19FB: F5          push af
19FC: F5          push af
19FD: F5          push af
19FE: F5          push af
19FF: F5          push af
1A00: F5          push af
1A01: F5          push af
1A02: F5          push af
1A03: F5          push af
1A04: F4 25 25    call p,$2525
1A07: 25          dec  h
1A08: F4 25 25    call p,$2525
1A0B: 25          dec  h
1A0C: F4 25 25    call p,$2525
1A0F: 25          dec  h
1A10: F4 25 25    call p,$2525
1A13: 25          dec  h
1A14: F4 25 25    call p,$2525
1A17: 25          dec  h
1A18: 25          dec  h
1A19: 25          dec  h
1A1A: 25          dec  h
1A1B: 25          dec  h
1A1C: F4 25 25    call p,$2525
1A1F: 25          dec  h
1A20: F4 25 25    call p,$2525
1A23: 25          dec  h
1A24: F4 25 25    call p,$2525
1A27: 25          dec  h
1A28: F4 25 25    call p,$2525
1A2B: 25          dec  h
1A2C: F4 25 25    call p,$2525
1A2F: 25          dec  h
1A30: F4 25 25    call p,$2525
1A33: 25          dec  h
1A34: 25          dec  h
1A35: 25          dec  h
1A36: 25          dec  h
1A37: 25          dec  h
1A38: F4 25 25    call p,$2525
1A3B: 25          dec  h
1A3C: F4 25 25    call p,$2525
1A3F: 25          dec  h
1A40: F4 25 25    call p,$2525
1A43: 25          dec  h
1A44: F4 25 25    call p,$2525
1A47: 25          dec  h
1A48: F4 25 25    call p,$2525
1A4B: 25          dec  h
1A4C: F4 25 25    call p,$2525
1A4F: 25          dec  h
1A50: 25          dec  h
1A51: 25          dec  h
1A52: 25          dec  h
1A53: 25          dec  h
1A54: F4 25 25    call p,$2525
1A57: 25          dec  h
1A58: F4 25 25    call p,$2525
1A5B: 25          dec  h
1A5C: F5          push af
1A5D: F5          push af
1A5E: F5          push af
1A5F: F5          push af
1A60: F5          push af
1A61: F5          push af
1A62: F5          push af
1A63: F5          push af
1A64: F5          push af
1A65: F5          push af
1A66: F5          push af
1A67: F5          push af
1A68: F4 35 35    call p,$3535
1A6B: 35          dec  (hl)
1A6C: 35          dec  (hl)
1A6D: 25          dec  h
1A6E: 25          dec  h
1A6F: 25          dec  h
1A70: F5          push af
1A71: F5          push af
1A72: F5          push af
1A73: F5          push af
1A74: F4 25 25    call p,$2525
1A77: 25          dec  h
1A78: F4 25 25    call p,$2525
1A7B: 25          dec  h
1A7C: 25          dec  h
1A7D: 25          dec  h
1A7E: 25          dec  h
1A7F: 25          dec  h
1A80: F4 25 25    call p,$2525
1A83: 25          dec  h
1A84: F6 25       or   $25
1A86: 37          scf
1A87: 38 35       jr   c,$1ABE
1A89: 25          dec  h
1A8A: 25          dec  h
1A8B: 25          dec  h
1A8C: F4 25 25    call p,$2525
1A8F: 25          dec  h
1A90: 25          dec  h
1A91: 25          dec  h
1A92: 25          dec  h
1A93: 25          dec  h
1A94: F4 25 25    call p,$2525
1A97: 25          dec  h
1A98: 25          dec  h
1A99: 25          dec  h
1A9A: 25          dec  h
1A9B: 25          dec  h
1A9C: F4 25 25    call p,$2525
1A9F: 25          dec  h
1AA0: FC 25 37    call m,$3725
1AA3: 38 35       jr   c,$1ADA
1AA5: 25          dec  h
1AA6: 25          dec  h
1AA7: 25          dec  h
1AA8: F4 25 25    call p,$2525
1AAB: 25          dec  h
1AAC: 25          dec  h
1AAD: 25          dec  h
1AAE: 25          dec  h
1AAF: 25          dec  h
1AB0: F4 25 25    call p,$2525
1AB3: 25          dec  h
1AB4: 25          dec  h
1AB5: 25          dec  h
1AB6: 25          dec  h
1AB7: 25          dec  h
1AB8: F4 25 25    call p,$2525
1ABB: 25          dec  h
1ABC: F6 25       or   $25
1ABE: 37          scf
1ABF: 38 35       jr   c,$1AF6
1AC1: 25          dec  h
1AC2: 25          dec  h
1AC3: 25          dec  h
1AC4: F4 25 25    call p,$2525
1AC7: 25          dec  h
1AC8: 25          dec  h
1AC9: 25          dec  h
1ACA: 25          dec  h
1ACB: 25          dec  h
1ACC: F4 35 35    call p,$3535
1ACF: 35          dec  (hl)
1AD0: 35          dec  (hl)
1AD1: 25          dec  h
1AD2: 25          dec  h
1AD3: 25          dec  h
1AD4: F4 25 25    call p,$2525
1AD7: 25          dec  h
1AD8: F4 35 35    call p,$3535
1ADB: 35          dec  (hl)
1ADC: 35          dec  (hl)
1ADD: 25          dec  h
1ADE: 25          dec  h
1ADF: 25          dec  h
1AE0: F4 36 36    call p,$3636
1AE3: 36 36       ld   (hl),$36
1AE5: 25          dec  h
1AE6: 25          dec  h
1AE7: 25          dec  h
1AE8: F6 25       or   $25
1AEA: 37          scf
1AEB: 38 35       jr   c,$1B22
1AED: 25          dec  h
1AEE: 25          dec  h
1AEF: 25          dec  h
1AF0: F4 25 25    call p,$2525
1AF3: 25          dec  h
1AF4: F4 25 25    call p,$2525
1AF7: 25          dec  h
1AF8: 25          dec  h
1AF9: 25          dec  h
1AFA: 25          dec  h
1AFB: 25          dec  h
1AFC: F4 25 25    call p,$2525
1AFF: 25          dec  h
1B00: 36 25       ld   (hl),$25
1B02: 25          dec  h
1B03: 25          dec  h
1B04: FC 25 37    call m,$3725
1B07: 38 35       jr   c,$1B3E
1B09: 25          dec  h
1B0A: 25          dec  h
1B0B: 25          dec  h
1B0C: F4 25 25    call p,$2525
1B0F: 25          dec  h
1B10: F4 25 25    call p,$2525
1B13: 25          dec  h
1B14: 25          dec  h
1B15: 25          dec  h
1B16: 25          dec  h
1B17: 25          dec  h
1B18: F9          ld   sp,hl
1B19: 25          dec  h
1B1A: 25          dec  h
1B1B: 25          dec  h
1B1C: 36 25       ld   (hl),$25
1B1E: 25          dec  h
1B1F: 25          dec  h
1B20: F6 25       or   $25
1B22: 37          scf
1B23: 38 35       jr   c,$1B5A
1B25: 25          dec  h
1B26: 25          dec  h
1B27: 25          dec  h
1B28: F4 25 25    call p,$2525
1B2B: 25          dec  h
1B2C: F4 25 25    call p,$2525
1B2F: 25          dec  h
1B30: 25          dec  h
1B31: 25          dec  h
1B32: 25          dec  h
1B33: 25          dec  h
1B34: F4 25 25    call p,$2525
1B37: 25          dec  h
1B38: 36 25       ld   (hl),$25
1B3A: 25          dec  h
1B3B: 25          dec  h
1B3C: F4 35 35    call p,$3535
1B3F: 35          dec  (hl)
1B40: 35          dec  (hl)
1B41: 25          dec  h
1B42: 25          dec  h
1B43: 25          dec  h
1B44: F5          push af
1B45: F5          push af
1B46: F5          push af
1B47: F5          push af
1B48: F5          push af
1B49: F5          push af
1B4A: F5          push af
1B4B: F5          push af
1B4C: F5          push af
1B4D: F5          push af
1B4E: F5          push af
1B4F: F5          push af
1B50: F4 36 36    call p,$3636
1B53: 36 36       ld   (hl),$36
1B55: 25          dec  h
1B56: 25          dec  h
1B57: 25          dec  h
1B58: F4 25 25    call p,$2525
1B5B: 25          dec  h
1B5C: 25          dec  h
1B5D: 25          dec  h
1B5E: 25          dec  h
1B5F: 25          dec  h
1B60: F4 25 25    call p,$2525
1B63: 25          dec  h
1B64: 25          dec  h
1B65: 25          dec  h
1B66: 25          dec  h
1B67: 25          dec  h
1B68: FD 25       dec  iyh
1B6A: 25          dec  h
1B6B: 25          dec  h
1B6C: F4 25 25    call p,$2525
1B6F: 25          dec  h
1B70: 25          dec  h
1B71: 25          dec  h
1B72: 25          dec  h
1B73: 25          dec  h
1B74: F4 25 25    call p,$2525
1B77: 25          dec  h
1B78: 25          dec  h
1B79: 25          dec  h
1B7A: 25          dec  h
1B7B: 25          dec  h
1B7C: F4 25 25    call p,$2525
1B7F: 25          dec  h
1B80: 25          dec  h
1B81: 25          dec  h
1B82: 25          dec  h
1B83: 25          dec  h
1B84: FF          rst  $38
1B85: 25          dec  h
1B86: 25          dec  h
1B87: 25          dec  h
1B88: F4 25 25    call p,$2525
1B8B: 25          dec  h
1B8C: 25          dec  h
1B8D: 25          dec  h
1B8E: 25          dec  h
1B8F: 25          dec  h
1B90: F4 25 25    call p,$2525
1B93: 25          dec  h
1B94: 25          dec  h
1B95: 25          dec  h
1B96: 25          dec  h
1B97: 25          dec  h
1B98: F4 25 25    call p,$2525
1B9B: 25          dec  h
1B9C: 25          dec  h
1B9D: 25          dec  h
1B9E: 25          dec  h
1B9F: 25          dec  h
1BA0: FD 25       dec  iyh
1BA2: 25          dec  h
1BA3: 25          dec  h
1BA4: F4 25 25    call p,$2525
1BA7: 25          dec  h
1BA8: 25          dec  h
1BA9: 25          dec  h
1BAA: 25          dec  h
1BAB: 25          dec  h
1BAC: F5          push af
1BAD: F5          push af
1BAE: F5          push af
1BAF: F5          push af
1BB0: F5          push af
1BB1: F5          push af
1BB2: F5          push af
1BB3: F5          push af
1BB4: F4 35 35    call p,$3535
1BB7: 35          dec  (hl)
1BB8: 35          dec  (hl)
1BB9: 25          dec  h
1BBA: 25          dec  h
1BBB: 25          dec  h
1BBC: 25          dec  h
1BBD: 25          dec  h
1BBE: 25          dec  h
1BBF: 25          dec  h
1BC0: F5          push af
1BC1: F5          push af
1BC2: F5          push af
1BC3: F5          push af
1BC4: F4 25 25    call p,$2525
1BC7: 25          dec  h
1BC8: 25          dec  h
1BC9: 25          dec  h
1BCA: 25          dec  h
1BCB: 25          dec  h
1BCC: F4 25 25    call p,$2525
1BCF: 25          dec  h
1BD0: F6 25       or   $25
1BD2: 37          scf
1BD3: 38 35       jr   c,$1C0A
1BD5: 25          dec  h
1BD6: 25          dec  h
1BD7: 25          dec  h
1BD8: 25          dec  h
1BD9: 25          dec  h
1BDA: 25          dec  h
1BDB: 25          dec  h
1BDC: F4 25 25    call p,$2525
1BDF: 25          dec  h
1BE0: F4 25 25    call p,$2525
1BE3: 25          dec  h
1BE4: 25          dec  h
1BE5: 25          dec  h
1BE6: 25          dec  h
1BE7: 25          dec  h
1BE8: F4 25 25    call p,$2525
1BEB: 25          dec  h
1BEC: FC 25 37    call m,$3725
1BEF: 38 35       jr   c,$1C26
1BF1: 25          dec  h
1BF2: 25          dec  h
1BF3: 25          dec  h
1BF4: 25          dec  h
1BF5: 25          dec  h
1BF6: 25          dec  h
1BF7: 25          dec  h
1BF8: F4 25 25    call p,$2525
1BFB: 25          dec  h
1BFC: F4 25 25    call p,$2525
1BFF: 25          dec  h
1C00: 25          dec  h
1C01: 25          dec  h
1C02: 25          dec  h
1C03: 25          dec  h
1C04: F4 25 25    call p,$2525
1C07: 25          dec  h
1C08: F6 25       or   $25
1C0A: 37          scf
1C0B: 38 35       jr   c,$1C42
1C0D: 25          dec  h
1C0E: 25          dec  h
1C0F: 25          dec  h
1C10: 25          dec  h
1C11: 25          dec  h
1C12: 25          dec  h
1C13: 25          dec  h
1C14: F4 25 25    call p,$2525
1C17: 25          dec  h
1C18: F4 25 25    call p,$2525
1C1B: 25          dec  h
1C1C: 25          dec  h
1C1D: 25          dec  h
1C1E: 25          dec  h
1C1F: 25          dec  h
1C20: F5          push af
1C21: F5          push af
1C22: F5          push af
1C23: F5          push af
1C24: F4 35 35    call p,$3535
1C27: 35          dec  (hl)
1C28: 35          dec  (hl)
1C29: 25          dec  h
1C2A: 25          dec  h
1C2B: 25          dec  h
1C2C: F5          push af
1C2D: F5          push af
1C2E: F5          push af
1C2F: F5          push af
1C30: F5          push af
1C31: F5          push af
1C32: F5          push af
1C33: F5          push af
1C34: F4 25 25    call p,$2525
1C37: 25          dec  h
1C38: FD 25       dec  iyh
1C3A: 25          dec  h
1C3B: 25          dec  h
1C3C: F4 25 25    call p,$2525
1C3F: 25          dec  h
1C40: F4 25 25    call p,$2525
1C43: 25          dec  h
1C44: 25          dec  h
1C45: 25          dec  h
1C46: 25          dec  h
1C47: 25          dec  h
1C48: F4 25 25    call p,$2525
1C4B: 25          dec  h
1C4C: F4 25 25    call p,$2525
1C4F: 25          dec  h
1C50: F4 25 25    call p,$2525
1C53: 25          dec  h
1C54: FF          rst  $38
1C55: 25          dec  h
1C56: 25          dec  h
1C57: 25          dec  h
1C58: F4 25 25    call p,$2525
1C5B: 25          dec  h
1C5C: F4 25 25    call p,$2525
1C5F: 25          dec  h
1C60: 25          dec  h
1C61: 25          dec  h
1C62: 25          dec  h
1C63: 25          dec  h
1C64: F4 25 25    call p,$2525
1C67: 25          dec  h
1C68: F4 25 25    call p,$2525
1C6B: 25          dec  h
1C6C: F4 25 25    call p,$2525
1C6F: 25          dec  h
1C70: FD 25       dec  iyh
1C72: 25          dec  h
1C73: 25          dec  h
1C74: F4 25 25    call p,$2525
1C77: 25          dec  h
1C78: F4 25 25    call p,$2525
1C7B: 25          dec  h
1C7C: 25          dec  h
1C7D: 25          dec  h
1C7E: 25          dec  h
1C7F: 25          dec  h
1C80: F4 25 25    call p,$2525
1C83: 25          dec  h
1C84: F4 25 25    call p,$2525
1C87: 25          dec  h
1C88: F4 25 25    call p,$2525
1C8B: 25          dec  h
1C8C: F5          push af
1C8D: F5          push af
1C8E: F5          push af
1C8F: F5          push af
1C90: F5          push af
1C91: F5          push af
1C92: F5          push af
1C93: F5          push af
1C94: F5          push af
1C95: F5          push af
1C96: F5          push af
1C97: F5          push af
1C98: F5          push af
1C99: F5          push af
1C9A: F5          push af
1C9B: F5          push af
1C9C: F5          push af
1C9D: F5          push af
1C9E: F5          push af
1C9F: F5          push af
1CA0: F5          push af
1CA1: F5          push af
1CA2: F5          push af
1CA3: F5          push af
1CA4: F4 25 25    call p,$2525
1CA7: 25          dec  h
1CA8: 25          dec  h
1CA9: 25          dec  h
1CAA: 25          dec  h
1CAB: 25          dec  h
1CAC: 25          dec  h
1CAD: 25          dec  h
1CAE: 25          dec  h
1CAF: 25          dec  h
1CB0: 25          dec  h
1CB1: 25          dec  h
1CB2: 25          dec  h
1CB3: 25          dec  h
1CB4: 25          dec  h
1CB5: 25          dec  h
1CB6: 25          dec  h
1CB7: 25          dec  h
1CB8: 25          dec  h
1CB9: 25          dec  h
1CBA: 25          dec  h
1CBB: 25          dec  h
1CBC: 25          dec  h
1CBD: 25          dec  h
1CBE: 25          dec  h
1CBF: 25          dec  h
1CC0: 25          dec  h
1CC1: 25          dec  h
1CC2: 25          dec  h
1CC3: 25          dec  h
1CC4: 25          dec  h
1CC5: 25          dec  h
1CC6: 25          dec  h
1CC7: 25          dec  h
1CC8: 25          dec  h
1CC9: 25          dec  h
1CCA: 25          dec  h
1CCB: 25          dec  h
1CCC: 25          dec  h
1CCD: 25          dec  h
1CCE: 25          dec  h
1CCF: 25          dec  h
1CD0: 25          dec  h
1CD1: 25          dec  h
1CD2: 25          dec  h
1CD3: 25          dec  h
1CD4: 25          dec  h
1CD5: 25          dec  h
1CD6: 25          dec  h
1CD7: 25          dec  h
1CD8: 25          dec  h
1CD9: 25          dec  h
1CDA: 25          dec  h
1CDB: 25          dec  h
1CDC: 25          dec  h
1CDD: 25          dec  h
1CDE: 25          dec  h
1CDF: 25          dec  h
1CE0: 25          dec  h
1CE1: 25          dec  h
1CE2: 25          dec  h
1CE3: 25          dec  h
1CE4: 25          dec  h
1CE5: 25          dec  h
1CE6: 25          dec  h
1CE7: 25          dec  h
1CE8: 25          dec  h
1CE9: 25          dec  h
1CEA: 25          dec  h
1CEB: 25          dec  h
1CEC: 25          dec  h
1CED: 25          dec  h
1CEE: 25          dec  h
1CEF: 25          dec  h
1CF0: 25          dec  h
1CF1: 25          dec  h
1CF2: 25          dec  h
1CF3: 25          dec  h
1CF4: 25          dec  h
1CF5: 25          dec  h
1CF6: 25          dec  h
1CF7: 25          dec  h
1CF8: 25          dec  h
1CF9: 25          dec  h
1CFA: 25          dec  h
1CFB: 25          dec  h
1CFC: F5          push af
1CFD: F5          push af
1CFE: F5          push af
1CFF: F5          push af
1D00: F5          push af
1D01: F5          push af
1D02: F5          push af
1D03: F5          push af
1D04: F5          push af
1D05: F5          push af
1D06: F5          push af
1D07: F5          push af
1D08: F5          push af
1D09: F5          push af
1D0A: F5          push af
1D0B: F5          push af
1D0C: F5          push af
1D0D: F5          push af
1D0E: F5          push af
1D0F: F5          push af
1D10: F5          push af
1D11: F5          push af
1D12: F5          push af
1D13: F5          push af
1D14: F4 25 25    call p,$2525
1D17: 25          dec  h
1D18: F4 25 25    call p,$2525
1D1B: 25          dec  h
1D1C: F4 25 25    call p,$2525
1D1F: 25          dec  h
1D20: F4 25 25    call p,$2525
1D23: 25          dec  h
1D24: F4 25 25    call p,$2525
1D27: 25          dec  h
1D28: F4 25 25    call p,$2525
1D2B: 25          dec  h
1D2C: F4 25 25    call p,$2525
1D2F: 25          dec  h
1D30: F4 25 25    call p,$2525
1D33: 25          dec  h
1D34: F4 25 25    call p,$2525
1D37: 25          dec  h
1D38: F4 25 25    call p,$2525
1D3B: 25          dec  h
1D3C: F4 25 25    call p,$2525
1D3F: 25          dec  h
1D40: F4 25 25    call p,$2525
1D43: 25          dec  h
1D44: F4 25 25    call p,$2525
1D47: 25          dec  h
1D48: F4 25 25    call p,$2525
1D4B: 25          dec  h
1D4C: F4 25 25    call p,$2525
1D4F: 25          dec  h
1D50: F4 25 25    call p,$2525
1D53: 25          dec  h
1D54: F4 25 25    call p,$2525
1D57: 25          dec  h
1D58: F4 25 25    call p,$2525
1D5B: 25          dec  h
1D5C: F4 25 25    call p,$2525
1D5F: 25          dec  h
1D60: F4 25 25    call p,$2525
1D63: 25          dec  h
1D64: F4 25 25    call p,$2525
1D67: 25          dec  h
1D68: F4 25 25    call p,$2525
1D6B: 25          dec  h
1D6C: F5          push af
1D6D: F5          push af
1D6E: F5          push af
1D6F: F5          push af
1D70: F5          push af
1D71: F5          push af
1D72: F5          push af
1D73: F5          push af
1D74: F5          push af
1D75: F5          push af
1D76: F5          push af
1D77: F5          push af
1D78: F5          push af
1D79: F5          push af
1D7A: F5          push af
1D7B: F5          push af
1D7C: F5          push af
1D7D: F5          push af
1D7E: F5          push af
1D7F: F5          push af
1D80: F5          push af
1D81: F5          push af
1D82: F5          push af
1D83: F5          push af
1D84: F4 25 25    call p,$2525
1D87: 25          dec  h
1D88: F4 25 25    call p,$2525
1D8B: 25          dec  h
1D8C: F4 25 25    call p,$2525
1D8F: 25          dec  h
1D90: 25          dec  h
1D91: 25          dec  h
1D92: 25          dec  h
1D93: 25          dec  h
1D94: F4 25 25    call p,$2525
1D97: 25          dec  h
1D98: F4 25 25    call p,$2525
1D9B: 25          dec  h
1D9C: F4 25 25    call p,$2525
1D9F: 25          dec  h
1DA0: 25          dec  h
1DA1: 25          dec  h
1DA2: 25          dec  h
1DA3: 25          dec  h
1DA4: F4 25 25    call p,$2525
1DA7: 25          dec  h
1DA8: F4 25 25    call p,$2525
1DAB: 25          dec  h
1DAC: 25          dec  h
1DAD: 25          dec  h
1DAE: 25          dec  h
1DAF: 25          dec  h
1DB0: F4 25 25    call p,$2525
1DB3: 25          dec  h
1DB4: F4 25 25    call p,$2525
1DB7: 25          dec  h
1DB8: F4 25 25    call p,$2525
1DBB: 25          dec  h
1DBC: 25          dec  h
1DBD: 25          dec  h
1DBE: 25          dec  h
1DBF: 25          dec  h
1DC0: F4 25 25    call p,$2525
1DC3: 25          dec  h
1DC4: F4 25 25    call p,$2525
1DC7: 25          dec  h
1DC8: 25          dec  h
1DC9: 25          dec  h
1DCA: 25          dec  h
1DCB: 25          dec  h
1DCC: F4 25 25    call p,$2525
1DCF: 25          dec  h
1DD0: F4 25 25    call p,$2525
1DD3: 25          dec  h
1DD4: F4 25 25    call p,$2525
1DD7: 25          dec  h
1DD8: 25          dec  h
1DD9: 25          dec  h
1DDA: 25          dec  h
1DDB: 25          dec  h
1DDC: F5          push af
1DDD: F5          push af
1DDE: F5          push af
1DDF: F5          push af
1DE0: F4 25 25    call p,$2525
1DE3: 25          dec  h
1DE4: 25          dec  h
1DE5: 25          dec  h
1DE6: 25          dec  h
1DE7: 25          dec  h
1DE8: F5          push af
1DE9: F5          push af
1DEA: F5          push af
1DEB: F5          push af
1DEC: F5          push af
1DED: F5          push af
1DEE: F5          push af
1DEF: F5          push af
1DF0: F4 36 36    call p,$3636
1DF3: 36 36       ld   (hl),$36
1DF5: 25          dec  h
1DF6: 25          dec  h
1DF7: 25          dec  h
1DF8: F4 25 25    call p,$2525
1DFB: 25          dec  h
1DFC: 25          dec  h
1DFD: 25          dec  h
1DFE: 25          dec  h
1DFF: 25          dec  h
1E00: FD 25       dec  iyh
1E02: 25          dec  h
1E03: 25          dec  h
1E04: F4 25 25    call p,$2525
1E07: 25          dec  h
1E08: 25          dec  h
1E09: 25          dec  h
1E0A: 25          dec  h
1E0B: 25          dec  h
1E0C: F4 25 25    call p,$2525
1E0F: 25          dec  h
1E10: 36 25       ld   (hl),$25
1E12: 25          dec  h
1E13: 25          dec  h
1E14: F4 25 25    call p,$2525
1E17: 25          dec  h
1E18: 25          dec  h
1E19: 25          dec  h
1E1A: 25          dec  h
1E1B: 25          dec  h
1E1C: FF          rst  $38
1E1D: 25          dec  h
1E1E: 25          dec  h
1E1F: 25          dec  h
1E20: F4 25 25    call p,$2525
1E23: 25          dec  h
1E24: 25          dec  h
1E25: 25          dec  h
1E26: 25          dec  h
1E27: 25          dec  h
1E28: F9          ld   sp,hl
1E29: 25          dec  h
1E2A: 25          dec  h
1E2B: 25          dec  h
1E2C: 36 25       ld   (hl),$25
1E2E: 25          dec  h
1E2F: 25          dec  h
1E30: F4 25 25    call p,$2525
1E33: 25          dec  h
1E34: 25          dec  h
1E35: 25          dec  h
1E36: 25          dec  h
1E37: 25          dec  h
1E38: FD 25       dec  iyh
1E3A: 25          dec  h
1E3B: 25          dec  h
1E3C: F4 25 25    call p,$2525
1E3F: 25          dec  h
1E40: 25          dec  h
1E41: 25          dec  h
1E42: 25          dec  h
1E43: 25          dec  h
1E44: F4 25 25    call p,$2525
1E47: 25          dec  h
1E48: 36 25       ld   (hl),$25
1E4A: 25          dec  h
1E4B: 25          dec  h
1E4C: F4 35 35    call p,$3535
1E4F: 35          dec  (hl)
1E50: 35          dec  (hl)
1E51: 25          dec  h
1E52: 25          dec  h
1E53: 25          dec  h
1E54: F5          push af
1E55: F5          push af
1E56: F5          push af
1E57: F5          push af
1E58: F4 25 25    call p,$2525
1E5B: 25          dec  h
1E5C: 25          dec  h
1E5D: 25          dec  h
1E5E: 25          dec  h
1E5F: 25          dec  h
1E60: F4 36 36    call p,$3636
1E63: 36 36       ld   (hl),$36
1E65: 25          dec  h
1E66: 25          dec  h
1E67: 25          dec  h
1E68: F6 25       or   $25
1E6A: 37          scf
1E6B: 38 35       jr   c,$1EA2
1E6D: 25          dec  h
1E6E: 25          dec  h
1E6F: 25          dec  h
1E70: F4 25 25    call p,$2525
1E73: 25          dec  h
1E74: 25          dec  h
1E75: 25          dec  h
1E76: 25          dec  h
1E77: 25          dec  h
1E78: FD 25       dec  iyh
1E7A: 25          dec  h
1E7B: 25          dec  h
1E7C: F4 25 25    call p,$2525
1E7F: 25          dec  h
1E80: 25          dec  h
1E81: 25          dec  h
1E82: 25          dec  h
1E83: 25          dec  h
1E84: FC 25 37    call m,$3725
1E87: 38 35       jr   c,$1EBE
1E89: 25          dec  h
1E8A: 25          dec  h
1E8B: 25          dec  h
1E8C: F4 25 25    call p,$2525
1E8F: 25          dec  h
1E90: 25          dec  h
1E91: 25          dec  h
1E92: 25          dec  h
1E93: 25          dec  h
1E94: FF          rst  $38
1E95: 25          dec  h
1E96: 25          dec  h
1E97: 25          dec  h
1E98: F4 25 25    call p,$2525
1E9B: 25          dec  h
1E9C: 25          dec  h
1E9D: 25          dec  h
1E9E: 25          dec  h
1E9F: 25          dec  h
1EA0: F6 25       or   $25
1EA2: 37          scf
1EA3: 38 35       jr   c,$1EDA
1EA5: 25          dec  h
1EA6: 25          dec  h
1EA7: 25          dec  h
1EA8: F4 25 25    call p,$2525
1EAB: 25          dec  h
1EAC: 25          dec  h
1EAD: 25          dec  h
1EAE: 25          dec  h
1EAF: 25          dec  h
1EB0: FD 25       dec  iyh
1EB2: 25          dec  h
1EB3: 25          dec  h
1EB4: F4 25 25    call p,$2525
1EB7: 25          dec  h
1EB8: 25          dec  h
1EB9: 25          dec  h
1EBA: 25          dec  h
1EBB: 25          dec  h
1EBC: F4 35 35    call p,$3535
1EBF: 35          dec  (hl)
1EC0: 35          dec  (hl)
1EC1: 25          dec  h
1EC2: 25          dec  h
1EC3: 25          dec  h
1EC4: F4 35 35    call p,$3535
1EC7: 35          dec  (hl)
1EC8: 35          dec  (hl)
1EC9: 25          dec  h
1ECA: 25          dec  h
1ECB: 25          dec  h
1ECC: F5          push af
1ECD: F5          push af
1ECE: F5          push af
1ECF: F5          push af
1ED0: F4 35 35    call p,$3535
1ED3: 35          dec  (hl)
1ED4: 35          dec  (hl)
1ED5: 25          dec  h
1ED6: 25          dec  h
1ED7: 25          dec  h
1ED8: F4 25 25    call p,$2525
1EDB: 25          dec  h
1EDC: 25          dec  h
1EDD: 25          dec  h
1EDE: 25          dec  h
1EDF: 25          dec  h
1EE0: F6 25       or   $25
1EE2: 37          scf
1EE3: 38 35       jr   c,$1F1A
1EE5: 25          dec  h
1EE6: 25          dec  h
1EE7: 25          dec  h
1EE8: F4 25 25    call p,$2525
1EEB: 25          dec  h
1EEC: F6 25       or   $25
1EEE: 37          scf
1EEF: 38 35       jr   c,$1F26
1EF1: 25          dec  h
1EF2: 25          dec  h
1EF3: 25          dec  h
1EF4: F4 25 25    call p,$2525
1EF7: 25          dec  h
1EF8: 25          dec  h
1EF9: 25          dec  h
1EFA: 25          dec  h
1EFB: 25          dec  h
1EFC: FC 25 37    call m,$3725
1EFF: 38 35       jr   c,$1F36
1F01: 25          dec  h
1F02: 25          dec  h
1F03: 25          dec  h
1F04: F4 25 25    call p,$2525
1F07: 25          dec  h
1F08: FC 25 37    call m,$3725
1F0B: 38 35       jr   c,$1F42
1F0D: 25          dec  h
1F0E: 25          dec  h
1F0F: 25          dec  h
1F10: F4 25 25    call p,$2525
1F13: 25          dec  h
1F14: 25          dec  h
1F15: 25          dec  h
1F16: 25          dec  h
1F17: 25          dec  h
1F18: F6 25       or   $25
1F1A: 37          scf
1F1B: 38 35       jr   c,$1F52
1F1D: 25          dec  h
1F1E: 25          dec  h
1F1F: 25          dec  h
1F20: F4 25 25    call p,$2525
1F23: 25          dec  h
1F24: F6 25       or   $25
1F26: 37          scf
1F27: 38 35       jr   c,$1F5E
1F29: 25          dec  h
1F2A: 25          dec  h
1F2B: 25          dec  h
1F2C: F5          push af
1F2D: F5          push af
1F2E: F5          push af
1F2F: F5          push af
1F30: F5          push af
1F31: F5          push af
1F32: F5          push af
1F33: F5          push af
1F34: F4 35 35    call p,$3535
1F37: 35          dec  (hl)
1F38: 35          dec  (hl)
1F39: 25          dec  h
1F3A: 25          dec  h
1F3B: 25          dec  h
1F3C: F5          push af
1F3D: F5          push af
1F3E: F5          push af
1F3F: F5          push af
1F40: F4 35 35    call p,$3535
1F43: 35          dec  (hl)
1F44: 35          dec  (hl)
1F45: 25          dec  h
1F46: 25          dec  h
1F47: 25          dec  h
1F48: F4 25 25    call p,$2525
1F4B: 25          dec  h
1F4C: F4 25 25    call p,$2525
1F4F: 25          dec  h
1F50: F4 25 25    call p,$2525
1F53: 25          dec  h
1F54: 25          dec  h
1F55: 25          dec  h
1F56: 25          dec  h
1F57: 25          dec  h
1F58: F4 25 25    call p,$2525
1F5B: 25          dec  h
1F5C: F4 25 25    call p,$2525
1F5F: 25          dec  h
1F60: 25          dec  h
1F61: 25          dec  h
1F62: 25          dec  h
1F63: 25          dec  h
1F64: F4 25 25    call p,$2525
1F67: 25          dec  h
1F68: F4 25 25    call p,$2525
1F6B: 25          dec  h
1F6C: F4 25 25    call p,$2525
1F6F: 25          dec  h
1F70: 25          dec  h
1F71: 25          dec  h
1F72: 25          dec  h
1F73: 25          dec  h
1F74: F4 25 25    call p,$2525
1F77: 25          dec  h
1F78: F4 25 25    call p,$2525
1F7B: 25          dec  h
1F7C: 25          dec  h
1F7D: 25          dec  h
1F7E: 25          dec  h
1F7F: 25          dec  h
1F80: F4 25 25    call p,$2525
1F83: 25          dec  h
1F84: F4 25 25    call p,$2525
1F87: 25          dec  h
1F88: F4 25 25    call p,$2525
1F8B: 25          dec  h
1F8C: 25          dec  h
1F8D: 25          dec  h
1F8E: 25          dec  h
1F8F: 25          dec  h
1F90: F4 25 25    call p,$2525
1F93: 25          dec  h
1F94: F4 25 25    call p,$2525
1F97: 25          dec  h
1F98: 25          dec  h
1F99: 25          dec  h
1F9A: 25          dec  h
1F9B: 25          dec  h
1F9C: F5          push af
1F9D: F5          push af
1F9E: F5          push af
1F9F: F5          push af
1FA0: F5          push af
1FA1: F5          push af
1FA2: F5          push af
1FA3: F5          push af
1FA4: F5          push af
1FA5: F5          push af
1FA6: F5          push af
1FA7: F5          push af
1FA8: F5          push af
1FA9: F5          push af
1FAA: F5          push af
1FAB: F5          push af
1FAC: F5          push af
1FAD: F5          push af
1FAE: F5          push af
1FAF: F5          push af
1FB0: F4 25 25    call p,$2525
1FB3: 25          dec  h
1FB4: 25          dec  h
1FB5: 25          dec  h
1FB6: 25          dec  h
1FB7: 25          dec  h
1FB8: 25          dec  h
1FB9: 25          dec  h
1FBA: 25          dec  h
1FBB: 25          dec  h
1FBC: 25          dec  h
1FBD: 25          dec  h
1FBE: 25          dec  h
1FBF: 25          dec  h
1FC0: 25          dec  h
1FC1: 25          dec  h
1FC2: 25          dec  h
1FC3: 25          dec  h
1FC4: 25          dec  h
1FC5: 25          dec  h
1FC6: 25          dec  h
1FC7: 25          dec  h
1FC8: 25          dec  h
1FC9: 25          dec  h
1FCA: 25          dec  h
1FCB: 25          dec  h
1FCC: 25          dec  h
1FCD: 25          dec  h
1FCE: 25          dec  h
1FCF: 25          dec  h
1FD0: 25          dec  h
1FD1: 3A 39 80    ld   a,($8039)
1FD4: A7          and  a
1FD5: C2 E3 1F    jp   nz,$1FE3
1FD8: 3A 3B 80    ld   a,($803B)
1FDB: FE 06       cp   $06
1FDD: C2 E0 1F    jp   nz,$1FE0
1FE0: C3 D1 1F    jp   $1FD1
1FE3: 0F          rrca
1FE4: DA 9E 21    jp   c,$219E
1FE7: 0F          rrca
1FE8: DA CA 21    jp   c,$21CA
1FEB: 0F          rrca
1FEC: DA F6 21    jp   c,$21F6
1FEF: 0F          rrca
1FF0: DA 04 22    jp   c,$2204
1FF3: 0F          rrca
1FF4: DA 84 22    jp   c,$2284
1FF7: 0F          rrca
1FF8: DA 0A 20    jp   c,$200A
1FFB: 0F          rrca
1FFC: DA B3 20    jp   c,$20B3
1FFF: 0F          rrca
2000: DA D9 20    jp   c,$20D9
2003: AF          xor  a
2004: 32 39 80    ld   ($8039),a
2007: C3 D1 1F    jp   $1FD1
200A: CD EC 20    call $20EC
200D: 21 00 85    ld   hl,$8500
2010: 06 10       ld   b,$10
2012: 3E 00       ld   a,$00
2014: 77          ld   (hl),a
2015: 23          inc  hl
2016: 10 FC       djnz $2014
2018: 21 00 86    ld   hl,$8600
201B: 06 10       ld   b,$10
201D: 77          ld   (hl),a
201E: 23          inc  hl
201F: 10 FC       djnz $201D
2021: 32 00 84    ld   ($8400),a
2024: 21 9C 80    ld   hl,$809C
2027: 06 60       ld   b,$60
2029: 77          ld   (hl),a
202A: 23          inc  hl
202B: 10 FC       djnz $2029
202D: 3A 31 80    ld   a,($8031)
2030: A7          and  a
2031: C2 3A 20    jp   nz,$203A
2034: 21 00 82    ld   hl,$8200
2037: C3 3D 20    jp   $203D
203A: 21 00 83    ld   hl,$8300
203D: 11 00 81    ld   de,$8100
2040: 01 FF 00    ld   bc,$00FF
2043: ED B0       ldir
2045: CD 82 20    call $2082
2048: CD 9D 20    call $209D
204B: CD 0B 13    call $130B
204E: CD 29 3E    call $3E29
2051: CD 34 3F    call $3F34
2054: CD 7B 41    call $417B
2057: CD 27 42    call $4227
205A: 3E A0       ld   a,$A0
205C: 32 00 B8    ld   ($watchdog),a
205F: 21 40 80    ld   hl,$8040
2062: 3E 00       ld   a,$00
2064: 06 04       ld   b,$04
2066: 77          ld   (hl),a
2067: 23          inc  hl
2068: 10 FC       djnz $2066
206A: 3E 05       ld   a,$05
206C: 32 7F 86    ld   ($867F),a
206F: CD 6C 10    call $106C
2072: 3E 06       ld   a,$06
2074: 32 3B 80    ld   ($803B),a
2077: 3A 39 80    ld   a,($8039)
207A: CB AF       res  5,a
207C: 32 39 80    ld   ($8039),a
207F: C3 D1 1F    jp   $1FD1
2082: 21 62 92    ld   hl,$9262
2085: 11 AB 20    ld   de,$20AB
2088: 06 08       ld   b,$08
208A: C5          push bc
208B: 1A          ld   a,(de)
208C: 77          ld   (hl),a
208D: 01 E0 FF    ld   bc,$FFE0
2090: 09          add  hl,bc
2091: 13          inc  de
2092: C1          pop  bc
2093: 10 F5       djnz $208A
2095: 3A 31 80    ld   a,($8031)
2098: 3C          inc  a
2099: 32 82 91    ld   ($9182),a
209C: C9          ret
209D: 21 62 96    ld   hl,$9662
20A0: 11 E0 FF    ld   de,$FFE0
20A3: 06 08       ld   b,$08
20A5: 36 87       ld   (hl),$87
20A7: 19          add  hl,de
20A8: 10 FB       djnz $20A5
20AA: C9          ret
20AB: 19          add  hl,de
20AC: 15          dec  d
20AD: 0A          ld   a,(bc)
20AE: 22 0E 1B    ld   ($1B0E),hl
20B1: 24          inc  h
20B2: 24          inc  h
20B3: CD EC 20    call $20EC
20B6: CD 82 20    call $2082
20B9: CD 9D 20    call $209D
20BC: CD BB 09    call $09BB
20BF: 3E 07       ld   a,$07
20C1: 32 3B 80    ld   ($803B),a
20C4: 3E E0       ld   a,$E0
20C6: 32 00 B8    ld   ($watchdog),a
20C9: 3E 00       ld   a,$00
20CB: 32 80 84    ld   ($8480),a
20CE: 3A 39 80    ld   a,($8039)
20D1: CB B7       res  6,a
20D3: 32 39 80    ld   ($8039),a
20D6: C3 D1 1F    jp   $1FD1
20D9: CD EC 20    call $20EC
20DC: 3E 01       ld   a,$01
20DE: 32 3B 80    ld   ($803B),a
20E1: 3A 39 80    ld   a,($8039)
20E4: CB BF       res  7,a
20E6: 32 39 80    ld   ($8039),a
20E9: C3 D1 1F    jp   $1FD1
20EC: 21 02 90    ld   hl,$9002
20EF: 11 20 00    ld   de,$0020
20F2: 06 20       ld   b,$20
20F4: 0E 1D       ld   c,$1D
20F6: C5          push bc
20F7: E5          push hl
20F8: 36 24       ld   (hl),$24
20FA: 2C          inc  l
20FB: 0D          dec  c
20FC: C2 F8 20    jp   nz,$20F8
20FF: E1          pop  hl
2100: 19          add  hl,de
2101: C1          pop  bc
2102: 10 F2       djnz $20F6
2104: 21 02 94    ld   hl,$9402
2107: 06 20       ld   b,$20
2109: 0E 1D       ld   c,$1D
210B: C5          push bc
210C: E5          push hl
210D: 36 84       ld   (hl),$84
210F: 2C          inc  l
2110: 0D          dec  c
2111: C2 0D 21    jp   nz,$210D
2114: E1          pop  hl
2115: 19          add  hl,de
2116: C1          pop  bc
2117: 10 F2       djnz $210B
2119: 21 00 98    ld   hl,$9800
211C: 06 40       ld   b,$40
211E: 36 00       ld   (hl),$00
2120: 2C          inc  l
2121: 10 FB       djnz $211E
2123: 21 00 80    ld   hl,$8000
2126: 06 20       ld   b,$20
2128: 36 00       ld   (hl),$00
212A: 2C          inc  l
212B: 10 FB       djnz $2128
212D: C9          ret
212E: 5E          ld   e,(hl)
212F: 23          inc  hl
2130: 56          ld   d,(hl)
2131: 23          inc  hl
2132: EB          ex   de,hl
2133: 01 E0 FF    ld   bc,$FFE0
2136: 1A          ld   a,(de)
2137: FE FF       cp   $FF
2139: C8          ret  z
213A: 77          ld   (hl),a
213B: 13          inc  de
213C: 09          add  hl,bc
213D: 18 F7       jr   $2136
213F: 21 4C 80    ld   hl,$804C
2142: D5          push de
2143: 06 03       ld   b,$03
2145: 1A          ld   a,(de)
2146: BE          cp   (hl)
2147: DA 54 21    jp   c,$2154
214A: CA 50 21    jp   z,$2150
214D: D2 56 21    jp   nc,$2156
2150: 1B          dec  de
2151: 2B          dec  hl
2152: 10 F1       djnz $2145
2154: D1          pop  de
2155: C9          ret
2156: D1          pop  de
2157: 21 4C 80    ld   hl,$804C
215A: 06 03       ld   b,$03
215C: 1A          ld   a,(de)
215D: 77          ld   (hl),a
215E: 2B          dec  hl
215F: 1B          dec  de
2160: 10 FA       djnz $215C
2162: 11 4C 80    ld   de,$804C
2165: 21 21 92    ld   hl,$9221
2168: 06 06       ld   b,$06
216A: 48          ld   c,b
216B: CB 38       srl  b
216D: DC 82 21    call c,$2182
2170: 78          ld   a,b
2171: A7          and  a
2172: C8          ret  z
2173: CD 79 21    call $2179
2176: C3 70 21    jp   $2170
2179: 1A          ld   a,(de)
217A: 0F          rrca
217B: 0F          rrca
217C: 0F          rrca
217D: 0F          rrca
217E: CD 84 21    call $2184
2181: 05          dec  b
2182: 1A          ld   a,(de)
2183: 1B          dec  de
2184: E6 0F       and  $0F
2186: C2 92 21    jp   nz,$2192
2189: 0D          dec  c
218A: CA 92 21    jp   z,$2192
218D: 3E 24       ld   a,$24
218F: C3 96 21    jp   $2196
2192: 0E 01       ld   c,$01
2194: C6 00       add  a,$00
2196: 77          ld   (hl),a
2197: C5          push bc
2198: 01 E0 FF    ld   bc,$FFE0
219B: 09          add  hl,bc
219C: C1          pop  bc
219D: C9          ret
219E: CD EC 20    call $20EC
21A1: 21 42 23    ld   hl,$2342
21A4: CD 2E 21    call $212E
21A7: 21 52 23    ld   hl,$2352
21AA: CD 2E 21    call $212E
21AD: 21 59 23    ld   hl,$2359
21B0: CD 2E 21    call $212E
21B3: AF          xor  a
21B4: 32 33 80    ld   ($8033),a
21B7: 32 32 80    ld   ($8032),a
21BA: 3E 02       ld   a,$02
21BC: 32 3B 80    ld   ($803B),a
21BF: 3A 39 80    ld   a,($8039)
21C2: CB 87       res  0,a
21C4: 32 39 80    ld   ($8039),a
21C7: C3 D1 1F    jp   $1FD1
21CA: CD EC 20    call $20EC
21CD: 21 62 23    ld   hl,$2362
21D0: CD 2E 21    call $212E
21D3: 21 52 23    ld   hl,$2352
21D6: CD 2E 21    call $212E
21D9: 21 59 23    ld   hl,$2359
21DC: CD 2E 21    call $212E
21DF: AF          xor  a
21E0: 32 33 80    ld   ($8033),a
21E3: 32 32 80    ld   ($8032),a
21E6: 3E 03       ld   a,$03
21E8: 32 3B 80    ld   ($803B),a
21EB: 3A 39 80    ld   a,($8039)
21EE: CB 8F       res  1,a
21F0: 32 39 80    ld   ($8039),a
21F3: C3 D1 1F    jp   $1FD1
21F6: CD EC 20    call $20EC
21F9: 3A 39 80    ld   a,($8039)
21FC: CB 97       res  2,a
21FE: 32 39 80    ld   ($8039),a
2201: C3 D1 1F    jp   $1FD1
2204: CD EC 20    call $20EC
2207: 21 72 23    ld   hl,$2372
220A: CD 2E 21    call $212E
220D: 3A 30 80    ld   a,($8030)
2210: FE 01       cp   $01
2212: CA 40 22    jp   z,$2240
2215: 3A 35 80    ld   a,($8035)
2218: 0E 01       ld   c,$01
221A: A7          and  a
221B: CA 26 22    jp   z,$2226
221E: 3A 34 80    ld   a,($8034)
2221: A7          and  a
2222: C2 71 22    jp   nz,$2271
2225: 0C          inc  c
2226: 79          ld   a,c
2227: 08          ex   af,af'
2228: 21 7E 23    ld   hl,$237E
222B: CD 2E 21    call $212E
222E: 08          ex   af,af'
222F: 77          ld   (hl),a
2230: 11 46 80    ld   de,$8046
2233: 0F          rrca
2234: DA 3A 22    jp   c,$223A
2237: 11 49 80    ld   de,$8049
223A: CD 3F 21    call $213F
223D: C3 61 22    jp   $2261
2240: 11 46 80    ld   de,$8046
2243: CD 3F 21    call $213F
2246: AF          xor  a
2247: 32 36 80    ld   ($8036),a
224A: 32 03 B0    ld   ($B003),a
224D: 21 06 B0    ld   hl,$B006
2250: 77          ld   (hl),a
2251: 2C          inc  l
2252: 77          ld   (hl),a
2253: 21 44 80    ld   hl,$8044
2256: 06 06       ld   b,$06
2258: 77          ld   (hl),a
2259: 23          inc  hl
225A: 10 FC       djnz $2258
225C: 3E 80       ld   a,$80
225E: 32 3D 80    ld   ($803D),a
2261: 3E 04       ld   a,$04
2263: 32 3B 80    ld   ($803B),a
2266: 3A 39 80    ld   a,($8039)
2269: CB 9F       res  3,a
226B: 32 39 80    ld   ($8039),a
226E: C3 D1 1F    jp   $1FD1
2271: 11 46 80    ld   de,$8046
2274: CD 3F 21    call $213F
2277: 00          nop
2278: 00          nop
2279: 00          nop
227A: 00          nop
227B: 11 49 80    ld   de,$8049
227E: CD 3F 21    call $213F
2281: C3 46 22    jp   $2246
2284: CD EC 20    call $20EC
2287: 3A 38 80    ld   a,($8038)
228A: A7          and  a
228B: CA AE 22    jp   z,$22AE
228E: AF          xor  a
228F: 32 38 80    ld   ($8038),a
2292: 21 61 93    ld   hl,$9361
2295: 11 E0 FF    ld   de,$FFE0
2298: CD A4 22    call $22A4
229B: 21 01 91    ld   hl,$9101
229E: CD A4 22    call $22A4
22A1: C3 AE 22    jp   $22AE
22A4: 06 05       ld   b,$05
22A6: 36 24       ld   (hl),$24
22A8: 19          add  hl,de
22A9: 10 FB       djnz $22A6
22AB: 36 00       ld   (hl),$00
22AD: C9          ret
22AE: 3A 31 80    ld   a,($8031)
22B1: A7          and  a
22B2: CA BE 22    jp   z,$22BE
22B5: 3A 27 80    ld   a,($8027)
22B8: A7          and  a
22B9: CA BE 22    jp   z,$22BE
22BC: 3E 01       ld   a,$01
22BE: 21 06 B0    ld   hl,$B006
22C1: 77          ld   (hl),a
22C2: 2C          inc  l
22C3: 77          ld   (hl),a
22C4: 21 7E 23    ld   hl,$237E
22C7: CD 2E 21    call $212E
22CA: 3A 31 80    ld   a,($8031)
22CD: 3C          inc  a
22CE: 77          ld   (hl),a
22CF: 3D          dec  a
22D0: 21 01 82    ld   hl,$8201
22D3: A7          and  a
22D4: CA D8 22    jp   z,$22D8
22D7: 24          inc  h
22D8: 7E          ld   a,(hl)
22D9: C6 01       add  a,$01
22DB: 27          daa
22DC: 08          ex   af,af'
22DD: 21 88 23    ld   hl,$2388
22E0: CD 2E 21    call $212E
22E3: 08          ex   af,af'
22E4: 32 37 80    ld   ($8037),a
22E7: 11 37 80    ld   de,$8037
22EA: 06 02       ld   b,$02
22EC: CD 6A 21    call $216A
22EF: CD 07 23    call $2307
22F2: 3E 05       ld   a,$05
22F4: 32 3B 80    ld   ($803B),a
22F7: 3E 40       ld   a,$40
22F9: 32 3D 80    ld   ($803D),a
22FC: 3A 39 80    ld   a,($8039)
22FF: CB A7       res  4,a
2301: 32 39 80    ld   ($8039),a
2304: C3 D1 1F    jp   $1FD1
2307: 3A 31 80    ld   a,($8031)
230A: 21 00 82    ld   hl,$8200
230D: A7          and  a
230E: CA 12 23    jp   z,$2312
2311: 24          inc  h
2312: 7E          ld   a,(hl)
2313: 06 07       ld   b,$07
2315: 21 9F 93    ld   hl,$939F
2318: 11 E0 FF    ld   de,$FFE0
231B: 3D          dec  a
231C: A7          and  a
231D: CA 28 23    jp   z,$2328
2320: 36 79       ld   (hl),$79
2322: 19          add  hl,de
2323: 05          dec  b
2324: 3D          dec  a
2325: C2 20 23    jp   nz,$2320
2328: 36 24       ld   (hl),$24
232A: 19          add  hl,de
232B: 10 FB       djnz $2328
232D: C9          ret
232E: 21 00 81    ld   hl,$8100
2331: 7E          ld   a,(hl)
2332: 3D          dec  a
2333: 21 9F 93    ld   hl,$939F
2336: 11 E0 FF    ld   de,$FFE0
2339: 06 07       ld   b,$07
233B: A7          and  a
233C: CA 28 23    jp   z,$2328
233F: C3 1C 23    jp   $231C
2342: AE          xor  (hl)
2343: 92          sub  d
2344: 18 17       jr   $235D
2346: 15          dec  d
2347: 22 24 01    ld   ($0124),hl
234A: 24          inc  h
234B: 19          add  hl,de
234C: 15          dec  d
234D: 0A          ld   a,(bc)
234E: 22 0E 1B    ld   ($1B0E),hl
2351: FF          rst  $38
2352: 2C          inc  l
2353: 92          sub  d
2354: 19          add  hl,de
2355: 1E 1C       ld   e,$1C
2357: 11 FF 50    ld   de,$50FF
235A: 92          sub  d
235B: 0B          dec  bc
235C: 1E 1D       ld   e,$1D
235E: 1D          dec  e
235F: 18 17       jr   $2378
2361: FF          rst  $38
2362: AE          xor  (hl)
2363: 92          sub  d
2364: 01 24 18    ld   bc,$1824
2367: 1B          dec  de
2368: 24          inc  h
2369: 02          ld   (bc),a
236A: 24          inc  h
236B: 19          add  hl,de
236C: 15          dec  d
236D: 0A          ld   a,(bc)
236E: 22 0E 1B    ld   ($1B0E),hl
2371: FF          rst  $38
2372: 8C          adc  a,h
2373: 92          sub  d
2374: 10 0A       djnz $2380
2376: 16 0E       ld   d,$0E
2378: 24          inc  h
2379: 18 1F       jr   $239A
237B: 0E 1B       ld   c,$1B
237D: FF          rst  $38
237E: 8F          adc  a,a
237F: 92          sub  d
2380: 19          add  hl,de
2381: 15          dec  d
2382: 0A          ld   a,(bc)
2383: 22 0E 1B    ld   ($1B0E),hl
2386: 24          inc  h
2387: FF          rst  $38
2388: 94          sub  h
2389: 92          sub  d
238A: 15          dec  d
238B: 0E 1F       ld   c,$1F
238D: 0E 15       ld   c,$15
238F: 24          inc  h
2390: FF          rst  $38
2391: 3A 1F 84    ld   a,($841F)
2394: FE 02       cp   $02
2396: CA C5 23    jp   z,$23C5
2399: 3A 3E 80    ld   a,($803E)
239C: A7          and  a
239D: C2 C9 23    jp   nz,$23C9
23A0: CD 7D 40    call $407D
23A3: CD FF 3B    call $3BFF
23A6: CD 0A 3D    call $3D0A
23A9: CD 51 2A    call $2A51
23AC: CD 06 32    call $3206
23AF: CD 39 25    call $2539
23B2: CD 4B 39    call $394B
23B5: CD D3 23    call $23D3
23B8: CD 2A 39    call $392A
23BB: CD 6D 11    call $116D
23BE: CD 0F 10    call $100F
23C1: CD BC 41    call $41BC
23C4: C9          ret
23C5: CD 39 25    call $2539
23C8: C9          ret
23C9: CD 51 2A    call $2A51
23CC: CD 06 32    call $3206
23CF: CD D3 23    call $23D3
23D2: C9          ret
23D3: 3A 33 80    ld   a,($8033)
23D6: A7          and  a
23D7: C0          ret  nz
23D8: 3A 1F 84    ld   a,($841F)
23DB: FE 02       cp   $02
23DD: C8          ret  z
23DE: 3A 3E 80    ld   a,($803E)
23E1: A7          and  a
23E2: CA 29 24    jp   z,$2429
23E5: 3A 3F 80    ld   a,($803F)
23E8: 3C          inc  a
23E9: 32 3F 80    ld   ($803F),a
23EC: FE 02       cp   $02
23EE: CA 06 24    jp   z,$2406
23F1: FE 04       cp   $04
23F3: CA 06 24    jp   z,$2406
23F6: FE E8       cp   $E8
23F8: CA 0C 24    jp   z,$240C
23FB: FE EC       cp   $EC
23FD: CA 12 24    jp   z,$2412
2400: FE F0       cp   $F0
2402: CA 18 24    jp   z,$2418
2405: C9          ret
2406: 3E 91       ld   a,$91
2408: 32 00 B8    ld   ($watchdog),a
240B: C9          ret
240C: 3E A0       ld   a,$A0
240E: 32 00 B8    ld   ($watchdog),a
2411: C9          ret
2412: 3E E0       ld   a,$E0
2414: 32 00 B8    ld   ($watchdog),a
2417: C9          ret
2418: 3E 00       ld   a,$00
241A: 32 80 84    ld   ($8480),a
241D: 32 3E 80    ld   ($803E),a
2420: 32 3F 80    ld   ($803F),a
2423: 3E 01       ld   a,$01
2425: 32 32 80    ld   ($8032),a
2428: C9          ret
2429: 21 40 81    ld   hl,$8140
242C: 3E 00       ld   a,$00
242E: 06 09       ld   b,$09
2430: BE          cp   (hl)
2431: C8          ret  z
2432: 23          inc  hl
2433: 23          inc  hl
2434: 10 FA       djnz $2430
2436: 16 00       ld   d,$00
2438: 3A 2B 86    ld   a,($862B)
243B: A7          and  a
243C: C2 49 24    jp   nz,$2449
243F: 3E 06       ld   a,$06
2441: 32 17 86    ld   ($8617),a
2444: 3E 08       ld   a,$08
2446: 82          add  a,d
2447: 27          daa
2448: 57          ld   d,a
2449: 3A 4B 86    ld   a,($864B)
244C: A7          and  a
244D: C2 5A 24    jp   nz,$245A
2450: 3E 06       ld   a,$06
2452: 32 37 86    ld   ($8637),a
2455: 3E 08       ld   a,$08
2457: 82          add  a,d
2458: 27          daa
2459: 57          ld   d,a
245A: CD 8C 3A    call $3A8C
245D: 3E 01       ld   a,$01
245F: 32 3E 80    ld   ($803E),a
2462: 3E E0       ld   a,$E0
2464: 32 00 B8    ld   ($watchdog),a
2467: C9          ret
2468: CD 47 42    call $4247
246B: C9          ret
246C: 01 00 00    ld   bc,$0000
246F: 00          nop
2470: 00          nop
2471: 00          nop
2472: 74          ld   (hl),h
2473: C2 00 00    jp   nz,$0000
2476: FF          rst  $38
2477: FE 01       cp   $01
2479: 02          ld   (bc),a
247A: 01 02 FF    ld   bc,$FF02
247D: FE 05       cp   $05
247F: 00          nop
2480: 00          nop
2481: 00          nop
2482: 00          nop
2483: 00          nop
2484: 00          nop
2485: 00          nop
2486: 00          nop
2487: 00          nop
2488: 00          nop
2489: 00          nop
248A: 00          nop
248B: 01 00 00    ld   bc,$0000
248E: 00          nop
248F: 00          nop
2490: 9B          sbc  a,e
2491: 24          inc  h
2492: 00          nop
2493: 00          nop
2494: 00          nop
2495: 00          nop
2496: 00          nop
2497: 00          nop
2498: 00          nop
2499: 00          nop
249A: 00          nop
249B: 0F          rrca
249C: 01 0F 01    ld   bc,$010F
249F: 04          inc  b
24A0: 10 0F       djnz $24B1
24A2: 02          ld   (bc),a
24A3: 0F          rrca
24A4: 02          ld   (bc),a
24A5: 0F          rrca
24A6: 02          ld   (bc),a
24A7: 0F          rrca
24A8: 01 0F 01    ld   bc,$010F
24AB: 6F          ld   l,a
24AC: 08          ex   af,af'
24AD: 04          inc  b
24AE: 10 6F       djnz $251F
24B0: 08          ex   af,af'
24B1: 0F          rrca
24B2: 02          ld   (bc),a
24B3: 4F          ld   c,a
24B4: 02          ld   (bc),a
24B5: 2F          cpl
24B6: 02          ld   (bc),a
24B7: 0F          rrca
24B8: 01 0F 01    ld   bc,$010F
24BB: 0F          rrca
24BC: 08          ex   af,af'
24BD: 0F          rrca
24BE: 08          ex   af,af'
24BF: 0F          rrca
24C0: 01 0F 01    ld   bc,$010F
24C3: 6F          ld   l,a
24C4: 08          ex   af,af'
24C5: 3F          ccf
24C6: 02          ld   (bc),a
24C7: 1F          rra
24C8: 02          ld   (bc),a
24C9: 0F          rrca
24CA: 02          ld   (bc),a
24CB: 04          inc  b
24CC: 10 0F       djnz $24DD
24CE: 01 04 10    ld   bc,$1004
24D1: 0F          rrca
24D2: 04          inc  b
24D3: 0F          rrca
24D4: 02          ld   (bc),a
24D5: 6F          ld   l,a
24D6: 02          ld   (bc),a
24D7: 0F          rrca
24D8: 08          ex   af,af'
24D9: 0F          rrca
24DA: 01 3F 01    ld   bc,$013F
24DD: 1F          rra
24DE: 01 0F 01    ld   bc,$010F
24E1: 0F          rrca
24E2: 01 0F 04    ld   bc,$040F
24E5: 0F          rrca
24E6: 02          ld   (bc),a
24E7: 0F          rrca
24E8: 02          ld   (bc),a
24E9: 0F          rrca
24EA: 02          ld   (bc),a
24EB: 0F          rrca
24EC: 04          inc  b
24ED: 0F          rrca
24EE: 04          inc  b
24EF: 0F          rrca
24F0: 04          inc  b
24F1: 0F          rrca
24F2: 04          inc  b
24F3: FF          rst  $38
24F4: FF          rst  $38
24F5: FF          rst  $38
24F6: FF          rst  $38
24F7: FF          rst  $38
24F8: FF          rst  $38
24F9: FF          rst  $38
24FA: FF          rst  $38
24FB: FF          rst  $38
24FC: FF          rst  $38
24FD: 23          inc  hl
24FE: 5E          ld   e,(hl)
24FF: 23          inc  hl
2500: 56          ld   d,(hl)
2501: 1A          ld   a,(de)
2502: FE FF       cp   $FF
2504: C2 0D 25    jp   nz,$250D
2507: 11 9B 24    ld   de,$249B
250A: C3 01 25    jp   $2501
250D: 08          ex   af,af'
250E: 13          inc  de
250F: 1A          ld   a,(de)
2510: 13          inc  de
2511: 72          ld   (hl),d
2512: 2B          dec  hl
2513: 73          ld   (hl),e
2514: 2B          dec  hl
2515: 08          ex   af,af'
2516: 77          ld   (hl),a
2517: 08          ex   af,af'
2518: C3 74 25    jp   $2574
251B: 3A 07 84    ld   a,($8407)
251E: 0F          rrca
251F: 0F          rrca
2520: 0F          rrca
2521: E6 1F       and  $1F
2523: 5F          ld   e,a
2524: 3A 06 84    ld   a,($8406)
2527: ED 44       neg
2529: 07          rlca
252A: 07          rlca
252B: 57          ld   d,a
252C: E6 E0       and  $E0
252E: B3          or   e
252F: 5F          ld   e,a
2530: 7A          ld   a,d
2531: E6 03       and  $03
2533: 57          ld   d,a
2534: 21 00 90    ld   hl,$9000
2537: 19          add  hl,de
2538: C9          ret
2539: 3A 00 84    ld   a,($8400)
253C: A7          and  a
253D: C2 54 25    jp   nz,$2554
2540: 11 00 84    ld   de,$8400
2543: 21 6C 24    ld   hl,$246C
2546: 01 2E 00    ld   bc,$002E
2549: ED B0       ldir
254B: 3E C9       ld   a,$C9
254D: 32 00 B8    ld   ($watchdog),a
2550: CD 38 10    call $1038
2553: C9          ret
2554: 21 02 84    ld   hl,$8402
2557: 34          inc  (hl)
2558: CB 46       bit  0,(hl)
255A: CA D2 28    jp   z,$28D2
255D: 3A 30 80    ld   a,($8030)
2560: A7          and  a
2561: C2 71 25    jp   nz,$2571
2564: 21 23 84    ld   hl,$8423
2567: 7E          ld   a,(hl)
2568: 35          dec  (hl)
2569: A7          and  a
256A: CA FD 24    jp   z,$24FD
256D: AF          xor  a
256E: C3 74 25    jp   $2574
2571: 3A 00 A0    ld   a,($A000)
2574: 32 01 84    ld   ($8401),a
2577: CD 98 25    call $2598
257A: 3A 22 84    ld   a,($8422)
257D: A7          and  a
257E: C2 94 25    jp   nz,$2594
2581: CD B6 26    call $26B6
2584: 3A 08 84    ld   a,($8408)
2587: 47          ld   b,a
2588: 3A 09 84    ld   a,($8409)
258B: B0          or   b
258C: C2 94 25    jp   nz,$2594
258F: 3E 00       ld   a,$00
2591: 32 16 84    ld   ($8416),a
2594: CD 53 28    call $2853
2597: C9          ret
2598: 3A 1F 84    ld   a,($841F)
259B: FE 01       cp   $01
259D: CA BC 25    jp   z,$25BC
25A0: 08          ex   af,af'
25A1: 3E 00       ld   a,$00
25A3: 32 16 84    ld   ($8416),a
25A6: 08          ex   af,af'
25A7: FE 02       cp   $02
25A9: CA C2 25    jp   z,$25C2
25AC: FE 00       cp   $00
25AE: CA 19 26    jp   z,$2619
25B1: FE 04       cp   $04
25B3: CA 2D 26    jp   z,$262D
25B6: FE 05       cp   $05
25B8: CA B2 26    jp   z,$26B2
25BB: C9          ret
25BC: 3E 01       ld   a,$01
25BE: 32 16 84    ld   ($8416),a
25C1: C9          ret
25C2: 21 20 84    ld   hl,$8420
25C5: 7E          ld   a,(hl)
25C6: A7          and  a
25C7: C2 DF 25    jp   nz,$25DF
25CA: 3E 01       ld   a,$01
25CC: 77          ld   (hl),a
25CD: 3E 80       ld   a,$80
25CF: 23          inc  hl
25D0: 77          ld   (hl),a
25D1: 3E 01       ld   a,$01
25D3: 32 22 84    ld   ($8422),a
25D6: 3E 0C       ld   a,$0C
25D8: 32 13 84    ld   ($8413),a
25DB: CD 18 28    call $2818
25DE: C9          ret
25DF: 23          inc  hl
25E0: 35          dec  (hl)
25E1: 7E          ld   a,(hl)
25E2: FE 7E       cp   $7E
25E4: CA F7 25    jp   z,$25F7
25E7: FE 40       cp   $40
25E9: CA FD 25    jp   z,$25FD
25EC: FE 30       cp   $30
25EE: CA 03 26    jp   z,$2603
25F1: FE 20       cp   $20
25F3: CA 09 26    jp   z,$2609
25F6: C9          ret
25F7: 3E E0       ld   a,$E0
25F9: 32 00 B8    ld   ($watchdog),a
25FC: C9          ret
25FD: 3E 0D       ld   a,$0D
25FF: 32 13 84    ld   ($8413),a
2602: C9          ret
2603: 3E 0E       ld   a,$0E
2605: 32 13 84    ld   ($8413),a
2608: C9          ret
2609: 3E 0F       ld   a,$0F
260B: 32 13 84    ld   ($8413),a
260E: 3E 00       ld   a,$00
2610: 32 1F 84    ld   ($841F),a
2613: 3E A0       ld   a,$A0
2615: 32 00 B8    ld   ($watchdog),a
2618: C9          ret
2619: 3E 00       ld   a,$00
261B: 32 00 84    ld   ($8400),a
261E: 32 20 84    ld   ($8420),a
2621: 32 06 84    ld   ($8406),a
2624: 32 07 84    ld   ($8407),a
2627: 3E 01       ld   a,$01
2629: 32 33 80    ld   ($8033),a
262C: C9          ret
262D: 21 20 84    ld   hl,$8420
2630: 7E          ld   a,(hl)
2631: A7          and  a
2632: C2 47 26    jp   nz,$2647
2635: 3E 01       ld   a,$01
2637: 77          ld   (hl),a
2638: 32 22 84    ld   ($8422),a
263B: 3E 00       ld   a,$00
263D: 32 29 84    ld   ($8429),a
2640: 32 2A 84    ld   ($842A),a
2643: CD 18 28    call $2818
2646: C9          ret
2647: 3A 2A 84    ld   a,($842A)
264A: A7          and  a
264B: C2 74 26    jp   nz,$2674
264E: 3A 07 84    ld   a,($8407)
2651: C6 02       add  a,$02
2653: 32 07 84    ld   ($8407),a
2656: FE E0       cp   $E0
2658: D2 8B 26    jp   nc,$268B
265B: CD 1B 25    call $251B
265E: 01 E2 FF    ld   bc,$FFE2
2661: 09          add  hl,bc
2662: 7E          ld   a,(hl)
2663: FE 37       cp   $37
2665: CA 6E 26    jp   z,$266E
2668: FE 38       cp   $38
266A: CA 6E 26    jp   z,$266E
266D: C9          ret
266E: 3E 01       ld   a,$01
2670: 32 2A 84    ld   ($842A),a
2673: C9          ret
2674: 3A 29 84    ld   a,($8429)
2677: 3C          inc  a
2678: 32 29 84    ld   ($8429),a
267B: FE 02       cp   $02
267D: CA 96 26    jp   z,$2696
2680: FE 0A       cp   $0A
2682: CA 9C 26    jp   z,$269C
2685: FE 14       cp   $14
2687: CA A2 26    jp   z,$26A2
268A: C9          ret
268B: 3E 00       ld   a,$00
268D: 32 20 84    ld   ($8420),a
2690: 3E 02       ld   a,$02
2692: 32 1F 84    ld   ($841F),a
2695: C9          ret
2696: 3E 0D       ld   a,$0D
2698: 32 13 84    ld   ($8413),a
269B: C9          ret
269C: 3E 0E       ld   a,$0E
269E: 32 13 84    ld   ($8413),a
26A1: C9          ret
26A2: 3E 0F       ld   a,$0F
26A4: 32 13 84    ld   ($8413),a
26A7: 3E 00       ld   a,$00
26A9: 32 1F 84    ld   ($841F),a
26AC: 3E A0       ld   a,$A0
26AE: 32 00 B8    ld   ($watchdog),a
26B1: C9          ret
26B2: CD 0A 3D    call $3D0A
26B5: C9          ret
26B6: 3A 07 84    ld   a,($8407)
26B9: E6 07       and  $07
26BB: FE 02       cp   $02
26BD: C0          ret  nz
26BE: 3A 06 84    ld   a,($8406)
26C1: E6 07       and  $07
26C3: FE 04       cp   $04
26C5: C0          ret  nz
26C6: 3A 01 84    ld   a,($8401)
26C9: 0F          rrca
26CA: DA 10 27    jp   c,$2710
26CD: 0F          rrca
26CE: DA 52 27    jp   c,$2752
26D1: 0F          rrca
26D2: DA 94 27    jp   c,$2794
26D5: 0F          rrca
26D6: DA D6 27    jp   c,$27D6
26D9: 00          nop
26DA: 3A 06 84    ld   a,($8406)
26DD: 57          ld   d,a
26DE: 3E 14       ld   a,$14
26E0: 0E 20       ld   c,$20
26E2: 06 07       ld   b,$07
26E4: BA          cp   d
26E5: CA EE 26    jp   z,$26EE
26E8: 81          add  a,c
26E9: 10 F9       djnz $26E4
26EB: C3 FF 26    jp   $26FF
26EE: 3A 07 84    ld   a,($8407)
26F1: 57          ld   d,a
26F2: 3E 22       ld   a,$22
26F4: 0E 20       ld   c,$20
26F6: 06 07       ld   b,$07
26F8: BA          cp   d
26F9: CA 18 28    jp   z,$2818
26FC: 81          add  a,c
26FD: 10 F9       djnz $26F8
26FF: 3A 08 84    ld   a,($8408)
2702: A7          and  a
2703: CA 29 28    jp   z,$2829
2706: 3A 09 84    ld   a,($8409)
2709: A7          and  a
270A: CA 3E 28    jp   z,$283E
270D: C3 18 28    jp   $2818
2710: 3A 06 84    ld   a,($8406)
2713: FE 14       cp   $14
2715: CA 29 28    jp   z,$2829
2718: D2 23 27    jp   nc,$2723
271B: 3E 14       ld   a,$14
271D: 32 06 84    ld   ($8406),a
2720: C3 29 28    jp   $2829
2723: CD 1B 25    call $251B
2726: 01 02 00    ld   bc,$0002
2729: E5          push hl
272A: 09          add  hl,bc
272B: 3E FE       ld   a,$FE
272D: BE          cp   (hl)
272E: CA 37 27    jp   z,$2737
2731: 3E EF       ld   a,$EF
2733: BE          cp   (hl)
2734: DA 3B 27    jp   c,$273B
2737: E1          pop  hl
2738: C3 29 28    jp   $2829
273B: E1          pop  hl
273C: 3A 0B 84    ld   a,($840B)
273F: 32 08 84    ld   ($8408),a
2742: 3E 00       ld   a,$00
2744: 32 09 84    ld   ($8409),a
2747: 3E 01       ld   a,$01
2749: 32 04 84    ld   ($8404),a
274C: 3E 00       ld   a,$00
274E: 32 14 84    ld   ($8414),a
2751: C9          ret
2752: 3A 06 84    ld   a,($8406)
2755: FE D4       cp   $D4
2757: CA 29 28    jp   z,$2829
275A: DA 65 27    jp   c,$2765
275D: 3E D4       ld   a,$D4
275F: 32 06 84    ld   ($8406),a
2762: C3 29 28    jp   $2829
2765: CD 1B 25    call $251B
2768: 01 C2 FF    ld   bc,$FFC2
276B: E5          push hl
276C: 09          add  hl,bc
276D: 3E FE       ld   a,$FE
276F: BE          cp   (hl)
2770: CA 79 27    jp   z,$2779
2773: 3E EF       ld   a,$EF
2775: BE          cp   (hl)
2776: DA 7D 27    jp   c,$277D
2779: E1          pop  hl
277A: C3 29 28    jp   $2829
277D: E1          pop  hl
277E: 3A 0D 84    ld   a,($840D)
2781: 32 08 84    ld   ($8408),a
2784: 3E 00       ld   a,$00
2786: 32 09 84    ld   ($8409),a
2789: 3E 02       ld   a,$02
278B: 32 04 84    ld   ($8404),a
278E: 3E 80       ld   a,$80
2790: 32 14 84    ld   ($8414),a
2793: C9          ret
2794: 3A 07 84    ld   a,($8407)
2797: FE E2       cp   $E2
2799: CA 3E 28    jp   z,$283E
279C: DA A7 27    jp   c,$27A7
279F: 3E E2       ld   a,$E2
27A1: 32 07 84    ld   ($8407),a
27A4: C3 3E 28    jp   $283E
27A7: CD 1B 25    call $251B
27AA: 01 E3 FF    ld   bc,$FFE3
27AD: E5          push hl
27AE: 09          add  hl,bc
27AF: 3E FE       ld   a,$FE
27B1: BE          cp   (hl)
27B2: CA BB 27    jp   z,$27BB
27B5: 3E EF       ld   a,$EF
27B7: BE          cp   (hl)
27B8: DA BF 27    jp   c,$27BF
27BB: E1          pop  hl
27BC: C3 3E 28    jp   $283E
27BF: E1          pop  hl
27C0: 3A 0F 84    ld   a,($840F)
27C3: 32 09 84    ld   ($8409),a
27C6: 3E 00       ld   a,$00
27C8: 32 08 84    ld   ($8408),a
27CB: 3E 04       ld   a,$04
27CD: 32 04 84    ld   ($8404),a
27D0: 3E 04       ld   a,$04
27D2: 32 14 84    ld   ($8414),a
27D5: C9          ret
27D6: 3A 07 84    ld   a,($8407)
27D9: FE 22       cp   $22
27DB: CA 3E 28    jp   z,$283E
27DE: D2 E9 27    jp   nc,$27E9
27E1: 3E 22       ld   a,$22
27E3: 32 07 84    ld   ($8407),a
27E6: C3 3E 28    jp   $283E
27E9: CD 1B 25    call $251B
27EC: 01 E1 FF    ld   bc,$FFE1
27EF: E5          push hl
27F0: 09          add  hl,bc
27F1: 3E FE       ld   a,$FE
27F3: BE          cp   (hl)
27F4: CA FD 27    jp   z,$27FD
27F7: 3E EF       ld   a,$EF
27F9: BE          cp   (hl)
27FA: DA 01 28    jp   c,$2801
27FD: E1          pop  hl
27FE: C3 3E 28    jp   $283E
2801: E1          pop  hl
2802: 3A 11 84    ld   a,($8411)
2805: 32 09 84    ld   ($8409),a
2808: 3E 00       ld   a,$00
280A: 32 08 84    ld   ($8408),a
280D: 3E 08       ld   a,$08
280F: 32 04 84    ld   ($8404),a
2812: 3E 08       ld   a,$08
2814: 32 14 84    ld   ($8414),a
2817: C9          ret
2818: 3E 00       ld   a,$00
281A: 32 08 84    ld   ($8408),a
281D: 3E 00       ld   a,$00
281F: 32 09 84    ld   ($8409),a
2822: 3E 00       ld   a,$00
2824: 32 16 84    ld   ($8416),a
2827: 00          nop
2828: C9          ret
2829: 3E 00       ld   a,$00
282B: 32 08 84    ld   ($8408),a
282E: 00          nop
282F: 3A 09 84    ld   a,($8409)
2832: A7          and  a
2833: C8          ret  z
2834: FE 80       cp   $80
2836: DA 94 27    jp   c,$2794
2839: C3 D6 27    jp   $27D6
283C: 00          nop
283D: C9          ret
283E: 3E 00       ld   a,$00
2840: 32 09 84    ld   ($8409),a
2843: 00          nop
2844: 3A 08 84    ld   a,($8408)
2847: A7          and  a
2848: C8          ret  z
2849: FE 80       cp   $80
284B: DA 52 27    jp   c,$2752
284E: C3 10 27    jp   $2710
2851: 00          nop
2852: C9          ret
2853: 3A 22 84    ld   a,($8422)
2856: A7          and  a
2857: C2 BB 28    jp   nz,$28BB
285A: 3A 08 84    ld   a,($8408)
285D: 47          ld   b,a
285E: 3A 06 84    ld   a,($8406)
2861: 80          add  a,b
2862: 32 06 84    ld   ($8406),a
2865: 3A 09 84    ld   a,($8409)
2868: 47          ld   b,a
2869: 3A 07 84    ld   a,($8407)
286C: 80          add  a,b
286D: 32 07 84    ld   ($8407),a
2870: 3A 16 84    ld   a,($8416)
2873: A7          and  a
2874: CA BB 28    jp   z,$28BB
2877: 3A 17 84    ld   a,($8417)
287A: 3C          inc  a
287B: CB 47       bit  0,a
287D: CA AC 28    jp   z,$28AC
2880: 3A 18 84    ld   a,($8418)
2883: 3C          inc  a
2884: E6 03       and  $03
2886: 32 18 84    ld   ($8418),a
2889: FE 00       cp   $00
288B: C2 93 28    jp   nz,$2893
288E: 3E 00       ld   a,$00
2890: C3 A9 28    jp   $28A9
2893: FE 01       cp   $01
2895: C2 9D 28    jp   nz,$289D
2898: 3E 01       ld   a,$01
289A: C3 A9 28    jp   $28A9
289D: FE 02       cp   $02
289F: C2 A7 28    jp   nz,$28A7
28A2: 3E 02       ld   a,$02
28A4: C3 A9 28    jp   $28A9
28A7: 3E 03       ld   a,$03
28A9: 32 15 84    ld   ($8415),a
28AC: 3A 14 84    ld   a,($8414)
28AF: E6 FC       and  $FC
28B1: 47          ld   b,a
28B2: 3A 18 84    ld   a,($8418)
28B5: E6 03       and  $03
28B7: B0          or   b
28B8: 32 13 84    ld   ($8413),a
28BB: 21 00 80    ld   hl,$8000
28BE: 3A 06 84    ld   a,($8406)
28C1: 77          ld   (hl),a
28C2: 23          inc  hl
28C3: 3A 13 84    ld   a,($8413)
28C6: 77          ld   (hl),a
28C7: 23          inc  hl
28C8: 3A 12 84    ld   a,($8412)
28CB: 77          ld   (hl),a
28CC: 23          inc  hl
28CD: 3A 07 84    ld   a,($8407)
28D0: 77          ld   (hl),a
28D1: C9          ret
28D2: 3A 07 84    ld   a,($8407)
28D5: E6 07       and  $07
28D7: FE 02       cp   $02
28D9: C0          ret  nz
28DA: 3A 06 84    ld   a,($8406)
28DD: E6 07       and  $07
28DF: FE 04       cp   $04
28E1: C0          ret  nz
28E2: CD 1B 25    call $251B
28E5: E5          push hl
28E6: 01 E2 FF    ld   bc,$FFE2
28E9: 09          add  hl,bc
28EA: 7E          ld   a,(hl)
28EB: FE F5       cp   $F5
28ED: C2 F5 28    jp   nz,$28F5
28F0: 3E 01       ld   a,$01
28F2: 32 2D 84    ld   ($842D),a
28F5: E1          pop  hl
28F6: 3A 22 84    ld   a,($8422)
28F9: A7          and  a
28FA: C2 22 29    jp   nz,$2922
28FD: E5          push hl
28FE: CD 4C 29    call $294C
2901: E1          pop  hl
2902: E5          push hl
2903: CD 23 29    call $2923
2906: E1          pop  hl
2907: E5          push hl
2908: CD A1 29    call $29A1
290B: E1          pop  hl
290C: E5          push hl
290D: CD AF 29    call $29AF
2910: E1          pop  hl
2911: E5          push hl
2912: CD C8 29    call $29C8
2915: E1          pop  hl
2916: 3A E0 80    ld   a,($80E0)
2919: A7          and  a
291A: C2 22 29    jp   nz,$2922
291D: E5          push hl
291E: CD 5A 29    call $295A
2921: E1          pop  hl
2922: C9          ret
2923: 01 E1 FF    ld   bc,$FFE1
2926: 09          add  hl,bc
2927: 7E          ld   a,(hl)
2928: FE 39       cp   $39
292A: CA 30 29    jp   z,$2930
292D: FE 3A       cp   $3A
292F: C0          ret  nz
2930: 3A 80 86    ld   a,($8680)
2933: A7          and  a
2934: C0          ret  nz
2935: 3A C1 85    ld   a,($85C1)
2938: A7          and  a
2939: C0          ret  nz
293A: 3E 01       ld   a,$01
293C: 32 C1 85    ld   ($85C1),a
293F: 3A 06 84    ld   a,($8406)
2942: 32 C2 85    ld   ($85C2),a
2945: 3A 07 84    ld   a,($8407)
2948: 32 C3 85    ld   ($85C3),a
294B: C9          ret
294C: 01 E2 FF    ld   bc,$FFE2
294F: 09          add  hl,bc
2950: 7E          ld   a,(hl)
2951: FE FE       cp   $FE
2953: C0          ret  nz
2954: 3E 04       ld   a,$04
2956: 32 1F 84    ld   ($841F),a
2959: C9          ret
295A: 01 E2 FF    ld   bc,$FFE2
295D: 09          add  hl,bc
295E: 7E          ld   a,(hl)
295F: FE FF       cp   $FF
2961: C0          ret  nz
2962: 3A 2D 84    ld   a,($842D)
2965: A7          and  a
2966: C8          ret  z
2967: 3A 07 84    ld   a,($8407)
296A: FE 70       cp   $70
296C: D2 7D 29    jp   nc,$297D
296F: 0E 01       ld   c,$01
2971: 3A 14 84    ld   a,($8414)
2974: 07          rlca
2975: D2 8B 29    jp   nc,$298B
2978: 0E 02       ld   c,$02
297A: C3 8B 29    jp   $298B
297D: 0E 21       ld   c,$21
297F: 3A 14 84    ld   a,($8414)
2982: 07          rlca
2983: D2 8B 29    jp   nc,$298B
2986: 0E 22       ld   c,$22
2988: C3 8B 29    jp   $298B
298B: 79          ld   a,c
298C: 32 E0 80    ld   ($80E0),a
298F: A7          and  a
2990: C8          ret  z
2991: 3E 05       ld   a,$05
2993: 32 1F 84    ld   ($841F),a
2996: 3E 01       ld   a,$01
2998: 32 22 84    ld   ($8422),a
299B: 3E 00       ld   a,$00
299D: 32 2D 84    ld   ($842D),a
29A0: C9          ret
29A1: 01 E2 FF    ld   bc,$FFE2
29A4: 09          add  hl,bc
29A5: 7E          ld   a,(hl)
29A6: FE FC       cp   $FC
29A8: C0          ret  nz
29A9: 3E 01       ld   a,$01
29AB: 32 C0 80    ld   ($80C0),a
29AE: C9          ret
29AF: 01 E2 FF    ld   bc,$FFE2
29B2: 09          add  hl,bc
29B3: 7E          ld   a,(hl)
29B4: FE F9       cp   $F9
29B6: C0          ret  nz
29B7: 3A A0 80    ld   a,($80A0)
29BA: A7          and  a
29BB: C8          ret  z
29BC: 3A A2 80    ld   a,($80A2)
29BF: FE 01       cp   $01
29C1: C0          ret  nz
29C2: 3E 02       ld   a,$02
29C4: 32 A2 80    ld   ($80A2),a
29C7: C9          ret
29C8: 3A A0 80    ld   a,($80A0)
29CB: A7          and  a
29CC: C0          ret  nz
29CD: 01 E1 FF    ld   bc,$FFE1
29D0: 09          add  hl,bc
29D1: 7E          ld   a,(hl)
29D2: FE DC       cp   $DC
29D4: D8          ret  c
29D5: FE F0       cp   $F0
29D7: D0          ret  nc
29D8: 0E 02       ld   c,$02
29DA: CD B2 3E    call $3EB2
29DD: 22 9C 80    ld   ($809C),hl
29E0: 7E          ld   a,(hl)
29E1: 16 7A       ld   d,$7A
29E3: FE E1       cp   $E1
29E5: CA 1D 2A    jp   z,$2A1D
29E8: FE E3       cp   $E3
29EA: CA 1D 2A    jp   z,$2A1D
29ED: 16 7C       ld   d,$7C
29EF: FE E5       cp   $E5
29F1: CA 1D 2A    jp   z,$2A1D
29F4: FE E7       cp   $E7
29F6: CA 1D 2A    jp   z,$2A1D
29F9: 16 7E       ld   d,$7E
29FB: FE E9       cp   $E9
29FD: CA 1D 2A    jp   z,$2A1D
2A00: FE EB       cp   $EB
2A02: CA 1D 2A    jp   z,$2A1D
2A05: 16 7D       ld   d,$7D
2A07: FE ED       cp   $ED
2A09: CA 1D 2A    jp   z,$2A1D
2A0C: FE EF       cp   $EF
2A0E: CA 1D 2A    jp   z,$2A1D
2A11: 16 7B       ld   d,$7B
2A13: FE DD       cp   $DD
2A15: CA 1D 2A    jp   z,$2A1D
2A18: FE DF       cp   $DF
2A1A: CA 1D 2A    jp   z,$2A1D
2A1D: CB D4       set  2,h
2A1F: 5E          ld   e,(hl)
2A20: 21 9E 80    ld   hl,$809E
2A23: 73          ld   (hl),e
2A24: 23          inc  hl
2A25: 72          ld   (hl),d
2A26: 23          inc  hl
2A27: 36 01       ld   (hl),$01
2A29: E5          push hl
2A2A: D5          push de
2A2B: C5          push bc
2A2C: F5          push af
2A2D: CD 62 3F    call $3F62
2A30: 21 40 80    ld   hl,$8040
2A33: 11 4E 2A    ld   de,$2A4E
2A36: 06 03       ld   b,$03
2A38: 36 01       ld   (hl),$01
2A3A: 23          inc  hl
2A3B: AF          xor  a
2A3C: 1A          ld   a,(de)
2A3D: 8E          adc  a,(hl)
2A3E: 27          daa
2A3F: 77          ld   (hl),a
2A40: 23          inc  hl
2A41: 13          inc  de
2A42: 10 F8       djnz $2A3C
2A44: 3E 84       ld   a,$84
2A46: 32 00 B8    ld   ($watchdog),a
2A49: F1          pop  af
2A4A: C1          pop  bc
2A4B: D1          pop  de
2A4C: E1          pop  hl
2A4D: C9          ret
2A4E: 00          nop
2A4F: 02          ld   (bc),a
2A50: 00          nop
2A51: 21 08 85    ld   hl,$8508
2A54: 7E          ld   a,(hl)
2A55: A7          and  a
2A56: C2 70 2A    jp   nz,$2A70
2A59: 36 01       ld   (hl),$01
2A5B: 21 28 85    ld   hl,$8528
2A5E: 01 5A 2B    ld   bc,$2B5A
2A61: CD CF 31    call $31CF
2A64: 21 2D 85    ld   hl,$852D
2A67: 01 28 2B    ld   bc,$2B28
2A6A: CD CF 31    call $31CF
2A6D: CD 1F 2B    call $2B1F
2A70: 21 29 85    ld   hl,$8529
2A73: 11 00 85    ld   de,$8500
2A76: 01 EF FF    ld   bc,$FFEF
2A79: 1A          ld   a,(de)
2A7A: A7          and  a
2A7B: CC F1 2A    call z,$2AF1
2A7E: 21 0A 85    ld   hl,$850A
2A81: 7E          ld   a,(hl)
2A82: A7          and  a
2A83: C2 9D 2A    jp   nz,$2A9D
2A86: 36 01       ld   (hl),$01
2A88: 21 68 85    ld   hl,$8568
2A8B: 01 B0 2B    ld   bc,$2BB0
2A8E: CD CF 31    call $31CF
2A91: 21 6D 85    ld   hl,$856D
2A94: 01 28 2B    ld   bc,$2B28
2A97: CD CF 31    call $31CF
2A9A: CD 1F 2B    call $2B1F
2A9D: 21 69 85    ld   hl,$8569
2AA0: 11 04 85    ld   de,$8504
2AA3: 01 EF FF    ld   bc,$FFEF
2AA6: 1A          ld   a,(de)
2AA7: A7          and  a
2AA8: CC F1 2A    call z,$2AF1
2AAB: 21 0B 85    ld   hl,$850B
2AAE: 7E          ld   a,(hl)
2AAF: A7          and  a
2AB0: C2 CA 2A    jp   nz,$2ACA
2AB3: 36 01       ld   (hl),$01
2AB5: 21 88 85    ld   hl,$8588
2AB8: 01 06 2C    ld   bc,$2C06
2ABB: CD CF 31    call $31CF
2ABE: 21 8D 85    ld   hl,$858D
2AC1: 01 28 2B    ld   bc,$2B28
2AC4: CD CF 31    call $31CF
2AC7: CD 1F 2B    call $2B1F
2ACA: 21 89 85    ld   hl,$8589
2ACD: 11 06 85    ld   de,$8506
2AD0: 01 EF FF    ld   bc,$FFEF
2AD3: 1A          ld   a,(de)
2AD4: A7          and  a
2AD5: CC F1 2A    call z,$2AF1
2AD8: 21 00 85    ld   hl,$8500
2ADB: 7E          ld   a,(hl)
2ADC: A7          and  a
2ADD: C4 3C 2B    call nz,$2B3C
2AE0: 21 04 85    ld   hl,$8504
2AE3: 7E          ld   a,(hl)
2AE4: A7          and  a
2AE5: C4 92 2B    call nz,$2B92
2AE8: 21 06 85    ld   hl,$8506
2AEB: 7E          ld   a,(hl)
2AEC: A7          and  a
2AED: C4 E8 2B    call nz,$2BE8
2AF0: C9          ret
2AF1: C5          push bc
2AF2: 46          ld   b,(hl)
2AF3: 2B          dec  hl
2AF4: 7E          ld   a,(hl)
2AF5: B0          or   b
2AF6: C1          pop  bc
2AF7: C2 13 2B    jp   nz,$2B13
2AFA: 09          add  hl,bc
2AFB: 7E          ld   a,(hl)
2AFC: FE 03       cp   $03
2AFE: C2 0F 2B    jp   nz,$2B0F
2B01: 23          inc  hl
2B02: 7E          ld   a,(hl)
2B03: E6 07       and  $07
2B05: FE 04       cp   $04
2B07: C0          ret  nz
2B08: 23          inc  hl
2B09: 7E          ld   a,(hl)
2B0A: E6 07       and  $07
2B0C: FE 02       cp   $02
2B0E: C0          ret  nz
2B0F: 3E 01       ld   a,$01
2B11: 12          ld   (de),a
2B12: C9          ret
2B13: 7E          ld   a,(hl)
2B14: A7          and  a
2B15: CA 1A 2B    jp   z,$2B1A
2B18: 35          dec  (hl)
2B19: C9          ret
2B1A: 36 3C       ld   (hl),$3C
2B1C: 23          inc  hl
2B1D: 35          dec  (hl)
2B1E: C9          ret
2B1F: AF          xor  a
2B20: 23          inc  hl
2B21: 77          ld   (hl),a
2B22: 01 E8 FF    ld   bc,$FFE8
2B25: 09          add  hl,bc
2B26: 77          ld   (hl),a
2B27: C9          ret
2B28: 3C          inc  a
2B29: 78          ld   a,b
2B2A: 3C          inc  a
2B2B: 64          ld   h,h
2B2C: 3C          inc  a
2B2D: 5A          ld   e,d
2B2E: 3C          inc  a
2B2F: 46          ld   b,(hl)
2B30: 3C          inc  a
2B31: 3C          inc  a
2B32: 3C          inc  a
2B33: 32 3C 28    ld   ($283C),a
2B36: 3C          inc  a
2B37: 1E 3C       ld   e,$3C
2B39: 14          inc  d
2B3A: 3C          inc  a
2B3B: 00          nop
2B3C: 23          inc  hl
2B3D: 7E          ld   a,(hl)
2B3E: A7          and  a
2B3F: C2 6E 2B    jp   nz,$2B6E
2B42: 3A 3E 80    ld   a,($803E)
2B45: A7          and  a
2B46: C0          ret  nz
2B47: 36 01       ld   (hl),$01
2B49: 11 10 85    ld   de,$8510
2B4C: 21 75 2B    ld   hl,$2B75
2B4F: 01 1D 00    ld   bc,$001D
2B52: ED B0       ldir
2B54: 3E 87       ld   a,$87
2B56: 32 00 B8    ld   ($watchdog),a
2B59: C9          ret
2B5A: 30 02       jr   nc,$2B5E
2B5C: 30 02       jr   nc,$2B60
2B5E: 30 02       jr   nc,$2B62
2B60: 34          inc  (hl)
2B61: 01 30 00    ld   bc,$0030
2B64: 30 00       jr   nc,$2B66
2B66: 30 00       jr   nc,$2B68
2B68: 30 00       jr   nc,$2B6A
2B6A: 10 00       djnz $2B6C
2B6C: 10 00       djnz $2B6E
2B6E: 21 17 85    ld   hl,$8517
2B71: CD 3E 2C    call $2C3E
2B74: C9          ret
2B75: 00          nop
2B76: 00          nop
2B77: 00          nop
2B78: 05          dec  b
2B79: 1C          inc  e
2B7A: 00          nop
2B7B: 00          nop
2B7C: 01 B4 42    ld   bc,$42B4
2B7F: 00          nop
2B80: 00          nop
2B81: 00          nop
2B82: FF          rst  $38
2B83: 01 00 01    ld   bc,$0100
2B86: FF          rst  $38
2B87: 00          nop
2B88: 00          nop
2B89: 00          nop
2B8A: 00          nop
2B8B: 00          nop
2B8C: 00          nop
2B8D: 00          nop
2B8E: 00          nop
2B8F: 00          nop
2B90: 01 00 23    ld   bc,$2300
2B93: 7E          ld   a,(hl)
2B94: A7          and  a
2B95: C2 C4 2B    jp   nz,$2BC4
2B98: 3A 3E 80    ld   a,($803E)
2B9B: A7          and  a
2B9C: C0          ret  nz
2B9D: 36 01       ld   (hl),$01
2B9F: 11 50 85    ld   de,$8550
2BA2: 21 CB 2B    ld   hl,$2BCB
2BA5: 01 1D 00    ld   bc,$001D
2BA8: ED B0       ldir
2BAA: 3E 87       ld   a,$87
2BAC: 32 00 B8    ld   ($watchdog),a
2BAF: C9          ret
2BB0: 14          inc  d
2BB1: 16 14       ld   d,$14
2BB3: 14          inc  d
2BB4: 14          inc  d
2BB5: 0F          rrca
2BB6: 14          inc  d
2BB7: 0D          dec  c
2BB8: 00          nop
2BB9: 0B          dec  bc
2BBA: 00          nop
2BBB: 09          add  hl,bc
2BBC: 18 06       jr   $2BC4
2BBE: 28 05       jr   z,$2BC5
2BC0: 28 05       jr   z,$2BC7
2BC2: 10 04       djnz $2BC8
2BC4: 21 57 85    ld   hl,$8557
2BC7: CD 3E 2C    call $2C3E
2BCA: C9          ret
2BCB: 00          nop
2BCC: 00          nop
2BCD: 00          nop
2BCE: 0D          dec  c
2BCF: 1C          inc  e
2BD0: 00          nop
2BD1: 00          nop
2BD2: 01 34 42    ld   bc,$4234
2BD5: 00          nop
2BD6: 00          nop
2BD7: 00          nop
2BD8: FF          rst  $38
2BD9: 01 00 01    ld   bc,$0100
2BDC: FF          rst  $38
2BDD: 00          nop
2BDE: 00          nop
2BDF: 00          nop
2BE0: 00          nop
2BE1: 00          nop
2BE2: 00          nop
2BE3: 00          nop
2BE4: 00          nop
2BE5: 00          nop
2BE6: 01 00 23    ld   bc,$2300
2BE9: 7E          ld   a,(hl)
2BEA: A7          and  a
2BEB: C2 1A 2C    jp   nz,$2C1A
2BEE: 3A 3E 80    ld   a,($803E)
2BF1: A7          and  a
2BF2: C0          ret  nz
2BF3: 36 01       ld   (hl),$01
2BF5: 11 70 85    ld   de,$8570
2BF8: 21 21 2C    ld   hl,$2C21
2BFB: 01 1D 00    ld   bc,$001D
2BFE: ED B0       ldir
2C00: 3E 87       ld   a,$87
2C02: 32 00 B8    ld   ($watchdog),a
2C05: C9          ret
2C06: 24          inc  h
2C07: 06 24       ld   b,$24
2C09: 06 14       ld   b,$14
2C0B: 02          ld   (bc),a
2C0C: 00          nop
2C0D: 02          ld   (bc),a
2C0E: 30 00       jr   nc,$2C10
2C10: 30 00       jr   nc,$2C12
2C12: 30 00       jr   nc,$2C14
2C14: 30 00       jr   nc,$2C16
2C16: 10 00       djnz $2C18
2C18: 10 00       djnz $2C1A
2C1A: 21 77 85    ld   hl,$8577
2C1D: CD 3E 2C    call $2C3E
2C20: C9          ret
2C21: 00          nop
2C22: 00          nop
2C23: 00          nop
2C24: 11 1C 00    ld   de,$001C
2C27: 00          nop
2C28: 01 34 C2    ld   bc,$C234
2C2B: 00          nop
2C2C: 00          nop
2C2D: 00          nop
2C2E: FF          rst  $38
2C2F: 01 00 01    ld   bc,$0100
2C32: FF          rst  $38
2C33: 00          nop
2C34: 00          nop
2C35: 00          nop
2C36: 00          nop
2C37: 00          nop
2C38: 00          nop
2C39: 00          nop
2C3A: 00          nop
2C3B: 00          nop
2C3C: 01 00 E5    ld   bc,$E500
2C3F: EB          ex   de,hl
2C40: 21 18 00    ld   hl,$0018
2C43: 19          add  hl,de
2C44: 54          ld   d,h
2C45: 5D          ld   e,l
2C46: 2B          dec  hl
2C47: 1A          ld   a,(de)
2C48: A7          and  a
2C49: 01 EA FF    ld   bc,$FFEA
2C4C: CC F1 2A    call z,$2AF1
2C4F: E1          pop  hl
2C50: 7E          ld   a,(hl)
2C51: FE 01       cp   $01
2C53: CA 70 2C    jp   z,$2C70
2C56: FE 03       cp   $03
2C58: CA B6 2C    jp   z,$2CB6
2C5B: FE 04       cp   $04
2C5D: CA DD 30    jp   z,$30DD
2C60: FE 05       cp   $05
2C62: CA 1C 31    jp   z,$311C
2C65: FE 06       cp   $06
2C67: CA 50 31    jp   z,$3150
2C6A: FE 07       cp   $07
2C6C: CA 84 31    jp   z,$3184
2C6F: C9          ret
2C70: 3A 3E 80    ld   a,($803E)
2C73: A7          and  a
2C74: C0          ret  nz
2C75: EB          ex   de,hl
2C76: 42          ld   b,d
2C77: 4B          ld   c,e
2C78: 21 13 00    ld   hl,$0013
2C7B: 19          add  hl,de
2C7C: 1B          dec  de
2C7D: 1B          dec  de
2C7E: 1B          dec  de
2C7F: 1B          dec  de
2C80: 34          inc  (hl)
2C81: 7E          ld   a,(hl)
2C82: FE 80       cp   $80
2C84: D2 98 2C    jp   nc,$2C98
2C87: E6 1F       and  $1F
2C89: FE 10       cp   $10
2C8B: DA 92 2C    jp   c,$2C92
2C8E: CD 9C 30    call $309C
2C91: C9          ret
2C92: 06 1F       ld   b,$1F
2C94: CD A2 2C    call $2CA2
2C97: C9          ret
2C98: 23          inc  hl
2C99: 36 00       ld   (hl),$00
2C9B: 3E 03       ld   a,$03
2C9D: 02          ld   (bc),a
2C9E: CD 9C 30    call $309C
2CA1: C9          ret
2CA2: 1A          ld   a,(de)
2CA3: 21 05 00    ld   hl,$0005
2CA6: 19          add  hl,de
2CA7: EB          ex   de,hl
2CA8: 6F          ld   l,a
2CA9: 26 80       ld   h,$80
2CAB: 70          ld   (hl),b
2CAC: 2B          dec  hl
2CAD: 1A          ld   a,(de)
2CAE: 77          ld   (hl),a
2CAF: 23          inc  hl
2CB0: 23          inc  hl
2CB1: 23          inc  hl
2CB2: 13          inc  de
2CB3: 1A          ld   a,(de)
2CB4: 77          ld   (hl),a
2CB5: C9          ret
2CB6: EB          ex   de,hl
2CB7: 21 10 00    ld   hl,$0010
2CBA: 19          add  hl,de
2CBB: 7E          ld   a,(hl)
2CBC: A7          and  a
2CBD: CA C6 2C    jp   z,$2CC6
2CC0: 35          dec  (hl)
2CC1: EB          ex   de,hl
2CC2: 23          inc  hl
2CC3: C3 B5 2D    jp   $2DB5
2CC6: 13          inc  de
2CC7: 01 FB FF    ld   bc,$FFFB
2CCA: 09          add  hl,bc
2CCB: EB          ex   de,hl
2CCC: 06 07       ld   b,$07
2CCE: 3E 14       ld   a,$14
2CD0: BE          cp   (hl)
2CD1: CA DC 2C    jp   z,$2CDC
2CD4: C6 20       add  a,$20
2CD6: 10 F8       djnz $2CD0
2CD8: 23          inc  hl
2CD9: C3 B4 2D    jp   $2DB4
2CDC: 23          inc  hl
2CDD: 06 07       ld   b,$07
2CDF: 3E 22       ld   a,$22
2CE1: BE          cp   (hl)
2CE2: CA 49 2D    jp   z,$2D49
2CE5: C6 20       add  a,$20
2CE7: 10 F8       djnz $2CE1
2CE9: C3 B4 2D    jp   $2DB4
2CEC: ED 5F       ld   a,r
2CEE: E6 03       and  $03
2CF0: FE 01       cp   $01
2CF2: C2 F8 2C    jp   nz,$2CF8
2CF5: 36 01       ld   (hl),$01
2CF7: C9          ret
2CF8: FE 02       cp   $02
2CFA: C2 00 2D    jp   nz,$2D00
2CFD: 36 02       ld   (hl),$02
2CFF: C9          ret
2D00: FE 03       cp   $03
2D02: C2 08 2D    jp   nz,$2D08
2D05: 36 04       ld   (hl),$04
2D07: C9          ret
2D08: FE 00       cp   $00
2D0A: C0          ret  nz
2D0B: 36 08       ld   (hl),$08
2D0D: C9          ret
2D0E: 42          ld   b,d
2D0F: 4B          ld   c,e
2D10: 54          ld   d,h
2D11: 5D          ld   e,l
2D12: 1B          dec  de
2D13: EB          ex   de,hl
2D14: 0A          ld   a,(bc)
2D15: A7          and  a
2D16: C2 31 2D    jp   nz,$2D31
2D19: 3E 01       ld   a,$01
2D1B: 02          ld   (bc),a
2D1C: 3A 03 80    ld   a,($8003)
2D1F: BE          cp   (hl)
2D20: 2B          dec  hl
2D21: EB          ex   de,hl
2D22: CA 2E 2D    jp   z,$2D2E
2D25: DA 2B 2D    jp   c,$2D2B
2D28: 36 04       ld   (hl),$04
2D2A: C9          ret
2D2B: 36 08       ld   (hl),$08
2D2D: C9          ret
2D2E: 36 00       ld   (hl),$00
2D30: C9          ret
2D31: 2B          dec  hl
2D32: 3E 00       ld   a,$00
2D34: 02          ld   (bc),a
2D35: 3A 00 80    ld   a,($8000)
2D38: BE          cp   (hl)
2D39: EB          ex   de,hl
2D3A: CA 46 2D    jp   z,$2D46
2D3D: DA 43 2D    jp   c,$2D43
2D40: 36 02       ld   (hl),$02
2D42: C9          ret
2D43: 36 01       ld   (hl),$01
2D45: C9          ret
2D46: 36 00       ld   (hl),$00
2D48: C9          ret
2D49: E5          push hl
2D4A: 01 13 00    ld   bc,$0013
2D4D: 09          add  hl,bc
2D4E: 34          inc  (hl)
2D4F: 44          ld   b,h
2D50: 4D          ld   c,l
2D51: E1          pop  hl
2D52: 23          inc  hl
2D53: 7D          ld   a,l
2D54: E6 F0       and  $F0
2D56: FE 10       cp   $10
2D58: C2 6D 2D    jp   nz,$2D6D
2D5B: 0A          ld   a,(bc)
2D5C: E6 03       and  $03
2D5E: FE 00       cp   $00
2D60: C4 0E 2D    call nz,$2D0E
2D63: EB          ex   de,hl
2D64: 21 0D 00    ld   hl,$000D
2D67: 19          add  hl,de
2D68: 36 30       ld   (hl),$30
2D6A: C3 B2 2D    jp   $2DB2
2D6D: FE 30       cp   $30
2D6F: C2 84 2D    jp   nz,$2D84
2D72: 0A          ld   a,(bc)
2D73: E6 03       and  $03
2D75: FE 02       cp   $02
2D77: C4 0E 2D    call nz,$2D0E
2D7A: EB          ex   de,hl
2D7B: 21 0D 00    ld   hl,$000D
2D7E: 19          add  hl,de
2D7F: 36 10       ld   (hl),$10
2D81: C3 B2 2D    jp   $2DB2
2D84: FE 50       cp   $50
2D86: C2 9B 2D    jp   nz,$2D9B
2D89: 0A          ld   a,(bc)
2D8A: E6 07       and  $07
2D8C: FE 05       cp   $05
2D8E: C4 0E 2D    call nz,$2D0E
2D91: EB          ex   de,hl
2D92: 21 0D 00    ld   hl,$000D
2D95: 19          add  hl,de
2D96: 36 20       ld   (hl),$20
2D98: C3 B2 2D    jp   $2DB2
2D9B: FE 70       cp   $70
2D9D: 00          nop
2D9E: 00          nop
2D9F: 00          nop
2DA0: C2 9E 2D    jp   nz,$2D9E
2DA3: 0A          ld   a,(bc)
2DA4: E6 07       and  $07
2DA6: FE 07       cp   $07
2DA8: C4 0E 2D    call nz,$2D0E
2DAB: EB          ex   de,hl
2DAC: 21 0D 00    ld   hl,$000D
2DAF: 19          add  hl,de
2DB0: 36 10       ld   (hl),$10
2DB2: EB          ex   de,hl
2DB3: 2B          dec  hl
2DB4: 2B          dec  hl
2DB5: 54          ld   d,h
2DB6: 5D          ld   e,l
2DB7: 7E          ld   a,(hl)
2DB8: 23          inc  hl
2DB9: E6 07       and  $07
2DBB: FE 04       cp   $04
2DBD: C2 43 30    jp   nz,$3043
2DC0: 7E          ld   a,(hl)
2DC1: E6 07       and  $07
2DC3: FE 02       cp   $02
2DC5: C2 43 30    jp   nz,$3043
2DC8: EB          ex   de,hl
2DC9: CD B3 30    call $30B3
2DCC: 01 E2 FF    ld   bc,$FFE2
2DCF: 09          add  hl,bc
2DD0: 3E FE       ld   a,$FE
2DD2: BE          cp   (hl)
2DD3: C2 F2 2D    jp   nz,$2DF2
2DD6: 1B          dec  de
2DD7: 3E 95       ld   a,$95
2DD9: 32 00 B8    ld   ($watchdog),a
2DDC: 3E 04       ld   a,$04
2DDE: 12          ld   (de),a
2DDF: 21 14 00    ld   hl,$0014
2DE2: 19          add  hl,de
2DE3: 36 01       ld   (hl),$01
2DE5: 21 FD FF    ld   hl,$FFFD
2DE8: 19          add  hl,de
2DE9: 36 1C       ld   (hl),$1C
2DEB: 21 03 00    ld   hl,$0003
2DEE: 19          add  hl,de
2DEF: 36 00       ld   (hl),$00
2DF1: 13          inc  de
2DF2: EB          ex   de,hl
2DF3: 23          inc  hl
2DF4: 54          ld   d,h
2DF5: 5D          ld   e,l
2DF6: 23          inc  hl
2DF7: 1B          dec  de
2DF8: 7E          ld   a,(hl)
2DF9: 0F          rrca
2DFA: DA C4 2E    jp   c,$2EC4
2DFD: 0F          rrca
2DFE: DA 10 2F    jp   c,$2F10
2E01: 0F          rrca
2E02: DA 5C 2F    jp   c,$2F5C
2E05: 0F          rrca
2E06: DA AA 2F    jp   c,$2FAA
2E09: EB          ex   de,hl
2E0A: 21 FC FF    ld   hl,$FFFC
2E0D: 19          add  hl,de
2E0E: 35          dec  (hl)
2E0F: EB          ex   de,hl
2E10: 23          inc  hl
2E11: 23          inc  hl
2E12: 3E 00       ld   a,$00
2E14: 77          ld   (hl),a
2E15: 23          inc  hl
2E16: 23          inc  hl
2E17: 23          inc  hl
2E18: 77          ld   (hl),a
2E19: C3 5D 30    jp   $305D
2E1C: 13          inc  de
2E1D: 13          inc  de
2E1E: 1A          ld   a,(de)
2E1F: FE 03       cp   $03
2E21: D2 74 2E    jp   nc,$2E74
2E24: ED 5F       ld   a,r
2E26: E6 0F       and  $0F
2E28: FE 02       cp   $02
2E2A: DA 44 2E    jp   c,$2E44
2E2D: FE 09       cp   $09
2E2F: 3E EF       ld   a,$EF
2E31: DA 61 2E    jp   c,$2E61
2E34: 21 E1 FF    ld   hl,$FFE1
2E37: 09          add  hl,bc
2E38: BE          cp   (hl)
2E39: DA 5B 2E    jp   c,$2E5B
2E3C: 21 E3 FF    ld   hl,$FFE3
2E3F: 09          add  hl,bc
2E40: BE          cp   (hl)
2E41: DA 55 2E    jp   c,$2E55
2E44: EB          ex   de,hl
2E45: 7E          ld   a,(hl)
2E46: FE 01       cp   $01
2E48: CA 50 2E    jp   z,$2E50
2E4B: 36 01       ld   (hl),$01
2E4D: C3 09 2E    jp   $2E09
2E50: 36 02       ld   (hl),$02
2E52: C3 09 2E    jp   $2E09
2E55: EB          ex   de,hl
2E56: 36 04       ld   (hl),$04
2E58: C3 09 2E    jp   $2E09
2E5B: EB          ex   de,hl
2E5C: 36 08       ld   (hl),$08
2E5E: C3 09 2E    jp   $2E09
2E61: 21 E3 FF    ld   hl,$FFE3
2E64: 09          add  hl,bc
2E65: BE          cp   (hl)
2E66: DA 55 2E    jp   c,$2E55
2E69: 21 E1 FF    ld   hl,$FFE1
2E6C: 09          add  hl,bc
2E6D: BE          cp   (hl)
2E6E: DA 5B 2E    jp   c,$2E5B
2E71: C3 44 2E    jp   $2E44
2E74: ED 5F       ld   a,r
2E76: E6 0F       and  $0F
2E78: FE 02       cp   $02
2E7A: DA 94 2E    jp   c,$2E94
2E7D: FE 09       cp   $09
2E7F: 3E EF       ld   a,$EF
2E81: DA B1 2E    jp   c,$2EB1
2E84: 21 C2 FF    ld   hl,$FFC2
2E87: 09          add  hl,bc
2E88: BE          cp   (hl)
2E89: DA A5 2E    jp   c,$2EA5
2E8C: 21 02 00    ld   hl,$0002
2E8F: 09          add  hl,bc
2E90: BE          cp   (hl)
2E91: DA AB 2E    jp   c,$2EAB
2E94: EB          ex   de,hl
2E95: 7E          ld   a,(hl)
2E96: FE 04       cp   $04
2E98: CA A0 2E    jp   z,$2EA0
2E9B: 36 04       ld   (hl),$04
2E9D: C3 09 2E    jp   $2E09
2EA0: 36 08       ld   (hl),$08
2EA2: C3 09 2E    jp   $2E09
2EA5: EB          ex   de,hl
2EA6: 36 02       ld   (hl),$02
2EA8: C3 09 2E    jp   $2E09
2EAB: EB          ex   de,hl
2EAC: 36 01       ld   (hl),$01
2EAE: C3 09 2E    jp   $2E09
2EB1: 21 02 00    ld   hl,$0002
2EB4: 09          add  hl,bc
2EB5: BE          cp   (hl)
2EB6: DA AB 2E    jp   c,$2EAB
2EB9: 21 C2 FF    ld   hl,$FFC2
2EBC: 09          add  hl,bc
2EBD: BE          cp   (hl)
2EBE: DA A5 2E    jp   c,$2EA5
2EC1: C3 94 2E    jp   $2E94
2EC4: 23          inc  hl
2EC5: 36 00       ld   (hl),$00
2EC7: 23          inc  hl
2EC8: 1A          ld   a,(de)
2EC9: FE 0C       cp   $0C
2ECB: CA 09 2E    jp   z,$2E09
2ECE: D2 D7 2E    jp   nc,$2ED7
2ED1: 3E 0C       ld   a,$0C
2ED3: 12          ld   (de),a
2ED4: C3 09 2E    jp   $2E09
2ED7: 13          inc  de
2ED8: CD B3 30    call $30B3
2EDB: 44          ld   b,h
2EDC: 4D          ld   c,l
2EDD: 21 02 00    ld   hl,$0002
2EE0: 09          add  hl,bc
2EE1: 3E EF       ld   a,$EF
2EE3: BE          cp   (hl)
2EE4: D2 1C 2E    jp   nc,$2E1C
2EE7: 21 0D 00    ld   hl,$000D
2EEA: 19          add  hl,de
2EEB: EB          ex   de,hl
2EEC: 21 E2 FF    ld   hl,$FFE2
2EEF: CD CE 30    call $30CE
2EF2: A7          and  a
2EF3: C2 FC 2E    jp   nz,$2EFC
2EF6: 21 02 00    ld   hl,$0002
2EF9: CD CE 30    call $30CE
2EFC: 21 F7 FF    ld   hl,$FFF7
2EFF: 19          add  hl,de
2F00: 54          ld   d,h
2F01: 5D          ld   e,l
2F02: 13          inc  de
2F03: 1A          ld   a,(de)
2F04: 77          ld   (hl),a
2F05: 3E 00       ld   a,$00
2F07: 13          inc  de
2F08: 13          inc  de
2F09: 12          ld   (de),a
2F0A: 21 06 00    ld   hl,$0006
2F0D: C3 4B 30    jp   $304B
2F10: 23          inc  hl
2F11: 36 80       ld   (hl),$80
2F13: 23          inc  hl
2F14: 1A          ld   a,(de)
2F15: FE E4       cp   $E4
2F17: CA 09 2E    jp   z,$2E09
2F1A: DA 23 2F    jp   c,$2F23
2F1D: 3E E4       ld   a,$E4
2F1F: 12          ld   (de),a
2F20: C3 09 2E    jp   $2E09
2F23: 13          inc  de
2F24: CD B3 30    call $30B3
2F27: 44          ld   b,h
2F28: 4D          ld   c,l
2F29: 21 C2 FF    ld   hl,$FFC2
2F2C: 09          add  hl,bc
2F2D: 3E EF       ld   a,$EF
2F2F: BE          cp   (hl)
2F30: D2 1C 2E    jp   nc,$2E1C
2F33: 21 0D 00    ld   hl,$000D
2F36: 19          add  hl,de
2F37: EB          ex   de,hl
2F38: 21 E2 FF    ld   hl,$FFE2
2F3B: CD CE 30    call $30CE
2F3E: A7          and  a
2F3F: C2 48 2F    jp   nz,$2F48
2F42: 21 C2 FF    ld   hl,$FFC2
2F45: CD CE 30    call $30CE
2F48: 21 F7 FF    ld   hl,$FFF7
2F4B: 19          add  hl,de
2F4C: 54          ld   d,h
2F4D: 5D          ld   e,l
2F4E: 13          inc  de
2F4F: 13          inc  de
2F50: 1A          ld   a,(de)
2F51: 77          ld   (hl),a
2F52: 3E 00       ld   a,$00
2F54: 13          inc  de
2F55: 12          ld   (de),a
2F56: 21 06 00    ld   hl,$0006
2F59: C3 4B 30    jp   $304B
2F5C: 23          inc  hl
2F5D: 36 04       ld   (hl),$04
2F5F: 23          inc  hl
2F60: 13          inc  de
2F61: 1A          ld   a,(de)
2F62: FE EC       cp   $EC
2F64: CA 09 2E    jp   z,$2E09
2F67: DA 70 2F    jp   c,$2F70
2F6A: 3E E4       ld   a,$E4
2F6C: 12          ld   (de),a
2F6D: C3 09 2E    jp   $2E09
2F70: CD B3 30    call $30B3
2F73: 44          ld   b,h
2F74: 4D          ld   c,l
2F75: 21 E3 FF    ld   hl,$FFE3
2F78: 09          add  hl,bc
2F79: 3E EF       ld   a,$EF
2F7B: BE          cp   (hl)
2F7C: D2 1C 2E    jp   nc,$2E1C
2F7F: 21 0D 00    ld   hl,$000D
2F82: 19          add  hl,de
2F83: EB          ex   de,hl
2F84: 21 E2 FF    ld   hl,$FFE2
2F87: CD CE 30    call $30CE
2F8A: A7          and  a
2F8B: C2 94 2F    jp   nz,$2F94
2F8E: 21 E3 FF    ld   hl,$FFE3
2F91: CD CE 30    call $30CE
2F94: 21 F7 FF    ld   hl,$FFF7
2F97: 19          add  hl,de
2F98: 3E 00       ld   a,$00
2F9A: 77          ld   (hl),a
2F9B: 23          inc  hl
2F9C: 23          inc  hl
2F9D: 23          inc  hl
2F9E: 54          ld   d,h
2F9F: 5D          ld   e,l
2FA0: 13          inc  de
2FA1: 1A          ld   a,(de)
2FA2: 77          ld   (hl),a
2FA3: EB          ex   de,hl
2FA4: 21 06 00    ld   hl,$0006
2FA7: C3 4B 30    jp   $304B
2FAA: 23          inc  hl
2FAB: 36 08       ld   (hl),$08
2FAD: 23          inc  hl
2FAE: 13          inc  de
2FAF: 1A          ld   a,(de)
2FB0: FE 14       cp   $14
2FB2: CA 09 2E    jp   z,$2E09
2FB5: D2 BE 2F    jp   nc,$2FBE
2FB8: 3E 14       ld   a,$14
2FBA: 12          ld   (de),a
2FBB: C3 09 2E    jp   $2E09
2FBE: CD B3 30    call $30B3
2FC1: 44          ld   b,h
2FC2: 4D          ld   c,l
2FC3: 21 E1 FF    ld   hl,$FFE1
2FC6: 09          add  hl,bc
2FC7: 3E EF       ld   a,$EF
2FC9: BE          cp   (hl)
2FCA: D2 1C 2E    jp   nc,$2E1C
2FCD: 21 0D 00    ld   hl,$000D
2FD0: 19          add  hl,de
2FD1: EB          ex   de,hl
2FD2: 21 E2 FF    ld   hl,$FFE2
2FD5: CD CE 30    call $30CE
2FD8: A7          and  a
2FD9: C2 E2 2F    jp   nz,$2FE2
2FDC: 21 E1 FF    ld   hl,$FFE1
2FDF: CD CE 30    call $30CE
2FE2: 21 F7 FF    ld   hl,$FFF7
2FE5: 19          add  hl,de
2FE6: 3E 00       ld   a,$00
2FE8: 77          ld   (hl),a
2FE9: 23          inc  hl
2FEA: 23          inc  hl
2FEB: 23          inc  hl
2FEC: 54          ld   d,h
2FED: 5D          ld   e,l
2FEE: 13          inc  de
2FEF: 13          inc  de
2FF0: 1A          ld   a,(de)
2FF1: 77          ld   (hl),a
2FF2: EB          ex   de,hl
2FF3: 21 06 00    ld   hl,$0006
2FF6: C3 4B 30    jp   $304B
2FF9: 7E          ld   a,(hl)
2FFA: FE 01       cp   $01
2FFC: C2 02 30    jp   nz,$3002
2FFF: 36 02       ld   (hl),$02
3001: C9          ret
3002: FE FF       cp   $FF
3004: C0          ret  nz
3005: 36 FE       ld   (hl),$FE
3007: C9          ret
3008: 7E          ld   a,(hl)
3009: FE 02       cp   $02
300B: C2 11 30    jp   nz,$3011
300E: 36 01       ld   (hl),$01
3010: C9          ret
3011: FE FE       cp   $FE
3013: C0          ret  nz
3014: 36 FF       ld   (hl),$FF
3016: C9          ret
3017: 00          nop
3018: 00          nop
3019: 00          nop
301A: 00          nop
301B: 2B          dec  hl
301C: 2B          dec  hl
301D: 2B          dec  hl
301E: 13          inc  de
301F: 1A          ld   a,(de)
3020: E6 03       and  $03
3022: A7          and  a
3023: C2 28 30    jp   nz,$3028
3026: 3E 03       ld   a,$03
3028: 3D          dec  a
3029: 12          ld   (de),a
302A: FE 01       cp   $01
302C: C2 39 30    jp   nz,$3039
302F: CD F9 2F    call $2FF9
3032: 23          inc  hl
3033: 23          inc  hl
3034: 23          inc  hl
3035: CD F9 2F    call $2FF9
3038: C9          ret
3039: CD 08 30    call $3008
303C: 23          inc  hl
303D: 23          inc  hl
303E: 23          inc  hl
303F: CD 08 30    call $3008
3042: C9          ret
3043: 21 07 00    ld   hl,$0007
3046: 19          add  hl,de
3047: EB          ex   de,hl
3048: 21 06 00    ld   hl,$0006
304B: 19          add  hl,de
304C: EB          ex   de,hl
304D: 44          ld   b,h
304E: 4D          ld   c,l
304F: 21 10 00    ld   hl,$0010
3052: 09          add  hl,bc
3053: 7E          ld   a,(hl)
3054: 60          ld   h,b
3055: 69          ld   l,c
3056: A7          and  a
3057: C4 17 30    call nz,$3017
305A: 00          nop
305B: 00          nop
305C: 00          nop
305D: 00          nop
305E: 00          nop
305F: 00          nop
3060: 54          ld   d,h
3061: 5D          ld   e,l
3062: 01 FA FF    ld   bc,$FFFA
3065: 09          add  hl,bc
3066: 1A          ld   a,(de)
3067: 86          add  a,(hl)
3068: 77          ld   (hl),a
3069: 1B          dec  de
306A: 1B          dec  de
306B: 1B          dec  de
306C: 2B          dec  hl
306D: 1A          ld   a,(de)
306E: 86          add  a,(hl)
306F: 77          ld   (hl),a
3070: 2B          dec  hl
3071: 2B          dec  hl
3072: 7E          ld   a,(hl)
3073: 3C          inc  a
3074: E6 07       and  $07
3076: 77          ld   (hl),a
3077: FE 04       cp   $04
3079: DA 81 30    jp   c,$3081
307C: 36 00       ld   (hl),$00
307E: 2B          dec  hl
307F: 34          inc  (hl)
3080: 23          inc  hl
3081: 2B          dec  hl
3082: 1B          dec  de
3083: CD 8A 30    call $308A
3086: CD 9C 30    call $309C
3089: C9          ret
308A: 7E          ld   a,(hl)
308B: E6 03       and  $03
308D: 47          ld   b,a
308E: 1A          ld   a,(de)
308F: E6 CC       and  $CC
3091: 4F          ld   c,a
3092: 2B          dec  hl
3093: 7E          ld   a,(hl)
3094: E6 30       and  $30
3096: B0          or   b
3097: B1          or   c
3098: 77          ld   (hl),a
3099: EB          ex   de,hl
309A: 1B          dec  de
309B: C9          ret
309C: 1A          ld   a,(de)
309D: 6F          ld   l,a
309E: 26 80       ld   h,$80
30A0: 13          inc  de
30A1: 1A          ld   a,(de)
30A2: 77          ld   (hl),a
30A3: 13          inc  de
30A4: 13          inc  de
30A5: 13          inc  de
30A6: 13          inc  de
30A7: 2B          dec  hl
30A8: 1A          ld   a,(de)
30A9: 77          ld   (hl),a
30AA: 23          inc  hl
30AB: 23          inc  hl
30AC: 36 06       ld   (hl),$06
30AE: 23          inc  hl
30AF: 13          inc  de
30B0: 1A          ld   a,(de)
30B1: 77          ld   (hl),a
30B2: C9          ret
30B3: 1A          ld   a,(de)
30B4: 0F          rrca
30B5: 0F          rrca
30B6: 0F          rrca
30B7: E6 1F       and  $1F
30B9: 6F          ld   l,a
30BA: 1B          dec  de
30BB: 1A          ld   a,(de)
30BC: ED 44       neg
30BE: 07          rlca
30BF: 07          rlca
30C0: 67          ld   h,a
30C1: E6 E0       and  $E0
30C3: B5          or   l
30C4: 6F          ld   l,a
30C5: 7C          ld   a,h
30C6: E6 03       and  $03
30C8: 67          ld   h,a
30C9: 3E 90       ld   a,$90
30CB: 84          add  a,h
30CC: 67          ld   h,a
30CD: C9          ret
30CE: 09          add  hl,bc
30CF: 3E F4       ld   a,$F4
30D1: BE          cp   (hl)
30D2: CA D9 30    jp   z,$30D9
30D5: 3E 00       ld   a,$00
30D7: 12          ld   (de),a
30D8: C9          ret
30D9: 3E 01       ld   a,$01
30DB: 12          ld   (de),a
30DC: C9          ret
30DD: EB          ex   de,hl
30DE: 21 F9 FF    ld   hl,$FFF9
30E1: 19          add  hl,de
30E2: 34          inc  (hl)
30E3: 7E          ld   a,(hl)
30E4: FE 10       cp   $10
30E6: DA 13 31    jp   c,$3113
30E9: CA FE 30    jp   z,$30FE
30EC: E6 07       and  $07
30EE: FE 00       cp   $00
30F0: C2 04 31    jp   nz,$3104
30F3: 21 FD FF    ld   hl,$FFFD
30F6: 19          add  hl,de
30F7: 3E 80       ld   a,$80
30F9: 86          add  a,(hl)
30FA: 77          ld   (hl),a
30FB: C3 04 31    jp   $3104
30FE: 21 FD FF    ld   hl,$FFFD
3101: 19          add  hl,de
3102: 36 5C       ld   (hl),$5C
3104: 62          ld   h,d
3105: 6B          ld   l,e
3106: 23          inc  hl
3107: 23          inc  hl
3108: 7E          ld   a,(hl)
3109: C6 02       add  a,$02
310B: FE E0       cp   $E0
310D: DA 12 31    jp   c,$3112
3110: 3E E0       ld   a,$E0
3112: 77          ld   (hl),a
3113: 21 FC FF    ld   hl,$FFFC
3116: 19          add  hl,de
3117: EB          ex   de,hl
3118: CD 9C 30    call $309C
311B: C9          ret
311C: EB          ex   de,hl
311D: 21 FA FF    ld   hl,$FFFA
3120: 19          add  hl,de
3121: 34          inc  (hl)
3122: 7E          ld   a,(hl)
3123: 23          inc  hl
3124: 23          inc  hl
3125: 23          inc  hl
3126: FE 01       cp   $01
3128: C2 2D 31    jp   nz,$312D
312B: 36 5D       ld   (hl),$5D
312D: FE 08       cp   $08
312F: C2 34 31    jp   nz,$3134
3132: 36 31       ld   (hl),$31
3134: FE 14       cp   $14
3136: C2 3B 31    jp   nz,$313B
3139: 36 30       ld   (hl),$30
313B: FE 20       cp   $20
313D: C2 42 31    jp   nz,$3142
3140: 36 2A       ld   (hl),$2A
3142: FE 80       cp   $80
3144: DA 4A 31    jp   c,$314A
3147: 3E 07       ld   a,$07
3149: 12          ld   (de),a
314A: EB          ex   de,hl
314B: 1B          dec  de
314C: CD 9C 30    call $309C
314F: C9          ret
3150: EB          ex   de,hl
3151: 21 FA FF    ld   hl,$FFFA
3154: 19          add  hl,de
3155: 34          inc  (hl)
3156: 7E          ld   a,(hl)
3157: 23          inc  hl
3158: 23          inc  hl
3159: 23          inc  hl
315A: FE 01       cp   $01
315C: C2 61 31    jp   nz,$3161
315F: 36 1C       ld   (hl),$1C
3161: FE 08       cp   $08
3163: C2 68 31    jp   nz,$3168
3166: 36 1D       ld   (hl),$1D
3168: FE 14       cp   $14
316A: C2 6F 31    jp   nz,$316F
316D: 36 1E       ld   (hl),$1E
316F: FE 20       cp   $20
3171: C2 76 31    jp   nz,$3176
3174: 36 2A       ld   (hl),$2A
3176: FE 80       cp   $80
3178: DA 7E 31    jp   c,$317E
317B: 3E 07       ld   a,$07
317D: 12          ld   (de),a
317E: EB          ex   de,hl
317F: 1B          dec  de
3180: CD 9C 30    call $309C
3183: C9          ret
3184: 0E 00       ld   c,$00
3186: 23          inc  hl
3187: 71          ld   (hl),c
3188: 23          inc  hl
3189: 71          ld   (hl),c
318A: 54          ld   d,h
318B: 7D          ld   a,l
318C: FE 19       cp   $19
318E: C2 95 31    jp   nz,$3195
3191: 59          ld   e,c
3192: C3 B4 31    jp   $31B4
3195: FE 39       cp   $39
3197: C2 9F 31    jp   nz,$319F
319A: 1E 02       ld   e,$02
319C: C3 B4 31    jp   $31B4
319F: FE 59       cp   $59
31A1: C2 A9 31    jp   nz,$31A9
31A4: 1E 04       ld   e,$04
31A6: C3 B4 31    jp   $31B4
31A9: FE 79       cp   $79
31AB: CA B2 31    jp   z,$31B2
31AE: 00          nop
31AF: C3 AE 31    jp   $31AE
31B2: 1E 06       ld   e,$06
31B4: EB          ex   de,hl
31B5: 71          ld   (hl),c
31B6: 23          inc  hl
31B7: 71          ld   (hl),c
31B8: EB          ex   de,hl
31B9: 11 FA FF    ld   de,$FFFA
31BC: 19          add  hl,de
31BD: EB          ex   de,hl
31BE: 21 15 00    ld   hl,$0015
31C1: 01 EF 31    ld   bc,$31EF
31C4: 19          add  hl,de
31C5: CD CF 31    call $31CF
31C8: CD 9C 30    call $309C
31CB: C9          ret
31CC: 00          nop
31CD: 00          nop
31CE: 00          nop
31CF: E5          push hl
31D0: 60          ld   h,b
31D1: 69          ld   l,c
31D2: 3A 01 81    ld   a,($8101)
31D5: FE 09       cp   $09
31D7: DA DC 31    jp   c,$31DC
31DA: 3E 09       ld   a,$09
31DC: A7          and  a
31DD: CA E5 31    jp   z,$31E5
31E0: 47          ld   b,a
31E1: 23          inc  hl
31E2: 23          inc  hl
31E3: 10 FC       djnz $31E1
31E5: 4E          ld   c,(hl)
31E6: 23          inc  hl
31E7: 46          ld   b,(hl)
31E8: E1          pop  hl
31E9: 71          ld   (hl),c
31EA: 23          inc  hl
31EB: 70          ld   (hl),b
31EC: C9          ret
31ED: 00          nop
31EE: 00          nop
31EF: 00          nop
31F0: 08          ex   af,af'
31F1: 14          inc  d
31F2: 04          inc  b
31F3: 00          nop
31F4: 04          inc  b
31F5: 00          nop
31F6: 04          inc  b
31F7: 14          inc  d
31F8: 03          inc  bc
31F9: 14          inc  d
31FA: 03          inc  bc
31FB: 14          inc  d
31FC: 03          inc  bc
31FD: 14          inc  d
31FE: 02          ld   (bc),a
31FF: 14          inc  d
3200: 02          ld   (bc),a
3201: 14          inc  d
3202: 02          ld   (bc),a
3203: 00          nop
3204: 00          nop
3205: 00          nop
3206: 00          nop
3207: 00          nop
3208: 00          nop
3209: 21 08 86    ld   hl,$8608
320C: 7E          ld   a,(hl)
320D: A7          and  a
320E: C2 1C 32    jp   nz,$321C
3211: 36 01       ld   (hl),$01
3213: 21 28 86    ld   hl,$8628
3216: 01 15 33    ld   bc,$3315
3219: CD F7 32    call $32F7
321C: 11 00 86    ld   de,$8600
321F: 21 29 86    ld   hl,$8629
3222: 1A          ld   a,(de)
3223: A7          and  a
3224: CC 56 32    call z,$3256
3227: 21 09 86    ld   hl,$8609
322A: 7E          ld   a,(hl)
322B: A7          and  a
322C: C2 3A 32    jp   nz,$323A
322F: 36 01       ld   (hl),$01
3231: 21 48 86    ld   hl,$8648
3234: 01 2B 33    ld   bc,$332B
3237: CD F7 32    call $32F7
323A: 11 02 86    ld   de,$8602
323D: 21 49 86    ld   hl,$8649
3240: 1A          ld   a,(de)
3241: A7          and  a
3242: CC 56 32    call z,$3256
3245: 21 00 86    ld   hl,$8600
3248: 7E          ld   a,(hl)
3249: A7          and  a
324A: C4 6D 32    call nz,$326D
324D: 21 02 86    ld   hl,$8602
3250: 7E          ld   a,(hl)
3251: A7          and  a
3252: C4 B2 32    call nz,$32B2
3255: C9          ret
3256: 46          ld   b,(hl)
3257: 2B          dec  hl
3258: 7E          ld   a,(hl)
3259: B0          or   b
325A: C2 61 32    jp   nz,$3261
325D: 3E 01       ld   a,$01
325F: 12          ld   (de),a
3260: C9          ret
3261: 7E          ld   a,(hl)
3262: A7          and  a
3263: CA 68 32    jp   z,$3268
3266: 35          dec  (hl)
3267: C9          ret
3268: 36 FF       ld   (hl),$FF
326A: 23          inc  hl
326B: 35          dec  (hl)
326C: C9          ret
326D: 23          inc  hl
326E: 7E          ld   a,(hl)
326F: A7          and  a
3270: C2 8B 32    jp   nz,$328B
3273: 3A 3E 80    ld   a,($803E)
3276: A7          and  a
3277: C0          ret  nz
3278: 36 01       ld   (hl),$01
327A: 11 10 86    ld   de,$8610
327D: 21 92 32    ld   hl,$3292
3280: 01 20 00    ld   bc,$0020
3283: ED B0       ldir
3285: 3E 86       ld   a,$86
3287: 32 00 B8    ld   ($watchdog),a
328A: C9          ret
328B: 21 17 86    ld   hl,$8617
328E: CD 3F 33    call $333F
3291: C9          ret
3292: 00          nop
3293: 00          nop
3294: 00          nop
3295: 15          dec  d
3296: 2C          inc  l
3297: 00          nop
3298: 00          nop
3299: 01 B4 C2    ld   bc,$C2B4
329C: 00          nop
329D: 00          nop
329E: 00          nop
329F: FF          rst  $38
32A0: 01 00 01    ld   bc,$0100
32A3: FF          rst  $38
32A4: 00          nop
32A5: 00          nop
32A6: 00          nop
32A7: 00          nop
32A8: 00          nop
32A9: 00          nop
32AA: 00          nop
32AB: 00          nop
32AC: 00          nop
32AD: 01 00 00    ld   bc,$0000
32B0: 00          nop
32B1: 00          nop
32B2: 23          inc  hl
32B3: 7E          ld   a,(hl)
32B4: A7          and  a
32B5: C2 D0 32    jp   nz,$32D0
32B8: 3A 3E 80    ld   a,($803E)
32BB: A7          and  a
32BC: C0          ret  nz
32BD: 36 01       ld   (hl),$01
32BF: 11 30 86    ld   de,$8630
32C2: 21 D7 32    ld   hl,$32D7
32C5: 01 20 00    ld   bc,$0020
32C8: ED B0       ldir
32CA: 3E 86       ld   a,$86
32CC: 32 00 B8    ld   ($watchdog),a
32CF: C9          ret
32D0: 21 37 86    ld   hl,$8637
32D3: CD 3F 33    call $333F
32D6: C9          ret
32D7: 00          nop
32D8: 00          nop
32D9: 00          nop
32DA: 19          add  hl,de
32DB: 2C          inc  l
32DC: 00          nop
32DD: 00          nop
32DE: 01 B4 C2    ld   bc,$C2B4
32E1: 00          nop
32E2: 00          nop
32E3: 00          nop
32E4: FF          rst  $38
32E5: 01 00 01    ld   bc,$0100
32E8: FF          rst  $38
32E9: 00          nop
32EA: 00          nop
32EB: 00          nop
32EC: 00          nop
32ED: 00          nop
32EE: 00          nop
32EF: 00          nop
32F0: 00          nop
32F1: 00          nop
32F2: 01 00 00    ld   bc,$0000
32F5: 00          nop
32F6: 00          nop
32F7: E5          push hl
32F8: 60          ld   h,b
32F9: 69          ld   l,c
32FA: 3A 01 81    ld   a,($8101)
32FD: FE 09       cp   $09
32FF: DA 04 33    jp   c,$3304
3302: 3E 09       ld   a,$09
3304: A7          and  a
3305: CA 0D 33    jp   z,$330D
3308: 47          ld   b,a
3309: 23          inc  hl
330A: 23          inc  hl
330B: 10 FC       djnz $3309
330D: 4E          ld   c,(hl)
330E: 23          inc  hl
330F: 46          ld   b,(hl)
3310: E1          pop  hl
3311: 71          ld   (hl),c
3312: 23          inc  hl
3313: 70          ld   (hl),b
3314: C9          ret
3315: 30 01       jr   nc,$3318
3317: 00          nop
3318: 01 B0 00    ld   bc,$00B0
331B: 70          ld   (hl),b
331C: 00          nop
331D: 30 00       jr   nc,$331F
331F: 30 00       jr   nc,$3321
3321: 30 00       jr   nc,$3323
3323: 30 00       jr   nc,$3325
3325: 30 00       jr   nc,$3327
3327: 00          nop
3328: 00          nop
3329: 00          nop
332A: 00          nop
332B: 90          sub  b
332C: 03          inc  bc
332D: 20 03       jr   nz,$3332
332F: E0          ret  po
3330: 02          ld   (bc),a
3331: A0          and  b
3332: 02          ld   (bc),a
3333: 60          ld   h,b
3334: 02          ld   (bc),a
3335: 40          ld   b,b
3336: 02          ld   (bc),a
3337: 20 02       jr   nz,$333B
3339: D0          ret  nc
333A: 01 90 01    ld   bc,$0190
333D: 50          ld   d,b
333E: 00          nop
333F: 7E          ld   a,(hl)
3340: FE 01       cp   $01
3342: CA 5F 33    jp   z,$335F
3345: FE 03       cp   $03
3347: CA A5 33    jp   z,$33A5
334A: FE 04       cp   $04
334C: CA 1B 38    jp   z,$381B
334F: FE 05       cp   $05
3351: CA 5A 38    jp   z,$385A
3354: FE 06       cp   $06
3356: CA 8E 38    jp   z,$388E
3359: FE 07       cp   $07
335B: CA C2 38    jp   z,$38C2
335E: C9          ret
335F: 3A 3E 80    ld   a,($803E)
3362: A7          and  a
3363: C0          ret  nz
3364: EB          ex   de,hl
3365: 42          ld   b,d
3366: 4B          ld   c,e
3367: 21 13 00    ld   hl,$0013
336A: 19          add  hl,de
336B: 1B          dec  de
336C: 1B          dec  de
336D: 1B          dec  de
336E: 1B          dec  de
336F: 34          inc  (hl)
3370: 7E          ld   a,(hl)
3371: FE 80       cp   $80
3373: D2 87 33    jp   nc,$3387
3376: E6 1F       and  $1F
3378: FE 10       cp   $10
337A: DA 81 33    jp   c,$3381
337D: CD B3 37    call $37B3
3380: C9          ret
3381: 06 2F       ld   b,$2F
3383: CD 91 33    call $3391
3386: C9          ret
3387: 23          inc  hl
3388: 36 00       ld   (hl),$00
338A: 3E 03       ld   a,$03
338C: 02          ld   (bc),a
338D: CD B3 37    call $37B3
3390: C9          ret
3391: 1A          ld   a,(de)
3392: 21 05 00    ld   hl,$0005
3395: 19          add  hl,de
3396: EB          ex   de,hl
3397: 6F          ld   l,a
3398: 26 80       ld   h,$80
339A: 70          ld   (hl),b
339B: 2B          dec  hl
339C: 1A          ld   a,(de)
339D: 77          ld   (hl),a
339E: 23          inc  hl
339F: 23          inc  hl
33A0: 23          inc  hl
33A1: 13          inc  de
33A2: 1A          ld   a,(de)
33A3: 77          ld   (hl),a
33A4: C9          ret
33A5: EB          ex   de,hl
33A6: 21 10 00    ld   hl,$0010
33A9: 19          add  hl,de
33AA: 7E          ld   a,(hl)
33AB: A7          and  a
33AC: CA B5 33    jp   z,$33B5
33AF: 35          dec  (hl)
33B0: EB          ex   de,hl
33B1: 23          inc  hl
33B2: C3 9A 34    jp   $349A
33B5: 13          inc  de
33B6: 01 FB FF    ld   bc,$FFFB
33B9: 09          add  hl,bc
33BA: EB          ex   de,hl
33BB: 06 07       ld   b,$07
33BD: 3E 14       ld   a,$14
33BF: BE          cp   (hl)
33C0: CA CB 33    jp   z,$33CB
33C3: C6 20       add  a,$20
33C5: 10 F8       djnz $33BF
33C7: 23          inc  hl
33C8: C3 99 34    jp   $3499
33CB: 23          inc  hl
33CC: 06 07       ld   b,$07
33CE: 3E 22       ld   a,$22
33D0: BE          cp   (hl)
33D1: CA 4B 34    jp   z,$344B
33D4: C6 20       add  a,$20
33D6: 10 F8       djnz $33D0
33D8: C3 99 34    jp   $3499
33DB: ED 5F       ld   a,r
33DD: E6 03       and  $03
33DF: FE 01       cp   $01
33E1: C2 E7 33    jp   nz,$33E7
33E4: 36 01       ld   (hl),$01
33E6: C9          ret
33E7: FE 02       cp   $02
33E9: C2 EF 33    jp   nz,$33EF
33EC: 36 02       ld   (hl),$02
33EE: C9          ret
33EF: FE 03       cp   $03
33F1: C2 F7 33    jp   nz,$33F7
33F4: 36 04       ld   (hl),$04
33F6: C9          ret
33F7: FE 00       cp   $00
33F9: C0          ret  nz
33FA: 36 08       ld   (hl),$08
33FC: C9          ret
33FD: 42          ld   b,d
33FE: 4B          ld   c,e
33FF: 54          ld   d,h
3400: 5D          ld   e,l
3401: 1B          dec  de
3402: EB          ex   de,hl
3403: 0A          ld   a,(bc)
3404: 3C          inc  a
3405: FE 09       cp   $09
3407: DA 0C 34    jp   c,$340C
340A: 3E 00       ld   a,$00
340C: 02          ld   (bc),a
340D: FE 01       cp   $01
340F: CA 36 34    jp   z,$3436
3412: FE 03       cp   $03
3414: CA 36 34    jp   z,$3436
3417: FE 04       cp   $04
3419: CA 36 34    jp   z,$3436
341C: FE 06       cp   $06
341E: CA 36 34    jp   z,$3436
3421: 3A 03 80    ld   a,($8003)
3424: BE          cp   (hl)
3425: 2B          dec  hl
3426: EB          ex   de,hl
3427: CA 33 34    jp   z,$3433
342A: DA 30 34    jp   c,$3430
342D: 36 04       ld   (hl),$04
342F: C9          ret
3430: 36 08       ld   (hl),$08
3432: C9          ret
3433: 36 00       ld   (hl),$00
3435: C9          ret
3436: 2B          dec  hl
3437: 3A 00 80    ld   a,($8000)
343A: BE          cp   (hl)
343B: EB          ex   de,hl
343C: CA 48 34    jp   z,$3448
343F: DA 45 34    jp   c,$3445
3442: 36 02       ld   (hl),$02
3444: C9          ret
3445: 36 01       ld   (hl),$01
3447: C9          ret
3448: 36 00       ld   (hl),$00
344A: C9          ret
344B: E5          push hl
344C: 01 13 00    ld   bc,$0013
344F: 09          add  hl,bc
3450: 34          inc  (hl)
3451: 44          ld   b,h
3452: 4D          ld   c,l
3453: E1          pop  hl
3454: 23          inc  hl
3455: 7D          ld   a,l
3456: E6 F0       and  $F0
3458: FE 10       cp   $10
345A: C2 7B 34    jp   nz,$347B
345D: 0A          ld   a,(bc)
345E: F5          push af
345F: E6 03       and  $03
3461: FE 00       cp   $00
3463: C4 FD 33    call nz,$33FD
3466: EB          ex   de,hl
3467: 21 0D 00    ld   hl,$000D
346A: 19          add  hl,de
346B: F1          pop  af
346C: CB 67       bit  4,a
346E: CA 76 34    jp   z,$3476
3471: 36 30       ld   (hl),$30
3473: C3 97 34    jp   $3497
3476: 36 10       ld   (hl),$10
3478: C3 97 34    jp   $3497
347B: FE 30       cp   $30
347D: 00          nop
347E: 00          nop
347F: 00          nop
3480: C2 7E 34    jp   nz,$347E
3483: 0A          ld   a,(bc)
3484: F5          push af
3485: E6 03       and  $03
3487: FE 02       cp   $02
3489: C4 FD 33    call nz,$33FD
348C: EB          ex   de,hl
348D: 21 0D 00    ld   hl,$000D
3490: 19          add  hl,de
3491: F1          pop  af
3492: C6 18       add  a,$18
3494: C3 6C 34    jp   $346C
3497: EB          ex   de,hl
3498: 2B          dec  hl
3499: 2B          dec  hl
349A: 54          ld   d,h
349B: 5D          ld   e,l
349C: 7E          ld   a,(hl)
349D: 23          inc  hl
349E: E6 07       and  $07
34A0: FE 04       cp   $04
34A2: C2 10 37    jp   nz,$3710
34A5: 7E          ld   a,(hl)
34A6: E6 07       and  $07
34A8: FE 02       cp   $02
34AA: C2 10 37    jp   nz,$3710
34AD: EB          ex   de,hl
34AE: CD CA 37    call $37CA
34B1: 01 E2 FF    ld   bc,$FFE2
34B4: 09          add  hl,bc
34B5: 3E FE       ld   a,$FE
34B7: BE          cp   (hl)
34B8: C2 D7 34    jp   nz,$34D7
34BB: 1B          dec  de
34BC: 3E 95       ld   a,$95
34BE: 32 00 B8    ld   ($watchdog),a
34C1: 3E 04       ld   a,$04
34C3: 12          ld   (de),a
34C4: 21 14 00    ld   hl,$0014
34C7: 19          add  hl,de
34C8: 36 01       ld   (hl),$01
34CA: 21 FD FF    ld   hl,$FFFD
34CD: 19          add  hl,de
34CE: 36 2C       ld   (hl),$2C
34D0: 21 03 00    ld   hl,$0003
34D3: 19          add  hl,de
34D4: 36 00       ld   (hl),$00
34D6: 13          inc  de
34D7: EB          ex   de,hl
34D8: 23          inc  hl
34D9: 54          ld   d,h
34DA: 5D          ld   e,l
34DB: 23          inc  hl
34DC: 1B          dec  de
34DD: 7E          ld   a,(hl)
34DE: 0F          rrca
34DF: DA 9F 35    jp   c,$359F
34E2: 0F          rrca
34E3: DA FA 35    jp   c,$35FA
34E6: 0F          rrca
34E7: DA 55 36    jp   c,$3655
34EA: 0F          rrca
34EB: DA B2 36    jp   c,$36B2
34EE: EB          ex   de,hl
34EF: 21 FC FF    ld   hl,$FFFC
34F2: 19          add  hl,de
34F3: 35          dec  (hl)
34F4: EB          ex   de,hl
34F5: 23          inc  hl
34F6: 23          inc  hl
34F7: 3E 00       ld   a,$00
34F9: 77          ld   (hl),a
34FA: 23          inc  hl
34FB: 23          inc  hl
34FC: 23          inc  hl
34FD: 77          ld   (hl),a
34FE: C3 74 37    jp   $3774
3501: 13          inc  de
3502: 13          inc  de
3503: 1A          ld   a,(de)
3504: FE 03       cp   $03
3506: D2 54 35    jp   nc,$3554
3509: ED 5F       ld   a,r
350B: E6 0F       and  $0F
350D: FE 09       cp   $09
350F: 3E DF       ld   a,$DF
3511: DA 41 35    jp   c,$3541
3514: 21 E1 FF    ld   hl,$FFE1
3517: 09          add  hl,bc
3518: BE          cp   (hl)
3519: DA 3B 35    jp   c,$353B
351C: 21 E3 FF    ld   hl,$FFE3
351F: 09          add  hl,bc
3520: BE          cp   (hl)
3521: DA 35 35    jp   c,$3535
3524: EB          ex   de,hl
3525: 7E          ld   a,(hl)
3526: FE 01       cp   $01
3528: CA 30 35    jp   z,$3530
352B: 36 01       ld   (hl),$01
352D: C3 EE 34    jp   $34EE
3530: 36 02       ld   (hl),$02
3532: C3 EE 34    jp   $34EE
3535: EB          ex   de,hl
3536: 36 04       ld   (hl),$04
3538: C3 EE 34    jp   $34EE
353B: EB          ex   de,hl
353C: 36 08       ld   (hl),$08
353E: C3 EE 34    jp   $34EE
3541: 21 E3 FF    ld   hl,$FFE3
3544: 09          add  hl,bc
3545: BE          cp   (hl)
3546: DA 35 35    jp   c,$3535
3549: 21 E1 FF    ld   hl,$FFE1
354C: 09          add  hl,bc
354D: BE          cp   (hl)
354E: DA 3B 35    jp   c,$353B
3551: C3 24 35    jp   $3524
3554: ED 5F       ld   a,r
3556: E6 0F       and  $0F
3558: FE 09       cp   $09
355A: 3E DF       ld   a,$DF
355C: DA 8C 35    jp   c,$358C
355F: 21 C2 FF    ld   hl,$FFC2
3562: 09          add  hl,bc
3563: BE          cp   (hl)
3564: DA 80 35    jp   c,$3580
3567: 21 02 00    ld   hl,$0002
356A: 09          add  hl,bc
356B: BE          cp   (hl)
356C: DA 86 35    jp   c,$3586
356F: EB          ex   de,hl
3570: 7E          ld   a,(hl)
3571: FE 04       cp   $04
3573: CA 7B 35    jp   z,$357B
3576: 36 04       ld   (hl),$04
3578: C3 EE 34    jp   $34EE
357B: 36 08       ld   (hl),$08
357D: C3 EE 34    jp   $34EE
3580: EB          ex   de,hl
3581: 36 02       ld   (hl),$02
3583: C3 EE 34    jp   $34EE
3586: EB          ex   de,hl
3587: 36 01       ld   (hl),$01
3589: C3 EE 34    jp   $34EE
358C: 21 02 00    ld   hl,$0002
358F: 09          add  hl,bc
3590: BE          cp   (hl)
3591: DA 86 35    jp   c,$3586
3594: 21 C2 FF    ld   hl,$FFC2
3597: 09          add  hl,bc
3598: BE          cp   (hl)
3599: DA 80 35    jp   c,$3580
359C: C3 6F 35    jp   $356F
359F: 23          inc  hl
35A0: 36 00       ld   (hl),$00
35A2: 23          inc  hl
35A3: 1A          ld   a,(de)
35A4: FE 0C       cp   $0C
35A6: CA EE 34    jp   z,$34EE
35A9: D2 B2 35    jp   nc,$35B2
35AC: 3E 0C       ld   a,$0C
35AE: 12          ld   (de),a
35AF: C3 EE 34    jp   $34EE
35B2: 13          inc  de
35B3: CD CA 37    call $37CA
35B6: 44          ld   b,h
35B7: 4D          ld   c,l
35B8: 21 02 00    ld   hl,$0002
35BB: 09          add  hl,bc
35BC: 3E DF       ld   a,$DF
35BE: BE          cp   (hl)
35BF: D2 01 35    jp   nc,$3501
35C2: 21 0B 00    ld   hl,$000B
35C5: 19          add  hl,de
35C6: EB          ex   de,hl
35C7: 21 E2 FF    ld   hl,$FFE2
35CA: CD E5 37    call $37E5
35CD: A7          and  a
35CE: C2 D7 35    jp   nz,$35D7
35D1: 21 02 00    ld   hl,$0002
35D4: CD E5 37    call $37E5
35D7: 13          inc  de
35D8: 13          inc  de
35D9: 21 E2 FF    ld   hl,$FFE2
35DC: CD 0C 38    call $380C
35DF: A7          and  a
35E0: C2 E9 35    jp   nz,$35E9
35E3: 21 02 00    ld   hl,$0002
35E6: CD 0C 38    call $380C
35E9: 21 F7 FF    ld   hl,$FFF7
35EC: 19          add  hl,de
35ED: 54          ld   d,h
35EE: 5D          ld   e,l
35EF: 13          inc  de
35F0: 1A          ld   a,(de)
35F1: 77          ld   (hl),a
35F2: 3E 00       ld   a,$00
35F4: 13          inc  de
35F5: 13          inc  de
35F6: 12          ld   (de),a
35F7: C3 22 37    jp   $3722
35FA: 23          inc  hl
35FB: 36 80       ld   (hl),$80
35FD: 23          inc  hl
35FE: 1A          ld   a,(de)
35FF: FE E4       cp   $E4
3601: CA EE 34    jp   z,$34EE
3604: DA 0D 36    jp   c,$360D
3607: 3E E4       ld   a,$E4
3609: 12          ld   (de),a
360A: C3 EE 34    jp   $34EE
360D: 13          inc  de
360E: CD CA 37    call $37CA
3611: 44          ld   b,h
3612: 4D          ld   c,l
3613: 21 C2 FF    ld   hl,$FFC2
3616: 09          add  hl,bc
3617: 3E DF       ld   a,$DF
3619: BE          cp   (hl)
361A: D2 01 35    jp   nc,$3501
361D: 21 0B 00    ld   hl,$000B
3620: 19          add  hl,de
3621: EB          ex   de,hl
3622: 21 E2 FF    ld   hl,$FFE2
3625: CD E5 37    call $37E5
3628: A7          and  a
3629: C2 32 36    jp   nz,$3632
362C: 21 C2 FF    ld   hl,$FFC2
362F: CD E5 37    call $37E5
3632: 13          inc  de
3633: 13          inc  de
3634: 21 E2 FF    ld   hl,$FFE2
3637: CD 0C 38    call $380C
363A: A7          and  a
363B: C2 44 36    jp   nz,$3644
363E: 21 C2 FF    ld   hl,$FFC2
3641: CD 0C 38    call $380C
3644: 21 F7 FF    ld   hl,$FFF7
3647: 19          add  hl,de
3648: 54          ld   d,h
3649: 5D          ld   e,l
364A: 13          inc  de
364B: 13          inc  de
364C: 1A          ld   a,(de)
364D: 77          ld   (hl),a
364E: 3E 00       ld   a,$00
3650: 13          inc  de
3651: 12          ld   (de),a
3652: C3 22 37    jp   $3722
3655: 23          inc  hl
3656: 36 04       ld   (hl),$04
3658: 23          inc  hl
3659: 13          inc  de
365A: 1A          ld   a,(de)
365B: FE EC       cp   $EC
365D: CA EE 34    jp   z,$34EE
3660: DA 69 36    jp   c,$3669
3663: 3E EC       ld   a,$EC
3665: 12          ld   (de),a
3666: C3 EE 34    jp   $34EE
3669: CD CA 37    call $37CA
366C: 44          ld   b,h
366D: 4D          ld   c,l
366E: 21 E3 FF    ld   hl,$FFE3
3671: 09          add  hl,bc
3672: 3E DF       ld   a,$DF
3674: BE          cp   (hl)
3675: D2 01 35    jp   nc,$3501
3678: 21 0B 00    ld   hl,$000B
367B: 19          add  hl,de
367C: EB          ex   de,hl
367D: 21 E2 FF    ld   hl,$FFE2
3680: CD E5 37    call $37E5
3683: A7          and  a
3684: C2 8D 36    jp   nz,$368D
3687: 21 E3 FF    ld   hl,$FFE3
368A: CD E5 37    call $37E5
368D: 13          inc  de
368E: 13          inc  de
368F: 21 E2 FF    ld   hl,$FFE2
3692: CD 0C 38    call $380C
3695: A7          and  a
3696: C2 9F 36    jp   nz,$369F
3699: 21 E3 FF    ld   hl,$FFE3
369C: CD 0C 38    call $380C
369F: 21 F7 FF    ld   hl,$FFF7
36A2: 19          add  hl,de
36A3: 3E 00       ld   a,$00
36A5: 77          ld   (hl),a
36A6: 23          inc  hl
36A7: 23          inc  hl
36A8: 23          inc  hl
36A9: 54          ld   d,h
36AA: 5D          ld   e,l
36AB: 13          inc  de
36AC: 1A          ld   a,(de)
36AD: 77          ld   (hl),a
36AE: EB          ex   de,hl
36AF: C3 22 37    jp   $3722
36B2: 23          inc  hl
36B3: 36 44       ld   (hl),$44
36B5: 23          inc  hl
36B6: 13          inc  de
36B7: 1A          ld   a,(de)
36B8: FE 14       cp   $14
36BA: CA EE 34    jp   z,$34EE
36BD: D2 C6 36    jp   nc,$36C6
36C0: 3E 14       ld   a,$14
36C2: 12          ld   (de),a
36C3: C3 EE 34    jp   $34EE
36C6: CD CA 37    call $37CA
36C9: 44          ld   b,h
36CA: 4D          ld   c,l
36CB: 21 E1 FF    ld   hl,$FFE1
36CE: 09          add  hl,bc
36CF: 3E DF       ld   a,$DF
36D1: BE          cp   (hl)
36D2: D2 01 35    jp   nc,$3501
36D5: 21 0B 00    ld   hl,$000B
36D8: 19          add  hl,de
36D9: EB          ex   de,hl
36DA: 21 E2 FF    ld   hl,$FFE2
36DD: CD E5 37    call $37E5
36E0: A7          and  a
36E1: C2 EA 36    jp   nz,$36EA
36E4: 21 E1 FF    ld   hl,$FFE1
36E7: CD E5 37    call $37E5
36EA: 13          inc  de
36EB: 13          inc  de
36EC: 21 E2 FF    ld   hl,$FFE2
36EF: CD 0C 38    call $380C
36F2: A7          and  a
36F3: C2 FC 36    jp   nz,$36FC
36F6: 21 E1 FF    ld   hl,$FFE1
36F9: CD 0C 38    call $380C
36FC: 21 F7 FF    ld   hl,$FFF7
36FF: 19          add  hl,de
3700: 3E 00       ld   a,$00
3702: 77          ld   (hl),a
3703: 23          inc  hl
3704: 23          inc  hl
3705: 23          inc  hl
3706: 54          ld   d,h
3707: 5D          ld   e,l
3708: 13          inc  de
3709: 13          inc  de
370A: 1A          ld   a,(de)
370B: 77          ld   (hl),a
370C: EB          ex   de,hl
370D: C3 22 37    jp   $3722
3710: 21 07 00    ld   hl,$0007
3713: 19          add  hl,de
3714: EB          ex   de,hl
3715: 21 0E 00    ld   hl,$000E
3718: 19          add  hl,de
3719: 44          ld   b,h
371A: 4D          ld   c,l
371B: 21 05 00    ld   hl,$0005
371E: 19          add  hl,de
371F: C3 30 37    jp   $3730
3722: 21 0E 00    ld   hl,$000E
3725: 19          add  hl,de
3726: 44          ld   b,h
3727: 4D          ld   c,l
3728: 36 00       ld   (hl),$00
372A: 21 05 00    ld   hl,$0005
372D: 19          add  hl,de
372E: 36 00       ld   (hl),$00
3730: EB          ex   de,hl
3731: 1B          dec  de
3732: 1A          ld   a,(de)
3733: A7          and  a
3734: CA 45 37    jp   z,$3745
3737: 13          inc  de
3738: 1A          ld   a,(de)
3739: 3C          inc  a
373A: E6 03       and  $03
373C: 12          ld   (de),a
373D: FE 01       cp   $01
373F: CA 74 37    jp   z,$3774
3742: C3 68 37    jp   $3768
3745: 13          inc  de
3746: 13          inc  de
3747: 1A          ld   a,(de)
3748: A7          and  a
3749: CA 59 37    jp   z,$3759
374C: 0A          ld   a,(bc)
374D: 3C          inc  a
374E: E6 01       and  $01
3750: 02          ld   (bc),a
3751: FE 01       cp   $01
3753: CA 74 37    jp   z,$3774
3756: C3 68 37    jp   $3768
3759: 0A          ld   a,(bc)
375A: 3C          inc  a
375B: E6 07       and  $07
375D: 02          ld   (bc),a
375E: FE 03       cp   $03
3760: CA 68 37    jp   z,$3768
3763: FE 05       cp   $05
3765: C2 74 37    jp   nz,$3774
3768: 54          ld   d,h
3769: 5D          ld   e,l
376A: 21 F9 FF    ld   hl,$FFF9
376D: 19          add  hl,de
376E: 1B          dec  de
376F: 1B          dec  de
3770: 1B          dec  de
3771: C3 87 37    jp   $3787
3774: 00          nop
3775: 00          nop
3776: 00          nop
3777: 54          ld   d,h
3778: 5D          ld   e,l
3779: 01 FA FF    ld   bc,$FFFA
377C: 09          add  hl,bc
377D: 1A          ld   a,(de)
377E: 86          add  a,(hl)
377F: 77          ld   (hl),a
3780: 1B          dec  de
3781: 1B          dec  de
3782: 1B          dec  de
3783: 2B          dec  hl
3784: 1A          ld   a,(de)
3785: 86          add  a,(hl)
3786: 77          ld   (hl),a
3787: 2B          dec  hl
3788: 2B          dec  hl
3789: 7E          ld   a,(hl)
378A: 3C          inc  a
378B: E6 07       and  $07
378D: 77          ld   (hl),a
378E: FE 04       cp   $04
3790: DA 98 37    jp   c,$3798
3793: 36 00       ld   (hl),$00
3795: 2B          dec  hl
3796: 34          inc  (hl)
3797: 23          inc  hl
3798: 2B          dec  hl
3799: 1B          dec  de
379A: CD A1 37    call $37A1
379D: CD B3 37    call $37B3
37A0: C9          ret
37A1: 7E          ld   a,(hl)
37A2: E6 03       and  $03
37A4: 47          ld   b,a
37A5: 1A          ld   a,(de)
37A6: E6 CC       and  $CC
37A8: 4F          ld   c,a
37A9: 2B          dec  hl
37AA: 7E          ld   a,(hl)
37AB: E6 30       and  $30
37AD: B0          or   b
37AE: B1          or   c
37AF: 77          ld   (hl),a
37B0: EB          ex   de,hl
37B1: 1B          dec  de
37B2: C9          ret
37B3: 1A          ld   a,(de)
37B4: 6F          ld   l,a
37B5: 26 80       ld   h,$80
37B7: 13          inc  de
37B8: 1A          ld   a,(de)
37B9: 77          ld   (hl),a
37BA: 13          inc  de
37BB: 13          inc  de
37BC: 13          inc  de
37BD: 13          inc  de
37BE: 2B          dec  hl
37BF: 1A          ld   a,(de)
37C0: 77          ld   (hl),a
37C1: 23          inc  hl
37C2: 23          inc  hl
37C3: 36 06       ld   (hl),$06
37C5: 23          inc  hl
37C6: 13          inc  de
37C7: 1A          ld   a,(de)
37C8: 77          ld   (hl),a
37C9: C9          ret
37CA: 1A          ld   a,(de)
37CB: 0F          rrca
37CC: 0F          rrca
37CD: 0F          rrca
37CE: E6 1F       and  $1F
37D0: 6F          ld   l,a
37D1: 1B          dec  de
37D2: 1A          ld   a,(de)
37D3: ED 44       neg
37D5: 07          rlca
37D6: 07          rlca
37D7: 67          ld   h,a
37D8: E6 E0       and  $E0
37DA: B5          or   l
37DB: 6F          ld   l,a
37DC: 7C          ld   a,h
37DD: E6 03       and  $03
37DF: 67          ld   h,a
37E0: 3E 90       ld   a,$90
37E2: 84          add  a,h
37E3: 67          ld   h,a
37E4: C9          ret
37E5: 09          add  hl,bc
37E6: 3E E1       ld   a,$E1
37E8: BE          cp   (hl)
37E9: CA 08 38    jp   z,$3808
37EC: 3E E2       ld   a,$E2
37EE: BE          cp   (hl)
37EF: CA 08 38    jp   z,$3808
37F2: 3E E3       ld   a,$E3
37F4: BE          cp   (hl)
37F5: CA 08 38    jp   z,$3808
37F8: 3E E4       ld   a,$E4
37FA: BE          cp   (hl)
37FB: CA 08 38    jp   z,$3808
37FE: 00          nop
37FF: 00          nop
3800: 00          nop
3801: 00          nop
3802: 00          nop
3803: 00          nop
3804: 3E 00       ld   a,$00
3806: 12          ld   (de),a
3807: C9          ret
3808: 3E 01       ld   a,$01
380A: 12          ld   (de),a
380B: C9          ret
380C: 09          add  hl,bc
380D: 3E E0       ld   a,$E0
380F: BE          cp   (hl)
3810: CA 17 38    jp   z,$3817
3813: 3E 00       ld   a,$00
3815: 12          ld   (de),a
3816: C9          ret
3817: 3E 01       ld   a,$01
3819: 12          ld   (de),a
381A: C9          ret
381B: EB          ex   de,hl
381C: 21 F9 FF    ld   hl,$FFF9
381F: 19          add  hl,de
3820: 34          inc  (hl)
3821: 7E          ld   a,(hl)
3822: FE 10       cp   $10
3824: DA 51 38    jp   c,$3851
3827: CA 3C 38    jp   z,$383C
382A: E6 07       and  $07
382C: FE 00       cp   $00
382E: C2 42 38    jp   nz,$3842
3831: 21 FD FF    ld   hl,$FFFD
3834: 19          add  hl,de
3835: 3E 80       ld   a,$80
3837: 86          add  a,(hl)
3838: 77          ld   (hl),a
3839: C3 42 38    jp   $3842
383C: 21 FD FF    ld   hl,$FFFD
383F: 19          add  hl,de
3840: 36 24       ld   (hl),$24
3842: 62          ld   h,d
3843: 6B          ld   l,e
3844: 23          inc  hl
3845: 23          inc  hl
3846: 7E          ld   a,(hl)
3847: C6 02       add  a,$02
3849: FE E0       cp   $E0
384B: DA 50 38    jp   c,$3850
384E: 3E E0       ld   a,$E0
3850: 77          ld   (hl),a
3851: 21 FC FF    ld   hl,$FFFC
3854: 19          add  hl,de
3855: EB          ex   de,hl
3856: CD B3 37    call $37B3
3859: C9          ret
385A: EB          ex   de,hl
385B: 21 FA FF    ld   hl,$FFFA
385E: 19          add  hl,de
385F: 34          inc  (hl)
3860: 7E          ld   a,(hl)
3861: 23          inc  hl
3862: 23          inc  hl
3863: 23          inc  hl
3864: FE 01       cp   $01
3866: C2 6B 38    jp   nz,$386B
3869: 36 2D       ld   (hl),$2D
386B: FE 08       cp   $08
386D: C2 72 38    jp   nz,$3872
3870: 36 31       ld   (hl),$31
3872: FE 14       cp   $14
3874: C2 79 38    jp   nz,$3879
3877: 36 30       ld   (hl),$30
3879: FE 20       cp   $20
387B: C2 80 38    jp   nz,$3880
387E: 36 2B       ld   (hl),$2B
3880: FE 80       cp   $80
3882: DA 88 38    jp   c,$3888
3885: 3E 07       ld   a,$07
3887: 12          ld   (de),a
3888: EB          ex   de,hl
3889: 1B          dec  de
388A: CD B3 37    call $37B3
388D: C9          ret
388E: EB          ex   de,hl
388F: 21 FA FF    ld   hl,$FFFA
3892: 19          add  hl,de
3893: 34          inc  (hl)
3894: 7E          ld   a,(hl)
3895: 23          inc  hl
3896: 23          inc  hl
3897: 23          inc  hl
3898: FE 01       cp   $01
389A: C2 9F 38    jp   nz,$389F
389D: 36 2C       ld   (hl),$2C
389F: FE 08       cp   $08
38A1: C2 A6 38    jp   nz,$38A6
38A4: 36 2D       ld   (hl),$2D
38A6: FE 14       cp   $14
38A8: C2 AD 38    jp   nz,$38AD
38AB: 36 2E       ld   (hl),$2E
38AD: FE 20       cp   $20
38AF: C2 B4 38    jp   nz,$38B4
38B2: 36 2B       ld   (hl),$2B
38B4: FE 80       cp   $80
38B6: DA BC 38    jp   c,$38BC
38B9: 3E 07       ld   a,$07
38BB: 12          ld   (de),a
38BC: EB          ex   de,hl
38BD: 1B          dec  de
38BE: CD B3 37    call $37B3
38C1: C9          ret
38C2: 0E 00       ld   c,$00
38C4: 23          inc  hl
38C5: 71          ld   (hl),c
38C6: 23          inc  hl
38C7: 71          ld   (hl),c
38C8: 54          ld   d,h
38C9: 7D          ld   a,l
38CA: FE 19       cp   $19
38CC: C2 D3 38    jp   nz,$38D3
38CF: 59          ld   e,c
38D0: C3 F2 38    jp   $38F2
38D3: FE 39       cp   $39
38D5: C2 DD 38    jp   nz,$38DD
38D8: 1E 02       ld   e,$02
38DA: C3 F2 38    jp   $38F2
38DD: FE 59       cp   $59
38DF: C2 E7 38    jp   nz,$38E7
38E2: 1E 04       ld   e,$04
38E4: C3 F2 38    jp   $38F2
38E7: FE 79       cp   $79
38E9: CA F0 38    jp   z,$38F0
38EC: 00          nop
38ED: C3 EC 38    jp   $38EC
38F0: 1E 06       ld   e,$06
38F2: EB          ex   de,hl
38F3: 71          ld   (hl),c
38F4: 23          inc  hl
38F5: 71          ld   (hl),c
38F6: EB          ex   de,hl
38F7: 11 FA FF    ld   de,$FFFA
38FA: 19          add  hl,de
38FB: EB          ex   de,hl
38FC: 01 10 39    ld   bc,$3910
38FF: 21 15 00    ld   hl,$0015
3902: 19          add  hl,de
3903: CD F7 32    call $32F7
3906: CD B3 37    call $37B3
3909: C9          ret
390A: 00          nop
390B: 00          nop
390C: 00          nop
390D: 00          nop
390E: 00          nop
390F: 00          nop
3910: 70          ld   (hl),b
3911: 02          ld   (bc),a
3912: 70          ld   (hl),b
3913: 01 F0 00    ld   bc,$00F0
3916: F0          ret  p
3917: 00          nop
3918: F0          ret  p
3919: 00          nop
391A: F0          ret  p
391B: 00          nop
391C: F0          ret  p
391D: 00          nop
391E: F0          ret  p
391F: 00          nop
3920: F0          ret  p
3921: 00          nop
3922: F0          ret  p
3923: 00          nop
3924: 00          nop
3925: 00          nop
3926: 00          nop
3927: 00          nop
3928: 00          nop
3929: 00          nop
392A: 3A 00 B0    ld   a,($B000)
392D: E6 80       and  $80
392F: C0          ret  nz
3930: 3A 1F 84    ld   a,($841F)
3933: FE 01       cp   $01
3935: C0          ret  nz
3936: 3A 3E 80    ld   a,($803E)
3939: A7          and  a
393A: C0          ret  nz
393B: CD 81 39    call $3981
393E: CD 9C 39    call $399C
3941: CD B7 39    call $39B7
3944: CD D2 39    call $39D2
3947: CD ED 39    call $39ED
394A: C9          ret
394B: CD 08 3A    call $3A08
394E: CD 15 3A    call $3A15
3951: CD 22 3A    call $3A22
3954: CD 50 3A    call $3A50
3957: CD 5D 3A    call $3A5D
395A: CD CC 3A    call $3ACC
395D: C9          ret
395E: DD 7E 03    ld   a,(ix+$03)
3961: FD 46 03    ld   b,(iy+$03)
3964: 94          sub  h
3965: B8          cp   b
3966: D0          ret  nc
3967: 85          add  a,l
3968: B8          cp   b
3969: D8          ret  c
396A: DD 7E 00    ld   a,(ix+$00)
396D: FD 46 00    ld   b,(iy+$00)
3970: 92          sub  d
3971: B8          cp   b
3972: D0          ret  nc
3973: 83          add  a,e
3974: B8          cp   b
3975: D8          ret  c
3976: 3E 81       ld   a,$81
3978: 32 00 B8    ld   ($watchdog),a
397B: 21 1F 84    ld   hl,$841F
397E: 36 02       ld   (hl),$02
3980: C9          ret
3981: 3A 01 85    ld   a,($8501)
3984: A7          and  a
3985: C8          ret  z
3986: 3A 2B 85    ld   a,($852B)
3989: A7          and  a
398A: C0          ret  nz
398B: DD 21 00 80 ld   ix,$8000
398F: FD 21 04 80 ld   iy,$8004
3993: 11 0E 07    ld   de,$070E
3996: 21 0E 07    ld   hl,$070E
3999: C3 5E 39    jp   $395E
399C: 3A 04 85    ld   a,($8504)
399F: A7          and  a
39A0: C8          ret  z
39A1: 3A 6B 85    ld   a,($856B)
39A4: A7          and  a
39A5: C0          ret  nz
39A6: DD 21 00 80 ld   ix,$8000
39AA: FD 21 0C 80 ld   iy,$800C
39AE: 11 0E 07    ld   de,$070E
39B1: 21 0E 07    ld   hl,$070E
39B4: C3 5E 39    jp   $395E
39B7: 3A 07 85    ld   a,($8507)
39BA: A7          and  a
39BB: C8          ret  z
39BC: 3A 8B 85    ld   a,($858B)
39BF: A7          and  a
39C0: C0          ret  nz
39C1: DD 21 00 80 ld   ix,$8000
39C5: FD 21 10 80 ld   iy,$8010
39C9: 11 0E 07    ld   de,$070E
39CC: 21 0E 07    ld   hl,$070E
39CF: C3 5E 39    jp   $395E
39D2: 3A 01 86    ld   a,($8601)
39D5: A7          and  a
39D6: C8          ret  z
39D7: 3A 2B 86    ld   a,($862B)
39DA: A7          and  a
39DB: C0          ret  nz
39DC: DD 21 00 80 ld   ix,$8000
39E0: FD 21 14 80 ld   iy,$8014
39E4: 11 0A 05    ld   de,$050A
39E7: 21 0A 05    ld   hl,$050A
39EA: C3 5E 39    jp   $395E
39ED: 3A 03 86    ld   a,($8603)
39F0: A7          and  a
39F1: C8          ret  z
39F2: 3A 4B 86    ld   a,($864B)
39F5: A7          and  a
39F6: C0          ret  nz
39F7: DD 21 00 80 ld   ix,$8000
39FB: FD 21 18 80 ld   iy,$8018
39FF: 11 0A 05    ld   de,$050A
3A02: 21 0A 05    ld   hl,$050A
3A05: C3 5E 39    jp   $395E
3A08: 21 17 85    ld   hl,$8517
3A0B: 7E          ld   a,(hl)
3A0C: FE 04       cp   $04
3A0E: C0          ret  nz
3A0F: 11 07 80    ld   de,$8007
3A12: C3 2C 3A    jp   $3A2C
3A15: 21 57 85    ld   hl,$8557
3A18: 7E          ld   a,(hl)
3A19: FE 04       cp   $04
3A1B: C0          ret  nz
3A1C: 11 0F 80    ld   de,$800F
3A1F: C3 2C 3A    jp   $3A2C
3A22: 21 77 85    ld   hl,$8577
3A25: 7E          ld   a,(hl)
3A26: FE 04       cp   $04
3A28: C0          ret  nz
3A29: 11 13 80    ld   de,$8013
3A2C: 1A          ld   a,(de)
3A2D: FE E0       cp   $E0
3A2F: D2 43 3A    jp   nc,$3A43
3A32: CD 99 3B    call $3B99
3A35: FE 37       cp   $37
3A37: C0          ret  nz
3A38: 36 05       ld   (hl),$05
3A3A: 3E 96       ld   a,$96
3A3C: 32 00 B8    ld   ($watchdog),a
3A3F: C3 4A 3A    jp   $3A4A
3A42: C9          ret
3A43: 36 06       ld   (hl),$06
3A45: 3E 83       ld   a,$83
3A47: 32 00 B8    ld   ($watchdog),a
3A4A: 16 04       ld   d,$04
3A4C: CD BD 3B    call $3BBD
3A4F: C9          ret
3A50: 21 17 86    ld   hl,$8617
3A53: 7E          ld   a,(hl)
3A54: FE 04       cp   $04
3A56: C0          ret  nz
3A57: 11 17 80    ld   de,$8017
3A5A: C3 67 3A    jp   $3A67
3A5D: 21 37 86    ld   hl,$8637
3A60: 7E          ld   a,(hl)
3A61: FE 04       cp   $04
3A63: C0          ret  nz
3A64: 11 1B 80    ld   de,$801B
3A67: 1A          ld   a,(de)
3A68: FE E0       cp   $E0
3A6A: D2 78 3A    jp   nc,$3A78
3A6D: CD 99 3B    call $3B99
3A70: FE 37       cp   $37
3A72: C0          ret  nz
3A73: 36 05       ld   (hl),$05
3A75: C3 85 3A    jp   $3A85
3A78: 36 06       ld   (hl),$06
3A7A: 3E 82       ld   a,$82
3A7C: 32 00 B8    ld   ($watchdog),a
3A7F: 16 08       ld   d,$08
3A81: CD BD 3B    call $3BBD
3A84: C9          ret
3A85: 3E 97       ld   a,$97
3A87: 32 00 B8    ld   ($watchdog),a
3A8A: 16 08       ld   d,$08
3A8C: CD BD 3B    call $3BBD
3A8F: 16 04       ld   d,$04
3A91: 3A 2B 85    ld   a,($852B)
3A94: A7          and  a
3A95: C2 A5 3A    jp   nz,$3AA5
3A98: CD BD 3B    call $3BBD
3A9B: 21 17 85    ld   hl,$8517
3A9E: 36 06       ld   (hl),$06
3AA0: 21 2B 85    ld   hl,$852B
3AA3: 36 01       ld   (hl),$01
3AA5: 3A 6B 85    ld   a,($856B)
3AA8: A7          and  a
3AA9: C2 B9 3A    jp   nz,$3AB9
3AAC: CD BD 3B    call $3BBD
3AAF: 21 57 85    ld   hl,$8557
3AB2: 36 06       ld   (hl),$06
3AB4: 21 6B 85    ld   hl,$856B
3AB7: 36 01       ld   (hl),$01
3AB9: 3A 8B 85    ld   a,($858B)
3ABC: A7          and  a
3ABD: C0          ret  nz
3ABE: CD BD 3B    call $3BBD
3AC1: 21 77 85    ld   hl,$8577
3AC4: 36 06       ld   (hl),$06
3AC6: 21 8B 85    ld   hl,$858B
3AC9: 36 01       ld   (hl),$01
3ACB: C9          ret
3ACC: 3A C0 85    ld   a,($85C0)
3ACF: A7          and  a
3AD0: C8          ret  z
3AD1: CD E1 3A    call $3AE1
3AD4: CD F8 3A    call $3AF8
3AD7: CD 0F 3B    call $3B0F
3ADA: CD 36 3B    call $3B36
3ADD: CD 4D 3B    call $3B4D
3AE0: C9          ret
3AE1: 3A 01 85    ld   a,($8501)
3AE4: A7          and  a
3AE5: C8          ret  z
3AE6: 3A 2B 85    ld   a,($852B)
3AE9: A7          and  a
3AEA: C0          ret  nz
3AEB: FD 21 04 80 ld   iy,$8004
3AEF: 21 26 3B    ld   hl,$3B26
3AF2: 11 17 85    ld   de,$8517
3AF5: C3 74 3B    jp   $3B74
3AF8: 3A 05 85    ld   a,($8505)
3AFB: A7          and  a
3AFC: C8          ret  z
3AFD: 3A 6B 85    ld   a,($856B)
3B00: A7          and  a
3B01: C0          ret  nz
3B02: FD 21 0C 80 ld   iy,$800C
3B06: 21 26 3B    ld   hl,$3B26
3B09: 11 57 85    ld   de,$8557
3B0C: C3 74 3B    jp   $3B74
3B0F: 3A 07 85    ld   a,($8507)
3B12: A7          and  a
3B13: C8          ret  z
3B14: 3A 8B 85    ld   a,($858B)
3B17: A7          and  a
3B18: C0          ret  nz
3B19: FD 21 10 80 ld   iy,$8010
3B1D: 21 26 3B    ld   hl,$3B26
3B20: 11 77 85    ld   de,$8577
3B23: C3 74 3B    jp   $3B74
3B26: 21 FD FF    ld   hl,$FFFD
3B29: 19          add  hl,de
3B2A: 36 1C       ld   (hl),$1C
3B2C: 21 14 00    ld   hl,$0014
3B2F: 19          add  hl,de
3B30: 36 01       ld   (hl),$01
3B32: EB          ex   de,hl
3B33: 36 04       ld   (hl),$04
3B35: C9          ret
3B36: 3A 01 86    ld   a,($8601)
3B39: A7          and  a
3B3A: C8          ret  z
3B3B: 3A 2B 86    ld   a,($862B)
3B3E: A7          and  a
3B3F: C0          ret  nz
3B40: FD 21 14 80 ld   iy,$8014
3B44: 21 64 3B    ld   hl,$3B64
3B47: 11 17 86    ld   de,$8617
3B4A: C3 74 3B    jp   $3B74
3B4D: 3A 03 86    ld   a,($8603)
3B50: A7          and  a
3B51: C8          ret  z
3B52: 3A 4B 86    ld   a,($864B)
3B55: A7          and  a
3B56: C0          ret  nz
3B57: FD 21 18 80 ld   iy,$8018
3B5B: 21 64 3B    ld   hl,$3B64
3B5E: 11 37 86    ld   de,$8637
3B61: C3 74 3B    jp   $3B74
3B64: 21 FD FF    ld   hl,$FFFD
3B67: 19          add  hl,de
3B68: 36 2C       ld   (hl),$2C
3B6A: 21 14 00    ld   hl,$0014
3B6D: 19          add  hl,de
3B6E: 36 01       ld   (hl),$01
3B70: EB          ex   de,hl
3B71: 36 04       ld   (hl),$04
3B73: C9          ret
3B74: DD 21 1C 80 ld   ix,$801C
3B78: D9          exx
3B79: 11 10 08    ld   de,$0810
3B7C: 21 12 02    ld   hl,$0212
3B7F: DD 7E 03    ld   a,(ix+$03)
3B82: FD 46 03    ld   b,(iy+$03)
3B85: 94          sub  h
3B86: B8          cp   b
3B87: D0          ret  nc
3B88: 85          add  a,l
3B89: B8          cp   b
3B8A: D8          ret  c
3B8B: DD 7E 00    ld   a,(ix+$00)
3B8E: FD 46 00    ld   b,(iy+$00)
3B91: 92          sub  d
3B92: B8          cp   b
3B93: D0          ret  nc
3B94: 83          add  a,e
3B95: B8          cp   b
3B96: D8          ret  c
3B97: D9          exx
3B98: E9          jp   (hl)
3B99: 1A          ld   a,(de)
3B9A: 0F          rrca
3B9B: 0F          rrca
3B9C: 0F          rrca
3B9D: E6 1F       and  $1F
3B9F: 4F          ld   c,a
3BA0: 1B          dec  de
3BA1: 1B          dec  de
3BA2: 1B          dec  de
3BA3: 1A          ld   a,(de)
3BA4: ED 44       neg
3BA6: 07          rlca
3BA7: 07          rlca
3BA8: 47          ld   b,a
3BA9: E6 E0       and  $E0
3BAB: B1          or   c
3BAC: 4F          ld   c,a
3BAD: 78          ld   a,b
3BAE: E6 03       and  $03
3BB0: 47          ld   b,a
3BB1: 3E 90       ld   a,$90
3BB3: 80          add  a,b
3BB4: 47          ld   b,a
3BB5: EB          ex   de,hl
3BB6: 21 E1 FF    ld   hl,$FFE1
3BB9: 09          add  hl,bc
3BBA: 7E          ld   a,(hl)
3BBB: EB          ex   de,hl
3BBC: C9          ret
3BBD: AF          xor  a
3BBE: 21 40 80    ld   hl,$8040
3BC1: 36 01       ld   (hl),$01
3BC3: 0E 00       ld   c,$00
3BC5: 1E 00       ld   e,$00
3BC7: 23          inc  hl
3BC8: 79          ld   a,c
3BC9: 8E          adc  a,(hl)
3BCA: 27          daa
3BCB: 77          ld   (hl),a
3BCC: 23          inc  hl
3BCD: 7A          ld   a,d
3BCE: 8E          adc  a,(hl)
3BCF: 27          daa
3BD0: 77          ld   (hl),a
3BD1: 23          inc  hl
3BD2: 7B          ld   a,e
3BD3: 8E          adc  a,(hl)
3BD4: 27          daa
3BD5: 77          ld   (hl),a
3BD6: C9          ret
3BD7: F8          ret  m
3BD8: 34          inc  (hl)
3BD9: FE 24       cp   $24
3BDB: F7          rst  $30
3BDC: 33          inc  sp
3BDD: F6 24       or   $24
3BDF: FC 24 F6    call m,$F624
3BE2: 24          inc  h
3BE3: 03          inc  bc
3BE4: 2A 91 32    ld   hl,($3291)
3BE7: 91          sub  c
3BE8: AA          xor  d
3BE9: 92          sub  d
3BEA: 03          inc  bc
3BEB: 2E 91       ld   l,$91
3BED: AA          xor  d
3BEE: 92          sub  d
3BEF: B2          or   d
3BF0: 92          sub  d
3BF1: 03          inc  bc
3BF2: A6          and  (hl)
3BF3: 91          sub  c
3BF4: AE          xor  (hl)
3BF5: 92          sub  d
3BF6: 32 91 03    ld   ($0391),a
3BF9: 26 92       ld   h,$92
3BFB: AE          xor  (hl)
3BFC: 92          sub  d
3BFD: BA          cp   d
3BFE: 92          sub  d
3BFF: 21 C0 80    ld   hl,$80C0
3C02: 7E          ld   a,(hl)
3C03: A7          and  a
3C04: CA 86 3C    jp   z,$3C86
3C07: 23          inc  hl
3C08: 7E          ld   a,(hl)
3C09: A7          and  a
3C0A: C2 24 3C    jp   nz,$3C24
3C0D: 11 1C 3C    ld   de,$3C1C
3C10: 01 07 00    ld   bc,$0007
3C13: EB          ex   de,hl
3C14: ED B0       ldir
3C16: 3E 94       ld   a,$94
3C18: 32 00 B8    ld   ($watchdog),a
3C1B: C9          ret
3C1C: 01 00 00    ld   bc,$0000
3C1F: 00          nop
3C20: 00          nop
3C21: 00          nop
3C22: 00          nop
3C23: 00          nop
3C24: 23          inc  hl
3C25: 7E          ld   a,(hl)
3C26: FE 01       cp   $01
3C28: CA 4D 3C    jp   z,$3C4D
3C2B: FE 02       cp   $02
3C2D: CA 78 3C    jp   z,$3C78
3C30: CD 92 3C    call $3C92
3C33: DD 46 00    ld   b,(ix+$00)
3C36: 78          ld   a,b
3C37: A7          and  a
3C38: C8          ret  z
3C39: DD 23       inc  ix
3C3B: 11 D7 3B    ld   de,$3BD7
3C3E: CD A9 3C    call $3CA9
3C41: 21 C2 80    ld   hl,$80C2
3C44: 36 01       ld   (hl),$01
3C46: 23          inc  hl
3C47: 36 00       ld   (hl),$00
3C49: 23          inc  hl
3C4A: 36 00       ld   (hl),$00
3C4C: C9          ret
3C4D: 23          inc  hl
3C4E: 34          inc  (hl)
3C4F: 3E 06       ld   a,$06
3C51: BE          cp   (hl)
3C52: D0          ret  nc
3C53: 36 00       ld   (hl),$00
3C55: 23          inc  hl
3C56: 34          inc  (hl)
3C57: 7E          ld   a,(hl)
3C58: FE 08       cp   $08
3C5A: D8          ret  c
3C5B: CD 92 3C    call $3C92
3C5E: DD 46 00    ld   b,(ix+$00)
3C61: 78          ld   a,b
3C62: A7          and  a
3C63: C8          ret  z
3C64: DD 23       inc  ix
3C66: 11 DD 3B    ld   de,$3BDD
3C69: CD A9 3C    call $3CA9
3C6C: 21 C2 80    ld   hl,$80C2
3C6F: 36 02       ld   (hl),$02
3C71: 23          inc  hl
3C72: 36 00       ld   (hl),$00
3C74: 23          inc  hl
3C75: 36 00       ld   (hl),$00
3C77: C9          ret
3C78: 23          inc  hl
3C79: 34          inc  (hl)
3C7A: 3E 06       ld   a,$06
3C7C: BE          cp   (hl)
3C7D: D0          ret  nc
3C7E: 36 00       ld   (hl),$00
3C80: 23          inc  hl
3C81: 34          inc  (hl)
3C82: 7E          ld   a,(hl)
3C83: FE 08       cp   $08
3C85: D8          ret  c
3C86: 21 C0 80    ld   hl,$80C0
3C89: 3E 00       ld   a,$00
3C8B: 06 08       ld   b,$08
3C8D: 77          ld   (hl),a
3C8E: 23          inc  hl
3C8F: 10 FC       djnz $3C8D
3C91: C9          ret
3C92: CD EF 48    call $48EF
3C95: DD 21 E3 3B ld   ix,$3BE3
3C99: 3A 01 81    ld   a,($8101)
3C9C: E6 03       and  $03
3C9E: 11 07 00    ld   de,$0007
3CA1: A7          and  a
3CA2: C8          ret  z
3CA3: DD 19       add  ix,de
3CA5: 3D          dec  a
3CA6: C3 A1 3C    jp   $3CA1
3CA9: DD 6E 00    ld   l,(ix+$00)
3CAC: DD 66 01    ld   h,(ix+$01)
3CAF: C5          push bc
3CB0: D5          push de
3CB1: 06 02       ld   b,$02
3CB3: 0E 03       ld   c,$03
3CB5: CD 60 13    call $1360
3CB8: D1          pop  de
3CB9: C1          pop  bc
3CBA: DD 23       inc  ix
3CBC: DD 23       inc  ix
3CBE: 10 E9       djnz $3CA9
3CC0: C9          ret
3CC1: FD          db   $fd
3CC2: FF          rst  $38
3CC3: FD 25       dec  iyh
3CC5: 25          dec  h
3CC6: 25          dec  h
3CC7: 25          dec  h
3CC8: FD          db   $fd
3CC9: FF          rst  $38
3CCA: FD          db   $fd
3CCB: FE FE       cp   $FE
3CCD: FE FE       cp   $FE
3CCF: FE FD       cp   $FD
3CD1: FF          rst  $38
3CD2: FD          db   $fd
3CD3: FE FE       cp   $FE
3CD5: FE FE       cp   $FE
3CD7: FE FD       cp   $FD
3CD9: FF          rst  $38
3CDA: FD          db   $fd
3CDB: FE FE       cp   $FE
3CDD: FE FE       cp   $FE
3CDF: FE FD       cp   $FD
3CE1: FF          rst  $38
3CE2: FD          db   $fd
3CE3: FE FE       cp   $FE
3CE5: FE FE       cp   $FE
3CE7: FE FD       cp   $FD
3CE9: FF          rst  $38
3CEA: FD 25       dec  iyh
3CEC: 25          dec  h
3CED: 25          dec  h
3CEE: 25          dec  h
3CEF: FD          db   $fd
3CF0: FF          rst  $38
3CF1: FD A6 91    and  (iy-$6f)
3CF4: B6          or   (hl)
3CF5: 92          sub  d
3CF6: 00          nop
3CF7: 90          sub  b
3CF8: 26 91       ld   h,$91
3CFA: B6          or   (hl)
3CFB: 90          sub  b
3CFC: 00          nop
3CFD: 90          sub  b
3CFE: A6          and  (hl)
3CFF: 92          sub  d
3D00: 36 92       ld   (hl),$92
3D02: 00          nop
3D03: 90          sub  b
3D04: 2E 91       ld   l,$91
3D06: B6          or   (hl)
3D07: 91          sub  c
3D08: 00          nop
3D09: 90          sub  b
3D0A: 21 E0 80    ld   hl,$80E0
3D0D: 7E          ld   a,(hl)
3D0E: A7          and  a
3D0F: C2 1E 3D    jp   nz,$3D1E
3D12: 21 E0 80    ld   hl,$80E0
3D15: 06 08       ld   b,$08
3D17: 3E 00       ld   a,$00
3D19: 77          ld   (hl),a
3D1A: 23          inc  hl
3D1B: 10 FC       djnz $3D19
3D1D: C9          ret
3D1E: 47          ld   b,a
3D1F: 23          inc  hl
3D20: 7E          ld   a,(hl)
3D21: A7          and  a
3D22: C2 45 3D    jp   nz,$3D45
3D25: 36 01       ld   (hl),$01
3D27: 23          inc  hl
3D28: 78          ld   a,b
3D29: E6 0F       and  $0F
3D2B: 77          ld   (hl),a
3D2C: 78          ld   a,b
3D2D: E6 F0       and  $F0
3D2F: 0F          rrca
3D30: 0F          rrca
3D31: 0F          rrca
3D32: 0F          rrca
3D33: 23          inc  hl
3D34: 77          ld   (hl),a
3D35: 23          inc  hl
3D36: 36 00       ld   (hl),$00
3D38: 23          inc  hl
3D39: 36 00       ld   (hl),$00
3D3B: 23          inc  hl
3D3C: 36 00       ld   (hl),$00
3D3E: 3E 93       ld   a,$93
3D40: 32 00 B8    ld   ($watchdog),a
3D43: C9          ret
3D44: 00          nop
3D45: 23          inc  hl
3D46: 7E          ld   a,(hl)
3D47: FE 01       cp   $01
3D49: CA 68 3D    jp   z,$3D68
3D4C: FE 02       cp   $02
3D4E: CA AE 3D    jp   z,$3DAE
3D51: C3 12 3D    jp   $3D12
3D54: 00          nop
3D55: 00          nop
3D56: C9          ret
3D57: CD F4 3D    call $3DF4
3D5A: C3 12 3D    jp   $3D12
3D5D: 3E 00       ld   a,$00
3D5F: 32 22 84    ld   ($8422),a
3D62: 3E 01       ld   a,$01
3D64: 32 1F 84    ld   ($841F),a
3D67: C9          ret
3D68: 23          inc  hl
3D69: 23          inc  hl
3D6A: 23          inc  hl
3D6B: 34          inc  (hl)
3D6C: 3E 03       ld   a,$03
3D6E: BE          cp   (hl)
3D6F: D0          ret  nc
3D70: 36 00       ld   (hl),$00
3D72: 23          inc  hl
3D73: 34          inc  (hl)
3D74: 7E          ld   a,(hl)
3D75: FE 01       cp   $01
3D77: 11 CF 3C    ld   de,$3CCF
3D7A: CA A3 3D    jp   z,$3DA3
3D7D: FE 02       cp   $02
3D7F: 11 D6 3C    ld   de,$3CD6
3D82: CA A3 3D    jp   z,$3DA3
3D85: FE 03       cp   $03
3D87: 11 DD 3C    ld   de,$3CDD
3D8A: CA A3 3D    jp   z,$3DA3
3D8D: FE 04       cp   $04
3D8F: 11 E4 3C    ld   de,$3CE4
3D92: CA A3 3D    jp   z,$3DA3
3D95: FE 0C       cp   $0C
3D97: 11 EB 3C    ld   de,$3CEB
3D9A: CA 57 3D    jp   z,$3D57
3D9D: FE 05       cp   $05
3D9F: CA 5D 3D    jp   z,$3D5D
3DA2: C9          ret
3DA3: 3A 06 84    ld   a,($8406)
3DA6: D6 08       sub  $08
3DA8: 32 06 84    ld   ($8406),a
3DAB: C3 F4 3D    jp   $3DF4
3DAE: 23          inc  hl
3DAF: 23          inc  hl
3DB0: 23          inc  hl
3DB1: 34          inc  (hl)
3DB2: 3E 03       ld   a,$03
3DB4: BE          cp   (hl)
3DB5: D0          ret  nc
3DB6: 36 00       ld   (hl),$00
3DB8: 23          inc  hl
3DB9: 34          inc  (hl)
3DBA: 7E          ld   a,(hl)
3DBB: FE 01       cp   $01
3DBD: 11 DD 3C    ld   de,$3CDD
3DC0: CA E9 3D    jp   z,$3DE9
3DC3: FE 02       cp   $02
3DC5: 11 D6 3C    ld   de,$3CD6
3DC8: CA E9 3D    jp   z,$3DE9
3DCB: FE 03       cp   $03
3DCD: 11 CF 3C    ld   de,$3CCF
3DD0: CA E9 3D    jp   z,$3DE9
3DD3: FE 04       cp   $04
3DD5: 11 C8 3C    ld   de,$3CC8
3DD8: CA E9 3D    jp   z,$3DE9
3DDB: FE 0C       cp   $0C
3DDD: 11 C1 3C    ld   de,$3CC1
3DE0: CA 57 3D    jp   z,$3D57
3DE3: FE 05       cp   $05
3DE5: CA 5D 3D    jp   z,$3D5D
3DE8: C9          ret
3DE9: 3A 06 84    ld   a,($8406)
3DEC: C6 08       add  a,$08
3DEE: 32 06 84    ld   ($8406),a
3DF1: C3 F4 3D    jp   $3DF4
3DF4: D5          push de
3DF5: CD 05 3E    call $3E05
3DF8: 2B          dec  hl
3DF9: 2B          dec  hl
3DFA: 2B          dec  hl
3DFB: 5E          ld   e,(hl)
3DFC: 16 00       ld   d,$00
3DFE: DD 19       add  ix,de
3E00: D1          pop  de
3E01: CD 19 3E    call $3E19
3E04: C9          ret
3E05: DD 21 F2 3C ld   ix,$3CF2
3E09: 3A 01 81    ld   a,($8101)
3E0C: E6 03       and  $03
3E0E: 11 06 00    ld   de,$0006
3E11: A7          and  a
3E12: C8          ret  z
3E13: DD 19       add  ix,de
3E15: 3D          dec  a
3E16: C3 11 3E    jp   $3E11
3E19: E5          push hl
3E1A: DD 66 01    ld   h,(ix+$01)
3E1D: DD 6E 00    ld   l,(ix+$00)
3E20: 06 01       ld   b,$01
3E22: 0E 07       ld   c,$07
3E24: CD 60 13    call $1360
3E27: E1          pop  hl
3E28: C9          ret
3E29: 21 20 81    ld   hl,$8120
3E2C: DD 21 C6 3F ld   ix,$3FC6
3E30: FD 21 0E 40 ld   iy,$400E
3E34: 11 12 00    ld   de,$0012
3E37: 3A 01 81    ld   a,($8101)
3E3A: E6 03       and  $03
3E3C: A7          and  a
3E3D: CA 48 3E    jp   z,$3E48
3E40: DD 19       add  ix,de
3E42: FD 19       add  iy,de
3E44: 3D          dec  a
3E45: C3 3C 3E    jp   $3E3C
3E48: 06 09       ld   b,$09
3E4A: 7E          ld   a,(hl)
3E4B: A7          and  a
3E4C: CA 56 3E    jp   z,$3E56
3E4F: FE 02       cp   $02
3E51: C2 8A 3E    jp   nz,$3E8A
3E54: 36 00       ld   (hl),$00
3E56: E5          push hl
3E57: D5          push de
3E58: C5          push bc
3E59: DD 6E 00    ld   l,(ix+$00)
3E5C: DD 66 01    ld   h,(ix+$01)
3E5F: FD 5E 00    ld   e,(iy+$00)
3E62: FD 56 01    ld   d,(iy+$01)
3E65: 06 02       ld   b,$02
3E67: 0E 02       ld   c,$02
3E69: E5          push hl
3E6A: CD 60 13    call $1360
3E6D: E1          pop  hl
3E6E: 1A          ld   a,(de)
3E6F: 11 20 00    ld   de,$0020
3E72: 06 02       ld   b,$02
3E74: 0E 02       ld   c,$02
3E76: CB D4       set  2,h
3E78: CD 84 13    call $1384
3E7B: C1          pop  bc
3E7C: D1          pop  de
3E7D: E1          pop  hl
3E7E: 23          inc  hl
3E7F: DD 23       inc  ix
3E81: DD 23       inc  ix
3E83: FD 23       inc  iy
3E85: FD 23       inc  iy
3E87: 10 C1       djnz $3E4A
3E89: C9          ret
3E8A: E5          push hl
3E8B: D5          push de
3E8C: C5          push bc
3E8D: DD 6E 00    ld   l,(ix+$00)
3E90: DD 66 01    ld   h,(ix+$01)
3E93: 11 20 00    ld   de,$0020
3E96: 3E 25       ld   a,$25
3E98: 06 02       ld   b,$02
3E9A: 0E 02       ld   c,$02
3E9C: E5          push hl
3E9D: CD 84 13    call $1384
3EA0: E1          pop  hl
3EA1: 3E 87       ld   a,$87
3EA3: 11 20 00    ld   de,$0020
3EA6: 06 02       ld   b,$02
3EA8: 0E 02       ld   c,$02
3EAA: CB D4       set  2,h
3EAC: CD 84 13    call $1384
3EAF: C3 7B 3E    jp   $3E7B
3EB2: D9          exx
3EB3: 21 20 81    ld   hl,$8120
3EB6: DD 21 C6 3F ld   ix,$3FC6
3EBA: 06 09       ld   b,$09
3EBC: 11 12 00    ld   de,$0012
3EBF: 3A 01 81    ld   a,($8101)
3EC2: E6 03       and  $03
3EC4: A7          and  a
3EC5: CA CE 3E    jp   z,$3ECE
3EC8: DD 19       add  ix,de
3ECA: 3D          dec  a
3ECB: C3 C4 3E    jp   $3EC4
3ECE: D9          exx
3ECF: DD 7E 00    ld   a,(ix+$00)
3ED2: 3C          inc  a
3ED3: BD          cp   l
3ED4: CA DD 3E    jp   z,$3EDD
3ED7: C6 20       add  a,$20
3ED9: BD          cp   l
3EDA: C2 E8 3E    jp   nz,$3EE8
3EDD: DD 7E 01    ld   a,(ix+$01)
3EE0: BC          cp   h
3EE1: C2 E8 3E    jp   nz,$3EE8
3EE4: 79          ld   a,c
3EE5: D9          exx
3EE6: 77          ld   (hl),a
3EE7: D9          exx
3EE8: D9          exx
3EE9: 23          inc  hl
3EEA: DD 23       inc  ix
3EEC: DD 23       inc  ix
3EEE: 10 DE       djnz $3ECE
3EF0: D9          exx
3EF1: C9          ret
3EF2: 21 40 81    ld   hl,$8140
3EF5: 01 00 00    ld   bc,$0000
3EF8: 7E          ld   a,(hl)
3EF9: A7          and  a
3EFA: CA 04 3F    jp   z,$3F04
3EFD: 23          inc  hl
3EFE: 23          inc  hl
3EFF: 0C          inc  c
3F00: 0C          inc  c
3F01: C3 F8 3E    jp   $3EF8
3F04: 72          ld   (hl),d
3F05: 23          inc  hl
3F06: 73          ld   (hl),e
3F07: DD 21 B4 3F ld   ix,$3FB4
3F0B: DD 09       add  ix,bc
3F0D: DD 6E 00    ld   l,(ix+$00)
3F10: DD 66 01    ld   h,(ix+$01)
3F13: 72          ld   (hl),d
3F14: CB D4       set  2,h
3F16: 73          ld   (hl),e
3F17: 21 40 80    ld   hl,$8040
3F1A: 11 31 3F    ld   de,$3F31
3F1D: 06 03       ld   b,$03
3F1F: 36 01       ld   (hl),$01
3F21: 23          inc  hl
3F22: AF          xor  a
3F23: 1A          ld   a,(de)
3F24: 8E          adc  a,(hl)
3F25: 27          daa
3F26: 77          ld   (hl),a
3F27: 23          inc  hl
3F28: 13          inc  de
3F29: 10 F8       djnz $3F23
3F2B: 3E 84       ld   a,$84
3F2D: 32 00 B8    ld   ($watchdog),a
3F30: C9          ret
3F31: 00          nop
3F32: 05          dec  b
3F33: 00          nop
3F34: 3E 09       ld   a,$09
3F36: 21 40 81    ld   hl,$8140
3F39: 01 00 00    ld   bc,$0000
3F3C: 08          ex   af,af'
3F3D: 7E          ld   a,(hl)
3F3E: A7          and  a
3F3F: C4 4C 3F    call nz,$3F4C
3F42: 23          inc  hl
3F43: 23          inc  hl
3F44: 0C          inc  c
3F45: 0C          inc  c
3F46: 08          ex   af,af'
3F47: 3D          dec  a
3F48: C2 3C 3F    jp   nz,$3F3C
3F4B: C9          ret
3F4C: E5          push hl
3F4D: 56          ld   d,(hl)
3F4E: 23          inc  hl
3F4F: 5E          ld   e,(hl)
3F50: DD 21 B4 3F ld   ix,$3FB4
3F54: DD 09       add  ix,bc
3F56: DD 6E 00    ld   l,(ix+$00)
3F59: DD 66 01    ld   h,(ix+$01)
3F5C: 72          ld   (hl),d
3F5D: CB D4       set  2,h
3F5F: 73          ld   (hl),e
3F60: E1          pop  hl
3F61: C9          ret
3F62: 21 20 81    ld   hl,$8120
3F65: DD 21 C6 3F ld   ix,$3FC6
3F69: 11 12 00    ld   de,$0012
3F6C: 3A 01 81    ld   a,($8101)
3F6F: E6 03       and  $03
3F71: A7          and  a
3F72: CA 7B 3F    jp   z,$3F7B
3F75: DD 19       add  ix,de
3F77: 3D          dec  a
3F78: C3 71 3F    jp   $3F71
3F7B: 06 09       ld   b,$09
3F7D: 7E          ld   a,(hl)
3F7E: FE 02       cp   $02
3F80: CA 8B 3F    jp   z,$3F8B
3F83: 23          inc  hl
3F84: DD 23       inc  ix
3F86: DD 23       inc  ix
3F88: 10 F3       djnz $3F7D
3F8A: C9          ret
3F8B: C5          push bc
3F8C: E5          push hl
3F8D: DD 6E 00    ld   l,(ix+$00)
3F90: DD 66 01    ld   h,(ix+$01)
3F93: 11 20 00    ld   de,$0020
3F96: 3E 25       ld   a,$25
3F98: 06 02       ld   b,$02
3F9A: 0E 02       ld   c,$02
3F9C: E5          push hl
3F9D: CD 84 13    call $1384
3FA0: E1          pop  hl
3FA1: 3E 87       ld   a,$87
3FA3: 11 20 00    ld   de,$0020
3FA6: 06 02       ld   b,$02
3FA8: 0E 02       ld   c,$02
3FAA: CB D4       set  2,h
3FAC: CD 84 13    call $1384
3FAF: E1          pop  hl
3FB0: C1          pop  bc
3FB1: C3 83 3F    jp   $3F83
3FB4: FD          db   $fd
3FB5: 91          sub  c
3FB6: BD          cp   l
3FB7: 91          sub  c
3FB8: DD          db   $dd
3FB9: 91          sub  c
3FBA: FC 91 BC    call m,$BC91
3FBD: 91          sub  c
3FBE: DC 91 FB    call c,$FB91
3FC1: 91          sub  c
3FC2: BB          cp   e
3FC3: 91          sub  c
3FC4: DB 91       in   a,($91)
3FC6: C4 90 DC    call nz,$DC90
3FC9: 90          sub  b
3FCA: C8          ret  z
3FCB: 91          sub  c
3FCC: 48          ld   c,b
3FCD: 92          sub  d
3FCE: 50          ld   d,b
3FCF: 92          sub  d
3FD0: D8          ret  c
3FD1: 92          sub  d
3FD2: 44          ld   b,h
3FD3: 93          sub  e
3FD4: 50          ld   d,b
3FD5: 93          sub  e
3FD6: 5C          ld   e,h
3FD7: 93          sub  e
3FD8: C4 90 CC    call nz,$CC90
3FDB: 90          sub  b
3FDC: DC 90 C8    call c,$C890
3FDF: 91          sub  c
3FE0: D4 91 44    call nc,$4491
3FE3: 92          sub  d
3FE4: D8          ret  c
3FE5: 92          sub  d
3FE6: 44          ld   b,h
3FE7: 93          sub  e
3FE8: 5C          ld   e,h
3FE9: 93          sub  e
3FEA: C4 90 CC    call nz,$CC90
3FED: 90          sub  b
3FEE: D0          ret  nc
3FEF: 90          sub  b
3FF0: DC 90 CC    call c,$CC90
3FF3: 91          sub  c
3FF4: DC 92 48    call c,$4892
3FF7: 93          sub  e
3FF8: 54          ld   d,h
3FF9: 93          sub  e
3FFA: 58          ld   e,b
3FFB: 93          sub  e
3FFC: C4 90 CC    call nz,$CC90
3FFF: 90          sub  b
4000: D0          ret  nc
4001: 90          sub  b
4002: 44          ld   b,h
4003: 91          sub  c
4004: D0          ret  nc
4005: 91          sub  c
4006: 44          ld   b,h
4007: 93          sub  e
4008: 48          ld   c,b
4009: 93          sub  e
400A: 4C          ld   c,h
400B: 93          sub  e
400C: 54          ld   d,h
400D: 93          sub  e
400E: 5D          ld   e,l
400F: 40          ld   b,b
4010: 62          ld   h,d
4011: 40          ld   b,b
4012: 67          ld   h,a
4013: 40          ld   b,b
4014: 6C          ld   l,h
4015: 40          ld   b,b
4016: 71          ld   (hl),c
4017: 40          ld   b,b
4018: 5D          ld   e,l
4019: 40          ld   b,b
401A: 62          ld   h,d
401B: 40          ld   b,b
401C: 67          ld   h,a
401D: 40          ld   b,b
401E: 6C          ld   l,h
401F: 40          ld   b,b
4020: 71          ld   (hl),c
4021: 40          ld   b,b
4022: 5D          ld   e,l
4023: 40          ld   b,b
4024: 62          ld   h,d
4025: 40          ld   b,b
4026: 67          ld   h,a
4027: 40          ld   b,b
4028: 6C          ld   l,h
4029: 40          ld   b,b
402A: 71          ld   (hl),c
402B: 40          ld   b,b
402C: 5D          ld   e,l
402D: 40          ld   b,b
402E: 62          ld   h,d
402F: 40          ld   b,b
4030: 67          ld   h,a
4031: 40          ld   b,b
4032: 6C          ld   l,h
4033: 40          ld   b,b
4034: 71          ld   (hl),c
4035: 40          ld   b,b
4036: 5D          ld   e,l
4037: 40          ld   b,b
4038: 62          ld   h,d
4039: 40          ld   b,b
403A: 67          ld   h,a
403B: 40          ld   b,b
403C: 6C          ld   l,h
403D: 40          ld   b,b
403E: 71          ld   (hl),c
403F: 40          ld   b,b
4040: 5D          ld   e,l
4041: 40          ld   b,b
4042: 62          ld   h,d
4043: 40          ld   b,b
4044: 67          ld   h,a
4045: 40          ld   b,b
4046: 6C          ld   l,h
4047: 40          ld   b,b
4048: 71          ld   (hl),c
4049: 40          ld   b,b
404A: 5D          ld   e,l
404B: 40          ld   b,b
404C: 62          ld   h,d
404D: 40          ld   b,b
404E: 67          ld   h,a
404F: 40          ld   b,b
4050: 6C          ld   l,h
4051: 40          ld   b,b
4052: 71          ld   (hl),c
4053: 40          ld   b,b
4054: 5D          ld   e,l
4055: 40          ld   b,b
4056: 00          nop
4057: 00          nop
4058: 00          nop
4059: 00          nop
405A: 00          nop
405B: 00          nop
405C: 00          nop
405D: E0          ret  po
405E: E1          pop  hl
405F: E2 E3 87    jp   po,$87E3
4062: E4 E5 E6    call po,$E6E5
4065: E7          rst  $20
4066: 87          add  a,a
4067: E8          ret  pe
4068: E9          jp   (hl)
4069: EA EB 87    jp   pe,$87EB
406C: EC ED EE    call pe,$EEED
406F: EF          rst  $28
4070: 87          add  a,a
4071: DC DD DE    call c,$DEDD
4074: DF          rst  $18
4075: 87          add  a,a
4076: 00          nop
4077: 00          nop
4078: 00          nop
4079: 00          nop
407A: 00          nop
407B: 00          nop
407C: 00          nop
407D: 3A A0 80    ld   a,($80A0)
4080: A7          and  a
4081: C2 A9 40    jp   nz,$40A9
4084: 21 9C 80    ld   hl,$809C
4087: 3E 00       ld   a,$00
4089: 06 0F       ld   b,$0F
408B: 77          ld   (hl),a
408C: 23          inc  hl
408D: 10 FC       djnz $408B
408F: C3 92 40    jp   $4092
4092: 21 08 80    ld   hl,$8008
4095: 3A A5 80    ld   a,($80A5)
4098: 77          ld   (hl),a
4099: 23          inc  hl
409A: 3A A6 80    ld   a,($80A6)
409D: 77          ld   (hl),a
409E: 23          inc  hl
409F: 3A A7 80    ld   a,($80A7)
40A2: 77          ld   (hl),a
40A3: 23          inc  hl
40A4: 3A A8 80    ld   a,($80A8)
40A7: 77          ld   (hl),a
40A8: C9          ret
40A9: 3A A1 80    ld   a,($80A1)
40AC: A7          and  a
40AD: C2 20 41    jp   nz,$4120
40B0: 11 A1 80    ld   de,$80A1
40B3: 21 14 41    ld   hl,$4114
40B6: 01 09 00    ld   bc,$0009
40B9: ED B0       ldir
40BB: 3A 06 84    ld   a,($8406)
40BE: C6 00       add  a,$00
40C0: 32 A5 80    ld   ($80A5),a
40C3: 3A 07 84    ld   a,($8407)
40C6: C6 F0       add  a,$F0
40C8: 32 A8 80    ld   ($80A8),a
40CB: 3A 9F 80    ld   a,($809F)
40CE: 0E 00       ld   c,$00
40D0: FE 7A       cp   $7A
40D2: CA F4 40    jp   z,$40F4
40D5: 0C          inc  c
40D6: 0C          inc  c
40D7: FE 7E       cp   $7E
40D9: CA F4 40    jp   z,$40F4
40DC: 0C          inc  c
40DD: 0C          inc  c
40DE: FE 7C       cp   $7C
40E0: CA F4 40    jp   z,$40F4
40E3: 0C          inc  c
40E4: 0C          inc  c
40E5: FE 7D       cp   $7D
40E7: CA F4 40    jp   z,$40F4
40EA: 0C          inc  c
40EB: 0C          inc  c
40EC: FE 7B       cp   $7B
40EE: CA F4 40    jp   z,$40F4
40F1: C3 84 40    jp   $4084
40F4: 21 06 41    ld   hl,$4106
40F7: 06 00       ld   b,$00
40F9: 09          add  hl,bc
40FA: 7E          ld   a,(hl)
40FB: 32 A6 80    ld   ($80A6),a
40FE: 23          inc  hl
40FF: 7E          ld   a,(hl)
4100: 32 A7 80    ld   ($80A7),a
4103: C3 92 40    jp   $4092
4106: 32 07 36    ld   ($3607),a
4109: 07          rlca
410A: 34          inc  (hl)
410B: 07          rlca
410C: 35          dec  (hl)
410D: 07          rlca
410E: 33          inc  sp
410F: 07          rlca
4110: 00          nop
4111: 00          nop
4112: 00          nop
4113: 00          nop
4114: 01 01 00    ld   bc,$0001
4117: 00          nop
4118: 00          nop
4119: 00          nop
411A: 00          nop
411B: 00          nop
411C: 00          nop
411D: 00          nop
411E: 00          nop
411F: 00          nop
4120: 3A A2 80    ld   a,($80A2)
4123: FE 01       cp   $01
4125: CA 35 41    jp   z,$4135
4128: FE 02       cp   $02
412A: CA 48 41    jp   z,$4148
412D: FE 03       cp   $03
412F: CA 67 41    jp   z,$4167
4132: C3 84 40    jp   $4084
4135: 3A 06 84    ld   a,($8406)
4138: C6 00       add  a,$00
413A: 32 A5 80    ld   ($80A5),a
413D: 3A 07 84    ld   a,($8407)
4140: C6 F0       add  a,$F0
4142: 32 A8 80    ld   ($80A8),a
4145: C3 92 40    jp   $4092
4148: 3A A3 80    ld   a,($80A3)
414B: 3C          inc  a
414C: 32 A3 80    ld   ($80A3),a
414F: FE 0A       cp   $0A
4151: DA 5C 41    jp   c,$415C
4154: 3E 03       ld   a,$03
4156: 32 A2 80    ld   ($80A2),a
4159: C3 92 40    jp   $4092
415C: 3A A8 80    ld   a,($80A8)
415F: C6 02       add  a,$02
4161: 32 A8 80    ld   ($80A8),a
4164: C3 92 40    jp   $4092
4167: 21 9E 80    ld   hl,$809E
416A: 5E          ld   e,(hl)
416B: 23          inc  hl
416C: 56          ld   d,(hl)
416D: CD F2 3E    call $3EF2
4170: 2A 9C 80    ld   hl,($809C)
4173: 0E 01       ld   c,$01
4175: CD B2 3E    call $3EB2
4178: C3 84 40    jp   $4084
417B: 3E 00       ld   a,$00
417D: 32 80 81    ld   ($8180),a
4180: 3A 80 81    ld   a,($8180)
4183: A7          and  a
4184: C2 9B 41    jp   nz,$419B
4187: 3E 39       ld   a,$39
4189: 32 65 90    ld   ($9065),a
418C: 3E 85       ld   a,$85
418E: 32 65 94    ld   ($9465),a
4191: 3E 3A       ld   a,$3A
4193: 32 85 90    ld   ($9085),a
4196: 3E 85       ld   a,$85
4198: 32 85 94    ld   ($9485),a
419B: 3E 00       ld   a,$00
419D: 32 81 81    ld   ($8181),a
41A0: 3A 81 81    ld   a,($8181)
41A3: A7          and  a
41A4: C2 BB 41    jp   nz,$41BB
41A7: 3E 39       ld   a,$39
41A9: 32 85 93    ld   ($9385),a
41AC: 3E 85       ld   a,$85
41AE: 32 85 97    ld   ($9785),a
41B1: 3E 3A       ld   a,$3A
41B3: 32 A5 93    ld   ($93A5),a
41B6: 3E 85       ld   a,$85
41B8: 32 A5 97    ld   ($97A5),a
41BB: C9          ret
41BC: CD EF 48    call $48EF
41BF: 3A C1 85    ld   a,($85C1)
41C2: A7          and  a
41C3: C2 D3 41    jp   nz,$41D3
41C6: 32 C0 85    ld   ($85C0),a
41C9: 21 C4 85    ld   hl,$85C4
41CC: 06 0C       ld   b,$0C
41CE: 77          ld   (hl),a
41CF: 23          inc  hl
41D0: 10 FC       djnz $41CE
41D2: C9          ret
41D3: 3A C4 85    ld   a,($85C4)
41D6: A7          and  a
41D7: C2 17 42    jp   nz,$4217
41DA: 21 C1 85    ld   hl,$85C1
41DD: 11 C4 85    ld   de,$85C4
41E0: 01 03 00    ld   bc,$0003
41E3: ED B0       ldir
41E5: 3E 95       ld   a,$95
41E7: 32 00 B8    ld   ($watchdog),a
41EA: 3E 01       ld   a,$01
41EC: 32 C0 85    ld   ($85C0),a
41EF: 3A C5 85    ld   a,($85C5)
41F2: FE 80       cp   $80
41F4: DA 07 42    jp   c,$4207
41F7: 3E 25       ld   a,$25
41F9: 32 65 90    ld   ($9065),a
41FC: 32 85 90    ld   ($9085),a
41FF: 3E 01       ld   a,$01
4201: 32 80 81    ld   ($8180),a
4204: C3 32 42    jp   $4232
4207: 3E 25       ld   a,$25
4209: 32 85 93    ld   ($9385),a
420C: 32 A5 93    ld   ($93A5),a
420F: 3E 01       ld   a,$01
4211: 32 81 81    ld   ($8181),a
4214: C3 32 42    jp   $4232
4217: 3A C6 85    ld   a,($85C6)
421A: FE E0       cp   $E0
421C: D2 27 42    jp   nc,$4227
421F: C6 02       add  a,$02
4221: 32 C6 85    ld   ($85C6),a
4224: C3 32 42    jp   $4232
4227: 21 C0 85    ld   hl,$85C0
422A: 06 10       ld   b,$10
422C: 3E 00       ld   a,$00
422E: 77          ld   (hl),a
422F: 23          inc  hl
4230: 10 FC       djnz $422E
4232: 21 1C 80    ld   hl,$801C
4235: 3A C5 85    ld   a,($85C5)
4238: 77          ld   (hl),a
4239: 23          inc  hl
423A: 3E 37       ld   a,$37
423C: 77          ld   (hl),a
423D: 23          inc  hl
423E: 3E 05       ld   a,$05
4240: 77          ld   (hl),a
4241: 23          inc  hl
4242: 3A C6 85    ld   a,($85C6)
4245: 77          ld   (hl),a
4246: C9          ret
4247: CD EF 48    call $48EF
424A: 21 79 84    ld   hl,$8479
424D: 7E          ld   a,(hl)
424E: A7          and  a
424F: C2 5D 42    jp   nz,$425D
4252: 36 01       ld   (hl),$01
4254: 2B          dec  hl
4255: 3E 03       ld   a,$03
4257: 77          ld   (hl),a
4258: 3E 00       ld   a,$00
425A: 32 74 84    ld   ($8474),a
425D: 3A 80 84    ld   a,($8480)
4260: 47          ld   b,a
4261: A7          and  a
4262: CA 1B 44    jp   z,$441B
4265: E6 80       and  $80
4267: C2 06 43    jp   nz,$4306
426A: 78          ld   a,b
426B: E6 40       and  $40
426D: C2 D1 42    jp   nz,$42D1
4270: 78          ld   a,b
4271: E6 20       and  $20
4273: CA 2B 44    jp   z,$442B
4276: 3A 00 A0    ld   a,($A000)
4279: E6 10       and  $10
427B: CA 43 44    jp   z,$4443
427E: 3A 30 80    ld   a,($8030)
4281: A7          and  a
4282: CA 43 44    jp   z,$4443
4285: 3E E0       ld   a,$E0
4287: 32 00 B8    ld   ($watchdog),a
428A: 21 83 84    ld   hl,$8483
428D: 7E          ld   a,(hl)
428E: 23          inc  hl
428F: BE          cp   (hl)
4290: 20 39       jr   nz,$42CB
4292: 7E          ld   a,(hl)
4293: 23          inc  hl
4294: BE          cp   (hl)
4295: 28 05       jr   z,$429C
4297: CB 27       sla  a
4299: 3C          inc  a
429A: 18 02       jr   $429E
429C: CB 27       sla  a
429E: A7          and  a
429F: C2 A9 42    jp   nz,$42A9
42A2: F5          push af
42A3: 3E 01       ld   a,$01
42A5: 32 74 84    ld   ($8474),a
42A8: F1          pop  af
42A9: 32 89 84    ld   ($8489),a
42AC: 21 FE 44    ld   hl,$44FE
42AF: 47          ld   b,a
42B0: CB 27       sla  a
42B2: 80          add  a,b
42B3: 85          add  a,l
42B4: 6F          ld   l,a
42B5: 30 01       jr   nc,$42B8
42B7: 24          inc  h
42B8: 11 41 80    ld   de,$8041
42BB: 3E 01       ld   a,$01
42BD: 32 40 80    ld   ($8040),a
42C0: 01 03 00    ld   bc,$0003
42C3: ED B0       ldir
42C5: 3E 80       ld   a,$80
42C7: 32 80 84    ld   ($8480),a
42CA: C9          ret
42CB: 3E 40       ld   a,$40
42CD: 32 80 84    ld   ($8480),a
42D0: C9          ret
42D1: 3A 80 84    ld   a,($8480)
42D4: E6 BF       and  $BF
42D6: 20 0D       jr   nz,$42E5
42D8: 3C          inc  a
42D9: F6 40       or   $40
42DB: 32 80 84    ld   ($8480),a
42DE: 21 B4 00    ld   hl,$00B4
42E1: 22 81 84    ld   ($8481),hl
42E4: C9          ret
42E5: 2A 81 84    ld   hl,($8481)
42E8: 2B          dec  hl
42E9: 22 81 84    ld   ($8481),hl
42EC: 7C          ld   a,h
42ED: B5          or   l
42EE: C0          ret  nz
42EF: 21 78 84    ld   hl,$8478
42F2: 7E          ld   a,(hl)
42F3: 3D          dec  a
42F4: CA FD 42    jp   z,$42FD
42F7: 77          ld   (hl),a
42F8: AF          xor  a
42F9: 32 80 84    ld   ($8480),a
42FC: C9          ret
42FD: 77          ld   (hl),a
42FE: 23          inc  hl
42FF: 77          ld   (hl),a
4300: 3E 01       ld   a,$01
4302: 32 33 80    ld   ($8033),a
4305: C9          ret
4306: 3A 80 84    ld   a,($8480)
4309: E6 7F       and  $7F
430B: FE 03       cp   $03
430D: D2 E7 43    jp   nc,$43E7
4310: FE 02       cp   $02
4312: D2 2E 43    jp   nc,$432E
4315: 3C          inc  a
4316: F6 80       or   $80
4318: 32 80 84    ld   ($8480),a
431B: 3A 74 84    ld   a,($8474)
431E: A7          and  a
431F: CA 28 43    jp   z,$4328
4322: 3E 9A       ld   a,$9A
4324: 32 00 B8    ld   ($watchdog),a
4327: C9          ret
4328: 3E 91       ld   a,$91
432A: 32 00 B8    ld   ($watchdog),a
432D: C9          ret
432E: 3C          inc  a
432F: F6 80       or   $80
4331: 32 80 84    ld   ($8480),a
4334: 3A 89 84    ld   a,($8489)
4337: CB 27       sla  a
4339: 21 16 45    ld   hl,$4516
433C: 85          add  a,l
433D: 6F          ld   l,a
433E: 7C          ld   a,h
433F: CE 00       adc  a,$00
4341: 67          ld   h,a
4342: 7E          ld   a,(hl)
4343: 32 8A 84    ld   ($848A),a
4346: 23          inc  hl
4347: 7E          ld   a,(hl)
4348: 32 8B 84    ld   ($848B),a
434B: 3A 74 84    ld   a,($8474)
434E: A7          and  a
434F: CA E0 43    jp   z,$43E0
4352: 3A 30 80    ld   a,($8030)
4355: A7          and  a
4356: CA 6C 43    jp   z,$436C
4359: 3A 23 80    ld   a,($8023)
435C: FE 09       cp   $09
435E: D2 BA 43    jp   nc,$43BA
4361: C6 01       add  a,$01
4363: 27          daa
4364: 32 23 80    ld   ($8023),a
4367: 06 01       ld   b,$01
4369: CD BC 07    call $07BC
436C: 21 EC 92    ld   hl,$92EC
436F: 11 E0 FF    ld   de,$FFE0
4372: 06 0F       ld   b,$0F
4374: CD AE 43    call $43AE
4377: 21 ED 92    ld   hl,$92ED
437A: 11 C2 43    ld   de,$43C2
437D: 06 0F       ld   b,$0F
437F: CD 9C 43    call $439C
4382: 21 EE 92    ld   hl,$92EE
4385: 06 0F       ld   b,$0F
4387: CD 9C 43    call $439C
438A: 21 EF 92    ld   hl,$92EF
438D: 11 E0 FF    ld   de,$FFE0
4390: 06 0F       ld   b,$0F
4392: CD AE 43    call $43AE
4395: 21 C8 00    ld   hl,$00C8
4398: 22 81 84    ld   ($8481),hl
439B: C9          ret
439C: 1A          ld   a,(de)
439D: 77          ld   (hl),a
439E: CB D4       set  2,h
43A0: 36 80       ld   (hl),$80
43A2: CB 94       res  2,h
43A4: C5          push bc
43A5: 01 E0 FF    ld   bc,$FFE0
43A8: 09          add  hl,bc
43A9: C1          pop  bc
43AA: 13          inc  de
43AB: 10 EF       djnz $439C
43AD: C9          ret
43AE: 36 24       ld   (hl),$24
43B0: CB D4       set  2,h
43B2: 36 80       ld   (hl),$80
43B4: CB 94       res  2,h
43B6: 19          add  hl,de
43B7: 10 F5       djnz $43AE
43B9: C9          ret
43BA: 3E 09       ld   a,$09
43BC: 32 23 80    ld   ($8023),a
43BF: C3 67 43    jp   $4367
43C2: 24          inc  h
43C3: 1C          inc  e
43C4: 19          add  hl,de
43C5: 0E 0C       ld   c,$0C
43C7: 12          ld   (de),a
43C8: 0A          ld   a,(bc)
43C9: 15          dec  d
43CA: 24          inc  h
43CB: 0B          dec  bc
43CC: 18 17       jr   $43E5
43CE: 1E 1C       ld   e,$1C
43D0: 24          inc  h
43D1: 24          inc  h
43D2: 0C          inc  c
43D3: 1B          dec  de
43D4: 0E 0D       ld   c,$0D
43D6: 12          ld   (de),a
43D7: 1D          dec  e
43D8: 24          inc  h
43D9: 19          add  hl,de
43DA: 15          dec  d
43DB: 1E 1C       ld   e,$1C
43DD: 24          inc  h
43DE: 01 24 21    ld   bc,$2124
43E1: F0          ret  p
43E2: 00          nop
43E3: 22 81 84    ld   ($8481),hl
43E6: C9          ret
43E7: 2A 81 84    ld   hl,($8481)
43EA: 2B          dec  hl
43EB: 22 81 84    ld   ($8481),hl
43EE: 7D          ld   a,l
43EF: B4          or   h
43F0: 20 12       jr   nz,$4404
43F2: 3E 01       ld   a,$01
43F4: 32 32 80    ld   ($8032),a
43F7: 3E A0       ld   a,$A0
43F9: 32 00 B8    ld   ($watchdog),a
43FC: AF          xor  a
43FD: 21 78 84    ld   hl,$8478
4400: 77          ld   (hl),a
4401: 23          inc  hl
4402: 77          ld   (hl),a
4403: C9          ret
4404: 7D          ld   a,l
4405: E6 03       and  $03
4407: C0          ret  nz
4408: 2A 8A 84    ld   hl,($848A)
440B: 11 20 00    ld   de,$0020
440E: 06 04       ld   b,$04
4410: 7E          ld   a,(hl)
4411: 3C          inc  a
4412: E6 07       and  $07
4414: F6 84       or   $84
4416: 77          ld   (hl),a
4417: 19          add  hl,de
4418: 10 F6       djnz $4410
441A: C9          ret
441B: 3C          inc  a
441C: 32 80 84    ld   ($8480),a
441F: 3E E0       ld   a,$E0
4421: 32 00 B8    ld   ($watchdog),a
4424: 21 90 01    ld   hl,$0190
4427: 22 81 84    ld   ($8481),hl
442A: C9          ret
442B: 3A 80 84    ld   a,($8480)
442E: 3C          inc  a
442F: 32 80 84    ld   ($8480),a
4432: FE 04       cp   $04
4434: 20 07       jr   nz,$443D
4436: CD 53 44    call $4453
4439: 3E 20       ld   a,$20
443B: 18 F2       jr   $442F
443D: 3E CA       ld   a,$CA
443F: 32 00 B8    ld   ($watchdog),a
4442: C9          ret
4443: 2A 81 84    ld   hl,($8481)
4446: 2B          dec  hl
4447: 22 81 84    ld   ($8481),hl
444A: 7C          ld   a,h
444B: B5          or   l
444C: CA 85 42    jp   z,$4285
444F: 7D          ld   a,l
4450: E6 07       and  $07
4452: C0          ret  nz
4453: 11 83 84    ld   de,$8483
4456: 21 26 45    ld   hl,$4526
4459: 3A 86 84    ld   a,($8486)
445C: CD A7 44    call $44A7
445F: FE 11       cp   $11
4461: 20 01       jr   nz,$4464
4463: AF          xor  a
4464: 13          inc  de
4465: 32 86 84    ld   ($8486),a
4468: 21 37 45    ld   hl,$4537
446B: 3A 87 84    ld   a,($8487)
446E: CD A7 44    call $44A7
4471: FE 10       cp   $10
4473: 20 01       jr   nz,$4476
4475: AF          xor  a
4476: 13          inc  de
4477: 32 87 84    ld   ($8487),a
447A: 21 47 45    ld   hl,$4547
447D: 3A 88 84    ld   a,($8488)
4480: CD A7 44    call $44A7
4483: FE 0F       cp   $0F
4485: 20 01       jr   nz,$4488
4487: AF          xor  a
4488: 32 88 84    ld   ($8488),a
448B: 11 68 92    ld   de,$9268
448E: 3A 83 84    ld   a,($8483)
4491: CD B3 44    call $44B3
4494: 11 E8 91    ld   de,$91E8
4497: 3A 84 84    ld   a,($8484)
449A: CD B3 44    call $44B3
449D: 11 68 91    ld   de,$9168
44A0: 3A 85 84    ld   a,($8485)
44A3: CD B3 44    call $44B3
44A6: C9          ret
44A7: F5          push af
44A8: 85          add  a,l
44A9: 6F          ld   l,a
44AA: 7C          ld   a,h
44AB: CE 00       adc  a,$00
44AD: 67          ld   h,a
44AE: 7E          ld   a,(hl)
44AF: 12          ld   (de),a
44B0: F1          pop  af
44B1: 3C          inc  a
44B2: C9          ret
44B3: FE 03       cp   $03
44B5: 20 06       jr   nz,$44BD
44B7: 3E 92       ld   a,$92
44B9: 0E 86       ld   c,$86
44BB: 18 18       jr   $44D5
44BD: FE 02       cp   $02
44BF: 20 06       jr   nz,$44C7
44C1: 3E 48       ld   a,$48
44C3: 0E 87       ld   c,$87
44C5: 18 0E       jr   $44D5
44C7: FE 01       cp   $01
44C9: 20 06       jr   nz,$44D1
44CB: 3E 89       ld   a,$89
44CD: 0E 86       ld   c,$86
44CF: 18 04       jr   $44D5
44D1: 3E 80       ld   a,$80
44D3: 0E 84       ld   c,$84
44D5: D5          push de
44D6: F5          push af
44D7: 3E 04       ld   a,$04
44D9: 82          add  a,d
44DA: 67          ld   h,a
44DB: 6B          ld   l,e
44DC: F1          pop  af
44DD: D1          pop  de
44DE: 06 03       ld   b,$03
44E0: C5          push bc
44E1: D5          push de
44E2: 06 03       ld   b,$03
44E4: 12          ld   (de),a
44E5: 3C          inc  a
44E6: 13          inc  de
44E7: 71          ld   (hl),c
44E8: 23          inc  hl
44E9: 10 F9       djnz $44E4
44EB: D1          pop  de
44EC: F5          push af
44ED: 7B          ld   a,e
44EE: C6 20       add  a,$20
44F0: 5F          ld   e,a
44F1: 7A          ld   a,d
44F2: CE 00       adc  a,$00
44F4: 57          ld   d,a
44F5: C6 04       add  a,$04
44F7: 67          ld   h,a
44F8: 6B          ld   l,e
44F9: F1          pop  af
44FA: C1          pop  bc
44FB: 10 E3       djnz $44E0
44FD: C9          ret
44FE: 00          nop
44FF: 15          dec  d
4500: 00          nop
4501: 00          nop
4502: 08          ex   af,af'
4503: 00          nop
4504: 00          nop
4505: 10 00       djnz $4507
4507: 00          nop
4508: 05          dec  b
4509: 00          nop
450A: 00          nop
450B: 08          ex   af,af'
450C: 00          nop
450D: 00          nop
450E: 04          inc  b
450F: 00          nop
4510: 00          nop
4511: 06 00       ld   b,$00
4513: 00          nop
4514: 02          ld   (bc),a
4515: 00          nop
4516: 31 96 35    ld   sp,$3596
4519: 96          sub  (hl)
451A: 39          add  hl,sp
451B: 96          sub  (hl)
451C: 3D          dec  a
451D: 96          sub  (hl)
451E: 51          ld   d,c
451F: 94          sub  h
4520: 55          ld   d,l
4521: 94          sub  h
4522: 59          ld   e,c
4523: 94          sub  h
4524: 5D          ld   e,l
4525: 94          sub  h
4526: 01 00 01    ld   bc,$0100
4529: 02          ld   (bc),a
452A: 03          inc  bc
452B: 02          ld   (bc),a
452C: 01 03 01    ld   bc,$0103
452F: 03          inc  bc
4530: 02          ld   (bc),a
4531: 01 03 02    ld   bc,$0203
4534: 00          nop
4535: 01 02 01    ld   bc,$0102
4538: 02          ld   (bc),a
4539: 03          inc  bc
453A: 02          ld   (bc),a
453B: 01 03 02    ld   bc,$0203
453E: 01 03 02    ld   bc,$0203
4541: 01 03 01    ld   bc,$0103
4544: 02          ld   (bc),a
4545: 00          nop
4546: 02          ld   (bc),a
4547: 02          ld   (bc),a
4548: 00          nop
4549: 01 03 03    ld   bc,$0303
454C: 02          ld   (bc),a
454D: 01 03 02    ld   bc,$0203
4550: 01 03 02    ld   bc,$0203
4553: 03          inc  bc
4554: 01 02 21    ld   bc,$2102
4557: 60          ld   h,b
4558: 80          add  a,b
4559: 7E          ld   a,(hl)
455A: A7          and  a
455B: C2 6D 45    jp   nz,$456D
455E: 23          inc  hl
455F: 77          ld   (hl),a
4560: 23          inc  hl
4561: 77          ld   (hl),a
4562: 3E 01       ld   a,$01
4564: 32 60 80    ld   ($8060),a
4567: 3E D1       ld   a,$D1
4569: 32 00 B8    ld   ($watchdog),a
456C: C9          ret
456D: 23          inc  hl
456E: 34          inc  (hl)
456F: 7E          ld   a,(hl)
4570: FE 06       cp   $06
4572: C0          ret  nz
4573: 36 00       ld   (hl),$00
4575: 23          inc  hl
4576: 7E          ld   a,(hl)
4577: 34          inc  (hl)
4578: FE 24       cp   $24
457A: D2 93 45    jp   nc,$4593
457D: 07          rlca
457E: 07          rlca
457F: 4F          ld   c,a
4580: 06 00       ld   b,$00
4582: 21 04 46    ld   hl,$4604
4585: 09          add  hl,bc
4586: 5E          ld   e,(hl)
4587: 23          inc  hl
4588: 56          ld   d,(hl)
4589: 23          inc  hl
458A: 46          ld   b,(hl)
458B: 23          inc  hl
458C: 4E          ld   c,(hl)
458D: EB          ex   de,hl
458E: 70          ld   (hl),b
458F: CB D4       set  2,h
4591: 71          ld   (hl),c
4592: C9          ret
4593: FE 2D       cp   $2D
4595: C2 D9 45    jp   nz,$45D9
4598: 21 F5 92    ld   hl,$92F5
459B: 11 C9 45    ld   de,$45C9
459E: 06 10       ld   b,$10
45A0: 0E 86       ld   c,$86
45A2: 1A          ld   a,(de)
45A3: 77          ld   (hl),a
45A4: CB D4       set  2,h
45A6: 71          ld   (hl),c
45A7: CB 94       res  2,h
45A9: 13          inc  de
45AA: C5          push bc
45AB: 01 E0 FF    ld   bc,$FFE0
45AE: 09          add  hl,bc
45AF: C1          pop  bc
45B0: 10 F0       djnz $45A2
45B2: 3E 8C       ld   a,$8C
45B4: 32 00 B8    ld   ($watchdog),a
45B7: 3E 3C       ld   a,$3C
45B9: 32 0D 92    ld   ($920D),a
45BC: 3C          inc  a
45BD: 32 0E 92    ld   ($920E),a
45C0: 3C          inc  a
45C1: 32 0F 92    ld   ($920F),a
45C4: 3C          inc  a
45C5: 32 EF 91    ld   ($91EF),a
45C8: C9          ret
45C9: 1F          rra
45CA: 0E 1B       ld   c,$1B
45CC: 22 24 15    ld   ($1524),hl
45CF: 1E 0C       ld   e,$0C
45D1: 14          inc  d
45D2: 22 24 16    ld   ($1624),hl
45D5: 18 1E       jr   $45F5
45D7: 1C          inc  e
45D8: 0E FE       ld   c,$FE
45DA: 3B          dec  sp
45DB: CA F1 45    jp   z,$45F1
45DE: FE 46       cp   $46
45E0: C0          ret  nz
45E1: 3E 00       ld   a,$00
45E3: 32 60 80    ld   ($8060),a
45E6: 3E 01       ld   a,$01
45E8: 32 33 80    ld   ($8033),a
45EB: 3E E0       ld   a,$E0
45ED: 32 00 B8    ld   ($watchdog),a
45F0: C9          ret
45F1: 3E 65       ld   a,$65
45F3: 32 0D 92    ld   ($920D),a
45F6: 3C          inc  a
45F7: 32 0E 92    ld   ($920E),a
45FA: 3C          inc  a
45FB: 32 0F 92    ld   ($920F),a
45FE: 3E 61       ld   a,$61
4600: 32 EF 91    ld   ($91EF),a
4603: C9          ret
4604: CC 91 58    call z,$5891
4607: 84          add  a,h
4608: 2F          cpl
4609: 92          sub  d
460A: 6D          ld   l,l
460B: 84          add  a,h
460C: CE 91       adc  a,$91
460E: 5A          ld   e,d
460F: 84          add  a,h
4610: 2D          dec  l
4611: 92          sub  d
4612: 6B          ld   l,e
4613: 84          add  a,h
4614: 4B          ld   c,e
4615: 92          sub  d
4616: 6F          ld   l,a
4617: 84          add  a,h
4618: 50          ld   d,b
4619: 92          sub  d
461A: 74          ld   (hl),h
461B: 84          add  a,h
461C: D0          ret  nc
461D: 91          sub  c
461E: 5C          ld   e,h
461F: 84          add  a,h
4620: AB          xor  e
4621: 91          sub  c
4622: 51          ld   d,c
4623: 84          add  a,h
4624: EB          ex   de,hl
4625: 91          sub  c
4626: 5D          ld   e,l
4627: 84          add  a,h
4628: 0E 92       ld   c,$92
462A: 66          ld   h,(hl)
462B: 84          add  a,h
462C: AF          xor  a
462D: 91          sub  c
462E: 55          ld   d,l
462F: 84          add  a,h
4630: 0C          inc  c
4631: 92          sub  d
4632: 64          ld   h,h
4633: 84          add  a,h
4634: 2B          dec  hl
4635: 92          sub  d
4636: 69          ld   l,c
4637: 84          add  a,h
4638: 4E          ld   c,(hl)
4639: 92          sub  d
463A: 72          ld   (hl),d
463B: 84          add  a,h
463C: AD          xor  l
463D: 91          sub  c
463E: 53          ld   d,e
463F: 84          add  a,h
4640: CB 91       res  2,c
4642: 57          ld   d,a
4643: 84          add  a,h
4644: 10 92       djnz $45D8
4646: 68          ld   l,b
4647: 84          add  a,h
4648: AE          xor  (hl)
4649: 91          sub  c
464A: 54          ld   d,h
464B: 84          add  a,h
464C: B0          or   b
464D: 91          sub  c
464E: 56          ld   d,(hl)
464F: 84          add  a,h
4650: ED          db   $ed
4651: 91          sub  c
4652: 5F          ld   e,a
4653: 84          add  a,h
4654: CF          rst  $08
4655: 91          sub  c
4656: 5B          ld   e,e
4657: 84          add  a,h
4658: 4C          ld   c,h
4659: 92          sub  d
465A: 70          ld   (hl),b
465B: 84          add  a,h
465C: 4F          ld   c,a
465D: 92          sub  d
465E: 73          ld   (hl),e
465F: 84          add  a,h
4660: AC          xor  h
4661: 91          sub  c
4662: 52          ld   d,d
4663: 84          add  a,h
4664: F0          ret  p
4665: 91          sub  c
4666: 62          ld   h,d
4667: 84          add  a,h
4668: 30 92       jr   nc,$45FC
466A: 6E          ld   l,(hl)
466B: 84          add  a,h
466C: 0B          dec  bc
466D: 92          sub  d
466E: 63          ld   h,e
466F: 84          add  a,h
4670: EF          rst  $28
4671: 91          sub  c
4672: 61          ld   h,c
4673: 84          add  a,h
4674: 2C          inc  l
4675: 92          sub  d
4676: 6A          ld   l,d
4677: 84          add  a,h
4678: CD 91 59    call $5991
467B: 84          add  a,h
467C: EC 91 5E    call pe,$5E91
467F: 84          add  a,h
4680: 2E 92       ld   l,$92
4682: 6C          ld   l,h
4683: 84          add  a,h
4684: 0F          rrca
4685: 92          sub  d
4686: 67          ld   h,a
4687: 84          add  a,h
4688: 0D          dec  c
4689: 92          sub  d
468A: 65          ld   h,l
468B: 84          add  a,h
468C: 4D          ld   c,l
468D: 92          sub  d
468E: 71          ld   (hl),c
468F: 84          add  a,h
4690: EE 91       xor  $91
4692: 60          ld   h,b
4693: 84          add  a,h
4694: 21 68 80    ld   hl,$8068
4697: 7E          ld   a,(hl)
4698: A7          and  a
4699: C2 05 47    jp   nz,$4705
469C: 36 01       ld   (hl),$01
469E: 23          inc  hl
469F: 36 00       ld   (hl),$00
46A1: 23          inc  hl
46A2: 36 00       ld   (hl),$00
46A4: 23          inc  hl
46A5: 36 00       ld   (hl),$00
46A7: 23          inc  hl
46A8: 36 00       ld   (hl),$00
46AA: 21 65 90    ld   hl,$9065
46AD: 11 FE 46    ld   de,$46FE
46B0: 06 05       ld   b,$05
46B2: E5          push hl
46B3: 1A          ld   a,(de)
46B4: 77          ld   (hl),a
46B5: 13          inc  de
46B6: 23          inc  hl
46B7: 10 FA       djnz $46B3
46B9: E1          pop  hl
46BA: CB D4       set  2,h
46BC: 06 05       ld   b,$05
46BE: 3E 84       ld   a,$84
46C0: 77          ld   (hl),a
46C1: 23          inc  hl
46C2: 10 FC       djnz $46C0
46C4: 1A          ld   a,(de)
46C5: 21 49 93    ld   hl,$9349
46C8: 77          ld   (hl),a
46C9: CB D4       set  2,h
46CB: 36 84       ld   (hl),$84
46CD: 13          inc  de
46CE: 1A          ld   a,(de)
46CF: 06 16       ld   b,$16
46D1: 11 E0 FF    ld   de,$FFE0
46D4: E5          push hl
46D5: CB 94       res  2,h
46D7: 19          add  hl,de
46D8: 77          ld   (hl),a
46D9: 10 FC       djnz $46D7
46DB: E1          pop  hl
46DC: 06 16       ld   b,$16
46DE: 3E 84       ld   a,$84
46E0: 19          add  hl,de
46E1: 77          ld   (hl),a
46E2: 10 FC       djnz $46E0
46E4: 21 85 94    ld   hl,$9485
46E7: 11 20 00    ld   de,$0020
46EA: 06 04       ld   b,$04
46EC: 0E 17       ld   c,$17
46EE: 3E F5       ld   a,$F5
46F0: C5          push bc
46F1: E5          push hl
46F2: 77          ld   (hl),a
46F3: 23          inc  hl
46F4: 10 FC       djnz $46F2
46F6: E1          pop  hl
46F7: 19          add  hl,de
46F8: C1          pop  bc
46F9: 0D          dec  c
46FA: C2 F0 46    jp   nz,$46F0
46FD: C9          ret
46FE: 40          ld   b,b
46FF: 40          ld   b,b
4700: 40          ld   b,b
4701: 40          ld   b,b
4702: 43          ld   b,e
4703: 77          ld   (hl),a
4704: 41          ld   b,c
4705: 23          inc  hl
4706: 7E          ld   a,(hl)
4707: A7          and  a
4708: C2 55 47    jp   nz,$4755
470B: 23          inc  hl
470C: 23          inc  hl
470D: 34          inc  (hl)
470E: 7E          ld   a,(hl)
470F: FE 05       cp   $05
4711: D8          ret  c
4712: 36 00       ld   (hl),$00
4714: 23          inc  hl
4715: 7E          ld   a,(hl)
4716: 34          inc  (hl)
4717: FE 2A       cp   $2A
4719: D2 32 47    jp   nc,$4732
471C: 07          rlca
471D: 07          rlca
471E: 4F          ld   c,a
471F: 06 00       ld   b,$00
4721: 21 E3 47    ld   hl,$47E3
4724: 09          add  hl,bc
4725: 5E          ld   e,(hl)
4726: 23          inc  hl
4727: 56          ld   d,(hl)
4728: 23          inc  hl
4729: 46          ld   b,(hl)
472A: 23          inc  hl
472B: 4E          ld   c,(hl)
472C: EB          ex   de,hl
472D: 70          ld   (hl),b
472E: CB D4       set  2,h
4730: 71          ld   (hl),c
4731: C9          ret
4732: 7E          ld   a,(hl)
4733: FE 52       cp   $52
4735: CA 49 47    jp   z,$4749
4738: D6 2B       sub  $2B
473A: FE 24       cp   $24
473C: D0          ret  nc
473D: 07          rlca
473E: 07          rlca
473F: 4F          ld   c,a
4740: 06 00       ld   b,$00
4742: 21 04 46    ld   hl,$4604
4745: CD 24 47    call $4724
4748: C9          ret
4749: 36 00       ld   (hl),$00
474B: 2B          dec  hl
474C: 36 00       ld   (hl),$00
474E: 2B          dec  hl
474F: 36 00       ld   (hl),$00
4751: 2B          dec  hl
4752: 36 01       ld   (hl),$01
4754: C9          ret
4755: FE 01       cp   $01
4757: CA 74 47    jp   z,$4774
475A: 23          inc  hl
475B: 23          inc  hl
475C: 34          inc  (hl)
475D: 7E          ld   a,(hl)
475E: FE 06       cp   $06
4760: D8          ret  c
4761: 36 00       ld   (hl),$00
4763: 23          inc  hl
4764: 34          inc  (hl)
4765: 7E          ld   a,(hl)
4766: FE 28       cp   $28
4768: D8          ret  c
4769: 3E 00       ld   a,$00
476B: 32 68 80    ld   ($8068),a
476E: 3E 01       ld   a,$01
4770: 32 33 80    ld   ($8033),a
4773: C9          ret
4774: 23          inc  hl
4775: 7E          ld   a,(hl)
4776: 34          inc  (hl)
4777: FE 10       cp   $10
4779: CA 94 47    jp   z,$4794
477C: FE 20       cp   $20
477E: CA 9B 47    jp   z,$479B
4781: FE 30       cp   $30
4783: CA BB 47    jp   z,$47BB
4786: FE 40       cp   $40
4788: CA C2 47    jp   z,$47C2
478B: FE 60       cp   $60
478D: C0          ret  nz
478E: 36 00       ld   (hl),$00
4790: 2B          dec  hl
4791: 36 02       ld   (hl),$02
4793: C9          ret
4794: 21 8B 48    ld   hl,$488B
4797: CD C9 47    call $47C9
479A: C9          ret
479B: 21 A3 48    ld   hl,$48A3
479E: CD C9 47    call $47C9
47A1: DD 21 D5 07 ld   ix,$07D5
47A5: 3A 25 80    ld   a,($8025)
47A8: 07          rlca
47A9: 5F          ld   e,a
47AA: 16 00       ld   d,$00
47AC: DD 19       add  ix,de
47AE: DD 7E 00    ld   a,(ix+$00)
47B1: 32 F8 92    ld   ($92F8),a
47B4: DD 7E 01    ld   a,(ix+$01)
47B7: 32 D8 91    ld   ($91D8),a
47BA: C9          ret
47BB: 21 BB 48    ld   hl,$48BB
47BE: CD C9 47    call $47C9
47C1: C9          ret
47C2: 21 D3 48    ld   hl,$48D3
47C5: CD C9 47    call $47C9
47C8: C9          ret
47C9: 5E          ld   e,(hl)
47CA: 23          inc  hl
47CB: 56          ld   d,(hl)
47CC: 23          inc  hl
47CD: 46          ld   b,(hl)
47CE: 23          inc  hl
47CF: 4E          ld   c,(hl)
47D0: 23          inc  hl
47D1: EB          ex   de,hl
47D2: 1A          ld   a,(de)
47D3: 77          ld   (hl),a
47D4: CB D4       set  2,h
47D6: 71          ld   (hl),c
47D7: CB 94       res  2,h
47D9: 13          inc  de
47DA: D5          push de
47DB: 11 E0 FF    ld   de,$FFE0
47DE: 19          add  hl,de
47DF: D1          pop  de
47E0: 10 F0       djnz $47D2
47E2: C9          ret
47E3: 26 93       ld   h,$93
47E5: 24          inc  h
47E6: F5          push af
47E7: 06 93       ld   b,$93
47E9: D9          exx
47EA: F5          push af
47EB: E6 92       and  $92
47ED: D7          rst  $10
47EE: F5          push af
47EF: C6 92       add  a,$92
47F1: D5          push de
47F2: F5          push af
47F3: A6          and  (hl)
47F4: 92          sub  d
47F5: D3 F5       out  ($F5),a
47F7: 86          add  a,(hl)
47F8: 92          sub  d
47F9: D1          pop  de
47FA: F5          push af
47FB: 66          ld   h,(hl)
47FC: 92          sub  d
47FD: CF          rst  $08
47FE: F5          push af
47FF: 46          ld   b,(hl)
4800: 92          sub  d
4801: CD F5 26    call $26F5
4804: 92          sub  d
4805: CB F5       set  6,l
4807: 06 92       ld   b,$92
4809: C9          ret
480A: F5          push af
480B: E6 91       and  $91
480D: C7          rst  $00
480E: F5          push af
480F: C6 91       add  a,$91
4811: C5          push bc
4812: F5          push af
4813: A6          and  (hl)
4814: 91          sub  c
4815: C3 F5 86    jp   $86F5
4818: 91          sub  c
4819: C1          pop  bc
481A: F5          push af
481B: 66          ld   h,(hl)
481C: 91          sub  c
481D: BF          cp   a
481E: F5          push af
481F: 46          ld   b,(hl)
4820: 91          sub  c
4821: BD          cp   l
4822: F5          push af
4823: 26 91       ld   h,$91
4825: BB          cp   e
4826: F5          push af
4827: 06 91       ld   b,$91
4829: B9          cp   c
482A: F5          push af
482B: E6 90       and  $90
482D: B7          or   a
482E: F5          push af
482F: C6 90       add  a,$90
4831: B5          or   l
4832: F5          push af
4833: A6          and  (hl)
4834: 90          sub  b
4835: B3          or   e
4836: F5          push af
4837: 27          daa
4838: 93          sub  e
4839: 24          inc  h
483A: F5          push af
483B: 07          rlca
483C: 93          sub  e
483D: DA F5 E7    jp   c,$E7F5
4840: 92          sub  d
4841: D8          ret  c
4842: F5          push af
4843: C7          rst  $00
4844: 92          sub  d
4845: D6 F5       sub  $F5
4847: A7          and  a
4848: 92          sub  d
4849: D4 F5 87    call nc,$87F5
484C: 92          sub  d
484D: D2 F5 67    jp   nc,$67F5
4850: 92          sub  d
4851: D0          ret  nc
4852: F5          push af
4853: 47          ld   b,a
4854: 92          sub  d
4855: CE F5       adc  a,$F5
4857: 27          daa
4858: 92          sub  d
4859: CC F5 07    call z,$07F5
485C: 92          sub  d
485D: CA F5 E7    jp   z,$E7F5
4860: 91          sub  c
4861: C8          ret  z
4862: F5          push af
4863: C7          rst  $00
4864: 91          sub  c
4865: C6 F5       add  a,$F5
4867: A7          and  a
4868: 91          sub  c
4869: C4 F5 87    call nz,$87F5
486C: 91          sub  c
486D: C2 F5 67    jp   nz,$67F5
4870: 91          sub  c
4871: C0          ret  nz
4872: F5          push af
4873: 47          ld   b,a
4874: 91          sub  c
4875: BE          cp   (hl)
4876: F5          push af
4877: 27          daa
4878: 91          sub  c
4879: BC          cp   h
487A: F5          push af
487B: 07          rlca
487C: 91          sub  c
487D: BA          cp   d
487E: F5          push af
487F: E7          rst  $20
4880: 90          sub  b
4881: B8          cp   b
4882: F5          push af
4883: C7          rst  $00
4884: 90          sub  b
4885: B6          or   (hl)
4886: F5          push af
4887: A7          and  a
4888: 90          sub  b
4889: B4          or   h
488A: F5          push af
488B: 36 93       ld   (hl),$93
488D: 14          inc  d
488E: 86          add  a,(hl)
488F: 24          inc  h
4890: 24          inc  h
4891: 24          inc  h
4892: 24          inc  h
4893: 12          ld   (de),a
4894: 17          rla
4895: 1C          inc  e
4896: 0E 1B       ld   c,$1B
4898: 1D          dec  e
4899: 24          inc  h
489A: 24          inc  h
489B: 0C          inc  c
489C: 18 12       jr   $48B0
489E: 17          rla
489F: 24          inc  h
48A0: 24          inc  h
48A1: 24          inc  h
48A2: 24          inc  h
48A3: 38 93       jr   c,$4838
48A5: 14          inc  d
48A6: 82          add  a,d
48A7: 24          inc  h
48A8: 24          inc  h
48A9: 24          inc  h
48AA: 24          inc  h
48AB: 24          inc  h
48AC: 0C          inc  c
48AD: 18 12       jr   $48C1
48AF: 17          rla
48B0: 24          inc  h
48B1: 24          inc  h
48B2: 24          inc  h
48B3: 24          inc  h
48B4: 24          inc  h
48B5: 19          add  hl,de
48B6: 15          dec  d
48B7: 0A          ld   a,(bc)
48B8: 22 24 24    ld   ($2424),hl
48BB: 3A 93 14    ld   a,($1493)
48BE: 80          add  a,b
48BF: 24          inc  h
48C0: 24          inc  h
48C1: 24          inc  h
48C2: 24          inc  h
48C3: 24          inc  h
48C4: 24          inc  h
48C5: 24          inc  h
48C6: 24          inc  h
48C7: 24          inc  h
48C8: 24          inc  h
48C9: 24          inc  h
48CA: 24          inc  h
48CB: 24          inc  h
48CC: 24          inc  h
48CD: 24          inc  h
48CE: 24          inc  h
48CF: 24          inc  h
48D0: 24          inc  h
48D1: 24          inc  h
48D2: 24          inc  h
48D3: 7C          ld   a,h
48D4: 93          sub  e
48D5: 18 86       jr   $485D
48D7: 24          inc  h
48D8: 24          inc  h
48D9: 28 24       jr   z,$48FF
48DB: 01 09 08    ld   bc,$0809
48DE: 02          ld   (bc),a
48DF: 24          inc  h
48E0: 0C          inc  c
48E1: 11 1E 18    ld   de,$181E
48E4: 24          inc  h
48E5: 0C          inc  c
48E6: 18 31       jr   $4919
48E8: 24          inc  h
48E9: 15          dec  d
48EA: 1D          dec  e
48EB: 0D          dec  c
48EC: 2B          dec  hl
48ED: 24          inc  h
48EE: 24          inc  h
48EF: F5          push af
48F0: 3A 00 A8    ld   a,($A800)
48F3: E6 40       and  $40
48F5: C2 FA 48    jp   nz,$48FA
48F8: F1          pop  af
48F9: C9          ret
48FA: 21 00 91    ld   hl,$9100
48FD: 11 1A 49    ld   de,$491A
4900: 06 0E       ld   b,$0E
4902: CD 0E 49    call $490E
4905: 3A 00 B8    ld   a,($watchdog)
4908: 00          nop
4909: 00          nop
490A: 00          nop
490B: C3 FA 48    jp   $48FA
490E: 1A          ld   a,(de)
490F: 77          ld   (hl),a
4910: 13          inc  de
4911: C5          push bc
4912: 01 20 00    ld   bc,$0020
4915: 09          add  hl,bc
4916: C1          pop  bc
4917: 10 F5       djnz $490E
4919: C9          ret
491A: 24          inc  h
491B: 0D          dec  c
491C: 1D          dec  e
491D: 15          dec  d
491E: 24          inc  h
491F: 31 18 0C    ld   sp,$0C18
4922: 24          inc  h
4923: 18 1E       jr   $4943
4925: 11 0C 24    ld   de,$240C


B000: 01 00 00    ld   bc,$0000
