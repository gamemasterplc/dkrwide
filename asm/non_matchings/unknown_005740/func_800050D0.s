glabel func_800050D0
/* 005CD0 800050D0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 005CD4 800050D4 3C0E800E */  lui   $t6, %hi(D_800DC6D0) # $t6, 0x800e
/* 005CD8 800050D8 91CEC6D0 */  lbu   $t6, %lo(D_800DC6D0)($t6)
/* 005CDC 800050DC AFB00018 */  sw    $s0, 0x18($sp)
/* 005CE0 800050E0 00808025 */  move  $s0, $a0
/* 005CE4 800050E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 005CE8 800050E8 AFA50024 */  sw    $a1, 0x24($sp)
/* 005CEC 800050EC 11C00055 */  beqz  $t6, .L80005244
/* 005CF0 800050F0 AFA7002C */   sw    $a3, 0x2c($sp)
/* 005CF4 800050F4 8C8F0064 */  lw    $t7, 0x64($a0)
/* 005CF8 800050F8 3C028012 */  lui   $v0, %hi(D_80119C3C) # $v0, 0x8012
/* 005CFC 800050FC 24429C3C */  addiu $v0, %lo(D_80119C3C) # addiu $v0, $v0, -0x63c4
/* 005D00 80005100 AC4F0000 */  sw    $t7, ($v0)
/* 005D04 80005104 8DF90118 */  lw    $t9, 0x118($t7)
/* 005D08 80005108 3C058012 */  lui   $a1, %hi(D_80119C38) # $a1, 0x8012
/* 005D0C 8000510C 24A59C38 */  addiu $a1, %lo(D_80119C38) # addiu $a1, $a1, -0x63c8
/* 005D10 80005110 1320004C */  beqz  $t9, .L80005244
/* 005D14 80005114 ACB90000 */   sw    $t9, ($a1)
/* 005D18 80005118 0C0044E7 */  jal   func_8001139C
/* 005D1C 8000511C AFA60028 */   sw    $a2, 0x28($sp)
/* 005D20 80005120 3C058012 */  lui   $a1, %hi(D_80119C38) # $a1, 0x8012
/* 005D24 80005124 8FA60028 */  lw    $a2, 0x28($sp)
/* 005D28 80005128 10400014 */  beqz  $v0, .L8000517C
/* 005D2C 8000512C 24A59C38 */   addiu $a1, %lo(D_80119C38) # addiu $a1, $a1, -0x63c8
/* 005D30 80005130 3C098012 */  lui   $t1, %hi(D_80119C3C) # $t1, 0x8012
/* 005D34 80005134 8D299C3C */  lw    $t1, %lo(D_80119C3C)($t1)
/* 005D38 80005138 2401FFFF */  li    $at, -1
/* 005D3C 8000513C 85240000 */  lh    $a0, ($t1)
/* 005D40 80005140 00000000 */  nop   
/* 005D44 80005144 1081000D */  beq   $a0, $at, .L8000517C
/* 005D48 80005148 00000000 */   nop   
/* 005D4C 8000514C 0C01A94A */  jal   get_buttons_held_from_player
/* 005D50 80005150 00000000 */   nop   
/* 005D54 80005154 3C0A8012 */  lui   $t2, %hi(D_80119C3C) # $t2, 0x8012
/* 005D58 80005158 8D4A9C3C */  lw    $t2, %lo(D_80119C3C)($t2)
/* 005D5C 8000515C 00000000 */  nop   
/* 005D60 80005160 85440000 */  lh    $a0, ($t2)
/* 005D64 80005164 0C01A955 */  jal   get_buttons_pressed_from_player
/* 005D68 80005168 AFA20028 */   sw    $v0, 0x28($sp)
/* 005D6C 8000516C 3C058012 */  lui   $a1, %hi(D_80119C38) # $a1, 0x8012
/* 005D70 80005170 8FA60028 */  lw    $a2, 0x28($sp)
/* 005D74 80005174 24A59C38 */  addiu $a1, %lo(D_80119C38) # addiu $a1, $a1, -0x63c8
/* 005D78 80005178 AFA20024 */  sw    $v0, 0x24($sp)
.L8000517C:
/* 005D7C 8000517C 8CA20000 */  lw    $v0, ($a1)
/* 005D80 80005180 3C01C6FA */  li    $at, 0xC6FA0000 # -32000.000000
/* 005D84 80005184 944B0000 */  lhu   $t3, ($v0)
/* 005D88 80005188 00000000 */  nop   
/* 005D8C 8000518C 1560000A */  bnez  $t3, .L800051B8
/* 005D90 80005190 00000000 */   nop   
/* 005D94 80005194 44810000 */  mtc1  $at, $f0
/* 005D98 80005198 00000000 */  nop   
/* 005D9C 8000519C E4400078 */  swc1  $f0, 0x78($v0)
/* 005DA0 800051A0 8CAC0000 */  lw    $t4, ($a1)
/* 005DA4 800051A4 00000000 */  nop   
/* 005DA8 800051A8 E580007C */  swc1  $f0, 0x7c($t4)
/* 005DAC 800051AC 8CAD0000 */  lw    $t5, ($a1)
/* 005DB0 800051B0 10000024 */  b     .L80005244
/* 005DB4 800051B4 E5A00080 */   swc1  $f0, 0x80($t5)
.L800051B8:
/* 005DB8 800051B8 C604000C */  lwc1  $f4, 0xc($s0)
/* 005DBC 800051BC 3C188012 */  lui   $t8, %hi(D_80119C3C) # $t8, 0x8012
/* 005DC0 800051C0 E4440078 */  swc1  $f4, 0x78($v0)
/* 005DC4 800051C4 8CAE0000 */  lw    $t6, ($a1)
/* 005DC8 800051C8 C6060010 */  lwc1  $f6, 0x10($s0)
/* 005DCC 800051CC 24010001 */  li    $at, 1
/* 005DD0 800051D0 E5C6007C */  swc1  $f6, 0x7c($t6)
/* 005DD4 800051D4 8CAF0000 */  lw    $t7, ($a1)
/* 005DD8 800051D8 C6080014 */  lwc1  $f8, 0x14($s0)
/* 005DDC 800051DC 00000000 */  nop   
/* 005DE0 800051E0 E5E80080 */  swc1  $f8, 0x80($t7)
/* 005DE4 800051E4 8F189C3C */  lw    $t8, %lo(D_80119C3C)($t8)
/* 005DE8 800051E8 8FA7002C */  lw    $a3, 0x2c($sp)
/* 005DEC 800051EC 830301D7 */  lb    $v1, 0x1d7($t8)
/* 005DF0 800051F0 8FA50024 */  lw    $a1, 0x24($sp)
/* 005DF4 800051F4 10610005 */  beq   $v1, $at, .L8000520C
/* 005DF8 800051F8 24010002 */   li    $at, 2
/* 005DFC 800051FC 10610008 */  beq   $v1, $at, .L80005220
/* 005E00 80005200 8FA50024 */   lw    $a1, 0x24($sp)
/* 005E04 80005204 1000000C */  b     .L80005238
/* 005E08 80005208 8FA50024 */   lw    $a1, 0x24($sp)
.L8000520C:
/* 005E0C 8000520C 0C001742 */  jal   func_80005D08
/* 005E10 80005210 02002025 */   move  $a0, $s0
/* 005E14 80005214 1000000C */  b     .L80005248
/* 005E18 80005218 8FBF001C */   lw    $ra, 0x1c($sp)
/* 005E1C 8000521C 8FA50024 */  lw    $a1, 0x24($sp)
.L80005220:
/* 005E20 80005220 8FA7002C */  lw    $a3, 0x2c($sp)
/* 005E24 80005224 0C0018FB */  jal   func_800063EC
/* 005E28 80005228 02002025 */   move  $a0, $s0
/* 005E2C 8000522C 10000006 */  b     .L80005248
/* 005E30 80005230 8FBF001C */   lw    $ra, 0x1c($sp)
/* 005E34 80005234 8FA50024 */  lw    $a1, 0x24($sp)
.L80005238:
/* 005E38 80005238 8FA7002C */  lw    $a3, 0x2c($sp)
/* 005E3C 8000523C 0C001495 */  jal   func_80005254
/* 005E40 80005240 02002025 */   move  $a0, $s0
.L80005244:
/* 005E44 80005244 8FBF001C */  lw    $ra, 0x1c($sp)
.L80005248:
/* 005E48 80005248 8FB00018 */  lw    $s0, 0x18($sp)
/* 005E4C 8000524C 03E00008 */  jr    $ra
/* 005E50 80005250 27BD0020 */   addiu $sp, $sp, 0x20
