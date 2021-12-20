glabel func_800745D0
/* 0751D0 800745D0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0751D4 800745D4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0751D8 800745D8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0751DC 800745DC 30B000FF */  andi  $s0, $a1, 0xff
/* 0751E0 800745E0 AFB20020 */  sw    $s2, 0x20($sp)
/* 0751E4 800745E4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0751E8 800745E8 AFA40040 */  sw    $a0, 0x40($sp)
/* 0751EC 800745EC 0C01A840 */  jal   func_8006A100
/* 0751F0 800745F0 AFA50044 */   sw    $a1, 0x44($sp)
/* 0751F4 800745F4 0C033884 */  jal   osEepromProbe
/* 0751F8 800745F8 00402025 */   move  $a0, $v0
/* 0751FC 800745FC 14400003 */  bnez  $v0, .L8007460C
/* 075200 80074600 24040200 */   li    $a0, 512
/* 075204 80074604 10000034 */  b     .L800746D8
/* 075208 80074608 2402FFFF */   li    $v0, -1
.L8007460C:
/* 07520C 8007460C 0C01C327 */  jal   allocate_from_main_pool_safe
/* 075210 80074610 2405FFFF */   li    $a1, -1
/* 075214 80074614 320F0001 */  andi  $t7, $s0, 1
/* 075218 80074618 00409025 */  move  $s2, $v0
/* 07521C 8007461C 11E00014 */  beqz  $t7, .L80074670
/* 075220 80074620 AFB00028 */   sw    $s0, 0x28($sp)
/* 075224 80074624 24110018 */  li    $s1, 24
/* 075228 80074628 00008025 */  move  $s0, $zero
.L8007462C:
/* 07522C 8007462C 0C01A840 */  jal   func_8006A100
/* 075230 80074630 00000000 */   nop   
/* 075234 80074634 26050010 */  addiu $a1, $s0, 0x10
/* 075238 80074638 30B800FF */  andi  $t8, $a1, 0xff
/* 07523C 8007463C 0010C8C0 */  sll   $t9, $s0, 3
/* 075240 80074640 03323021 */  addu  $a2, $t9, $s2
/* 075244 80074644 03002825 */  move  $a1, $t8
/* 075248 80074648 0C0338A0 */  jal   osEepromRead
/* 07524C 8007464C 00402025 */   move  $a0, $v0
/* 075250 80074650 26100001 */  addiu $s0, $s0, 1
/* 075254 80074654 0211082A */  slt   $at, $s0, $s1
/* 075258 80074658 1420FFF4 */  bnez  $at, .L8007462C
/* 07525C 8007465C 00000000 */   nop   
/* 075260 80074660 8FA40040 */  lw    $a0, 0x40($sp)
/* 075264 80074664 02402825 */  move  $a1, $s2
/* 075268 80074668 0C01CD62 */  jal   func_80073588
/* 07526C 8007466C 24060001 */   li    $a2, 1
.L80074670:
/* 075270 80074670 8FA80028 */  lw    $t0, 0x28($sp)
/* 075274 80074674 24110018 */  li    $s1, 24
/* 075278 80074678 31090002 */  andi  $t1, $t0, 2
/* 07527C 8007467C 11200013 */  beqz  $t1, .L800746CC
/* 075280 80074680 00008025 */   move  $s0, $zero
.L80074684:
/* 075284 80074684 0C01A840 */  jal   func_8006A100
/* 075288 80074688 00000000 */   nop   
/* 07528C 8007468C 26050028 */  addiu $a1, $s0, 0x28
/* 075290 80074690 001058C0 */  sll   $t3, $s0, 3
/* 075294 80074694 024B3021 */  addu  $a2, $s2, $t3
/* 075298 80074698 30AA00FF */  andi  $t2, $a1, 0xff
/* 07529C 8007469C 01402825 */  move  $a1, $t2
/* 0752A0 800746A0 24C600C0 */  addiu $a2, $a2, 0xc0
/* 0752A4 800746A4 0C0338A0 */  jal   osEepromRead
/* 0752A8 800746A8 00402025 */   move  $a0, $v0
/* 0752AC 800746AC 26100001 */  addiu $s0, $s0, 1
/* 0752B0 800746B0 0211082A */  slt   $at, $s0, $s1
/* 0752B4 800746B4 1420FFF3 */  bnez  $at, .L80074684
/* 0752B8 800746B8 00000000 */   nop   
/* 0752BC 800746BC 8FA40040 */  lw    $a0, 0x40($sp)
/* 0752C0 800746C0 02402825 */  move  $a1, $s2
/* 0752C4 800746C4 0C01CD62 */  jal   func_80073588
/* 0752C8 800746C8 24060002 */   li    $a2, 2
.L800746CC:
/* 0752CC 800746CC 0C01C450 */  jal   free_from_memory_pool
/* 0752D0 800746D0 02402025 */   move  $a0, $s2
/* 0752D4 800746D4 00001025 */  move  $v0, $zero
.L800746D8:
/* 0752D8 800746D8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0752DC 800746DC 8FB00018 */  lw    $s0, 0x18($sp)
/* 0752E0 800746E0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0752E4 800746E4 8FB20020 */  lw    $s2, 0x20($sp)
/* 0752E8 800746E8 03E00008 */  jr    $ra
/* 0752EC 800746EC 27BD0040 */   addiu $sp, $sp, 0x40

