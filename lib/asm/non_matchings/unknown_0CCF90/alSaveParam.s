glabel alSaveParam
/* 0CD0E0 800CC4E0 24010001 */  li    $at, 1
/* 0CD0E4 800CC4E4 10A10006 */  beq   $a1, $at, .L800CC500
/* 0CD0E8 800CC4E8 00001025 */   move  $v0, $zero
/* 0CD0EC 800CC4EC 24010006 */  li    $at, 6
/* 0CD0F0 800CC4F0 50A10006 */  beql  $a1, $at, .L800CC50C
/* 0CD0F4 800CC4F4 AC860014 */   sw    $a2, 0x14($a0)
/* 0CD0F8 800CC4F8 03E00008 */  jr    $ra
/* 0CD0FC 800CC4FC 00001025 */   move  $v0, $zero

.L800CC500:
/* 0CD100 800CC500 03E00008 */  jr    $ra
/* 0CD104 800CC504 AC860000 */   sw    $a2, ($a0)

/* 0CD108 800CC508 AC860014 */  sw    $a2, 0x14($a0)
.L800CC50C:
/* 0CD10C 800CC50C 03E00008 */  jr    $ra
/* 0CD110 800CC510 00001025 */   move  $v0, $zero

