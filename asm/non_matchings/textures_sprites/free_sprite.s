glabel free_sprite
/* 07D8B0 8007CCB0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 07D8B4 8007CCB4 AFB2001C */  sw    $s2, 0x1c($sp)
/* 07D8B8 8007CCB8 00809025 */  move  $s2, $a0
/* 07D8BC 8007CCBC AFBF0024 */  sw    $ra, 0x24($sp)
/* 07D8C0 8007CCC0 AFB30020 */  sw    $s3, 0x20($sp)
/* 07D8C4 8007CCC4 AFB10018 */  sw    $s1, 0x18($sp)
/* 07D8C8 8007CCC8 10800036 */  beqz  $a0, .L8007CDA4
/* 07D8CC 8007CCCC AFB00014 */   sw    $s0, 0x14($sp)
/* 07D8D0 8007CCD0 848E0004 */  lh    $t6, 4($a0)
/* 07D8D4 8007CCD4 3C038012 */  lui   $v1, %hi(D_80126358) # $v1, 0x8012
/* 07D8D8 8007CCD8 25CFFFFF */  addiu $t7, $t6, -1
/* 07D8DC 8007CCDC A48F0004 */  sh    $t7, 4($a0)
/* 07D8E0 8007CCE0 84980004 */  lh    $t8, 4($a0)
/* 07D8E4 8007CCE4 00000000 */  nop   
/* 07D8E8 8007CCE8 1F00002F */  bgtz  $t8, .L8007CDA8
/* 07D8EC 8007CCEC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 07D8F0 8007CCF0 8C636358 */  lw    $v1, %lo(D_80126358)($v1)
/* 07D8F4 8007CCF4 00001025 */  move  $v0, $zero
/* 07D8F8 8007CCF8 1860002A */  blez  $v1, .L8007CDA4
/* 07D8FC 8007CCFC 3C048012 */   lui   $a0, %hi(gSpriteCache) # $a0, 0x8012
/* 07D900 8007CD00 8C84634C */  lw    $a0, %lo(gSpriteCache)($a0)
/* 07D904 8007CD04 00000000 */  nop   
/* 07D908 8007CD08 00409825 */  move  $s3, $v0
.L8007CD0C:
/* 07D90C 8007CD0C 0013C8C0 */  sll   $t9, $s3, 3
/* 07D910 8007CD10 00994021 */  addu  $t0, $a0, $t9
/* 07D914 8007CD14 8D090004 */  lw    $t1, 4($t0)
/* 07D918 8007CD18 03209825 */  move  $s3, $t9
/* 07D91C 8007CD1C 1649001E */  bne   $s2, $t1, .L8007CD98
/* 07D920 8007CD20 24420001 */   addiu $v0, $v0, 1
/* 07D924 8007CD24 864A0002 */  lh    $t2, 2($s2)
/* 07D928 8007CD28 00008025 */  move  $s0, $zero
/* 07D92C 8007CD2C 1940000C */  blez  $t2, .L8007CD60
/* 07D930 8007CD30 00008825 */   move  $s1, $zero
.L8007CD34:
/* 07D934 8007CD34 8E4B0008 */  lw    $t3, 8($s2)
/* 07D938 8007CD38 00000000 */  nop   
/* 07D93C 8007CD3C 01716021 */  addu  $t4, $t3, $s1
/* 07D940 8007CD40 8D840000 */  lw    $a0, ($t4)
/* 07D944 8007CD44 0C01ECAF */  jal   free_texture
/* 07D948 8007CD48 00000000 */   nop   
/* 07D94C 8007CD4C 864D0002 */  lh    $t5, 2($s2)
/* 07D950 8007CD50 26100001 */  addiu $s0, $s0, 1
/* 07D954 8007CD54 020D082A */  slt   $at, $s0, $t5
/* 07D958 8007CD58 1420FFF6 */  bnez  $at, .L8007CD34
/* 07D95C 8007CD5C 26310004 */   addiu $s1, $s1, 4
.L8007CD60:
/* 07D960 8007CD60 0C01C450 */  jal   free_from_memory_pool
/* 07D964 8007CD64 02402025 */   move  $a0, $s2
/* 07D968 8007CD68 3C028012 */  lui   $v0, %hi(gSpriteCache) # $v0, 0x8012
/* 07D96C 8007CD6C 2442634C */  addiu $v0, %lo(gSpriteCache) # addiu $v0, $v0, 0x634c
/* 07D970 8007CD70 8C4E0000 */  lw    $t6, ($v0)
/* 07D974 8007CD74 2403FFFF */  li    $v1, -1
/* 07D978 8007CD78 01D37821 */  addu  $t7, $t6, $s3
/* 07D97C 8007CD7C ADE30000 */  sw    $v1, ($t7)
/* 07D980 8007CD80 8C580000 */  lw    $t8, ($v0)
/* 07D984 8007CD84 00000000 */  nop   
/* 07D988 8007CD88 0313C821 */  addu  $t9, $t8, $s3
/* 07D98C 8007CD8C 10000005 */  b     .L8007CDA4
/* 07D990 8007CD90 AF230004 */   sw    $v1, 4($t9)
/* 07D994 8007CD94 24420001 */  addiu $v0, $v0, 1
.L8007CD98:
/* 07D998 8007CD98 0043082A */  slt   $at, $v0, $v1
/* 07D99C 8007CD9C 1420FFDB */  bnez  $at, .L8007CD0C
/* 07D9A0 8007CDA0 00409825 */   move  $s3, $v0
.L8007CDA4:
/* 07D9A4 8007CDA4 8FBF0024 */  lw    $ra, 0x24($sp)
.L8007CDA8:
/* 07D9A8 8007CDA8 8FB00014 */  lw    $s0, 0x14($sp)
/* 07D9AC 8007CDAC 8FB10018 */  lw    $s1, 0x18($sp)
/* 07D9B0 8007CDB0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 07D9B4 8007CDB4 8FB30020 */  lw    $s3, 0x20($sp)
/* 07D9B8 8007CDB8 03E00008 */  jr    $ra
/* 07D9BC 8007CDBC 27BD0028 */   addiu $sp, $sp, 0x28

