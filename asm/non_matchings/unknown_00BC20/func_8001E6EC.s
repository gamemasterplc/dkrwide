glabel func_8001E6EC
/* 01F2EC 8001E6EC 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 01F2F0 8001E6F0 AFB00004 */  sw    $s0, 4($sp)
/* 01F2F4 8001E6F4 3C038012 */  lui   $v1, %hi(D_8011AE00) # $v1, 0x8012
/* 01F2F8 8001E6F8 8063AE00 */  lb    $v1, %lo(D_8011AE00)($v1)
/* 01F2FC 8001E6FC 00048600 */  sll   $s0, $a0, 0x18
/* 01F300 8001E700 00107603 */  sra   $t6, $s0, 0x18
/* 01F304 8001E704 01C08025 */  move  $s0, $t6
/* 01F308 8001E708 AFB2000C */  sw    $s2, 0xc($sp)
/* 01F30C 8001E70C AFB10008 */  sw    $s1, 8($sp)
/* 01F310 8001E710 AFA40010 */  sw    $a0, 0x10($sp)
/* 01F314 8001E714 1860005A */  blez  $v1, .L8001E880
/* 01F318 8001E718 00001025 */   move  $v0, $zero
/* 01F31C 8001E71C 3C058012 */  lui   $a1, %hi(D_8011ADD8) # $a1, 0x8012
/* 01F320 8001E720 3C128012 */  lui   $s2, %hi(D_8011AE74) # $s2, 0x8012
/* 01F324 8001E724 3C118012 */  lui   $s1, %hi(D_8011AE78) # $s1, 0x8012
/* 01F328 8001E728 3C0C8012 */  lui   $t4, %hi(D_8011AE7A) # $t4, 0x8012
/* 01F32C 8001E72C 258CAE7A */  addiu $t4, %lo(D_8011AE7A) # addiu $t4, $t4, -0x5186
/* 01F330 8001E730 2631AE78 */  addiu $s1, %lo(D_8011AE78) # addiu $s1, $s1, -0x5188
/* 01F334 8001E734 2652AE74 */  addiu $s2, %lo(D_8011AE74) # addiu $s2, $s2, -0x518c
/* 01F338 8001E738 24A5ADD8 */  addiu $a1, %lo(D_8011ADD8) # addiu $a1, $a1, -0x5228
/* 01F33C 8001E73C 240D0014 */  li    $t5, 20
.L8001E740:
/* 01F340 8001E740 8CA40000 */  lw    $a0, ($a1)
/* 01F344 8001E744 858F0000 */  lh    $t7, ($t4)
/* 01F348 8001E748 8C86003C */  lw    $a2, 0x3c($a0)
/* 01F34C 8001E74C 8C870064 */  lw    $a3, 0x64($a0)
/* 01F350 8001E750 80C80009 */  lb    $t0, 9($a2)
/* 01F354 8001E754 24420001 */  addiu $v0, $v0, 1
/* 01F358 8001E758 11E80003 */  beq   $t7, $t0, .L8001E768
/* 01F35C 8001E75C 00000000 */   nop   
/* 01F360 8001E760 15A80045 */  bne   $t5, $t0, .L8001E878
/* 01F364 8001E764 0043082A */   slt   $at, $v0, $v1
.L8001E768:
/* 01F368 8001E768 86290000 */  lh    $t1, ($s1)
/* 01F36C 8001E76C 00004025 */  move  $t0, $zero
/* 01F370 8001E770 19200014 */  blez  $t1, .L8001E7C4
/* 01F374 8001E774 00000000 */   nop   
/* 01F378 8001E778 8E4B0000 */  lw    $t3, ($s2)
/* 01F37C 8001E77C 80CA0008 */  lb    $t2, 8($a2)
/* 01F380 8001E780 8D780000 */  lw    $t8, ($t3)
/* 01F384 8001E784 00000000 */  nop   
/* 01F388 8001E788 8F19007C */  lw    $t9, 0x7c($t8)
/* 01F38C 8001E78C 00000000 */  nop   
/* 01F390 8001E790 1159000C */  beq   $t2, $t9, .L8001E7C4
/* 01F394 8001E794 00000000 */   nop   
.L8001E798:
/* 01F398 8001E798 25080001 */  addiu $t0, $t0, 1
/* 01F39C 8001E79C 0109082A */  slt   $at, $t0, $t1
/* 01F3A0 8001E7A0 10200008 */  beqz  $at, .L8001E7C4
/* 01F3A4 8001E7A4 00087080 */   sll   $t6, $t0, 2
/* 01F3A8 8001E7A8 016E7821 */  addu  $t7, $t3, $t6
/* 01F3AC 8001E7AC 8DF80000 */  lw    $t8, ($t7)
/* 01F3B0 8001E7B0 00000000 */  nop   
/* 01F3B4 8001E7B4 8F19007C */  lw    $t9, 0x7c($t8)
/* 01F3B8 8001E7B8 00000000 */  nop   
/* 01F3BC 8001E7BC 1559FFF6 */  bne   $t2, $t9, .L8001E798
/* 01F3C0 8001E7C0 00000000 */   nop   
.L8001E7C4:
/* 01F3C4 8001E7C4 11090027 */  beq   $t0, $t1, .L8001E864
/* 01F3C8 8001E7C8 00000000 */   nop   
/* 01F3CC 8001E7CC 8E4E0000 */  lw    $t6, ($s2)
/* 01F3D0 8001E7D0 00087880 */  sll   $t7, $t0, 2
/* 01F3D4 8001E7D4 01CFC021 */  addu  $t8, $t6, $t7
/* 01F3D8 8001E7D8 8F190000 */  lw    $t9, ($t8)
/* 01F3DC 8001E7DC 00000000 */  nop   
/* 01F3E0 8001E7E0 8F260064 */  lw    $a2, 0x64($t9)
/* 01F3E4 8001E7E4 00000000 */  nop   
/* 01F3E8 8001E7E8 10C0001E */  beqz  $a2, .L8001E864
/* 01F3EC 8001E7EC 00000000 */   nop   
/* 01F3F0 8001E7F0 8CCE005C */  lw    $t6, 0x5c($a2)
/* 01F3F4 8001E7F4 24080001 */  li    $t0, 1
/* 01F3F8 8001E7F8 11C00003 */  beqz  $t6, .L8001E808
/* 01F3FC 8001E7FC 00000000 */   nop   
/* 01F400 8001E800 10000001 */  b     .L8001E808
/* 01F404 8001E804 00004025 */   move  $t0, $zero
.L8001E808:
/* 01F408 8001E808 1208001B */  beq   $s0, $t0, .L8001E878
/* 01F40C 8001E80C 0043082A */   slt   $at, $v0, $v1
/* 01F410 8001E810 C4C4000C */  lwc1  $f4, 0xc($a2)
/* 01F414 8001E814 3C038012 */  lui   $v1, %hi(D_8011AE00) # $v1, 0x8012
/* 01F418 8001E818 E4E40000 */  swc1  $f4, ($a3)
/* 01F41C 8001E81C C4C60010 */  lwc1  $f6, 0x10($a2)
/* 01F420 8001E820 00000000 */  nop   
/* 01F424 8001E824 E4E60004 */  swc1  $f6, 4($a3)
/* 01F428 8001E828 C4C80014 */  lwc1  $f8, 0x14($a2)
/* 01F42C 8001E82C ACE6000C */  sw    $a2, 0xc($a3)
/* 01F430 8001E830 E4E80008 */  swc1  $f8, 8($a3)
/* 01F434 8001E834 C48A000C */  lwc1  $f10, 0xc($a0)
/* 01F438 8001E838 00000000 */  nop   
/* 01F43C 8001E83C E4CA000C */  swc1  $f10, 0xc($a2)
/* 01F440 8001E840 C4900010 */  lwc1  $f16, 0x10($a0)
/* 01F444 8001E844 00000000 */  nop   
/* 01F448 8001E848 E4D00010 */  swc1  $f16, 0x10($a2)
/* 01F44C 8001E84C C4920014 */  lwc1  $f18, 0x14($a0)
/* 01F450 8001E850 00000000 */  nop   
/* 01F454 8001E854 E4D20014 */  swc1  $f18, 0x14($a2)
/* 01F458 8001E858 8063AE00 */  lb    $v1, %lo(D_8011AE00)($v1)
/* 01F45C 8001E85C 10000006 */  b     .L8001E878
/* 01F460 8001E860 0043082A */   slt   $at, $v0, $v1
.L8001E864:
/* 01F464 8001E864 ACE0000C */  sw    $zero, 0xc($a3)
/* 01F468 8001E868 3C038012 */  lui   $v1, %hi(D_8011AE00) # $v1, 0x8012
/* 01F46C 8001E86C 8063AE00 */  lb    $v1, %lo(D_8011AE00)($v1)
/* 01F470 8001E870 00000000 */  nop   
/* 01F474 8001E874 0043082A */  slt   $at, $v0, $v1
.L8001E878:
/* 01F478 8001E878 1420FFB1 */  bnez  $at, .L8001E740
/* 01F47C 8001E87C 24A50004 */   addiu $a1, $a1, 4
.L8001E880:
/* 01F480 8001E880 3C018012 */  lui   $at, %hi(D_8011AE01) # $at, 0x8012
/* 01F484 8001E884 8FB00004 */  lw    $s0, 4($sp)
/* 01F488 8001E888 8FB10008 */  lw    $s1, 8($sp)
/* 01F48C 8001E88C 8FB2000C */  lw    $s2, 0xc($sp)
/* 01F490 8001E890 A020AE01 */  sb    $zero, %lo(D_8011AE01)($at)
/* 01F494 8001E894 03E00008 */  jr    $ra
/* 01F498 8001E898 27BD0010 */   addiu $sp, $sp, 0x10

