glabel func_80059080
/* 059C80 80059080 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 059C84 80059084 AFBF003C */  sw    $ra, 0x3c($sp)
/* 059C88 80059088 AFB50034 */  sw    $s5, 0x34($sp)
/* 059C8C 8005908C 00A0A825 */  move  $s5, $a1
/* 059C90 80059090 AFB60038 */  sw    $s6, 0x38($sp)
/* 059C94 80059094 AFB40030 */  sw    $s4, 0x30($sp)
/* 059C98 80059098 AFB3002C */  sw    $s3, 0x2c($sp)
/* 059C9C 8005909C AFB20028 */  sw    $s2, 0x28($sp)
/* 059CA0 800590A0 AFB10024 */  sw    $s1, 0x24($sp)
/* 059CA4 800590A4 AFB00020 */  sw    $s0, 0x20($sp)
/* 059CA8 800590A8 E7B50018 */  swc1  $f21, 0x18($sp)
/* 059CAC 800590AC E7B4001C */  swc1  $f20, 0x1c($sp)
/* 059CB0 800590B0 AFA400A8 */  sw    $a0, 0xa8($sp)
/* 059CB4 800590B4 AFA600B0 */  sw    $a2, 0xb0($sp)
/* 059CB8 800590B8 0C006E99 */  jal   func_8001BA64
/* 059CBC 800590BC AFA700B4 */   sw    $a3, 0xb4($sp)
/* 059CC0 800590C0 10400045 */  beqz  $v0, .L800591D8
/* 059CC4 800590C4 0040B025 */   move  $s6, $v0
/* 059CC8 800590C8 C6A600A8 */  lwc1  $f6, 0xa8($s5)
/* 059CCC 800590CC 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 059CD0 800590D0 44812800 */  mtc1  $at, $f5
/* 059CD4 800590D4 44802000 */  mtc1  $zero, $f4
/* 059CD8 800590D8 46003221 */  cvt.d.s $f8, $f6
/* 059CDC 800590DC 46282281 */  sub.d $f10, $f4, $f8
/* 059CE0 800590E0 44800000 */  mtc1  $zero, $f0
/* 059CE4 800590E4 46205520 */  cvt.s.d $f20, $f10
/* 059CE8 800590E8 27B20084 */  addiu $s2, $sp, 0x84
/* 059CEC 800590EC 4600A03C */  c.lt.s $f20, $f0
/* 059CF0 800590F0 27B30070 */  addiu $s3, $sp, 0x70
/* 059CF4 800590F4 45000002 */  bc1f  .L80059100
/* 059CF8 800590F8 27B0005C */   addiu $s0, $sp, 0x5c
/* 059CFC 800590FC 46000506 */  mov.s $f20, $f0
.L80059100:
/* 059D00 80059100 82A30192 */  lb    $v1, 0x192($s5)
/* 059D04 80059104 27B40070 */  addiu $s4, $sp, 0x70
/* 059D08 80059108 2471FFFE */  addiu $s1, $v1, -2
/* 059D0C 8005910C 06210002 */  bgez  $s1, .L80059118
/* 059D10 80059110 00000000 */   nop   
/* 059D14 80059114 02228821 */  addu  $s1, $s1, $v0
.L80059118:
/* 059D18 80059118 92A501C8 */  lbu   $a1, 0x1c8($s5)
/* 059D1C 8005911C 0C006E87 */  jal   func_8001BA1C
/* 059D20 80059120 02202025 */   move  $a0, $s1
/* 059D24 80059124 C4500010 */  lwc1  $f16, 0x10($v0)
/* 059D28 80059128 26310001 */  addiu $s1, $s1, 1
/* 059D2C 8005912C E6500000 */  swc1  $f16, ($s2)
/* 059D30 80059130 C4520014 */  lwc1  $f18, 0x14($v0)
/* 059D34 80059134 26520004 */  addiu $s2, $s2, 4
/* 059D38 80059138 E6720000 */  swc1  $f18, ($s3)
/* 059D3C 8005913C C4460018 */  lwc1  $f6, 0x18($v0)
/* 059D40 80059140 16360002 */  bne   $s1, $s6, .L8005914C
/* 059D44 80059144 E6060000 */   swc1  $f6, ($s0)
/* 059D48 80059148 00008825 */  move  $s1, $zero
.L8005914C:
/* 059D4C 8005914C 26100004 */  addiu $s0, $s0, 4
/* 059D50 80059150 1614FFF1 */  bne   $s0, $s4, .L80059118
/* 059D54 80059154 26730004 */   addiu $s3, $s3, 4
/* 059D58 80059158 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 059D5C 8005915C 44812800 */  mtc1  $at, $f5
/* 059D60 80059160 44802000 */  mtc1  $zero, $f4
/* 059D64 80059164 4600A021 */  cvt.d.s $f0, $f20
/* 059D68 80059168 4620203E */  c.le.d $f4, $f0
/* 059D6C 8005916C 00008025 */  move  $s0, $zero
/* 059D70 80059170 45000007 */  bc1f  .L80059190
/* 059D74 80059174 27A40084 */   addiu $a0, $sp, 0x84
/* 059D78 80059178 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 059D7C 8005917C 44814800 */  mtc1  $at, $f9
/* 059D80 80059180 44804000 */  mtc1  $zero, $f8
/* 059D84 80059184 24100001 */  li    $s0, 1
/* 059D88 80059188 46280281 */  sub.d $f10, $f0, $f8
/* 059D8C 8005918C 46205520 */  cvt.s.d $f20, $f10
.L80059190:
/* 059D90 80059190 4406A000 */  mfc1  $a2, $f20
/* 059D94 80059194 0C008950 */  jal   catmull_rom_interpolation
/* 059D98 80059198 02002825 */   move  $a1, $s0
/* 059D9C 8005919C 8FAE00B0 */  lw    $t6, 0xb0($sp)
/* 059DA0 800591A0 4406A000 */  mfc1  $a2, $f20
/* 059DA4 800591A4 27A40070 */  addiu $a0, $sp, 0x70
/* 059DA8 800591A8 02002825 */  move  $a1, $s0
/* 059DAC 800591AC 0C008950 */  jal   catmull_rom_interpolation
/* 059DB0 800591B0 E5C00000 */   swc1  $f0, ($t6)
/* 059DB4 800591B4 8FAF00B4 */  lw    $t7, 0xb4($sp)
/* 059DB8 800591B8 4406A000 */  mfc1  $a2, $f20
/* 059DBC 800591BC 27A4005C */  addiu $a0, $sp, 0x5c
/* 059DC0 800591C0 02002825 */  move  $a1, $s0
/* 059DC4 800591C4 0C008950 */  jal   catmull_rom_interpolation
/* 059DC8 800591C8 E5E00000 */   swc1  $f0, ($t7)
/* 059DCC 800591CC 8FB800B8 */  lw    $t8, 0xb8($sp)
/* 059DD0 800591D0 00000000 */  nop   
/* 059DD4 800591D4 E7000000 */  swc1  $f0, ($t8)
.L800591D8:
/* 059DD8 800591D8 8FBF003C */  lw    $ra, 0x3c($sp)
/* 059DDC 800591DC C7B50018 */  lwc1  $f21, 0x18($sp)
/* 059DE0 800591E0 C7B4001C */  lwc1  $f20, 0x1c($sp)
/* 059DE4 800591E4 8FB00020 */  lw    $s0, 0x20($sp)
/* 059DE8 800591E8 8FB10024 */  lw    $s1, 0x24($sp)
/* 059DEC 800591EC 8FB20028 */  lw    $s2, 0x28($sp)
/* 059DF0 800591F0 8FB3002C */  lw    $s3, 0x2c($sp)
/* 059DF4 800591F4 8FB40030 */  lw    $s4, 0x30($sp)
/* 059DF8 800591F8 8FB50034 */  lw    $s5, 0x34($sp)
/* 059DFC 800591FC 8FB60038 */  lw    $s6, 0x38($sp)
/* 059E00 80059200 03E00008 */  jr    $ra
/* 059E04 80059204 27BD00A8 */   addiu $sp, $sp, 0xa8

