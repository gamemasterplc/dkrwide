glabel func_8007480C
/* 07540C 8007480C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 075410 80074810 AFB20020 */  sw    $s2, 0x20($sp)
/* 075414 80074814 AFB1001C */  sw    $s1, 0x1c($sp)
/* 075418 80074818 AFB00018 */  sw    $s0, 0x18($sp)
/* 07541C 8007481C AFBF0024 */  sw    $ra, 0x24($sp)
/* 075420 80074820 AFA40028 */  sw    $a0, 0x28($sp)
/* 075424 80074824 AFA5002C */  sw    $a1, 0x2c($sp)
/* 075428 80074828 24110005 */  li    $s1, 5
/* 07542C 8007482C 00008025 */  move  $s0, $zero
/* 075430 80074830 2412000E */  li    $s2, 14
.L80074834:
/* 075434 80074834 8FA40028 */  lw    $a0, 0x28($sp)
/* 075438 80074838 8FA5002C */  lw    $a1, 0x2c($sp)
/* 07543C 8007483C 00103880 */  sll   $a3, $s0, 2
/* 075440 80074840 0C033A98 */  jal   __ull_rshift
/* 075444 80074844 000737C3 */   sra   $a2, $a3, 0x1f
/* 075448 80074848 26100001 */  addiu $s0, $s0, 1
/* 07544C 8007484C 3079000F */  andi  $t9, $v1, 0xf
/* 075450 80074850 1612FFF8 */  bne   $s0, $s2, .L80074834
/* 075454 80074854 02398821 */   addu  $s1, $s1, $t9
/* 075458 80074858 8FBF0024 */  lw    $ra, 0x24($sp)
/* 07545C 8007485C 02201025 */  move  $v0, $s1
/* 075460 80074860 8FB1001C */  lw    $s1, 0x1c($sp)
/* 075464 80074864 8FB00018 */  lw    $s0, 0x18($sp)
/* 075468 80074868 8FB20020 */  lw    $s2, 0x20($sp)
/* 07546C 8007486C 03E00008 */  jr    $ra
/* 075470 80074870 27BD0028 */   addiu $sp, $sp, 0x28

