glabel calculate_and_display_rom_checksum
/* 08B944 8008AD44 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 08B948 8008AD48 3C0E800E */  lui   $t6, %hi(D_800E1E18) # $t6, 0x800e
/* 08B94C 8008AD4C 8DCE1E18 */  lw    $t6, %lo(D_800E1E18)($t6)
/* 08B950 8008AD50 AFBF002C */  sw    $ra, 0x2c($sp)
/* 08B954 8008AD54 AFB40028 */  sw    $s4, 0x28($sp)
/* 08B958 8008AD58 AFB30024 */  sw    $s3, 0x24($sp)
/* 08B95C 8008AD5C AFB20020 */  sw    $s2, 0x20($sp)
/* 08B960 8008AD60 AFB1001C */  sw    $s1, 0x1c($sp)
/* 08B964 8008AD64 15C0003B */  bnez  $t6, .L8008AE54
/* 08B968 8008AD68 AFB00018 */   sw    $s0, 0x18($sp)
/* 08B96C 8008AD6C 3C1000AD */  lui   $s0, %hi(__ROM_END) # $s0, 0xad
/* 08B970 8008AD70 26109630 */  addiu $s0, %lo(__ROM_END) # addiu $s0, $s0, -0x69d0
/* 08B974 8008AD74 2610F000 */  addiu $s0, $s0, -0x1000
/* 08B978 8008AD78 24131000 */  li    $s3, 4096
/* 08B97C 8008AD7C 02009025 */  move  $s2, $s0
/* 08B980 8008AD80 24045000 */  li    $a0, 20480
/* 08B984 8008AD84 0C01C327 */  jal   allocate_from_main_pool_safe
/* 08B988 8008AD88 240500FF */   li    $a1, 255
/* 08B98C 8008AD8C 1200002C */  beqz  $s0, .L8008AE40
/* 08B990 8008AD90 0040A025 */   move  $s4, $v0
.L8008AD94:
/* 08B994 8008AD94 2A415001 */  slti  $at, $s2, 0x5001
/* 08B998 8008AD98 02408825 */  move  $s1, $s2
/* 08B99C 8008AD9C 14200002 */  bnez  $at, .L8008ADA8
/* 08B9A0 8008ADA0 00008025 */   move  $s0, $zero
/* 08B9A4 8008ADA4 24115000 */  li    $s1, 20480
.L8008ADA8:
/* 08B9A8 8008ADA8 02602025 */  move  $a0, $s3
/* 08B9AC 8008ADAC 02802825 */  move  $a1, $s4
/* 08B9B0 8008ADB0 0C01DBDE */  jal   dmacopy
/* 08B9B4 8008ADB4 02203025 */   move  $a2, $s1
/* 08B9B8 8008ADB8 1A20001F */  blez  $s1, .L8008AE38
/* 08B9BC 8008ADBC 02519023 */   subu  $s2, $s2, $s1
/* 08B9C0 8008ADC0 32240003 */  andi  $a0, $s1, 3
/* 08B9C4 8008ADC4 1080000C */  beqz  $a0, .L8008ADF8
/* 08B9C8 8008ADC8 00801825 */   move  $v1, $a0
/* 08B9CC 8008ADCC 3C05800E */  lui   $a1, %hi(D_800E1E14) # $a1, 0x800e
/* 08B9D0 8008ADD0 8CA51E14 */  lw    $a1, %lo(D_800E1E14)($a1)
/* 08B9D4 8008ADD4 02901021 */  addu  $v0, $s4, $s0
.L8008ADD8:
/* 08B9D8 8008ADD8 904F0000 */  lbu   $t7, ($v0)
/* 08B9DC 8008ADDC 26100001 */  addiu $s0, $s0, 1
/* 08B9E0 8008ADE0 24420001 */  addiu $v0, $v0, 1
/* 08B9E4 8008ADE4 1470FFFC */  bne   $v1, $s0, .L8008ADD8
/* 08B9E8 8008ADE8 00AF2821 */   addu  $a1, $a1, $t7
/* 08B9EC 8008ADEC 3C01800E */  lui   $at, %hi(D_800E1E14) # $at, 0x800e
/* 08B9F0 8008ADF0 12110011 */  beq   $s0, $s1, .L8008AE38
/* 08B9F4 8008ADF4 AC251E14 */   sw    $a1, %lo(D_800E1E14)($at)
.L8008ADF8:
/* 08B9F8 8008ADF8 3C05800E */  lui   $a1, %hi(D_800E1E14) # $a1, 0x800e
/* 08B9FC 8008ADFC 8CA51E14 */  lw    $a1, %lo(D_800E1E14)($a1)
/* 08BA00 8008AE00 02901021 */  addu  $v0, $s4, $s0
.L8008AE04:
/* 08BA04 8008AE04 90580000 */  lbu   $t8, ($v0)
/* 08BA08 8008AE08 90590001 */  lbu   $t9, 1($v0)
/* 08BA0C 8008AE0C 90480002 */  lbu   $t0, 2($v0)
/* 08BA10 8008AE10 00B82821 */  addu  $a1, $a1, $t8
/* 08BA14 8008AE14 90490003 */  lbu   $t1, 3($v0)
/* 08BA18 8008AE18 00B92821 */  addu  $a1, $a1, $t9
/* 08BA1C 8008AE1C 26100004 */  addiu $s0, $s0, 4
/* 08BA20 8008AE20 00A82821 */  addu  $a1, $a1, $t0
/* 08BA24 8008AE24 24420004 */  addiu $v0, $v0, 4
/* 08BA28 8008AE28 1611FFF6 */  bne   $s0, $s1, .L8008AE04
/* 08BA2C 8008AE2C 00A92821 */   addu  $a1, $a1, $t1
/* 08BA30 8008AE30 3C01800E */  lui   $at, %hi(D_800E1E14) # $at, 0x800e
/* 08BA34 8008AE34 AC251E14 */  sw    $a1, %lo(D_800E1E14)($at)
.L8008AE38:
/* 08BA38 8008AE38 1640FFD6 */  bnez  $s2, .L8008AD94
/* 08BA3C 8008AE3C 02719821 */   addu  $s3, $s3, $s1
.L8008AE40:
/* 08BA40 8008AE40 0C01C450 */  jal   free_from_memory_pool
/* 08BA44 8008AE44 02802025 */   move  $a0, $s4
/* 08BA48 8008AE48 240A0001 */  li    $t2, 1
/* 08BA4C 8008AE4C 3C01800E */  lui   $at, %hi(D_800E1E18) # $at, 0x800e
/* 08BA50 8008AE50 AC2A1E18 */  sw    $t2, %lo(D_800E1E18)($at)
.L8008AE54:
/* 08BA54 8008AE54 3C1000AD */  lui   $s0, %hi(__ROM_END) # $s0, 0xad
/* 08BA58 8008AE58 26109630 */  addiu $s0, %lo(__ROM_END) # addiu $s0, $s0, -0x69d0
/* 08BA5C 8008AE5C 00002025 */  move  $a0, $zero
/* 08BA60 8008AE60 00002825 */  move  $a1, $zero
/* 08BA64 8008AE64 00003025 */  move  $a2, $zero
/* 08BA68 8008AE68 0C02D8AD */  jal   set_render_printf_background_color
/* 08BA6C 8008AE6C 24070080 */   li    $a3, 128
/* 08BA70 8008AE70 24040020 */  li    $a0, 32
/* 08BA74 8008AE74 0C02D8D7 */  jal   set_render_printf_position
/* 08BA78 8008AE78 24050088 */   li    $a1, 136
/* 08BA7C 8008AE7C 3C05800E */  lui   $a1, %hi(D_800E1E14) # $a1, 0x800e
/* 08BA80 8008AE80 8CA51E14 */  lw    $a1, %lo(D_800E1E14)($a1)
/* 08BA84 8008AE84 3C04800F */  lui   $a0, %hi(D_800E8218) # $a0, 0x800f
/* 08BA88 8008AE88 24848218 */  addiu $a0, %lo(D_800E8218) # addiu $a0, $a0, -0x7de8
/* 08BA8C 8008AE8C 0C02D7B7 */  jal   render_printf
/* 08BA90 8008AE90 02003025 */   move  $a2, $s0
/* 08BA94 8008AE94 8FBF002C */  lw    $ra, 0x2c($sp)
/* 08BA98 8008AE98 8FB00018 */  lw    $s0, 0x18($sp)
/* 08BA9C 8008AE9C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 08BAA0 8008AEA0 8FB20020 */  lw    $s2, 0x20($sp)
/* 08BAA4 8008AEA4 8FB30024 */  lw    $s3, 0x24($sp)
/* 08BAA8 8008AEA8 8FB40028 */  lw    $s4, 0x28($sp)
/* 08BAAC 8008AEAC 03E00008 */  jr    $ra
/* 08BAB0 8008AEB0 27BD0030 */   addiu $sp, $sp, 0x30

