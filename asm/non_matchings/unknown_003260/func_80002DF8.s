glabel func_80002DF8
/* 0039F8 80002DF8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0039FC 80002DFC AFBF0014 */  sw    $ra, 0x14($sp)
/* 003A00 80002E00 0C032388 */  jal   osAiGetLength
/* 003A04 80002E04 AFA40018 */   sw    $a0, 0x18($sp)
/* 003A08 80002E08 00027082 */  srl   $t6, $v0, 2
/* 003A0C 80002E0C 15C00006 */  bnez  $t6, .L80002E28
/* 003A10 80002E10 3C0F800E */   lui   $t7, %hi(D_800DC6A0) # $t7, 0x800e
/* 003A14 80002E14 8DEFC6A0 */  lw    $t7, %lo(D_800DC6A0)($t7)
/* 003A18 80002E18 3C01800E */  lui   $at, %hi(D_800DC6A0) # $at, 0x800e
/* 003A1C 80002E1C 15E00003 */  bnez  $t7, .L80002E2C
/* 003A20 80002E20 8FBF0014 */   lw    $ra, 0x14($sp)
/* 003A24 80002E24 AC20C6A0 */  sw    $zero, %lo(D_800DC6A0)($at)
.L80002E28:
/* 003A28 80002E28 8FBF0014 */  lw    $ra, 0x14($sp)
.L80002E2C:
/* 003A2C 80002E2C 27BD0018 */  addiu $sp, $sp, 0x18
/* 003A30 80002E30 03E00008 */  jr    $ra
/* 003A34 80002E34 00000000 */   nop   

