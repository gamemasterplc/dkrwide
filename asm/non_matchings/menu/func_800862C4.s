glabel func_800862C4
/* 086EC4 800862C4 27BDFEB8 */  addiu $sp, $sp, -0x148
/* 086EC8 800862C8 AFB60038 */  sw    $s6, 0x38($sp)
/* 086ECC 800862CC AFB20028 */  sw    $s2, 0x28($sp)
/* 086ED0 800862D0 3C128012 */  lui   $s2, %hi(D_80126A08) # $s2, 0x8012
/* 086ED4 800862D4 3C168012 */  lui   $s6, %hi(D_80126530+12) # $s6, 0x8012
/* 086ED8 800862D8 26526A08 */  addiu $s2, %lo(D_80126A08) # addiu $s2, $s2, 0x6a08
/* 086EDC 800862DC 8ED6653C */  lw    $s6, %lo(D_80126530+12)($s6)
/* 086EE0 800862E0 AE400000 */  sw    $zero, ($s2)
/* 086EE4 800862E4 3C018012 */  lui   $at, %hi(D_80126BD4) # $at, 0x8012
/* 086EE8 800862E8 44802000 */  mtc1  $zero, $f4
/* 086EEC 800862EC AFB40030 */  sw    $s4, 0x30($sp)
/* 086EF0 800862F0 AFB10024 */  sw    $s1, 0x24($sp)
/* 086EF4 800862F4 AC206BD4 */  sw    $zero, %lo(D_80126BD4)($at)
/* 086EF8 800862F8 AFB3002C */  sw    $s3, 0x2c($sp)
/* 086EFC 800862FC AFB00020 */  sw    $s0, 0x20($sp)
/* 086F00 80086300 3C018012 */  lui   $at, %hi(D_80126BDC) # $at, 0x8012
/* 086F04 80086304 3C118012 */  lui   $s1, %hi(D_80126530) # $s1, 0x8012
/* 086F08 80086308 3C148012 */  lui   $s4, %hi(D_80126A0C) # $s4, 0x8012
/* 086F0C 8008630C AFBF0044 */  sw    $ra, 0x44($sp)
/* 086F10 80086310 AFBE0040 */  sw    $fp, 0x40($sp)
/* 086F14 80086314 AFB7003C */  sw    $s7, 0x3c($sp)
/* 086F18 80086318 AFB50034 */  sw    $s5, 0x34($sp)
/* 086F1C 8008631C 26946A0C */  addiu $s4, %lo(D_80126A0C) # addiu $s4, $s4, 0x6a0c
/* 086F20 80086320 26316530 */  addiu $s1, %lo(D_80126530) # addiu $s1, $s1, 0x6530
/* 086F24 80086324 00008025 */  move  $s0, $zero
/* 086F28 80086328 24130001 */  li    $s3, 1
/* 086F2C 8008632C E4246BDC */  swc1  $f4, %lo(D_80126BDC)($at)
.L80086330:
/* 086F30 80086330 8E2E0000 */  lw    $t6, ($s1)
/* 086F34 80086334 00000000 */  nop   
/* 086F38 80086338 91CF004B */  lbu   $t7, 0x4b($t6)
/* 086F3C 8008633C 00000000 */  nop   
/* 086F40 80086340 15E00022 */  bnez  $t7, .L800863CC
/* 086F44 80086344 00000000 */   nop   
/* 086F48 80086348 8E590000 */  lw    $t9, ($s2)
/* 086F4C 8008634C 8E980000 */  lw    $t8, ($s4)
/* 086F50 80086350 00194900 */  sll   $t1, $t9, 4
/* 086F54 80086354 03095021 */  addu  $t2, $t8, $t1
/* 086F58 80086358 A1530000 */  sb    $s3, ($t2)
/* 086F5C 8008635C 8E4C0000 */  lw    $t4, ($s2)
/* 086F60 80086360 8E8B0000 */  lw    $t3, ($s4)
/* 086F64 80086364 000C6900 */  sll   $t5, $t4, 4
/* 086F68 80086368 016D7021 */  addu  $t6, $t3, $t5
/* 086F6C 8008636C A1D30001 */  sb    $s3, 1($t6)
/* 086F70 80086370 8E2F0000 */  lw    $t7, ($s1)
/* 086F74 80086374 8E4A0000 */  lw    $t2, ($s2)
/* 086F78 80086378 8DF90000 */  lw    $t9, ($t7)
/* 086F7C 8008637C 8E890000 */  lw    $t1, ($s4)
/* 086F80 80086380 87380000 */  lh    $t8, ($t9)
/* 086F84 80086384 000A6100 */  sll   $t4, $t2, 4
/* 086F88 80086388 012C5821 */  addu  $t3, $t1, $t4
/* 086F8C 8008638C A1780002 */  sb    $t8, 2($t3)
/* 086F90 80086390 8E4E0000 */  lw    $t6, ($s2)
/* 086F94 80086394 8E8D0000 */  lw    $t5, ($s4)
/* 086F98 80086398 000E7900 */  sll   $t7, $t6, 4
/* 086F9C 8008639C 01AFC821 */  addu  $t9, $t5, $t7
/* 086FA0 800863A0 0C01CF13 */  jal   get_s32_256
/* 086FA4 800863A4 A3300006 */   sb    $s0, 6($t9)
/* 086FA8 800863A8 8E490000 */  lw    $t1, ($s2)
/* 086FAC 800863AC 8E8A0000 */  lw    $t2, ($s4)
/* 086FB0 800863B0 00096100 */  sll   $t4, $t1, 4
/* 086FB4 800863B4 014CC021 */  addu  $t8, $t2, $t4
/* 086FB8 800863B8 AF02000C */  sw    $v0, 0xc($t8)
/* 086FBC 800863BC 8E4B0000 */  lw    $t3, ($s2)
/* 086FC0 800863C0 00000000 */  nop   
/* 086FC4 800863C4 256E0001 */  addiu $t6, $t3, 1
/* 086FC8 800863C8 AE4E0000 */  sw    $t6, ($s2)
.L800863CC:
/* 086FCC 800863CC 26100001 */  addiu $s0, $s0, 1
/* 086FD0 800863D0 24010003 */  li    $at, 3
/* 086FD4 800863D4 1601FFD6 */  bne   $s0, $at, .L80086330
/* 086FD8 800863D8 26310004 */   addiu $s1, $s1, 4
/* 086FDC 800863DC 8E590000 */  lw    $t9, ($s2)
/* 086FE0 800863E0 8E8F0000 */  lw    $t7, ($s4)
/* 086FE4 800863E4 00194900 */  sll   $t1, $t9, 4
/* 086FE8 800863E8 240D0002 */  li    $t5, 2
/* 086FEC 800863EC 01E95021 */  addu  $t2, $t7, $t1
/* 086FF0 800863F0 A14D0000 */  sb    $t5, ($t2)
/* 086FF4 800863F4 8E580000 */  lw    $t8, ($s2)
/* 086FF8 800863F8 8E8C0000 */  lw    $t4, ($s4)
/* 086FFC 800863FC 00185900 */  sll   $t3, $t8, 4
/* 087000 80086400 018B7021 */  addu  $t6, $t4, $t3
/* 087004 80086404 0C01CF15 */  jal   get_s32_512
/* 087008 80086408 A1D30001 */   sb    $s3, 1($t6)
/* 08700C 8008640C 8E4F0000 */  lw    $t7, ($s2)
/* 087010 80086410 8E990000 */  lw    $t9, ($s4)
/* 087014 80086414 000F4900 */  sll   $t1, $t7, 4
/* 087018 80086418 03296821 */  addu  $t5, $t9, $t1
/* 08701C 8008641C ADA2000C */  sw    $v0, 0xc($t5)
/* 087020 80086420 8E4A0000 */  lw    $t2, ($s2)
/* 087024 80086424 8E8B0000 */  lw    $t3, ($s4)
/* 087028 80086428 25580001 */  addiu $t8, $t2, 1
/* 08702C 8008642C 00187900 */  sll   $t7, $t8, 4
/* 087030 80086430 AE580000 */  sw    $t8, ($s2)
/* 087034 80086434 240C000A */  li    $t4, 10
/* 087038 80086438 016FC821 */  addu  $t9, $t3, $t7
/* 08703C 8008643C A32C0000 */  sb    $t4, ($t9)
/* 087040 80086440 8E490000 */  lw    $t1, ($s2)
/* 087044 80086444 3C108012 */  lui   $s0, %hi(D_80126A64) # $s0, 0x8012
/* 087048 80086448 252D0001 */  addiu $t5, $t1, 1
/* 08704C 8008644C AE4D0000 */  sw    $t5, ($s2)
/* 087050 80086450 8E106A64 */  lw    $s0, %lo(D_80126A64)($s0)
/* 087054 80086454 8FA80138 */  lw    $t0, 0x138($sp)
/* 087058 80086458 27BE00B4 */  addiu $fp, $sp, 0xb4
.L8008645C:
/* 08705C 8008645C 3C0A8012 */  lui   $t2, %hi(D_80126A18) # $t2, 0x8012
/* 087060 80086460 8D4A6A18 */  lw    $t2, %lo(D_80126A18)($t2)
/* 087064 80086464 24170001 */  li    $s7, 1
/* 087068 80086468 114000CC */  beqz  $t2, .L8008679C
/* 08706C 8008646C 3C018012 */   lui   $at, %hi(D_80126A14) # $at, 0x8012
/* 087070 80086470 AC206A14 */  sw    $zero, %lo(D_80126A14)($at)
/* 087074 80086474 27B80060 */  addiu $t8, $sp, 0x60
.L80086478:
/* 087078 80086478 27AE00A4 */  addiu $t6, $sp, 0xa4
/* 08707C 8008647C AFAE0014 */  sw    $t6, 0x14($sp)
/* 087080 80086480 AFB80010 */  sw    $t8, 0x10($sp)
/* 087084 80086484 00002025 */  move  $a0, $zero
/* 087088 80086488 24050010 */  li    $a1, 16
/* 08708C 8008648C 27A600F4 */  addiu $a2, $sp, 0xf4
/* 087090 80086490 0C01D798 */  jal   func_80075E60
/* 087094 80086494 03C03825 */   move  $a3, $fp
/* 087098 80086498 304300FF */  andi  $v1, $v0, 0xff
/* 08709C 8008649C 24010005 */  li    $at, 5
/* 0870A0 800864A0 00404025 */  move  $t0, $v0
/* 0870A4 800864A4 14610004 */  bne   $v1, $at, .L800864B8
/* 0870A8 800864A8 26F70001 */   addiu $s7, $s7, 1
/* 0870AC 800864AC 2AE10003 */  slti  $at, $s7, 3
/* 0870B0 800864B0 1420FFF1 */  bnez  $at, .L80086478
/* 0870B4 800864B4 27B80060 */   addiu $t8, $sp, 0x60
.L800864B8:
/* 0870B8 800864B8 1440009B */  bnez  $v0, .L80086728
/* 0870BC 800864BC 24010007 */   li    $at, 7
/* 0870C0 800864C0 00009825 */  move  $s3, $zero
/* 0870C4 800864C4 27B500A4 */  addiu $s5, $sp, 0xa4
.L800864C8:
/* 0870C8 800864C8 92A20000 */  lbu   $v0, ($s5)
/* 0870CC 800864CC 00000000 */  nop   
/* 0870D0 800864D0 28410003 */  slti  $at, $v0, 3
/* 0870D4 800864D4 1420008B */  bnez  $at, .L80086704
/* 0870D8 800864D8 28410007 */   slti  $at, $v0, 7
/* 0870DC 800864DC 10200089 */  beqz  $at, .L80086704
/* 0870E0 800864E0 3C048012 */   lui   $a0, %hi(D_80126A20) # $a0, 0x8012
/* 0870E4 800864E4 24846A20 */  addiu $a0, %lo(D_80126A20) # addiu $a0, $a0, 0x6a20
/* 0870E8 800864E8 8C8B0000 */  lw    $t3, ($a0)
/* 0870EC 800864EC 8E590000 */  lw    $t9, ($s2)
/* 0870F0 800864F0 8E8C0000 */  lw    $t4, ($s4)
/* 0870F4 800864F4 256FFFFF */  addiu $t7, $t3, -1
/* 0870F8 800864F8 00194900 */  sll   $t1, $t9, 4
/* 0870FC 800864FC AC8F0000 */  sw    $t7, ($a0)
/* 087100 80086500 01896821 */  addu  $t5, $t4, $t1
/* 087104 80086504 A1A20000 */  sb    $v0, ($t5)
/* 087108 80086508 8E580000 */  lw    $t8, ($s2)
/* 08710C 8008650C 8E8A0000 */  lw    $t2, ($s4)
/* 087110 80086510 00187100 */  sll   $t6, $t8, 4
/* 087114 80086514 014E5821 */  addu  $t3, $t2, $t6
/* 087118 80086518 A1600006 */  sb    $zero, 6($t3)
/* 08711C 8008651C 8E590000 */  lw    $t9, ($s2)
/* 087120 80086520 8E8F0000 */  lw    $t7, ($s4)
/* 087124 80086524 00196100 */  sll   $t4, $t9, 4
/* 087128 80086528 01EC4821 */  addu  $t1, $t7, $t4
/* 08712C 8008652C A1330007 */  sb    $s3, 7($t1)
/* 087130 80086530 8E4A0000 */  lw    $t2, ($s2)
/* 087134 80086534 00133880 */  sll   $a3, $s3, 2
/* 087138 80086538 8E980000 */  lw    $t8, ($s4)
/* 08713C 8008653C 03A76821 */  addu  $t5, $sp, $a3
/* 087140 80086540 8DAD0060 */  lw    $t5, 0x60($t5)
/* 087144 80086544 000A7100 */  sll   $t6, $t2, 4
/* 087148 80086548 030E5821 */  addu  $t3, $t8, $t6
/* 08714C 8008654C AD6D000C */  sw    $t5, 0xc($t3)
/* 087150 80086550 92A30000 */  lbu   $v1, ($s5)
/* 087154 80086554 24010003 */  li    $at, 3
/* 087158 80086558 1461002E */  bne   $v1, $at, .L80086614
/* 08715C 8008655C 00002025 */   move  $a0, $zero
/* 087160 80086560 03C78821 */  addu  $s1, $fp, $a3
/* 087164 80086564 8E250000 */  lw    $a1, ($s1)
/* 087168 80086568 AFA80138 */  sw    $t0, 0x138($sp)
/* 08716C 8008656C 0C01CF87 */  jal   func_80073E1C
/* 087170 80086570 02C03025 */   move  $a2, $s6
/* 087174 80086574 8FA80138 */  lw    $t0, 0x138($sp)
/* 087178 80086578 14400021 */  bnez  $v0, .L80086600
/* 08717C 8008657C 00000000 */   nop   
/* 087180 80086580 8E4F0000 */  lw    $t7, ($s2)
/* 087184 80086584 8E990000 */  lw    $t9, ($s4)
/* 087188 80086588 000F6100 */  sll   $t4, $t7, 4
/* 08718C 8008658C 032C4821 */  addu  $t1, $t9, $t4
/* 087190 80086590 AD300008 */  sw    $s0, 8($t1)
/* 087194 80086594 8E2A0000 */  lw    $t2, ($s1)
/* 087198 80086598 26100002 */  addiu $s0, $s0, 2
/* 08719C 8008659C 91580000 */  lbu   $t8, ($t2)
/* 0871A0 800865A0 A200FFFF */  sb    $zero, -1($s0)
/* 0871A4 800865A4 A218FFFE */  sb    $t8, -2($s0)
/* 0871A8 800865A8 8E4F0000 */  lw    $t7, ($s2)
/* 0871AC 800865AC 8ECE0000 */  lw    $t6, ($s6)
/* 0871B0 800865B0 8E8B0000 */  lw    $t3, ($s4)
/* 0871B4 800865B4 85CD0000 */  lh    $t5, ($t6)
/* 0871B8 800865B8 000FC900 */  sll   $t9, $t7, 4
/* 0871BC 800865BC 01796021 */  addu  $t4, $t3, $t9
/* 0871C0 800865C0 A18D0002 */  sb    $t5, 2($t4)
/* 0871C4 800865C4 8E4F0000 */  lw    $t7, ($s2)
/* 0871C8 800865C8 8EC90010 */  lw    $t1, 0x10($s6)
/* 0871CC 800865CC 8E8E0000 */  lw    $t6, ($s4)
/* 0871D0 800865D0 000F5900 */  sll   $t3, $t7, 4
/* 0871D4 800865D4 312A0004 */  andi  $t2, $t1, 4
/* 0871D8 800865D8 000AC02B */  sltu  $t8, $zero, $t2
/* 0871DC 800865DC 01CBC821 */  addu  $t9, $t6, $t3
/* 0871E0 800865E0 A3380003 */  sb    $t8, 3($t9)
/* 0871E4 800865E4 8E490000 */  lw    $t1, ($s2)
/* 0871E8 800865E8 8E8C0000 */  lw    $t4, ($s4)
/* 0871EC 800865EC 8ECD0050 */  lw    $t5, 0x50($s6)
/* 0871F0 800865F0 00095100 */  sll   $t2, $t1, 4
/* 0871F4 800865F4 018A7821 */  addu  $t7, $t4, $t2
/* 0871F8 800865F8 1000003E */  b     .L800866F4
/* 0871FC 800865FC A5ED0004 */   sh    $t5, 4($t7)
.L80086600:
/* 087200 80086600 8E4E0000 */  lw    $t6, ($s2)
/* 087204 80086604 00000000 */  nop   
/* 087208 80086608 25CBFFFF */  addiu $t3, $t6, -1
/* 08720C 8008660C 10000039 */  b     .L800866F4
/* 087210 80086610 AE4B0000 */   sw    $t3, ($s2)
.L80086614:
/* 087214 80086614 24010006 */  li    $at, 6
/* 087218 80086618 10610003 */  beq   $v1, $at, .L80086628
/* 08721C 8008661C 00001025 */   move  $v0, $zero
/* 087220 80086620 24010004 */  li    $at, 4
/* 087224 80086624 14610033 */  bne   $v1, $at, .L800866F4
.L80086628:
/* 087228 80086628 27B800F4 */   addiu $t8, $sp, 0xf4
/* 08722C 8008662C 24010004 */  li    $at, 4
/* 087230 80086630 00F82021 */  addu  $a0, $a3, $t8
/* 087234 80086634 14610002 */  bne   $v1, $at, .L80086640
/* 087238 80086638 03C78821 */   addu  $s1, $fp, $a3
/* 08723C 8008663C 24020009 */  li    $v0, 9
.L80086640:
/* 087240 80086640 8E490000 */  lw    $t1, ($s2)
/* 087244 80086644 8E990000 */  lw    $t9, ($s4)
/* 087248 80086648 00096100 */  sll   $t4, $t1, 4
/* 08724C 8008664C 032C5021 */  addu  $t2, $t9, $t4
/* 087250 80086650 AD500008 */  sw    $s0, 8($t2)
/* 087254 80086654 8C8D0000 */  lw    $t5, ($a0)
/* 087258 80086658 00000000 */  nop   
/* 08725C 8008665C 01A27821 */  addu  $t7, $t5, $v0
/* 087260 80086660 91E30000 */  lbu   $v1, ($t7)
/* 087264 80086664 00000000 */  nop   
/* 087268 80086668 10600009 */  beqz  $v1, .L80086690
/* 08726C 8008666C 00000000 */   nop   
.L80086670:
/* 087270 80086670 A2030000 */  sb    $v1, ($s0)
/* 087274 80086674 8C8E0000 */  lw    $t6, ($a0)
/* 087278 80086678 24420001 */  addiu $v0, $v0, 1
/* 08727C 8008667C 01C25821 */  addu  $t3, $t6, $v0
/* 087280 80086680 91630000 */  lbu   $v1, ($t3)
/* 087284 80086684 26100001 */  addiu $s0, $s0, 1
/* 087288 80086688 1460FFF9 */  bnez  $v1, .L80086670
/* 08728C 8008668C 00000000 */   nop   
.L80086690:
/* 087290 80086690 8E240000 */  lw    $a0, ($s1)
/* 087294 80086694 00000000 */  nop   
/* 087298 80086698 10800014 */  beqz  $a0, .L800866EC
/* 08729C 8008669C 00000000 */   nop   
/* 0872A0 800866A0 90980000 */  lbu   $t8, ($a0)
/* 0872A4 800866A4 2409002E */  li    $t1, 46
/* 0872A8 800866A8 13000010 */  beqz  $t8, .L800866EC
/* 0872AC 800866AC 00000000 */   nop   
/* 0872B0 800866B0 A2090000 */  sb    $t1, ($s0)
/* 0872B4 800866B4 8E240000 */  lw    $a0, ($s1)
/* 0872B8 800866B8 26100001 */  addiu $s0, $s0, 1
/* 0872BC 800866BC 90990000 */  lbu   $t9, ($a0)
/* 0872C0 800866C0 00001025 */  move  $v0, $zero
/* 0872C4 800866C4 13200009 */  beqz  $t9, .L800866EC
/* 0872C8 800866C8 332300FF */   andi  $v1, $t9, 0xff
.L800866CC:
/* 0872CC 800866CC A2030000 */  sb    $v1, ($s0)
/* 0872D0 800866D0 8E2C0000 */  lw    $t4, ($s1)
/* 0872D4 800866D4 24420001 */  addiu $v0, $v0, 1
/* 0872D8 800866D8 01825021 */  addu  $t2, $t4, $v0
/* 0872DC 800866DC 91430000 */  lbu   $v1, ($t2)
/* 0872E0 800866E0 26100001 */  addiu $s0, $s0, 1
/* 0872E4 800866E4 1460FFF9 */  bnez  $v1, .L800866CC
/* 0872E8 800866E8 00000000 */   nop   
.L800866EC:
/* 0872EC 800866EC A2000000 */  sb    $zero, ($s0)
/* 0872F0 800866F0 26100001 */  addiu $s0, $s0, 1
.L800866F4:
/* 0872F4 800866F4 8E4D0000 */  lw    $t5, ($s2)
/* 0872F8 800866F8 00000000 */  nop   
/* 0872FC 800866FC 25AF0001 */  addiu $t7, $t5, 1
/* 087300 80086700 AE4F0000 */  sw    $t7, ($s2)
.L80086704:
/* 087304 80086704 26730001 */  addiu $s3, $s3, 1
/* 087308 80086708 24010010 */  li    $at, 16
/* 08730C 8008670C 1661FF6E */  bne   $s3, $at, .L800864C8
/* 087310 80086710 26B50001 */   addiu $s5, $s5, 1
/* 087314 80086714 0C01D859 */  jal   func_80076164
/* 087318 80086718 AFA80138 */   sw    $t0, 0x138($sp)
/* 08731C 8008671C 8FA80138 */  lw    $t0, 0x138($sp)
/* 087320 80086720 1000001E */  b     .L8008679C
/* 087324 80086724 00000000 */   nop   
.L80086728:
/* 087328 80086728 14610010 */  bne   $v1, $at, .L8008676C
/* 08732C 8008672C 240E0001 */   li    $t6, 1
/* 087330 80086730 3C0B8012 */  lui   $t3, %hi(D_80126A18) # $t3, 0x8012
/* 087334 80086734 8D6B6A18 */  lw    $t3, %lo(D_80126A18)($t3)
/* 087338 80086738 3C018012 */  lui   $at, %hi(D_80126A14) # $at, 0x8012
/* 08733C 8008673C 05610002 */  bgez  $t3, .L80086748
/* 087340 80086740 AC2E6A14 */   sw    $t6, %lo(D_80126A14)($at)
/* 087344 80086744 00004025 */  move  $t0, $zero
.L80086748:
/* 087348 80086748 3C188012 */  lui   $t8, %hi(D_80126A6C) # $t8, 0x8012
/* 08734C 8008674C 8F186A6C */  lw    $t8, %lo(D_80126A6C)($t8)
/* 087350 80086750 24090001 */  li    $t1, 1
/* 087354 80086754 13000011 */  beqz  $t8, .L8008679C
/* 087358 80086758 3C018012 */   lui   $at, %hi(D_80126A10) # $at, 0x8012
/* 08735C 8008675C AC296A10 */  sw    $t1, %lo(D_80126A10)($at)
/* 087360 80086760 3C018012 */  lui   $at, %hi(D_80126A6C) # $at, 0x8012
/* 087364 80086764 1000000D */  b     .L8008679C
/* 087368 80086768 AC206A6C */   sw    $zero, %lo(D_80126A6C)($at)
.L8008676C:
/* 08736C 8008676C 24010001 */  li    $at, 1
/* 087370 80086770 14610003 */  bne   $v1, $at, .L80086780
/* 087374 80086774 3C198012 */   lui   $t9, %hi(D_80126A18) # $t9, 0x8012
/* 087378 80086778 10000008 */  b     .L8008679C
/* 08737C 8008677C 00004025 */   move  $t0, $zero
.L80086780:
/* 087380 80086780 8F396A18 */  lw    $t9, %lo(D_80126A18)($t9)
/* 087384 80086784 24010005 */  li    $at, 5
/* 087388 80086788 07210004 */  bgez  $t9, .L8008679C
/* 08738C 8008678C 00000000 */   nop   
/* 087390 80086790 14610002 */  bne   $v1, $at, .L8008679C
/* 087394 80086794 00000000 */   nop   
/* 087398 80086798 0000B825 */  move  $s7, $zero
.L8008679C:
/* 08739C 8008679C 12E0FF2F */  beqz  $s7, .L8008645C
/* 0873A0 800867A0 01001025 */   move  $v0, $t0
/* 0873A4 800867A4 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0873A8 800867A8 8FB00020 */  lw    $s0, 0x20($sp)
/* 0873AC 800867AC 8FB10024 */  lw    $s1, 0x24($sp)
/* 0873B0 800867B0 8FB20028 */  lw    $s2, 0x28($sp)
/* 0873B4 800867B4 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0873B8 800867B8 8FB40030 */  lw    $s4, 0x30($sp)
/* 0873BC 800867BC 8FB50034 */  lw    $s5, 0x34($sp)
/* 0873C0 800867C0 8FB60038 */  lw    $s6, 0x38($sp)
/* 0873C4 800867C4 8FB7003C */  lw    $s7, 0x3c($sp)
/* 0873C8 800867C8 8FBE0040 */  lw    $fp, 0x40($sp)
/* 0873CC 800867CC 03E00008 */  jr    $ra
/* 0873D0 800867D0 27BD0148 */   addiu $sp, $sp, 0x148

