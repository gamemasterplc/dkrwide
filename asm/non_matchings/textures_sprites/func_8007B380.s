glabel func_8007B380
/* 07BF80 8007B380 04800006 */  bltz  $a0, .L8007B39C
/* 07BF84 8007B384 3C0E8012 */   lui   $t6, %hi(gNumberOfLoadedTextures) # $t6, 0x8012
/* 07BF88 8007B388 8DCE6330 */  lw    $t6, %lo(gNumberOfLoadedTextures)($t6)
/* 07BF8C 8007B38C 3C0F8012 */  lui   $t7, %hi(gTextureCache) # $t7, 0x8012
/* 07BF90 8007B390 008E082A */  slt   $at, $a0, $t6
/* 07BF94 8007B394 14200003 */  bnez  $at, .L8007B3A4
/* 07BF98 8007B398 00000000 */   nop   
.L8007B39C:
/* 07BF9C 8007B39C 03E00008 */  jr    $ra
/* 07BFA0 8007B3A0 00001025 */   move  $v0, $zero
.L8007B3A4:
/* 07BFA4 8007B3A4 8DEF6328 */  lw    $t7, %lo(gTextureCache)($t7)
/* 07BFA8 8007B3A8 0004C8C0 */  sll   $t9, $a0, 3
/* 07BFAC 8007B3AC 01F94021 */  addu  $t0, $t7, $t9
/* 07BFB0 8007B3B0 8D030004 */  lw    $v1, 4($t0)
/* 07BFB4 8007B3B4 2401FFFF */  li    $at, -1
/* 07BFB8 8007B3B8 14610003 */  bne   $v1, $at, .L8007B3C8
/* 07BFBC 8007B3BC 00601025 */   move  $v0, $v1
/* 07BFC0 8007B3C0 03E00008 */  jr    $ra
/* 07BFC4 8007B3C4 00001025 */   move  $v0, $zero
.L8007B3C8:
/* 07BFC8 8007B3C8 03E00008 */  jr    $ra
/* 07BFCC 8007B3CC 00000000 */   nop   
