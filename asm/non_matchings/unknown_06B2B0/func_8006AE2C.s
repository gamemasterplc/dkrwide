# Unused.
glabel func_8006AE2C
/* 06BA2C 8006AE2C 3C028012 */  lui   $v0, %hi(gNumberOfLevelHeaders) # $v0, 0x8012
/* 06BA30 8006AE30 8C421170 */  lw    $v0, %lo(gNumberOfLevelHeaders)($v0)
/* 06BA34 8006AE34 AFA50004 */  sw    $a1, 4($sp)
/* 06BA38 8006AE38 00057600 */  sll   $t6, $a1, 0x18
/* 06BA3C 8006AE3C AFA60008 */  sw    $a2, 8($sp)
/* 06BA40 8006AE40 0006C600 */  sll   $t8, $a2, 0x18
/* 06BA44 8006AE44 0082082A */  slt   $at, $a0, $v0
/* 06BA48 8006AE48 00183603 */  sra   $a2, $t8, 0x18
/* 06BA4C 8006AE4C 14200002 */  bnez  $at, .L8006AE58
/* 06BA50 8006AE50 000E2E03 */   sra   $a1, $t6, 0x18
/* 06BA54 8006AE54 00402025 */  move  $a0, $v0
.L8006AE58:
/* 06BA58 8006AE58 24010040 */  li    $at, 64
/* 06BA5C 8006AE5C 10A10040 */  beq   $a1, $at, .L8006AF60
/* 06BA60 8006AE60 2484FFFF */   addiu $a0, $a0, -1
/* 06BA64 8006AE64 2402FFFF */  li    $v0, -1
/* 06BA68 8006AE68 14C20013 */  bne   $a2, $v0, .L8006AEB8
/* 06BA6C 8006AE6C 00000000 */   nop   
/* 06BA70 8006AE70 04800066 */  bltz  $a0, .L8006B00C
/* 06BA74 8006AE74 3C088012 */   lui   $t0, %hi(D_80121178+4) # $t0, 0x8012
/* 06BA78 8006AE78 00044880 */  sll   $t1, $a0, 2
/* 06BA7C 8006AE7C 8D08117C */  lw    $t0, %lo(D_80121178+4)($t0)
/* 06BA80 8006AE80 01244823 */  subu  $t1, $t1, $a0
/* 06BA84 8006AE84 00094840 */  sll   $t1, $t1, 1
/* 06BA88 8006AE88 01091021 */  addu  $v0, $t0, $t1
.L8006AE8C:
/* 06BA8C 8006AE8C 804A0001 */  lb    $t2, 1($v0)
/* 06BA90 8006AE90 00000000 */  nop   
/* 06BA94 8006AE94 14AA0003 */  bne   $a1, $t2, .L8006AEA4
/* 06BA98 8006AE98 00000000 */   nop   
/* 06BA9C 8006AE9C 03E00008 */  jr    $ra
/* 06BAA0 8006AEA0 00801025 */   move  $v0, $a0
.L8006AEA4:
/* 06BAA4 8006AEA4 2484FFFF */  addiu $a0, $a0, -1
/* 06BAA8 8006AEA8 0481FFF8 */  bgez  $a0, .L8006AE8C
/* 06BAAC 8006AEAC 2442FFFA */   addiu $v0, $v0, -6
/* 06BAB0 8006AEB0 10000057 */  b     .L8006B010
/* 06BAB4 8006AEB4 2402FFFF */   li    $v0, -1
.L8006AEB8:
/* 06BAB8 8006AEB8 14A20013 */  bne   $a1, $v0, .L8006AF08
/* 06BABC 8006AEBC 00000000 */   nop   
/* 06BAC0 8006AEC0 04800052 */  bltz  $a0, .L8006B00C
/* 06BAC4 8006AEC4 3C0B8012 */   lui   $t3, %hi(D_80121178+4) # $t3, 0x8012
/* 06BAC8 8006AEC8 00046080 */  sll   $t4, $a0, 2
/* 06BACC 8006AECC 8D6B117C */  lw    $t3, %lo(D_80121178+4)($t3)
/* 06BAD0 8006AED0 01846023 */  subu  $t4, $t4, $a0
/* 06BAD4 8006AED4 000C6040 */  sll   $t4, $t4, 1
/* 06BAD8 8006AED8 016C1021 */  addu  $v0, $t3, $t4
.L8006AEDC:
/* 06BADC 8006AEDC 804D0000 */  lb    $t5, ($v0)
/* 06BAE0 8006AEE0 00000000 */  nop   
/* 06BAE4 8006AEE4 14CD0003 */  bne   $a2, $t5, .L8006AEF4
/* 06BAE8 8006AEE8 00000000 */   nop   
/* 06BAEC 8006AEEC 03E00008 */  jr    $ra
/* 06BAF0 8006AEF0 00801025 */   move  $v0, $a0
.L8006AEF4:
/* 06BAF4 8006AEF4 2484FFFF */  addiu $a0, $a0, -1
/* 06BAF8 8006AEF8 0481FFF8 */  bgez  $a0, .L8006AEDC
/* 06BAFC 8006AEFC 2442FFFA */   addiu $v0, $v0, -6
/* 06BB00 8006AF00 10000043 */  b     .L8006B010
/* 06BB04 8006AF04 2402FFFF */   li    $v0, -1
.L8006AF08:
/* 06BB08 8006AF08 04800040 */  bltz  $a0, .L8006B00C
/* 06BB0C 8006AF0C 3C0E8012 */   lui   $t6, %hi(D_80121178+4) # $t6, 0x8012
/* 06BB10 8006AF10 00047880 */  sll   $t7, $a0, 2
/* 06BB14 8006AF14 8DCE117C */  lw    $t6, %lo(D_80121178+4)($t6)
/* 06BB18 8006AF18 01E47823 */  subu  $t7, $t7, $a0
/* 06BB1C 8006AF1C 000F7840 */  sll   $t7, $t7, 1
/* 06BB20 8006AF20 01CF1021 */  addu  $v0, $t6, $t7
.L8006AF24:
/* 06BB24 8006AF24 80580001 */  lb    $t8, 1($v0)
/* 06BB28 8006AF28 00000000 */  nop   
/* 06BB2C 8006AF2C 14B80007 */  bne   $a1, $t8, .L8006AF4C
/* 06BB30 8006AF30 00000000 */   nop   
/* 06BB34 8006AF34 80590000 */  lb    $t9, ($v0)
/* 06BB38 8006AF38 00000000 */  nop   
/* 06BB3C 8006AF3C 14D90003 */  bne   $a2, $t9, .L8006AF4C
/* 06BB40 8006AF40 00000000 */   nop   
/* 06BB44 8006AF44 03E00008 */  jr    $ra
/* 06BB48 8006AF48 00801025 */   move  $v0, $a0
.L8006AF4C:
/* 06BB4C 8006AF4C 2484FFFF */  addiu $a0, $a0, -1
/* 06BB50 8006AF50 0481FFF4 */  bgez  $a0, .L8006AF24
/* 06BB54 8006AF54 2442FFFA */   addiu $v0, $v0, -6
/* 06BB58 8006AF58 1000002D */  b     .L8006B010
/* 06BB5C 8006AF5C 2402FFFF */   li    $v0, -1
.L8006AF60:
/* 06BB60 8006AF60 2402FFFF */  li    $v0, -1
/* 06BB64 8006AF64 14C20014 */  bne   $a2, $v0, .L8006AFB8
/* 06BB68 8006AF68 00000000 */   nop   
/* 06BB6C 8006AF6C 04800027 */  bltz  $a0, .L8006B00C
/* 06BB70 8006AF70 3C088012 */   lui   $t0, %hi(D_80121178+4) # $t0, 0x8012
/* 06BB74 8006AF74 00044880 */  sll   $t1, $a0, 2
/* 06BB78 8006AF78 8D08117C */  lw    $t0, %lo(D_80121178+4)($t0)
/* 06BB7C 8006AF7C 01244823 */  subu  $t1, $t1, $a0
/* 06BB80 8006AF80 00094840 */  sll   $t1, $t1, 1
/* 06BB84 8006AF84 01091021 */  addu  $v0, $t0, $t1
.L8006AF88:
/* 06BB88 8006AF88 804A0001 */  lb    $t2, 1($v0)
/* 06BB8C 8006AF8C 00000000 */  nop   
/* 06BB90 8006AF90 314B0040 */  andi  $t3, $t2, 0x40
/* 06BB94 8006AF94 11600003 */  beqz  $t3, .L8006AFA4
/* 06BB98 8006AF98 00000000 */   nop   
/* 06BB9C 8006AF9C 03E00008 */  jr    $ra
/* 06BBA0 8006AFA0 00801025 */   move  $v0, $a0
.L8006AFA4:
/* 06BBA4 8006AFA4 2484FFFF */  addiu $a0, $a0, -1
/* 06BBA8 8006AFA8 0481FFF7 */  bgez  $a0, .L8006AF88
/* 06BBAC 8006AFAC 2442FFFA */   addiu $v0, $v0, -6
/* 06BBB0 8006AFB0 10000017 */  b     .L8006B010
/* 06BBB4 8006AFB4 2402FFFF */   li    $v0, -1
.L8006AFB8:
/* 06BBB8 8006AFB8 04800014 */  bltz  $a0, .L8006B00C
/* 06BBBC 8006AFBC 3C0C8012 */   lui   $t4, %hi(D_80121178+4) # $t4, 0x8012
/* 06BBC0 8006AFC0 00046880 */  sll   $t5, $a0, 2
/* 06BBC4 8006AFC4 8D8C117C */  lw    $t4, %lo(D_80121178+4)($t4)
/* 06BBC8 8006AFC8 01A46823 */  subu  $t5, $t5, $a0
/* 06BBCC 8006AFCC 000D6840 */  sll   $t5, $t5, 1
/* 06BBD0 8006AFD0 018D1021 */  addu  $v0, $t4, $t5
.L8006AFD4:
/* 06BBD4 8006AFD4 804E0001 */  lb    $t6, 1($v0)
/* 06BBD8 8006AFD8 00000000 */  nop   
/* 06BBDC 8006AFDC 31CF0040 */  andi  $t7, $t6, 0x40
/* 06BBE0 8006AFE0 11E00007 */  beqz  $t7, .L8006B000
/* 06BBE4 8006AFE4 00000000 */   nop   
/* 06BBE8 8006AFE8 80580000 */  lb    $t8, ($v0)
/* 06BBEC 8006AFEC 00000000 */  nop   
/* 06BBF0 8006AFF0 14D80003 */  bne   $a2, $t8, .L8006B000
/* 06BBF4 8006AFF4 00000000 */   nop   
/* 06BBF8 8006AFF8 03E00008 */  jr    $ra
/* 06BBFC 8006AFFC 00801025 */   move  $v0, $a0
.L8006B000:
/* 06BC00 8006B000 2484FFFF */  addiu $a0, $a0, -1
/* 06BC04 8006B004 0481FFF3 */  bgez  $a0, .L8006AFD4
/* 06BC08 8006B008 2442FFFA */   addiu $v0, $v0, -6
.L8006B00C:
/* 06BC0C 8006B00C 2402FFFF */  li    $v0, -1
.L8006B010:
/* 06BC10 8006B010 03E00008 */  jr    $ra
/* 06BC14 8006B014 00000000 */   nop   
