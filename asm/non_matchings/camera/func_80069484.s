glabel func_80069484
/* 06A084 80069484 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 06A088 80069488 AFA40050 */  sw    $a0, 0x50($sp)
/* 06A08C 8006948C AFBF002C */  sw    $ra, 0x2c($sp)
/* 06A090 80069490 AFA50054 */  sw    $a1, 0x54($sp)
/* 06A094 80069494 3C048012 */  lui   $a0, %hi(D_80121060) # $a0, 0x8012
/* 06A098 80069498 E7B50020 */  swc1  $f21, 0x20($sp)
/* 06A09C 8006949C E7B40024 */  swc1  $f20, 0x24($sp)
/* 06A0A0 800694A0 AFA60058 */  sw    $a2, 0x58($sp)
/* 06A0A4 800694A4 AFA7005C */  sw    $a3, 0x5c($sp)
/* 06A0A8 800694A8 24841060 */  addiu $a0, %lo(D_80121060) # addiu $a0, $a0, 0x1060
/* 06A0AC 800694AC 0C01BF0C */  jal   func_8006FC30
/* 06A0B0 800694B0 00C02825 */   move  $a1, $a2
/* 06A0B4 800694B4 C7A00060 */  lwc1  $f0, 0x60($sp)
/* 06A0B8 800694B8 4480A000 */  mtc1  $zero, $f20
/* 06A0BC 800694BC 3C048012 */  lui   $a0, %hi(D_80121060) # $a0, 0x8012
/* 06A0C0 800694C0 46140032 */  c.eq.s $f0, $f20
/* 06A0C4 800694C4 00000000 */  nop   
/* 06A0C8 800694C8 45010005 */  bc1t  .L800694E0
/* 06A0CC 800694CC 3C013F80 */   lui   $at, 0x3f80
/* 06A0D0 800694D0 44050000 */  mfc1  $a1, $f0
/* 06A0D4 800694D4 0C01BF8C */  jal   func_8006FE30
/* 06A0D8 800694D8 24841060 */   addiu $a0, %lo(D_80121060) # addiu $a0, $a0, 0x1060
/* 06A0DC 800694DC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
.L800694E0:
/* 06A0E0 800694E0 C7A0005C */  lwc1  $f0, 0x5c($sp)
/* 06A0E4 800694E4 44812000 */  mtc1  $at, $f4
/* 06A0E8 800694E8 3C048012 */  lui   $a0, %hi(D_80121060) # $a0, 0x8012
/* 06A0EC 800694EC 46040032 */  c.eq.s $f0, $f4
/* 06A0F0 800694F0 00000000 */  nop   
/* 06A0F4 800694F4 45010004 */  bc1t  .L80069508
/* 06A0F8 800694F8 00000000 */   nop   
/* 06A0FC 800694FC 44050000 */  mfc1  $a1, $f0
/* 06A100 80069500 0C01BF81 */  jal   func_8006FE04
/* 06A104 80069504 24841060 */   addiu $a0, %lo(D_80121060) # addiu $a0, $a0, 0x1060
.L80069508:
/* 06A108 80069508 3C0E8012 */  lui   $t6, %hi(D_80120D1C) # $t6, 0x8012
/* 06A10C 8006950C 8DCE0D1C */  lw    $t6, %lo(D_80120D1C)($t6)
/* 06A110 80069510 3C188012 */  lui   $t8, %hi(D_80120D70) # $t8, 0x8012
/* 06A114 80069514 27180D70 */  addiu $t8, %lo(D_80120D70) # addiu $t8, $t8, 0xd70
/* 06A118 80069518 000E7880 */  sll   $t7, $t6, 2
/* 06A11C 8006951C 01F81021 */  addu  $v0, $t7, $t8
/* 06A120 80069520 8C450000 */  lw    $a1, ($v0)
/* 06A124 80069524 8C460004 */  lw    $a2, 4($v0)
/* 06A128 80069528 3C048012 */  lui   $a0, %hi(D_80121060) # $a0, 0x8012
/* 06A12C 8006952C 0C01BDDA */  jal   func_8006F768
/* 06A130 80069530 24841060 */   addiu $a0, %lo(D_80121060) # addiu $a0, $a0, 0x1060
/* 06A134 80069534 3C088012 */  lui   $t0, %hi(D_80120D1C) # $t0, 0x8012
/* 06A138 80069538 25080D1C */  addiu $t0, %lo(D_80120D1C) # addiu $t0, $t0, 0xd1c
/* 06A13C 8006953C 8D190000 */  lw    $t9, ($t0)
/* 06A140 80069540 3C048012 */  lui   $a0, %hi(D_80120D70+4) # $a0, 0x8012
/* 06A144 80069544 00195880 */  sll   $t3, $t9, 2
/* 06A148 80069548 008B2021 */  addu  $a0, $a0, $t3
/* 06A14C 8006954C 8C840D74 */  lw    $a0, %lo(D_80120D70+4)($a0)
/* 06A150 80069550 3C058012 */  lui   $a1, %hi(D_80120F20) # $a1, 0x8012
/* 06A154 80069554 3C068012 */  lui   $a2, %hi(D_801210A0) # $a2, 0x8012
/* 06A158 80069558 24C610A0 */  addiu $a2, %lo(D_801210A0) # addiu $a2, $a2, 0x10a0
/* 06A15C 8006955C 0C01BDDA */  jal   func_8006F768
/* 06A160 80069560 24A50F20 */   addiu $a1, %lo(D_80120F20) # addiu $a1, $a1, 0xf20
/* 06A164 80069564 8FAC0054 */  lw    $t4, 0x54($sp)
/* 06A168 80069568 3C048012 */  lui   $a0, %hi(D_801210A0) # $a0, 0x8012
/* 06A16C 8006956C 8D850000 */  lw    $a1, ($t4)
/* 06A170 80069570 0C01BE1C */  jal   func_8006F870
/* 06A174 80069574 248410A0 */   addiu $a0, %lo(D_801210A0) # addiu $a0, $a0, 0x10a0
/* 06A178 80069578 3C088012 */  lui   $t0, %hi(D_80120D1C) # $t0, 0x8012
/* 06A17C 8006957C 25080D1C */  addiu $t0, %lo(D_80120D1C) # addiu $t0, $t0, 0xd1c
/* 06A180 80069580 8D0D0000 */  lw    $t5, ($t0)
/* 06A184 80069584 8FA90054 */  lw    $t1, 0x54($sp)
/* 06A188 80069588 25AE0001 */  addiu $t6, $t5, 1
/* 06A18C 8006958C AD0E0000 */  sw    $t6, ($t0)
/* 06A190 80069590 8D2F0000 */  lw    $t7, ($t1)
/* 06A194 80069594 000EC080 */  sll   $t8, $t6, 2
/* 06A198 80069598 3C018012 */  lui   $at, %hi(D_80120D88) # $at, 0x8012
/* 06A19C 8006959C 8FAA0050 */  lw    $t2, 0x50($sp)
/* 06A1A0 800695A0 00380821 */  addu  $at, $at, $t8
/* 06A1A4 800695A4 AC2F0D88 */  sw    $t7, %lo(D_80120D88)($at)
/* 06A1A8 800695A8 8D430000 */  lw    $v1, ($t2)
/* 06A1AC 800695AC 3C0B0140 */  lui   $t3, (0x01400040 >> 16) # lui $t3, 0x140
/* 06A1B0 800695B0 24790008 */  addiu $t9, $v1, 8
/* 06A1B4 800695B4 356B0040 */  ori   $t3, (0x01400040 & 0xFFFF) # ori $t3, $t3, 0x40
/* 06A1B8 800695B8 AD590000 */  sw    $t9, ($t2)
/* 06A1BC 800695BC AC6B0000 */  sw    $t3, ($v1)
/* 06A1C0 800695C0 8D2C0000 */  lw    $t4, ($t1)
/* 06A1C4 800695C4 3C018000 */  lui   $at, 0x8000
/* 06A1C8 800695C8 01816821 */  addu  $t5, $t4, $at
/* 06A1CC 800695CC AC6D0004 */  sw    $t5, 4($v1)
/* 06A1D0 800695D0 8D2E0000 */  lw    $t6, ($t1)
/* 06A1D4 800695D4 3C048012 */  lui   $a0, %hi(D_80120D70) # $a0, 0x8012
/* 06A1D8 800695D8 25CF0040 */  addiu $t7, $t6, 0x40
/* 06A1DC 800695DC AD2F0000 */  sw    $t7, ($t1)
/* 06A1E0 800695E0 8D180000 */  lw    $t8, ($t0)
/* 06A1E4 800695E4 27AD0044 */  addiu $t5, $sp, 0x44
/* 06A1E8 800695E8 0018C880 */  sll   $t9, $t8, 2
/* 06A1EC 800695EC 00992021 */  addu  $a0, $a0, $t9
/* 06A1F0 800695F0 8C840D70 */  lw    $a0, %lo(D_80120D70)($a0)
/* 06A1F4 800695F4 27AC0048 */  addiu $t4, $sp, 0x48
/* 06A1F8 800695F8 27AB004C */  addiu $t3, $sp, 0x4c
/* 06A1FC 800695FC 4405A000 */  mfc1  $a1, $f20
/* 06A200 80069600 4406A000 */  mfc1  $a2, $f20
/* 06A204 80069604 4407A000 */  mfc1  $a3, $f20
/* 06A208 80069608 AFAB0010 */  sw    $t3, 0x10($sp)
/* 06A20C 8006960C AFAC0014 */  sw    $t4, 0x14($sp)
/* 06A210 80069610 0C01BD93 */  jal   guMtxXFMF
/* 06A214 80069614 AFAD0018 */   sw    $t5, 0x18($sp)
/* 06A218 80069618 3C0E8012 */  lui   $t6, %hi(D_80120D14) # $t6, 0x8012
/* 06A21C 8006961C 81CE0D14 */  lb    $t6, %lo(D_80120D14)($t6)
/* 06A220 80069620 3C038012 */  lui   $v1, %hi(D_80120CE4) # $v1, 0x8012
/* 06A224 80069624 8C630CE4 */  lw    $v1, %lo(D_80120CE4)($v1)
/* 06A228 80069628 11C00002 */  beqz  $t6, .L80069634
/* 06A22C 8006962C 3C058012 */   lui   $a1, %hi(D_80120CF0) # $a1, 0x8012
/* 06A230 80069630 24630004 */  addiu $v1, $v1, 4
.L80069634:
/* 06A234 80069634 00037900 */  sll   $t7, $v1, 4
/* 06A238 80069638 01E37821 */  addu  $t7, $t7, $v1
/* 06A23C 8006963C 3C188012 */  lui   $t8, %hi(D_80120AC0) # $t8, 0x8012
/* 06A240 80069640 27180AC0 */  addiu $t8, %lo(D_80120AC0) # addiu $t8, $t8, 0xac0
/* 06A244 80069644 000F7880 */  sll   $t7, $t7, 2
/* 06A248 80069648 01F81021 */  addu  $v0, $t7, $t8
/* 06A24C 8006964C C446000C */  lwc1  $f6, 0xc($v0)
/* 06A250 80069650 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 06A254 80069654 C4500010 */  lwc1  $f16, 0x10($v0)
/* 06A258 80069658 46083281 */  sub.s $f10, $f6, $f8
/* 06A25C 8006965C C7B20048 */  lwc1  $f18, 0x48($sp)
/* 06A260 80069660 C7A80044 */  lwc1  $f8, 0x44($sp)
/* 06A264 80069664 C4460014 */  lwc1  $f6, 0x14($v0)
/* 06A268 80069668 E7AA004C */  swc1  $f10, 0x4c($sp)
/* 06A26C 8006966C 46128101 */  sub.s $f4, $f16, $f18
/* 06A270 80069670 8FA60058 */  lw    $a2, 0x58($sp)
/* 06A274 80069674 46083281 */  sub.s $f10, $f6, $f8
/* 06A278 80069678 E7A40048 */  swc1  $f4, 0x48($sp)
/* 06A27C 8006967C E7AA0044 */  swc1  $f10, 0x44($sp)
/* 06A280 80069680 84D90000 */  lh    $t9, ($a2)
/* 06A284 80069684 24A50CF0 */  addiu $a1, %lo(D_80120CF0) # addiu $a1, $a1, 0xcf0
/* 06A288 80069688 00195823 */  negu  $t3, $t9
/* 06A28C 8006968C A4AB0000 */  sh    $t3, ($a1)
/* 06A290 80069690 84CC0002 */  lh    $t4, 2($a2)
/* 06A294 80069694 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 06A298 80069698 000C6823 */  negu  $t5, $t4
/* 06A29C 8006969C A4AD0002 */  sh    $t5, 2($a1)
/* 06A2A0 800696A0 84CE0004 */  lh    $t6, 4($a2)
/* 06A2A4 800696A4 44818000 */  mtc1  $at, $f16
/* 06A2A8 800696A8 3C048012 */  lui   $a0, %hi(D_80121060) # $a0, 0x8012
/* 06A2AC 800696AC 000E7823 */  negu  $t7, $t6
/* 06A2B0 800696B0 A4AF0004 */  sh    $t7, 4($a1)
/* 06A2B4 800696B4 E4B4000C */  swc1  $f20, 0xc($a1)
/* 06A2B8 800696B8 E4B40010 */  swc1  $f20, 0x10($a1)
/* 06A2BC 800696BC E4B40014 */  swc1  $f20, 0x14($a1)
/* 06A2C0 800696C0 24841060 */  addiu $a0, %lo(D_80121060) # addiu $a0, $a0, 0x1060
/* 06A2C4 800696C4 0C01BF9D */  jal   func_8006FE74
/* 06A2C8 800696C8 E4B00008 */   swc1  $f16, 8($a1)
/* 06A2CC 800696CC 3C048012 */  lui   $a0, %hi(D_80121060) # $a0, 0x8012
/* 06A2D0 800696D0 8FA5004C */  lw    $a1, 0x4c($sp)
/* 06A2D4 800696D4 8FA60048 */  lw    $a2, 0x48($sp)
/* 06A2D8 800696D8 8FA70044 */  lw    $a3, 0x44($sp)
/* 06A2DC 800696DC 27B8004C */  addiu $t8, $sp, 0x4c
/* 06A2E0 800696E0 27B90048 */  addiu $t9, $sp, 0x48
/* 06A2E4 800696E4 27AB0044 */  addiu $t3, $sp, 0x44
/* 06A2E8 800696E8 AFAB0018 */  sw    $t3, 0x18($sp)
/* 06A2EC 800696EC AFB90014 */  sw    $t9, 0x14($sp)
/* 06A2F0 800696F0 AFB80010 */  sw    $t8, 0x10($sp)
/* 06A2F4 800696F4 0C01BD93 */  jal   guMtxXFMF
/* 06A2F8 800696F8 24841060 */   addiu $a0, %lo(D_80121060) # addiu $a0, $a0, 0x1060
/* 06A2FC 800696FC 8FAC0058 */  lw    $t4, 0x58($sp)
/* 06A300 80069700 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 06A304 80069704 44819000 */  mtc1  $at, $f18
/* 06A308 80069708 C5840008 */  lwc1  $f4, 8($t4)
/* 06A30C 8006970C C7A6004C */  lwc1  $f6, 0x4c($sp)
/* 06A310 80069710 46049003 */  div.s $f0, $f18, $f4
/* 06A314 80069714 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* 06A318 80069718 3C048012 */  lui   $a0, %hi(D_80120D20) # $a0, 0x8012
/* 06A31C 8006971C 24840D20 */  addiu $a0, %lo(D_80120D20) # addiu $a0, $a0, 0xd20
/* 06A320 80069720 8C8D0000 */  lw    $t5, ($a0)
/* 06A324 80069724 C7B20044 */  lwc1  $f18, 0x44($sp)
/* 06A328 80069728 25AE0001 */  addiu $t6, $t5, 1
/* 06A32C 8006972C 000E1080 */  sll   $v0, $t6, 2
/* 06A330 80069730 3C018012 */  lui   $at, %hi(D_80120D28) # $at, 0x8012
/* 06A334 80069734 AC8E0000 */  sw    $t6, ($a0)
/* 06A338 80069738 00220821 */  addu  $at, $at, $v0
/* 06A33C 8006973C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 06A340 80069740 46003202 */  mul.s $f8, $f6, $f0
/* 06A344 80069744 C7B40024 */  lwc1  $f20, 0x24($sp)
/* 06A348 80069748 C7B50020 */  lwc1  $f21, 0x20($sp)
/* 06A34C 8006974C 46005402 */  mul.s $f16, $f10, $f0
/* 06A350 80069750 E7A8004C */  swc1  $f8, 0x4c($sp)
/* 06A354 80069754 C7A6004C */  lwc1  $f6, 0x4c($sp)
/* 06A358 80069758 46009102 */  mul.s $f4, $f18, $f0
/* 06A35C 8006975C E7B00048 */  swc1  $f16, 0x48($sp)
/* 06A360 80069760 E4260D28 */  swc1  $f6, %lo(D_80120D28)($at)
/* 06A364 80069764 C7A80048 */  lwc1  $f8, 0x48($sp)
/* 06A368 80069768 3C018012 */  lui   $at, %hi(D_80120D40) # $at, 0x8012
/* 06A36C 8006976C 00220821 */  addu  $at, $at, $v0
/* 06A370 80069770 E7A40044 */  swc1  $f4, 0x44($sp)
/* 06A374 80069774 E4280D40 */  swc1  $f8, %lo(D_80120D40)($at)
/* 06A378 80069778 C7AA0044 */  lwc1  $f10, 0x44($sp)
/* 06A37C 8006977C 3C018012 */  lui   $at, %hi(perspNorm) # $at, 0x8012
/* 06A380 80069780 00220821 */  addu  $at, $at, $v0
/* 06A384 80069784 27BD0050 */  addiu $sp, $sp, 0x50
/* 06A388 80069788 03E00008 */  jr    $ra
/* 06A38C 8006978C E42A0D58 */   swc1  $f10, %lo(perspNorm)($at)

