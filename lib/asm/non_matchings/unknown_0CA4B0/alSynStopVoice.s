glabel alSynStopVoice
/* 0CA4B0 800C98B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CA4B4 800C98B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CA4B8 800C98B8 AFA40018 */  sw    $a0, 0x18($sp)
/* 0CA4BC 800C98BC 8CAE0008 */  lw    $t6, 8($a1)
/* 0CA4C0 800C98C0 51C00016 */  beql  $t6, $zero, .L800C991C
/* 0CA4C4 800C98C4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0CA4C8 800C98C8 0C01959A */  jal   __allocParam
/* 0CA4CC 800C98CC AFA5001C */   sw    $a1, 0x1c($sp)
/* 0CA4D0 800C98D0 8FA7001C */  lw    $a3, 0x1c($sp)
/* 0CA4D4 800C98D4 10400010 */  beqz  $v0, .L800C9918
/* 0CA4D8 800C98D8 00403025 */   move  $a2, $v0
/* 0CA4DC 800C98DC 8FAF0018 */  lw    $t7, 0x18($sp)
/* 0CA4E0 800C98E0 8CF90008 */  lw    $t9, 8($a3)
/* 0CA4E4 800C98E4 240A000F */  li    $t2, 15
/* 0CA4E8 800C98E8 8DF8001C */  lw    $t8, 0x1c($t7)
/* 0CA4EC 800C98EC 8F2800D8 */  lw    $t0, 0xd8($t9)
/* 0CA4F0 800C98F0 A44A0008 */  sh    $t2, 8($v0)
/* 0CA4F4 800C98F4 AC400000 */  sw    $zero, ($v0)
/* 0CA4F8 800C98F8 03084821 */  addu  $t1, $t8, $t0
/* 0CA4FC 800C98FC AC490004 */  sw    $t1, 4($v0)
/* 0CA500 800C9900 8CEB0008 */  lw    $t3, 8($a3)
/* 0CA504 800C9904 24050003 */  li    $a1, 3
/* 0CA508 800C9908 8D64000C */  lw    $a0, 0xc($t3)
/* 0CA50C 800C990C 8C990008 */  lw    $t9, 8($a0)
/* 0CA510 800C9910 0320F809 */  jalr  $t9
/* 0CA514 800C9914 00000000 */  nop   
.L800C9918:
/* 0CA518 800C9918 8FBF0014 */  lw    $ra, 0x14($sp)
.L800C991C:
/* 0CA51C 800C991C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CA520 800C9920 03E00008 */  jr    $ra
/* 0CA524 800C9924 00000000 */   nop   

/* 0CA528 800C9928 00000000 */  nop   
/* 0CA52C 800C992C 00000000 */  nop   

