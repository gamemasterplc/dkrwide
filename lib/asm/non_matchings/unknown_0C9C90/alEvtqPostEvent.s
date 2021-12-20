glabel alEvtqPostEvent
/* 0C9DAC 800C91AC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C9DB0 800C91B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C9DB4 800C91B4 AFA40030 */  sw    $a0, 0x30($sp)
/* 0C9DB8 800C91B8 AFA50034 */  sw    $a1, 0x34($sp)
/* 0C9DBC 800C91BC AFA00020 */  sw    $zero, 0x20($sp)
/* 0C9DC0 800C91C0 24040001 */  li    $a0, 1
/* 0C9DC4 800C91C4 0C03268C */  jal   osSetIntMask
/* 0C9DC8 800C91C8 AFA60038 */   sw    $a2, 0x38($sp)
/* 0C9DCC 800C91CC 8FAE0030 */  lw    $t6, 0x30($sp)
/* 0C9DD0 800C91D0 8FA70038 */  lw    $a3, 0x38($sp)
/* 0C9DD4 800C91D4 00402825 */  move  $a1, $v0
/* 0C9DD8 800C91D8 8DC80000 */  lw    $t0, ($t6)
/* 0C9DDC 800C91DC 15000005 */  bnez  $t0, .L800C91F4
/* 0C9DE0 800C91E0 01002025 */   move  $a0, $t0
/* 0C9DE4 800C91E4 0C03268C */  jal   osSetIntMask
/* 0C9DE8 800C91E8 00402025 */   move  $a0, $v0
/* 0C9DEC 800C91EC 10000035 */  b     .L800C92C4
/* 0C9DF0 800C91F0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800C91F4:
/* 0C9DF4 800C91F4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0C9DF8 800C91F8 AFA70038 */  sw    $a3, 0x38($sp)
/* 0C9DFC 800C91FC 0C0321D8 */  jal   alUnlink
/* 0C9E00 800C9200 AFA8002C */   sw    $t0, 0x2c($sp)
/* 0C9E04 800C9204 8FA8002C */  lw    $t0, 0x2c($sp)
/* 0C9E08 800C9208 8FA40034 */  lw    $a0, 0x34($sp)
/* 0C9E0C 800C920C 24060010 */  li    $a2, 16
/* 0C9E10 800C9210 0C034E08 */  jal   alCopy
/* 0C9E14 800C9214 2505000C */   addiu $a1, $t0, 0xc
/* 0C9E18 800C9218 8FA70038 */  lw    $a3, 0x38($sp)
/* 0C9E1C 800C921C 3C017FFF */  lui   $at, (0x7FFFFFFF >> 16) # lui $at, 0x7fff
/* 0C9E20 800C9220 3421FFFF */  ori   $at, (0x7FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0C9E24 800C9224 14E10003 */  bne   $a3, $at, .L800C9234
/* 0C9E28 800C9228 8FA8002C */   lw    $t0, 0x2c($sp)
/* 0C9E2C 800C922C 240FFFFF */  li    $t7, -1
/* 0C9E30 800C9230 AFAF0020 */  sw    $t7, 0x20($sp)
.L800C9234:
/* 0C9E34 800C9234 8FA20030 */  lw    $v0, 0x30($sp)
/* 0C9E38 800C9238 2401FFF8 */  li    $at, -8
/* 0C9E3C 800C923C 8FB80020 */  lw    $t8, 0x20($sp)
/* 0C9E40 800C9240 1041001D */  beq   $v0, $at, .L800C92B8
/* 0C9E44 800C9244 24450008 */   addiu $a1, $v0, 8
.L800C9248:
/* 0C9E48 800C9248 8CA20000 */  lw    $v0, ($a1)
/* 0C9E4C 800C924C 5440000B */  bnezl $v0, .L800C927C
/* 0C9E50 800C9250 8C430008 */   lw    $v1, 8($v0)
/* 0C9E54 800C9254 53000004 */  beql  $t8, $zero, .L800C9268
/* 0C9E58 800C9258 AD070008 */   sw    $a3, 8($t0)
/* 0C9E5C 800C925C 10000002 */  b     .L800C9268
/* 0C9E60 800C9260 AD000008 */   sw    $zero, 8($t0)
/* 0C9E64 800C9264 AD070008 */  sw    $a3, 8($t0)
.L800C9268:
/* 0C9E68 800C9268 0C0321E4 */  jal   alLink
/* 0C9E6C 800C926C 01002025 */   move  $a0, $t0
/* 0C9E70 800C9270 10000011 */  b     .L800C92B8
/* 0C9E74 800C9274 00000000 */   nop   
/* 0C9E78 800C9278 8C430008 */  lw    $v1, 8($v0)
.L800C927C:
/* 0C9E7C 800C927C 00403025 */  move  $a2, $v0
/* 0C9E80 800C9280 00E3082A */  slt   $at, $a3, $v1
/* 0C9E84 800C9284 5020000A */  beql  $at, $zero, .L800C92B0
/* 0C9E88 800C9288 00402825 */   move  $a1, $v0
/* 0C9E8C 800C928C AD070008 */  sw    $a3, 8($t0)
/* 0C9E90 800C9290 8CD90008 */  lw    $t9, 8($a2)
/* 0C9E94 800C9294 01002025 */  move  $a0, $t0
/* 0C9E98 800C9298 03274823 */  subu  $t1, $t9, $a3
/* 0C9E9C 800C929C 0C0321E4 */  jal   alLink
/* 0C9EA0 800C92A0 ACC90008 */   sw    $t1, 8($a2)
/* 0C9EA4 800C92A4 10000004 */  b     .L800C92B8
/* 0C9EA8 800C92A8 00000000 */   nop   
/* 0C9EAC 800C92AC 00402825 */  move  $a1, $v0
.L800C92B0:
/* 0C9EB0 800C92B0 1440FFE5 */  bnez  $v0, .L800C9248
/* 0C9EB4 800C92B4 00E33823 */   subu  $a3, $a3, $v1
.L800C92B8:
/* 0C9EB8 800C92B8 0C03268C */  jal   osSetIntMask
/* 0C9EBC 800C92BC 8FA4001C */   lw    $a0, 0x1c($sp)
/* 0C9EC0 800C92C0 8FBF0014 */  lw    $ra, 0x14($sp)
.L800C92C4:
/* 0C9EC4 800C92C4 27BD0030 */  addiu $sp, $sp, 0x30
/* 0C9EC8 800C92C8 03E00008 */  jr    $ra
/* 0C9ECC 800C92CC 00000000 */   nop   
