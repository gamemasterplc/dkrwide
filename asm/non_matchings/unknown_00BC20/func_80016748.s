.late_rodata
glabel D_800E55F8
.double 0.3
glabel D_800E5600
.double 0.1

.text
glabel func_80016748
/* 017348 80016748 27BDFF10 */  addiu $sp, $sp, -0xf0
/* 01734C 8001674C AFBF007C */  sw    $ra, 0x7c($sp)
/* 017350 80016750 AFBE0078 */  sw    $fp, 0x78($sp)
/* 017354 80016754 AFB70074 */  sw    $s7, 0x74($sp)
/* 017358 80016758 AFB60070 */  sw    $s6, 0x70($sp)
/* 01735C 8001675C AFB5006C */  sw    $s5, 0x6c($sp)
/* 017360 80016760 AFB40068 */  sw    $s4, 0x68($sp)
/* 017364 80016764 AFB30064 */  sw    $s3, 0x64($sp)
/* 017368 80016768 AFB20060 */  sw    $s2, 0x60($sp)
/* 01736C 8001676C AFB1005C */  sw    $s1, 0x5c($sp)
/* 017370 80016770 AFB00058 */  sw    $s0, 0x58($sp)
/* 017374 80016774 E7BF0050 */  swc1  $f31, 0x50($sp)
/* 017378 80016778 E7BE0054 */  swc1  $f30, 0x54($sp)
/* 01737C 8001677C E7BD0048 */  swc1  $f29, 0x48($sp)
/* 017380 80016780 E7BC004C */  swc1  $f28, 0x4c($sp)
/* 017384 80016784 E7BB0040 */  swc1  $f27, 0x40($sp)
/* 017388 80016788 E7BA0044 */  swc1  $f26, 0x44($sp)
/* 01738C 8001678C E7B90038 */  swc1  $f25, 0x38($sp)
/* 017390 80016790 E7B8003C */  swc1  $f24, 0x3c($sp)
/* 017394 80016794 E7B70030 */  swc1  $f23, 0x30($sp)
/* 017398 80016798 E7B60034 */  swc1  $f22, 0x34($sp)
/* 01739C 8001679C E7B50028 */  swc1  $f21, 0x28($sp)
/* 0173A0 800167A0 E7B4002C */  swc1  $f20, 0x2c($sp)
/* 0173A4 800167A4 8CAE0044 */  lw    $t6, 0x44($a1)
/* 0173A8 800167A8 00808025 */  move  $s0, $a0
/* 0173AC 800167AC 11C000ED */  beqz  $t6, .L80016B64
/* 0173B0 800167B0 00A0A825 */   move  $s5, $a1
/* 0173B4 800167B4 8CAF0068 */  lw    $t7, 0x68($a1)
/* 0173B8 800167B8 C484000C */  lwc1  $f4, 0xc($a0)
/* 0173BC 800167BC C4A6000C */  lwc1  $f6, 0xc($a1)
/* 0173C0 800167C0 8DE20000 */  lw    $v0, ($t7)
/* 0173C4 800167C4 46062201 */  sub.s $f8, $f4, $f6
/* 0173C8 800167C8 8C530000 */  lw    $s3, ($v0)
/* 0173CC 800167CC E7A800A8 */  swc1  $f8, 0xa8($sp)
/* 0173D0 800167D0 C4B00010 */  lwc1  $f16, 0x10($a1)
/* 0173D4 800167D4 C48A0010 */  lwc1  $f10, 0x10($a0)
/* 0173D8 800167D8 00000000 */  nop   
/* 0173DC 800167DC 46105481 */  sub.s $f18, $f10, $f16
/* 0173E0 800167E0 C7AA00A8 */  lwc1  $f10, 0xa8($sp)
/* 0173E4 800167E4 E7B200A4 */  swc1  $f18, 0xa4($sp)
/* 0173E8 800167E8 C4A60014 */  lwc1  $f6, 0x14($a1)
/* 0173EC 800167EC C4840014 */  lwc1  $f4, 0x14($a0)
/* 0173F0 800167F0 460A5402 */  mul.s $f16, $f10, $f10
/* 0173F4 800167F4 C7B200A4 */  lwc1  $f18, 0xa4($sp)
/* 0173F8 800167F8 46062201 */  sub.s $f8, $f4, $f6
/* 0173FC 800167FC 46129102 */  mul.s $f4, $f18, $f18
/* 017400 80016800 E7A800A0 */  swc1  $f8, 0xa0($sp)
/* 017404 80016804 C7A800A0 */  lwc1  $f8, 0xa0($sp)
/* 017408 80016808 00000000 */  nop   
/* 01740C 8001680C 46084282 */  mul.s $f10, $f8, $f8
/* 017410 80016810 46048180 */  add.s $f6, $f16, $f4
/* 017414 80016814 0C0326B4 */  jal   sqrtf
/* 017418 80016818 460A3300 */   add.s $f12, $f6, $f10
/* 01741C 8001681C C672003C */  lwc1  $f18, 0x3c($s3)
/* 017420 80016820 3C014049 */  li    $at, 0x40490000 # 3.140625
/* 017424 80016824 4481F800 */  mtc1  $at, $f31
/* 017428 80016828 4480F000 */  mtc1  $zero, $f30
/* 01742C 8001682C 46009421 */  cvt.d.s $f16, $f18
/* 017430 80016830 463E8100 */  add.d $f4, $f16, $f30
/* 017434 80016834 27A400AC */  addiu $a0, $sp, 0xac
/* 017438 80016838 46000221 */  cvt.d.s $f8, $f0
/* 01743C 8001683C 4628203C */  c.lt.d $f4, $f8
/* 017440 80016840 00000000 */  nop   
/* 017444 80016844 450100C8 */  bc1t  .L80016B68
/* 017448 80016848 8FBF007C */   lw    $ra, 0x7c($sp)
/* 01744C 8001684C 8E16004C */  lw    $s6, 0x4c($s0)
/* 017450 80016850 8EB4004C */  lw    $s4, 0x4c($s5)
/* 017454 80016854 0C01BF0C */  jal   func_8006FC30
/* 017458 80016858 02A02825 */   move  $a1, $s5
/* 01745C 8001685C 86780020 */  lh    $t8, 0x20($s3)
/* 017460 80016860 0000F025 */  move  $fp, $zero
/* 017464 80016864 1B0000BF */  blez  $t8, .L80016B64
/* 017468 80016868 00009025 */   move  $s2, $zero
/* 01746C 8001686C 3C01800E */  lui   $at, %hi(D_800E55F8 + 4) # $at, 0x800e
/* 017470 80016870 C43D55F8 */  lwc1  $f29, %lo(D_800E55F8)($at)
/* 017474 80016874 C43C55FC */  lwc1  $f28, %lo(D_800E55F8 + 4)($at)
/* 017478 80016878 3C01800E */  lui   $at, %hi(D_800E5600 + 4) # $at, 0x800e
/* 01747C 8001687C C43B5600 */  lwc1  $f27, %lo(D_800E5600)($at)
/* 017480 80016880 C43A5604 */  lwc1  $f26, %lo(D_800E5600 + 4)($at)
/* 017484 80016884 4480C000 */  mtc1  $zero, $f24
/* 017488 80016888 2417000A */  li    $s7, 10
.L8001688C:
/* 01748C 8001688C 8E68001C */  lw    $t0, 0x1c($s3)
/* 017490 80016890 8EB90044 */  lw    $t9, 0x44($s5)
/* 017494 80016894 01124821 */  addu  $t1, $t0, $s2
/* 017498 80016898 852A0000 */  lh    $t2, ($t1)
/* 01749C 8001689C 27A400AC */  addiu $a0, $sp, 0xac
/* 0174A0 800168A0 01570019 */  multu $t2, $s7
/* 0174A4 800168A4 00005812 */  mflo  $t3
/* 0174A8 800168A8 032B6021 */  addu  $t4, $t9, $t3
/* 0174AC 800168AC 858D0000 */  lh    $t5, ($t4)
/* 0174B0 800168B0 00000000 */  nop   
/* 0174B4 800168B4 448D3000 */  mtc1  $t5, $f6
/* 0174B8 800168B8 00000000 */  nop   
/* 0174BC 800168BC 468032A0 */  cvt.s.w $f10, $f6
/* 0174C0 800168C0 E7AA00A8 */  swc1  $f10, 0xa8($sp)
/* 0174C4 800168C4 8E6F001C */  lw    $t7, 0x1c($s3)
/* 0174C8 800168C8 8EAE0044 */  lw    $t6, 0x44($s5)
/* 0174CC 800168CC 01F2C021 */  addu  $t8, $t7, $s2
/* 0174D0 800168D0 87080000 */  lh    $t0, ($t8)
/* 0174D4 800168D4 8FA500A8 */  lw    $a1, 0xa8($sp)
/* 0174D8 800168D8 01170019 */  multu $t0, $s7
/* 0174DC 800168DC 00004812 */  mflo  $t1
/* 0174E0 800168E0 01C95021 */  addu  $t2, $t6, $t1
/* 0174E4 800168E4 85590002 */  lh    $t9, 2($t2)
/* 0174E8 800168E8 27AA00A4 */  addiu $t2, $sp, 0xa4
/* 0174EC 800168EC 44999000 */  mtc1  $t9, $f18
/* 0174F0 800168F0 27B900A0 */  addiu $t9, $sp, 0xa0
/* 0174F4 800168F4 46809420 */  cvt.s.w $f16, $f18
/* 0174F8 800168F8 27A900A8 */  addiu $t1, $sp, 0xa8
/* 0174FC 800168FC E7B000A4 */  swc1  $f16, 0xa4($sp)
/* 017500 80016900 8E6C001C */  lw    $t4, 0x1c($s3)
/* 017504 80016904 8EAB0044 */  lw    $t3, 0x44($s5)
/* 017508 80016908 01926821 */  addu  $t5, $t4, $s2
/* 01750C 8001690C 85AF0000 */  lh    $t7, ($t5)
/* 017510 80016910 8FA600A4 */  lw    $a2, 0xa4($sp)
/* 017514 80016914 01F70019 */  multu $t7, $s7
/* 017518 80016918 0000C012 */  mflo  $t8
/* 01751C 8001691C 01784021 */  addu  $t0, $t3, $t8
/* 017520 80016920 850E0004 */  lh    $t6, 4($t0)
/* 017524 80016924 AFB90018 */  sw    $t9, 0x18($sp)
/* 017528 80016928 448E2000 */  mtc1  $t6, $f4
/* 01752C 8001692C AFAA0014 */  sw    $t2, 0x14($sp)
/* 017530 80016930 46802220 */  cvt.s.w $f8, $f4
/* 017534 80016934 AFA90010 */  sw    $t1, 0x10($sp)
/* 017538 80016938 E7A800A0 */  swc1  $f8, 0xa0($sp)
/* 01753C 8001693C 8FA700A0 */  lw    $a3, 0xa0($sp)
/* 017540 80016940 0C01BD93 */  jal   guMtxXFMF
/* 017544 80016944 00000000 */   nop   
/* 017548 80016948 8E6C001C */  lw    $t4, 0x1c($s3)
/* 01754C 8001694C 3C014280 */  li    $at, 0x42800000 # 64.000000
/* 017550 80016950 01926821 */  addu  $t5, $t4, $s2
/* 017554 80016954 85AF0002 */  lh    $t7, 2($t5)
/* 017558 80016958 44819000 */  mtc1  $at, $f18
/* 01755C 8001695C 448F3000 */  mtc1  $t7, $f6
/* 017560 80016960 C6A40008 */  lwc1  $f4, 8($s5)
/* 017564 80016964 468032A0 */  cvt.s.w $f10, $f6
/* 017568 80016968 00000000 */  nop   
/* 01756C 8001696C 46125403 */  div.s $f16, $f10, $f18
/* 017570 80016970 C7B200A8 */  lwc1  $f18, 0xa8($sp)
/* 017574 80016974 46048202 */  mul.s $f8, $f16, $f4
/* 017578 80016978 C610000C */  lwc1  $f16, 0xc($s0)
/* 01757C 8001697C 460041A1 */  cvt.d.s $f6, $f8
/* 017580 80016980 463E3282 */  mul.d $f10, $f6, $f30
/* 017584 80016984 46109101 */  sub.s $f4, $f18, $f16
/* 017588 80016988 C7A800A4 */  lwc1  $f8, 0xa4($sp)
/* 01758C 8001698C E7A400A8 */  swc1  $f4, 0xa8($sp)
/* 017590 80016990 C6060010 */  lwc1  $f6, 0x10($s0)
/* 017594 80016994 462055A0 */  cvt.s.d $f22, $f10
/* 017598 80016998 C7B200A0 */  lwc1  $f18, 0xa0($sp)
/* 01759C 8001699C 46064281 */  sub.s $f10, $f8, $f6
/* 0175A0 800169A0 E7AA00A4 */  swc1  $f10, 0xa4($sp)
/* 0175A4 800169A4 46042182 */  mul.s $f6, $f4, $f4
/* 0175A8 800169A8 C6100014 */  lwc1  $f16, 0x14($s0)
/* 0175AC 800169AC 00000000 */  nop   
/* 0175B0 800169B0 46109201 */  sub.s $f8, $f18, $f16
/* 0175B4 800169B4 460A5482 */  mul.s $f18, $f10, $f10
/* 0175B8 800169B8 E7A800A0 */  swc1  $f8, 0xa0($sp)
/* 0175BC 800169BC 46084102 */  mul.s $f4, $f8, $f8
/* 0175C0 800169C0 46123400 */  add.s $f16, $f6, $f18
/* 0175C4 800169C4 0C0326B4 */  jal   sqrtf
/* 0175C8 800169C8 46048300 */   add.s $f12, $f16, $f4
/* 0175CC 800169CC 828B0010 */  lb    $t3, 0x10($s4)
/* 0175D0 800169D0 00000000 */  nop   
/* 0175D4 800169D4 448B5000 */  mtc1  $t3, $f10
/* 0175D8 800169D8 00000000 */  nop   
/* 0175DC 800169DC 468051A0 */  cvt.s.w $f6, $f10
/* 0175E0 800169E0 4606B580 */  add.s $f22, $f22, $f6
/* 0175E4 800169E4 4616003C */  c.lt.s $f0, $f22
/* 0175E8 800169E8 00000000 */  nop   
/* 0175EC 800169EC 45000058 */  bc1f  .L80016B50
/* 0175F0 800169F0 00000000 */   nop   
/* 0175F4 800169F4 4600C03C */  c.lt.s $f24, $f0
/* 0175F8 800169F8 00000000 */  nop   
/* 0175FC 800169FC 45000054 */  bc1f  .L80016B50
/* 017600 80016A00 00000000 */   nop   
/* 017604 80016A04 4600B481 */  sub.s $f18, $f22, $f0
/* 017608 80016A08 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 01760C 80016A0C 46009503 */  div.s $f20, $f18, $f0
/* 017610 80016A10 86D80014 */  lh    $t8, 0x14($s6)
/* 017614 80016A14 44814000 */  mtc1  $at, $f8
/* 017618 80016A18 37080008 */  ori   $t0, $t8, 8
/* 01761C 80016A1C A6C80014 */  sh    $t0, 0x14($s6)
/* 017620 80016A20 868E0014 */  lh    $t6, 0x14($s4)
/* 017624 80016A24 24010001 */  li    $at, 1
/* 017628 80016A28 35C90008 */  ori   $t1, $t6, 8
/* 01762C 80016A2C A6890014 */  sh    $t1, 0x14($s4)
/* 017630 80016A30 AED50000 */  sw    $s5, ($s6)
/* 017634 80016A34 AE900000 */  sw    $s0, ($s4)
/* 017638 80016A38 A2C00013 */  sb    $zero, 0x13($s6)
/* 01763C 80016A3C 4608A503 */  div.s $f20, $f20, $f8
/* 017640 80016A40 A2800013 */  sb    $zero, 0x13($s4)
/* 017644 80016A44 C7B000A8 */  lwc1  $f16, 0xa8($sp)
/* 017648 80016A48 C7AA00A4 */  lwc1  $f10, 0xa4($sp)
/* 01764C 80016A4C C7B200A0 */  lwc1  $f18, 0xa0($sp)
/* 017650 80016A50 46148102 */  mul.s $f4, $f16, $f20
/* 017654 80016A54 00000000 */  nop   
/* 017658 80016A58 46145182 */  mul.s $f6, $f10, $f20
/* 01765C 80016A5C E7A400A8 */  swc1  $f4, 0xa8($sp)
/* 017660 80016A60 46149202 */  mul.s $f8, $f18, $f20
/* 017664 80016A64 E7A600A4 */  swc1  $f6, 0xa4($sp)
/* 017668 80016A68 E7A800A0 */  swc1  $f8, 0xa0($sp)
/* 01766C 80016A6C C610000C */  lwc1  $f16, 0xc($s0)
/* 017670 80016A70 C6060010 */  lwc1  $f6, 0x10($s0)
/* 017674 80016A74 46048281 */  sub.s $f10, $f16, $f4
/* 017678 80016A78 C6100014 */  lwc1  $f16, 0x14($s0)
/* 01767C 80016A7C E60A000C */  swc1  $f10, 0xc($s0)
/* 017680 80016A80 C7B200A4 */  lwc1  $f18, 0xa4($sp)
/* 017684 80016A84 860A0048 */  lh    $t2, 0x48($s0)
/* 017688 80016A88 46123201 */  sub.s $f8, $f6, $f18
/* 01768C 80016A8C E6080010 */  swc1  $f8, 0x10($s0)
/* 017690 80016A90 C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* 017694 80016A94 00000000 */  nop   
/* 017698 80016A98 46048281 */  sub.s $f10, $f16, $f4
/* 01769C 80016A9C 1541002C */  bne   $t2, $at, .L80016B50
/* 0176A0 80016AA0 E60A0014 */   swc1  $f10, 0x14($s0)
/* 0176A4 80016AA4 8E110064 */  lw    $s1, 0x64($s0)
/* 0176A8 80016AA8 00000000 */  nop   
/* 0176AC 80016AAC 823901D8 */  lb    $t9, 0x1d8($s1)
/* 0176B0 80016AB0 00000000 */  nop   
/* 0176B4 80016AB4 17200004 */  bnez  $t9, .L80016AC8
/* 0176B8 80016AB8 00000000 */   nop   
/* 0176BC 80016ABC 86240000 */  lh    $a0, ($s1)
/* 0176C0 80016AC0 0C01C8D2 */  jal   func_80072348
/* 0176C4 80016AC4 24050012 */   li    $a1, 18
.L80016AC8:
/* 0176C8 80016AC8 822C01D6 */  lb    $t4, 0x1d6($s1)
/* 0176CC 80016ACC 24010001 */  li    $at, 1
/* 0176D0 80016AD0 1581000F */  bne   $t4, $at, .L80016B10
/* 0176D4 80016AD4 00000000 */   nop   
/* 0176D8 80016AD8 4600A1A1 */  cvt.d.s $f6, $f20
/* 0176DC 80016ADC 4626D03C */  c.lt.d $f26, $f6
/* 0176E0 80016AE0 C7A800A8 */  lwc1  $f8, 0xa8($sp)
/* 0176E4 80016AE4 4500001A */  bc1f  .L80016B50
/* 0176E8 80016AE8 00000000 */   nop   
/* 0176EC 80016AEC C612001C */  lwc1  $f18, 0x1c($s0)
/* 0176F0 80016AF0 C6040024 */  lwc1  $f4, 0x24($s0)
/* 0176F4 80016AF4 46089401 */  sub.s $f16, $f18, $f8
/* 0176F8 80016AF8 E610001C */  swc1  $f16, 0x1c($s0)
/* 0176FC 80016AFC C7AA00A0 */  lwc1  $f10, 0xa0($sp)
/* 017700 80016B00 00000000 */  nop   
/* 017704 80016B04 460A2181 */  sub.s $f6, $f4, $f10
/* 017708 80016B08 10000011 */  b     .L80016B50
/* 01770C 80016B0C E6060024 */   swc1  $f6, 0x24($s0)
.L80016B10:
/* 017710 80016B10 4600A4A1 */  cvt.d.s $f18, $f20
/* 017714 80016B14 4632E03C */  c.lt.d $f28, $f18
/* 017718 80016B18 C7B000A8 */  lwc1  $f16, 0xa8($sp)
/* 01771C 80016B1C 4500000C */  bc1f  .L80016B50
/* 017720 80016B20 3C014080 */   li    $at, 0x40800000 # 4.000000
/* 017724 80016B24 C608001C */  lwc1  $f8, 0x1c($s0)
/* 017728 80016B28 C60A0024 */  lwc1  $f10, 0x24($s0)
/* 01772C 80016B2C 46104101 */  sub.s $f4, $f8, $f16
/* 017730 80016B30 44814000 */  mtc1  $at, $f8
/* 017734 80016B34 E604001C */  swc1  $f4, 0x1c($s0)
/* 017738 80016B38 C7A600A0 */  lwc1  $f6, 0xa0($sp)
/* 01773C 80016B3C 4608A402 */  mul.s $f16, $f20, $f8
/* 017740 80016B40 46065481 */  sub.s $f18, $f10, $f6
/* 017744 80016B44 E6120024 */  swc1  $f18, 0x24($s0)
/* 017748 80016B48 E630002C */  swc1  $f16, 0x2c($s1)
/* 01774C 80016B4C E6380030 */  swc1  $f24, 0x30($s1)
.L80016B50:
/* 017750 80016B50 866D0020 */  lh    $t5, 0x20($s3)
/* 017754 80016B54 27DE0002 */  addiu $fp, $fp, 2
/* 017758 80016B58 03CD082A */  slt   $at, $fp, $t5
/* 01775C 80016B5C 1420FF4B */  bnez  $at, .L8001688C
/* 017760 80016B60 26520004 */   addiu $s2, $s2, 4
.L80016B64:
/* 017764 80016B64 8FBF007C */  lw    $ra, 0x7c($sp)
.L80016B68:
/* 017768 80016B68 C7B50028 */  lwc1  $f21, 0x28($sp)
/* 01776C 80016B6C C7B4002C */  lwc1  $f20, 0x2c($sp)
/* 017770 80016B70 C7B70030 */  lwc1  $f23, 0x30($sp)
/* 017774 80016B74 C7B60034 */  lwc1  $f22, 0x34($sp)
/* 017778 80016B78 C7B90038 */  lwc1  $f25, 0x38($sp)
/* 01777C 80016B7C C7B8003C */  lwc1  $f24, 0x3c($sp)
/* 017780 80016B80 C7BB0040 */  lwc1  $f27, 0x40($sp)
/* 017784 80016B84 C7BA0044 */  lwc1  $f26, 0x44($sp)
/* 017788 80016B88 C7BD0048 */  lwc1  $f29, 0x48($sp)
/* 01778C 80016B8C C7BC004C */  lwc1  $f28, 0x4c($sp)
/* 017790 80016B90 C7BF0050 */  lwc1  $f31, 0x50($sp)
/* 017794 80016B94 C7BE0054 */  lwc1  $f30, 0x54($sp)
/* 017798 80016B98 8FB00058 */  lw    $s0, 0x58($sp)
/* 01779C 80016B9C 8FB1005C */  lw    $s1, 0x5c($sp)
/* 0177A0 80016BA0 8FB20060 */  lw    $s2, 0x60($sp)
/* 0177A4 80016BA4 8FB30064 */  lw    $s3, 0x64($sp)
/* 0177A8 80016BA8 8FB40068 */  lw    $s4, 0x68($sp)
/* 0177AC 80016BAC 8FB5006C */  lw    $s5, 0x6c($sp)
/* 0177B0 80016BB0 8FB60070 */  lw    $s6, 0x70($sp)
/* 0177B4 80016BB4 8FB70074 */  lw    $s7, 0x74($sp)
/* 0177B8 80016BB8 8FBE0078 */  lw    $fp, 0x78($sp)
/* 0177BC 80016BBC 03E00008 */  jr    $ra
/* 0177C0 80016BC0 27BD00F0 */   addiu $sp, $sp, 0xf0

