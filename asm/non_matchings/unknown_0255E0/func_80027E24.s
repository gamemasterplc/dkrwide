glabel func_80027E24
/* 028A24 80027E24 27BDFF90 */  addiu $sp, $sp, -0x70
/* 028A28 80027E28 3C05800E */  lui   $a1, %hi(gCurrentLevelModel) # $a1, 0x800e
/* 028A2C 80027E2C 8CA5C918 */  lw    $a1, %lo(gCurrentLevelModel)($a1)
/* 028A30 80027E30 AFBF003C */  sw    $ra, 0x3c($sp)
/* 028A34 80027E34 AFBE0038 */  sw    $fp, 0x38($sp)
/* 028A38 80027E38 AFB70034 */  sw    $s7, 0x34($sp)
/* 028A3C 80027E3C AFB60030 */  sw    $s6, 0x30($sp)
/* 028A40 80027E40 AFB5002C */  sw    $s5, 0x2c($sp)
/* 028A44 80027E44 AFB40028 */  sw    $s4, 0x28($sp)
/* 028A48 80027E48 AFB30024 */  sw    $s3, 0x24($sp)
/* 028A4C 80027E4C AFB20020 */  sw    $s2, 0x20($sp)
/* 028A50 80027E50 AFB1001C */  sw    $s1, 0x1c($sp)
/* 028A54 80027E54 AFB00018 */  sw    $s0, 0x18($sp)
/* 028A58 80027E58 8CA30004 */  lw    $v1, 4($a1)
/* 028A5C 80027E5C AFA0006C */  sw    $zero, 0x6c($sp)
/* 028A60 80027E60 84A2001A */  lh    $v0, 0x1a($a1)
/* 028A64 80027E64 00809825 */  move  $s3, $a0
/* 028A68 80027E68 1840004A */  blez  $v0, .L80027F94
/* 028A6C 80027E6C 0060B025 */   move  $s6, $v1
/* 028A70 80027E70 241E00FF */  li    $fp, 255
/* 028A74 80027E74 3C170001 */  lui   $s7, 1
/* 028A78 80027E78 27B40058 */  addiu $s4, $sp, 0x58
.L80027E7C:
/* 028A7C 80027E7C 86C30020 */  lh    $v1, 0x20($s6)
/* 028A80 80027E80 8ED5000C */  lw    $s5, 0xc($s6)
/* 028A84 80027E84 1860003D */  blez  $v1, .L80027F7C
/* 028A88 80027E88 00008825 */   move  $s1, $zero
/* 028A8C 80027E8C 00009025 */  move  $s2, $zero
/* 028A90 80027E90 02A08025 */  move  $s0, $s5
.L80027E94:
/* 028A94 80027E94 8E0E0008 */  lw    $t6, 8($s0)
/* 028A98 80027E98 00000000 */  nop   
/* 028A9C 80027E9C 01D77824 */  and   $t7, $t6, $s7
/* 028AA0 80027EA0 11E0002F */  beqz  $t7, .L80027F60
/* 028AA4 80027EA4 00000000 */   nop   
/* 028AA8 80027EA8 92020000 */  lbu   $v0, ($s0)
/* 028AAC 80027EAC 00000000 */  nop   
/* 028AB0 80027EB0 13C2002B */  beq   $fp, $v0, .L80027F60
/* 028AB4 80027EB4 00000000 */   nop   
/* 028AB8 80027EB8 8CB80000 */  lw    $t8, ($a1)
/* 028ABC 80027EBC 0002C8C0 */  sll   $t9, $v0, 3
/* 028AC0 80027EC0 03194021 */  addu  $t0, $t8, $t9
/* 028AC4 80027EC4 8D040000 */  lw    $a0, ($t0)
/* 028AC8 80027EC8 24010100 */  li    $at, 256
/* 028ACC 80027ECC 94890012 */  lhu   $t1, 0x12($a0)
/* 028AD0 80027ED0 00000000 */  nop   
/* 028AD4 80027ED4 11210022 */  beq   $t1, $at, .L80027F60
/* 028AD8 80027ED8 00000000 */   nop   
/* 028ADC 80027EDC 948A0014 */  lhu   $t2, 0x14($a0)
/* 028AE0 80027EE0 00000000 */  nop   
/* 028AE4 80027EE4 1140001E */  beqz  $t2, .L80027F60
/* 028AE8 80027EE8 00000000 */   nop   
/* 028AEC 80027EEC 920B0007 */  lbu   $t3, 7($s0)
/* 028AF0 80027EF0 02552821 */  addu  $a1, $s2, $s5
/* 028AF4 80027EF4 000B6180 */  sll   $t4, $t3, 6
/* 028AF8 80027EF8 AFAC0058 */  sw    $t4, 0x58($sp)
/* 028AFC 80027EFC 8E0D0008 */  lw    $t5, 8($s0)
/* 028B00 80027F00 24A50008 */  addiu $a1, $a1, 8
/* 028B04 80027F04 000D7000 */  sll   $t6, $t5, 0
/* 028B08 80027F08 05C1000C */  bgez  $t6, .L80027F3C
/* 028B0C 80027F0C 02803025 */   move  $a2, $s4
/* 028B10 80027F10 92180006 */  lbu   $t8, 6($s0)
/* 028B14 80027F14 02803025 */  move  $a2, $s4
/* 028B18 80027F18 0198C825 */  or    $t9, $t4, $t8
/* 028B1C 80027F1C AFB90058 */  sw    $t9, 0x58($sp)
/* 028B20 80027F20 0C01FBE0 */  jal   func_8007EF80
/* 028B24 80027F24 02603825 */   move  $a3, $s3
/* 028B28 80027F28 8FA80058 */  lw    $t0, 0x58($sp)
/* 028B2C 80027F2C 00000000 */  nop   
/* 028B30 80027F30 3109003F */  andi  $t1, $t0, 0x3f
/* 028B34 80027F34 10000003 */  b     .L80027F44
/* 028B38 80027F38 A2090006 */   sb    $t1, 6($s0)
.L80027F3C:
/* 028B3C 80027F3C 0C01FBE0 */  jal   func_8007EF80
/* 028B40 80027F40 02603825 */   move  $a3, $s3
.L80027F44:
/* 028B44 80027F44 8FAA0058 */  lw    $t2, 0x58($sp)
/* 028B48 80027F48 3C05800E */  lui   $a1, %hi(gCurrentLevelModel) # $a1, 0x800e
/* 028B4C 80027F4C 000A6183 */  sra   $t4, $t2, 6
/* 028B50 80027F50 A20C0007 */  sb    $t4, 7($s0)
/* 028B54 80027F54 86C30020 */  lh    $v1, 0x20($s6)
/* 028B58 80027F58 8CA5C918 */  lw    $a1, %lo(gCurrentLevelModel)($a1)
/* 028B5C 80027F5C 00000000 */  nop   
.L80027F60:
/* 028B60 80027F60 26310001 */  addiu $s1, $s1, 1
/* 028B64 80027F64 0223082A */  slt   $at, $s1, $v1
/* 028B68 80027F68 2652000C */  addiu $s2, $s2, 0xc
/* 028B6C 80027F6C 1420FFC9 */  bnez  $at, .L80027E94
/* 028B70 80027F70 2610000C */   addiu $s0, $s0, 0xc
/* 028B74 80027F74 84A2001A */  lh    $v0, 0x1a($a1)
/* 028B78 80027F78 00000000 */  nop   
.L80027F7C:
/* 028B7C 80027F7C 8FAD006C */  lw    $t5, 0x6c($sp)
/* 028B80 80027F80 26D60044 */  addiu $s6, $s6, 0x44
/* 028B84 80027F84 25AE0001 */  addiu $t6, $t5, 1
/* 028B88 80027F88 01C2082A */  slt   $at, $t6, $v0
/* 028B8C 80027F8C 1420FFBB */  bnez  $at, .L80027E7C
/* 028B90 80027F90 AFAE006C */   sw    $t6, 0x6c($sp)
.L80027F94:
/* 028B94 80027F94 8FBF003C */  lw    $ra, 0x3c($sp)
/* 028B98 80027F98 8FB00018 */  lw    $s0, 0x18($sp)
/* 028B9C 80027F9C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 028BA0 80027FA0 8FB20020 */  lw    $s2, 0x20($sp)
/* 028BA4 80027FA4 8FB30024 */  lw    $s3, 0x24($sp)
/* 028BA8 80027FA8 8FB40028 */  lw    $s4, 0x28($sp)
/* 028BAC 80027FAC 8FB5002C */  lw    $s5, 0x2c($sp)
/* 028BB0 80027FB0 8FB60030 */  lw    $s6, 0x30($sp)
/* 028BB4 80027FB4 8FB70034 */  lw    $s7, 0x34($sp)
/* 028BB8 80027FB8 8FBE0038 */  lw    $fp, 0x38($sp)
/* 028BBC 80027FBC 03E00008 */  jr    $ra
/* 028BC0 80027FC0 27BD0070 */   addiu $sp, $sp, 0x70

