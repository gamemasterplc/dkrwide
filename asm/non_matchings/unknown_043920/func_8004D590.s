glabel func_8004D590
/* 04E190 8004D590 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 04E194 8004D594 3C028012 */  lui   $v0, %hi(D_8011D540) # $v0, 0x8012
/* 04E198 8004D598 44810000 */  mtc1  $at, $f0
/* 04E19C 8004D59C 8C42D540 */  lw    $v0, %lo(D_8011D540)($v0)
/* 04E1A0 8004D5A0 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 04E1A4 8004D5A4 2841003D */  slti  $at, $v0, 0x3d
/* 04E1A8 8004D5A8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04E1AC 8004D5AC AFB00028 */  sw    $s0, 0x28($sp)
/* 04E1B0 8004D5B0 E7AC00A8 */  swc1  $f12, 0xa8($sp)
/* 04E1B4 8004D5B4 AFA500AC */  sw    $a1, 0xac($sp)
/* 04E1B8 8004D5B8 14200009 */  bnez  $at, .L8004D5E0
/* 04E1BC 8004D5BC 46000386 */   mov.s $f14, $f0
/* 04E1C0 8004D5C0 244EFFC4 */  addiu $t6, $v0, -0x3c
/* 04E1C4 8004D5C4 448E2000 */  mtc1  $t6, $f4
/* 04E1C8 8004D5C8 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 04E1CC 8004D5CC 468021A0 */  cvt.s.w $f6, $f4
/* 04E1D0 8004D5D0 44814000 */  mtc1  $at, $f8
/* 04E1D4 8004D5D4 00000000 */  nop   
/* 04E1D8 8004D5D8 46083282 */  mul.s $f10, $f6, $f8
/* 04E1DC 8004D5DC 460A0380 */  add.s $f14, $f0, $f10
.L8004D5E0:
/* 04E1E0 8004D5E0 84CF01A0 */  lh    $t7, 0x1a0($a2)
/* 04E1E4 8004D5E4 34188000 */  li    $t8, 32768
/* 04E1E8 8004D5E8 030FC823 */  subu  $t9, $t8, $t7
/* 04E1EC 8004D5EC A4D90196 */  sh    $t9, 0x196($a2)
/* 04E1F0 8004D5F0 E7AE0094 */  swc1  $f14, 0x94($sp)
/* 04E1F4 8004D5F4 0C019884 */  jal   get_viewport_count
/* 04E1F8 8004D5F8 AFA600B0 */   sw    $a2, 0xb0($sp)
/* 04E1FC 8004D5FC 24040001 */  li    $a0, 1
/* 04E200 8004D600 C7AE0094 */  lwc1  $f14, 0x94($sp)
/* 04E204 8004D604 14440004 */  bne   $v0, $a0, .L8004D618
/* 04E208 8004D608 3C108012 */   lui   $s0, %hi(gCameraObject) # $s0, 0x8012
/* 04E20C 8004D60C 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 04E210 8004D610 44817000 */  mtc1  $at, $f14
/* 04E214 8004D614 00000000 */  nop   
.L8004D618:
/* 04E218 8004D618 2610D508 */  addiu $s0, %lo(gCameraObject) # addiu $s0, $s0, -0x2af8
/* 04E21C 8004D61C 8E020000 */  lw    $v0, ($s0)
/* 04E220 8004D620 44804000 */  mtc1  $zero, $f8
/* 04E224 8004D624 9043003B */  lbu   $v1, 0x3b($v0)
/* 04E228 8004D628 00000000 */  nop   
/* 04E22C 8004D62C 14830004 */  bne   $a0, $v1, .L8004D640
/* 04E230 8004D630 3C01420C */   li    $at, 0x420C0000 # 35.000000
/* 04E234 8004D634 44818000 */  mtc1  $at, $f16
/* 04E238 8004D638 00000000 */  nop   
/* 04E23C 8004D63C 46107380 */  add.s $f14, $f14, $f16
.L8004D640:
/* 04E240 8004D640 14830004 */  bne   $a0, $v1, .L8004D654
/* 04E244 8004D644 3C01420C */   li    $at, 0x420C0000 # 35.000000
/* 04E248 8004D648 44819000 */  mtc1  $at, $f18
/* 04E24C 8004D64C 00000000 */  nop   
/* 04E250 8004D650 46127381 */  sub.s $f14, $f14, $f18
.L8004D654:
/* 04E254 8004D654 C440001C */  lwc1  $f0, 0x1c($v0)
/* 04E258 8004D658 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 04E25C 8004D65C 46007101 */  sub.s $f4, $f14, $f0
/* 04E260 8004D660 44814800 */  mtc1  $at, $f9
/* 04E264 8004D664 460021A1 */  cvt.d.s $f6, $f4
/* 04E268 8004D668 46283282 */  mul.d $f10, $f6, $f8
/* 04E26C 8004D66C 46000421 */  cvt.d.s $f16, $f0
/* 04E270 8004D670 3C058012 */  lui   $a1, %hi(D_8011D510) # $a1, 0x8012
/* 04E274 8004D674 340A8000 */  li    $t2, 32768
/* 04E278 8004D678 24A5D510 */  addiu $a1, %lo(D_8011D510) # addiu $a1, $a1, -0x2af0
/* 04E27C 8004D67C 462A8480 */  add.d $f18, $f16, $f10
/* 04E280 8004D680 44801000 */  mtc1  $zero, $f2
/* 04E284 8004D684 46209120 */  cvt.s.d $f4, $f18
/* 04E288 8004D688 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 04E28C 8004D68C E444001C */  swc1  $f4, 0x1c($v0)
/* 04E290 8004D690 8E020000 */  lw    $v0, ($s0)
/* 04E294 8004D694 44813000 */  mtc1  $at, $f6
/* 04E298 8004D698 84490000 */  lh    $t1, ($v0)
/* 04E29C 8004D69C 27A40048 */  addiu $a0, $sp, 0x48
/* 04E2A0 8004D6A0 01495823 */  subu  $t3, $t2, $t1
/* 04E2A4 8004D6A4 A4AB0000 */  sh    $t3, ($a1)
/* 04E2A8 8004D6A8 844C0002 */  lh    $t4, 2($v0)
/* 04E2AC 8004D6AC A4A00004 */  sh    $zero, 4($a1)
/* 04E2B0 8004D6B0 000C6823 */  negu  $t5, $t4
/* 04E2B4 8004D6B4 A4AD0002 */  sh    $t5, 2($a1)
/* 04E2B8 8004D6B8 E4A2000C */  swc1  $f2, 0xc($a1)
/* 04E2BC 8004D6BC E4A20010 */  swc1  $f2, 0x10($a1)
/* 04E2C0 8004D6C0 E4A20014 */  swc1  $f2, 0x14($a1)
/* 04E2C4 8004D6C4 0C01BF0C */  jal   func_8006FC30
/* 04E2C8 8004D6C8 E4A60008 */   swc1  $f6, 8($a1)
/* 04E2CC 8004D6CC 8E0E0000 */  lw    $t6, ($s0)
/* 04E2D0 8004D6D0 44801000 */  mtc1  $zero, $f2
/* 04E2D4 8004D6D4 8DC7001C */  lw    $a3, 0x1c($t6)
/* 04E2D8 8004D6D8 27B80090 */  addiu $t8, $sp, 0x90
/* 04E2DC 8004D6DC 27AF008C */  addiu $t7, $sp, 0x8c
/* 04E2E0 8004D6E0 27B90088 */  addiu $t9, $sp, 0x88
/* 04E2E4 8004D6E4 44051000 */  mfc1  $a1, $f2
/* 04E2E8 8004D6E8 44061000 */  mfc1  $a2, $f2
/* 04E2EC 8004D6EC AFB90018 */  sw    $t9, 0x18($sp)
/* 04E2F0 8004D6F0 AFAF0014 */  sw    $t7, 0x14($sp)
/* 04E2F4 8004D6F4 AFB80010 */  sw    $t8, 0x10($sp)
/* 04E2F8 8004D6F8 0C01BD93 */  jal   guMtxXFMF
/* 04E2FC 8004D6FC 27A40048 */   addiu $a0, $sp, 0x48
/* 04E300 8004D700 8FA200AC */  lw    $v0, 0xac($sp)
/* 04E304 8004D704 C7B00090 */  lwc1  $f16, 0x90($sp)
/* 04E308 8004D708 C448000C */  lwc1  $f8, 0xc($v0)
/* 04E30C 8004D70C 8E0A0000 */  lw    $t2, ($s0)
/* 04E310 8004D710 46104280 */  add.s $f10, $f8, $f16
/* 04E314 8004D714 24040800 */  li    $a0, 2048
/* 04E318 8004D718 E54A000C */  swc1  $f10, 0xc($t2)
/* 04E31C 8004D71C C7A4008C */  lwc1  $f4, 0x8c($sp)
/* 04E320 8004D720 C4520010 */  lwc1  $f18, 0x10($v0)
/* 04E324 8004D724 8E090000 */  lw    $t1, ($s0)
/* 04E328 8004D728 46049180 */  add.s $f6, $f18, $f4
/* 04E32C 8004D72C E5260010 */  swc1  $f6, 0x10($t1)
/* 04E330 8004D730 C7B00088 */  lwc1  $f16, 0x88($sp)
/* 04E334 8004D734 C4480014 */  lwc1  $f8, 0x14($v0)
/* 04E338 8004D738 8E0B0000 */  lw    $t3, ($s0)
/* 04E33C 8004D73C 46104280 */  add.s $f10, $f8, $f16
/* 04E340 8004D740 0C01C1F1 */  jal   func_800707C4
/* 04E344 8004D744 E56A0014 */   swc1  $f10, 0x14($t3)
/* 04E348 8004D748 8E0C0000 */  lw    $t4, ($s0)
/* 04E34C 8004D74C 44801000 */  mtc1  $zero, $f2
/* 04E350 8004D750 C592001C */  lwc1  $f18, 0x1c($t4)
/* 04E354 8004D754 27AD0090 */  addiu $t5, $sp, 0x90
/* 04E358 8004D758 46120102 */  mul.s $f4, $f0, $f18
/* 04E35C 8004D75C 27AE008C */  addiu $t6, $sp, 0x8c
/* 04E360 8004D760 27B80088 */  addiu $t8, $sp, 0x88
/* 04E364 8004D764 44051000 */  mfc1  $a1, $f2
/* 04E368 8004D768 44062000 */  mfc1  $a2, $f4
/* 04E36C 8004D76C 44071000 */  mfc1  $a3, $f2
/* 04E370 8004D770 AFB80018 */  sw    $t8, 0x18($sp)
/* 04E374 8004D774 AFAE0014 */  sw    $t6, 0x14($sp)
/* 04E378 8004D778 AFAD0010 */  sw    $t5, 0x10($sp)
/* 04E37C 8004D77C 0C01BD93 */  jal   guMtxXFMF
/* 04E380 8004D780 27A40048 */   addiu $a0, $sp, 0x48
/* 04E384 8004D784 8E020000 */  lw    $v0, ($s0)
/* 04E388 8004D788 C7A80090 */  lwc1  $f8, 0x90($sp)
/* 04E38C 8004D78C C446000C */  lwc1  $f6, 0xc($v0)
/* 04E390 8004D790 34088001 */  li    $t0, 32769
/* 04E394 8004D794 46083400 */  add.s $f16, $f6, $f8
/* 04E398 8004D798 E450000C */  swc1  $f16, 0xc($v0)
/* 04E39C 8004D79C 8E020000 */  lw    $v0, ($s0)
/* 04E3A0 8004D7A0 C7B2008C */  lwc1  $f18, 0x8c($sp)
/* 04E3A4 8004D7A4 C44A0010 */  lwc1  $f10, 0x10($v0)
/* 04E3A8 8004D7A8 00000000 */  nop   
/* 04E3AC 8004D7AC 46125100 */  add.s $f4, $f10, $f18
/* 04E3B0 8004D7B0 E4440010 */  swc1  $f4, 0x10($v0)
/* 04E3B4 8004D7B4 8E020000 */  lw    $v0, ($s0)
/* 04E3B8 8004D7B8 C7A80088 */  lwc1  $f8, 0x88($sp)
/* 04E3BC 8004D7BC C4460014 */  lwc1  $f6, 0x14($v0)
/* 04E3C0 8004D7C0 00000000 */  nop   
/* 04E3C4 8004D7C4 46083400 */  add.s $f16, $f6, $f8
/* 04E3C8 8004D7C8 E4500014 */  swc1  $f16, 0x14($v0)
/* 04E3CC 8004D7CC 8FAF00AC */  lw    $t7, 0xac($sp)
/* 04E3D0 8004D7D0 8E020000 */  lw    $v0, ($s0)
/* 04E3D4 8004D7D4 85E40004 */  lh    $a0, 4($t7)
/* 04E3D8 8004D7D8 84460004 */  lh    $a2, 4($v0)
/* 04E3DC 8004D7DC 00042023 */  negu  $a0, $a0
/* 04E3E0 8004D7E0 3099FFFF */  andi  $t9, $a0, 0xffff
/* 04E3E4 8004D7E4 30CAFFFF */  andi  $t2, $a2, 0xffff
/* 04E3E8 8004D7E8 032A1823 */  subu  $v1, $t9, $t2
/* 04E3EC 8004D7EC 0068082A */  slt   $at, $v1, $t0
/* 04E3F0 8004D7F0 14200003 */  bnez  $at, .L8004D800
/* 04E3F4 8004D7F4 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 04E3F8 8004D7F8 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 04E3FC 8004D7FC 00611821 */  addu  $v1, $v1, $at
.L8004D800:
/* 04E400 8004D800 28618000 */  slti  $at, $v1, -0x8000
/* 04E404 8004D804 10200002 */  beqz  $at, .L8004D810
/* 04E408 8004D808 3401FFFF */   li    $at, 65535
/* 04E40C 8004D80C 00611821 */  addu  $v1, $v1, $at
.L8004D810:
/* 04E410 8004D810 4449F800 */  cfc1  $t1, $31
/* 04E414 8004D814 C7AA00A8 */  lwc1  $f10, 0xa8($sp)
/* 04E418 8004D818 35210003 */  ori   $at, $t1, 3
/* 04E41C 8004D81C 38210002 */  xori  $at, $at, 2
/* 04E420 8004D820 44C1F800 */  ctc1  $at, $31
/* 04E424 8004D824 00000000 */  nop   
/* 04E428 8004D828 460054A4 */  cvt.w.s $f18, $f10
/* 04E42C 8004D82C 44059000 */  mfc1  $a1, $f18
/* 04E430 8004D830 44C9F800 */  ctc1  $t1, $31
/* 04E434 8004D834 00650019 */  multu $v1, $a1
/* 04E438 8004D838 00005812 */  mflo  $t3
/* 04E43C 8004D83C 000B6103 */  sra   $t4, $t3, 4
/* 04E440 8004D840 00CC6821 */  addu  $t5, $a2, $t4
/* 04E444 8004D844 A44D0004 */  sh    $t5, 4($v0)
/* 04E448 8004D848 8FAE00AC */  lw    $t6, 0xac($sp)
/* 04E44C 8004D84C 8E020000 */  lw    $v0, ($s0)
/* 04E450 8004D850 85C40002 */  lh    $a0, 2($t6)
/* 04E454 8004D854 84470002 */  lh    $a3, 2($v0)
/* 04E458 8004D858 00042023 */  negu  $a0, $a0
/* 04E45C 8004D85C 30F8FFFF */  andi  $t8, $a3, 0xffff
/* 04E460 8004D860 00981823 */  subu  $v1, $a0, $t8
/* 04E464 8004D864 0068082A */  slt   $at, $v1, $t0
/* 04E468 8004D868 14200003 */  bnez  $at, .L8004D878
/* 04E46C 8004D86C 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 04E470 8004D870 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 04E474 8004D874 00611821 */  addu  $v1, $v1, $at
.L8004D878:
/* 04E478 8004D878 28618000 */  slti  $at, $v1, -0x8000
/* 04E47C 8004D87C 10200002 */  beqz  $at, .L8004D888
/* 04E480 8004D880 3401FFFF */   li    $at, 65535
/* 04E484 8004D884 00611821 */  addu  $v1, $v1, $at
.L8004D888:
/* 04E488 8004D888 00650019 */  multu $v1, $a1
/* 04E48C 8004D88C 00007812 */  mflo  $t7
/* 04E490 8004D890 000FC903 */  sra   $t9, $t7, 4
/* 04E494 8004D894 00F95021 */  addu  $t2, $a3, $t9
/* 04E498 8004D898 A44A0002 */  sh    $t2, 2($v0)
/* 04E49C 8004D89C 8FA900B0 */  lw    $t1, 0xb0($sp)
/* 04E4A0 8004D8A0 8E0C0000 */  lw    $t4, ($s0)
/* 04E4A4 8004D8A4 852B0196 */  lh    $t3, 0x196($t1)
/* 04E4A8 8004D8A8 00000000 */  nop   
/* 04E4AC 8004D8AC A58B0000 */  sh    $t3, ($t4)
/* 04E4B0 8004D8B0 8E020000 */  lw    $v0, ($s0)
/* 04E4B4 8004D8B4 00000000 */  nop   
/* 04E4B8 8004D8B8 C44C000C */  lwc1  $f12, 0xc($v0)
/* 04E4BC 8004D8BC C44E0010 */  lwc1  $f14, 0x10($v0)
/* 04E4C0 8004D8C0 8C460014 */  lw    $a2, 0x14($v0)
/* 04E4C4 8004D8C4 0C00A7C6 */  jal   get_level_segment_index_from_position
/* 04E4C8 8004D8C8 00000000 */   nop   
/* 04E4CC 8004D8CC 2401FFFF */  li    $at, -1
/* 04E4D0 8004D8D0 10410004 */  beq   $v0, $at, .L8004D8E4
/* 04E4D4 8004D8D4 00000000 */   nop   
/* 04E4D8 8004D8D8 8E0D0000 */  lw    $t5, ($s0)
/* 04E4DC 8004D8DC 00000000 */  nop   
/* 04E4E0 8004D8E0 A5A20034 */  sh    $v0, 0x34($t5)
.L8004D8E4:
/* 04E4E4 8004D8E4 8E0E0000 */  lw    $t6, ($s0)
/* 04E4E8 8004D8E8 8FAF00B0 */  lw    $t7, 0xb0($sp)
/* 04E4EC 8004D8EC 85D80000 */  lh    $t8, ($t6)
/* 04E4F0 8004D8F0 00000000 */  nop   
/* 04E4F4 8004D8F4 A5F80196 */  sh    $t8, 0x196($t7)
/* 04E4F8 8004D8F8 8E020000 */  lw    $v0, ($s0)
/* 04E4FC 8004D8FC 00000000 */  nop   
/* 04E500 8004D900 C444000C */  lwc1  $f4, 0xc($v0)
/* 04E504 8004D904 C4460024 */  lwc1  $f6, 0x24($v0)
/* 04E508 8004D908 00000000 */  nop   
/* 04E50C 8004D90C 46062200 */  add.s $f8, $f4, $f6
/* 04E510 8004D910 E448000C */  swc1  $f8, 0xc($v0)
/* 04E514 8004D914 8E020000 */  lw    $v0, ($s0)
/* 04E518 8004D918 00000000 */  nop   
/* 04E51C 8004D91C C4500010 */  lwc1  $f16, 0x10($v0)
/* 04E520 8004D920 C44A0028 */  lwc1  $f10, 0x28($v0)
/* 04E524 8004D924 00000000 */  nop   
/* 04E528 8004D928 460A8480 */  add.s $f18, $f16, $f10
/* 04E52C 8004D92C E4520010 */  swc1  $f18, 0x10($v0)
/* 04E530 8004D930 8E020000 */  lw    $v0, ($s0)
/* 04E534 8004D934 00000000 */  nop   
/* 04E538 8004D938 C4440014 */  lwc1  $f4, 0x14($v0)
/* 04E53C 8004D93C C446002C */  lwc1  $f6, 0x2c($v0)
/* 04E540 8004D940 00000000 */  nop   
/* 04E544 8004D944 46062200 */  add.s $f8, $f4, $f6
/* 04E548 8004D948 E4480014 */  swc1  $f8, 0x14($v0)
/* 04E54C 8004D94C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04E550 8004D950 8FB00028 */  lw    $s0, 0x28($sp)
/* 04E554 8004D954 03E00008 */  jr    $ra
/* 04E558 8004D958 27BD00A8 */   addiu $sp, $sp, 0xa8

