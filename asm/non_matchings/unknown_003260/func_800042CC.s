glabel func_800042CC
/* 004ECC 800042CC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 004ED0 800042D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 004ED4 800042D4 AFA40028 */  sw    $a0, 0x28($sp)
/* 004ED8 800042D8 AFA5002C */  sw    $a1, 0x2c($sp)
/* 004EDC 800042DC 0C03268C */  jal   osSetIntMask
/* 004EE0 800042E0 24040001 */   li    $a0, 1
/* 004EE4 800042E4 3C07800E */  lui   $a3, %hi(D_800DC6B0) # $a3, 0x800e
/* 004EE8 800042E8 24E7C6B0 */  addiu $a3, %lo(D_800DC6B0) # addiu $a3, $a3, -0x3950
/* 004EEC 800042EC 8CE30000 */  lw    $v1, ($a3)
/* 004EF0 800042F0 8CE40008 */  lw    $a0, 8($a3)
/* 004EF4 800042F4 8CE50004 */  lw    $a1, 4($a3)
/* 004EF8 800042F8 AFA20024 */  sw    $v0, 0x24($sp)
/* 004EFC 800042FC 10600006 */  beqz  $v1, .L80004318
/* 004F00 80004300 00003025 */   move  $a2, $zero
.L80004304:
/* 004F04 80004304 8C630000 */  lw    $v1, ($v1)
/* 004F08 80004308 24C60001 */  addiu $a2, $a2, 1
/* 004F0C 8000430C 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 004F10 80004310 1460FFFC */  bnez  $v1, .L80004304
/* 004F14 80004314 01C03025 */   move  $a2, $t6
.L80004318:
/* 004F18 80004318 10800006 */  beqz  $a0, .L80004334
/* 004F1C 8000431C 00001025 */   move  $v0, $zero
.L80004320:
/* 004F20 80004320 8C840000 */  lw    $a0, ($a0)
/* 004F24 80004324 24420001 */  addiu $v0, $v0, 1
/* 004F28 80004328 304FFFFF */  andi  $t7, $v0, 0xffff
/* 004F2C 8000432C 1480FFFC */  bnez  $a0, .L80004320
/* 004F30 80004330 01E01025 */   move  $v0, $t7
.L80004334:
/* 004F34 80004334 10A00006 */  beqz  $a1, .L80004350
/* 004F38 80004338 00001825 */   move  $v1, $zero
.L8000433C:
/* 004F3C 8000433C 8CA50004 */  lw    $a1, 4($a1)
/* 004F40 80004340 24630001 */  addiu $v1, $v1, 1
/* 004F44 80004344 3078FFFF */  andi  $t8, $v1, 0xffff
/* 004F48 80004348 14A0FFFC */  bnez  $a1, .L8000433C
/* 004F4C 8000434C 03001825 */   move  $v1, $t8
.L80004350:
/* 004F50 80004350 8FB90028 */  lw    $t9, 0x28($sp)
/* 004F54 80004354 00000000 */  nop   
/* 004F58 80004358 A7220000 */  sh    $v0, ($t9)
/* 004F5C 8000435C 8FA8002C */  lw    $t0, 0x2c($sp)
/* 004F60 80004360 00000000 */  nop   
/* 004F64 80004364 A5060000 */  sh    $a2, ($t0)
/* 004F68 80004368 8FA40024 */  lw    $a0, 0x24($sp)
/* 004F6C 8000436C 0C03268C */  jal   osSetIntMask
/* 004F70 80004370 A7A3001E */   sh    $v1, 0x1e($sp)
/* 004F74 80004374 8FBF0014 */  lw    $ra, 0x14($sp)
/* 004F78 80004378 97A2001E */  lhu   $v0, 0x1e($sp)
/* 004F7C 8000437C 03E00008 */  jr    $ra
/* 004F80 80004380 27BD0028 */   addiu $sp, $sp, 0x28

