glabel alSeqFileNew
/* 0C83A8 800C77A8 848E0002 */  lh    $t6, 2($a0)
/* 0C83AC 800C77AC 00001025 */  move  $v0, $zero
/* 0C83B0 800C77B0 00801825 */  move  $v1, $a0
/* 0C83B4 800C77B4 19C0000A */  blez  $t6, .L800C77E0
/* 0C83B8 800C77B8 00000000 */   nop   
/* 0C83BC 800C77BC 8C6F0004 */  lw    $t7, 4($v1)
.L800C77C0:
/* 0C83C0 800C77C0 24420001 */  addiu $v0, $v0, 1
/* 0C83C4 800C77C4 24630008 */  addiu $v1, $v1, 8
/* 0C83C8 800C77C8 01E5C021 */  addu  $t8, $t7, $a1
/* 0C83CC 800C77CC AC78FFFC */  sw    $t8, -4($v1)
/* 0C83D0 800C77D0 84990002 */  lh    $t9, 2($a0)
/* 0C83D4 800C77D4 0059082A */  slt   $at, $v0, $t9
/* 0C83D8 800C77D8 5420FFF9 */  bnezl $at, .L800C77C0
/* 0C83DC 800C77DC 8C6F0004 */   lw    $t7, 4($v1)
.L800C77E0:
/* 0C83E0 800C77E0 03E00008 */  jr    $ra
/* 0C83E4 800C77E4 00000000 */   nop   

/* 0C83E8 800C77E8 00000000 */  nop   
/* 0C83EC 800C77EC 00000000 */  nop   

