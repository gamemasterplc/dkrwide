glabel alSynStartVoice
/* 0CA2F0 800C96F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CA2F4 800C96F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CA2F8 800C96F8 AFA40018 */  sw    $a0, 0x18($sp)
/* 0CA2FC 800C96FC AFA60020 */  sw    $a2, 0x20($sp)
/* 0CA300 800C9700 8CAE0008 */  lw    $t6, 8($a1)
/* 0CA304 800C9704 51C0001A */  beql  $t6, $zero, .L800C9770
/* 0CA308 800C9708 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0CA30C 800C970C 0C01959A */  jal   __allocParam
/* 0CA310 800C9710 AFA5001C */   sw    $a1, 0x1c($sp)
/* 0CA314 800C9714 8FA7001C */  lw    $a3, 0x1c($sp)
/* 0CA318 800C9718 10400014 */  beqz  $v0, .L800C976C
/* 0CA31C 800C971C 00403025 */   move  $a2, $v0
/* 0CA320 800C9720 8FAF0018 */  lw    $t7, 0x18($sp)
/* 0CA324 800C9724 8CF90008 */  lw    $t9, 8($a3)
/* 0CA328 800C9728 240A000E */  li    $t2, 14
/* 0CA32C 800C972C 8DF8001C */  lw    $t8, 0x1c($t7)
/* 0CA330 800C9730 8F2800D8 */  lw    $t0, 0xd8($t9)
/* 0CA334 800C9734 A44A0008 */  sh    $t2, 8($v0)
/* 0CA338 800C9738 24050003 */  li    $a1, 3
/* 0CA33C 800C973C 03084821 */  addu  $t1, $t8, $t0
/* 0CA340 800C9740 AC490004 */  sw    $t1, 4($v0)
/* 0CA344 800C9744 8FAB0020 */  lw    $t3, 0x20($sp)
/* 0CA348 800C9748 AC400000 */  sw    $zero, ($v0)
/* 0CA34C 800C974C AC4B000C */  sw    $t3, 0xc($v0)
/* 0CA350 800C9750 84EC001A */  lh    $t4, 0x1a($a3)
/* 0CA354 800C9754 A44C000A */  sh    $t4, 0xa($v0)
/* 0CA358 800C9758 8CED0008 */  lw    $t5, 8($a3)
/* 0CA35C 800C975C 8DA4000C */  lw    $a0, 0xc($t5)
/* 0CA360 800C9760 8C990008 */  lw    $t9, 8($a0)
/* 0CA364 800C9764 0320F809 */  jalr  $t9
/* 0CA368 800C9768 00000000 */  nop   
.L800C976C:
/* 0CA36C 800C976C 8FBF0014 */  lw    $ra, 0x14($sp)
.L800C9770:
/* 0CA370 800C9770 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CA374 800C9774 03E00008 */  jr    $ra
/* 0CA378 800C9778 00000000 */   nop   

/* 0CA37C 800C977C 00000000 */  nop   

