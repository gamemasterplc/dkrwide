glabel func_8001F23C
/* 01FE3C 8001F23C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 01FE40 8001F240 AFBF002C */  sw    $ra, 0x2c($sp)
/* 01FE44 8001F244 AFB50028 */  sw    $s5, 0x28($sp)
/* 01FE48 8001F248 AFB40024 */  sw    $s4, 0x24($sp)
/* 01FE4C 8001F24C AFB30020 */  sw    $s3, 0x20($sp)
/* 01FE50 8001F250 AFB2001C */  sw    $s2, 0x1c($sp)
/* 01FE54 8001F254 AFB10018 */  sw    $s1, 0x18($sp)
/* 01FE58 8001F258 AFB00014 */  sw    $s0, 0x14($sp)
/* 01FE5C 8001F25C 84AE0002 */  lh    $t6, 2($a1)
/* 01FE60 8001F260 0080A025 */  move  $s4, $a0
/* 01FE64 8001F264 A7AE003E */  sh    $t6, 0x3e($sp)
/* 01FE68 8001F268 84AF0004 */  lh    $t7, 4($a1)
/* 01FE6C 8001F26C 27B5003C */  addiu $s5, $sp, 0x3c
/* 01FE70 8001F270 A7AF0040 */  sh    $t7, 0x40($sp)
/* 01FE74 8001F274 84B80006 */  lh    $t8, 6($a1)
/* 01FE78 8001F278 02A02025 */  move  $a0, $s5
/* 01FE7C 8001F27C A7B80042 */  sh    $t8, 0x42($sp)
/* 01FE80 8001F280 84B9000C */  lh    $t9, 0xc($a1)
/* 01FE84 8001F284 00000000 */  nop   
/* 01FE88 8001F288 00194043 */  sra   $t0, $t9, 1
/* 01FE8C 8001F28C 31090080 */  andi  $t1, $t0, 0x80
/* 01FE90 8001F290 352A0008 */  ori   $t2, $t1, 8
/* 01FE94 8001F294 A3AA003D */  sb    $t2, 0x3d($sp)
/* 01FE98 8001F298 84AB000C */  lh    $t3, 0xc($a1)
/* 01FE9C 8001F29C 24050001 */  li    $a1, 1
/* 01FEA0 8001F2A0 0C003A95 */  jal   func_8000EA54
/* 01FEA4 8001F2A4 A3AB003C */   sb    $t3, 0x3c($sp)
/* 01FEA8 8001F2A8 AE820064 */  sw    $v0, 0x64($s4)
/* 01FEAC 8001F2AC 1040000D */  beqz  $v0, .L8001F2E4
/* 01FEB0 8001F2B0 00408825 */   move  $s1, $v0
/* 01FEB4 8001F2B4 844C0048 */  lh    $t4, 0x48($v0)
/* 01FEB8 8001F2B8 2401000C */  li    $at, 12
/* 01FEBC 8001F2BC 15810009 */  bne   $t4, $at, .L8001F2E4
/* 01FEC0 8001F2C0 3C0D8012 */   lui   $t5, %hi(gTimeTrialEnabled) # $t5, 0x8012
/* 01FEC4 8001F2C4 91ADAEF4 */  lbu   $t5, %lo(gTimeTrialEnabled)($t5)
/* 01FEC8 8001F2C8 00000000 */  nop   
/* 01FECC 8001F2CC 11A00005 */  beqz  $t5, .L8001F2E4
/* 01FED0 8001F2D0 00000000 */   nop   
/* 01FED4 8001F2D4 0C003FEE */  jal   gParticlePtrList_addObject
/* 01FED8 8001F2D8 00402025 */   move  $a0, $v0
/* 01FEDC 8001F2DC AE800064 */  sw    $zero, 0x64($s4)
/* 01FEE0 8001F2E0 00008825 */  move  $s1, $zero
.L8001F2E4:
/* 01FEE4 8001F2E4 1220002B */  beqz  $s1, .L8001F394
/* 01FEE8 8001F2E8 02802025 */   move  $a0, $s4
/* 01FEEC 8001F2EC AE20003C */  sw    $zero, 0x3c($s1)
/* 01FEF0 8001F2F0 0C007BE9 */  jal   func_8001EFA4
/* 01FEF4 8001F2F4 02202825 */   move  $a1, $s1
/* 01FEF8 8001F2F8 8E2E0040 */  lw    $t6, 0x40($s1)
/* 01FEFC 8001F2FC 24010033 */  li    $at, 51
/* 01FF00 8001F300 81CF0054 */  lb    $t7, 0x54($t6)
/* 01FF04 8001F304 3C138012 */  lui   $s3, %hi(D_8011AD3E) # $s3, 0x8012
/* 01FF08 8001F308 15E10022 */  bne   $t7, $at, .L8001F394
/* 01FF0C 8001F30C 2673AD3E */   addiu $s3, %lo(D_8011AD3E) # addiu $s3, $s3, -0x52c2
/* 01FF10 8001F310 8E220064 */  lw    $v0, 0x64($s1)
/* 01FF14 8001F314 82780000 */  lb    $t8, ($s3)
/* 01FF18 8001F318 0C019884 */  jal   get_viewport_count
/* 01FF1C 8001F31C A0580044 */   sb    $t8, 0x44($v0)
/* 01FF20 8001F320 0C01B067 */  jal   func_8006C19C
/* 01FF24 8001F324 00409025 */   move  $s2, $v0
/* 01FF28 8001F328 10400002 */  beqz  $v0, .L8001F334
/* 01FF2C 8001F32C 00000000 */   nop   
/* 01FF30 8001F330 24120001 */  li    $s2, 1
.L8001F334:
/* 01FF34 8001F334 1A400013 */  blez  $s2, .L8001F384
/* 01FF38 8001F338 00008025 */   move  $s0, $zero
/* 01FF3C 8001F33C 02A02025 */  move  $a0, $s5
.L8001F340:
/* 01FF40 8001F340 0C003A95 */  jal   func_8000EA54
/* 01FF44 8001F344 24050001 */   li    $a1, 1
/* 01FF48 8001F348 1040000B */  beqz  $v0, .L8001F378
/* 01FF4C 8001F34C 00408825 */   move  $s1, $v0
/* 01FF50 8001F350 AC40003C */  sw    $zero, 0x3c($v0)
/* 01FF54 8001F354 02802025 */  move  $a0, $s4
/* 01FF58 8001F358 0C007BE9 */  jal   func_8001EFA4
/* 01FF5C 8001F35C 00402825 */   move  $a1, $v0
/* 01FF60 8001F360 8E220064 */  lw    $v0, 0x64($s1)
/* 01FF64 8001F364 26100001 */  addiu $s0, $s0, 1
/* 01FF68 8001F368 A0500030 */  sb    $s0, 0x30($v0)
/* 01FF6C 8001F36C 82790000 */  lb    $t9, ($s3)
/* 01FF70 8001F370 00000000 */  nop   
/* 01FF74 8001F374 A0590044 */  sb    $t9, 0x44($v0)
.L8001F378:
/* 01FF78 8001F378 0212082A */  slt   $at, $s0, $s2
/* 01FF7C 8001F37C 1420FFF0 */  bnez  $at, .L8001F340
/* 01FF80 8001F380 02A02025 */   move  $a0, $s5
.L8001F384:
/* 01FF84 8001F384 82680000 */  lb    $t0, ($s3)
/* 01FF88 8001F388 00000000 */  nop   
/* 01FF8C 8001F38C 25090001 */  addiu $t1, $t0, 1
/* 01FF90 8001F390 A2690000 */  sb    $t1, ($s3)
.L8001F394:
/* 01FF94 8001F394 8FBF002C */  lw    $ra, 0x2c($sp)
/* 01FF98 8001F398 8FB00014 */  lw    $s0, 0x14($sp)
/* 01FF9C 8001F39C 8FB10018 */  lw    $s1, 0x18($sp)
/* 01FFA0 8001F3A0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 01FFA4 8001F3A4 8FB30020 */  lw    $s3, 0x20($sp)
/* 01FFA8 8001F3A8 8FB40024 */  lw    $s4, 0x24($sp)
/* 01FFAC 8001F3AC 8FB50028 */  lw    $s5, 0x28($sp)
/* 01FFB0 8001F3B0 03E00008 */  jr    $ra
/* 01FFB4 8001F3B4 27BD0048 */   addiu $sp, $sp, 0x48

