# Unused
glabel func_8007C860
/* 07D4A0 8007C8A0 04800006 */  bltz  $a0, .L8007C8BC
/* 07D4A4 8007C8A4 3C0E8012 */   lui   $t6, %hi(D_80126358) # $t6, 0x8012
/* 07D4A8 8007C8A8 8DCE6358 */  lw    $t6, %lo(D_80126358)($t6)
/* 07D4AC 8007C8AC 3C0F8012 */  lui   $t7, %hi(gSpriteCache) # $t7, 0x8012
/* 07D4B0 8007C8B0 008E082A */  slt   $at, $a0, $t6
/* 07D4B4 8007C8B4 14200003 */  bnez  $at, .L8007C8C4
/* 07D4B8 8007C8B8 00000000 */   nop   
.L8007C8BC:
/* 07D4BC 8007C8BC 03E00008 */  jr    $ra
/* 07D4C0 8007C8C0 2402FFFF */   li    $v0, -1
.L8007C8C4:
/* 07D4C4 8007C8C4 8DEF634C */  lw    $t7, %lo(gSpriteCache)($t7)
/* 07D4C8 8007C8C8 0004C8C0 */  sll   $t9, $a0, 3
/* 07D4CC 8007C8CC 01F94021 */  addu  $t0, $t7, $t9
/* 07D4D0 8007C8D0 8D020000 */  lw    $v0, ($t0)
/* 07D4D4 8007C8D4 00000000 */  nop   
/* 07D4D8 8007C8D8 03E00008 */  jr    $ra
/* 07D4DC 8007C8DC 00000000 */   nop   
