glabel __osSiDeviceBusy
/* 0D5EC0 800D52C0 3C0EA480 */  lui   $t6, %hi(SI_STATUS_REG) # $t6, 0xa480
/* 0D5EC4 800D52C4 8DC40018 */  lw    $a0, %lo(SI_STATUS_REG)($t6)
/* 0D5EC8 800D52C8 27BDFFF8 */  addiu $sp, $sp, -8
/* 0D5ECC 800D52CC 308F0003 */  andi  $t7, $a0, 3
/* 0D5ED0 800D52D0 11E00003 */  beqz  $t7, .L800D52E0
/* 0D5ED4 800D52D4 00000000 */   nop   
/* 0D5ED8 800D52D8 10000002 */  b     .L800D52E4
/* 0D5EDC 800D52DC 24020001 */   li    $v0, 1
.L800D52E0:
/* 0D5EE0 800D52E0 00001025 */  move  $v0, $zero
.L800D52E4:
/* 0D5EE4 800D52E4 03E00008 */  jr    $ra
/* 0D5EE8 800D52E8 27BD0008 */   addiu $sp, $sp, 8

/* 0D5EEC 800D52EC 00000000 */  nop   
