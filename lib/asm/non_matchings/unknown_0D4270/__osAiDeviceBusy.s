glabel __osAiDeviceBusy
/* 0D4270 800D3670 3C0EA450 */  lui   $t6, %hi(AI_STATUS_REG) # $t6, 0xa450
/* 0D4274 800D3674 8DC4000C */  lw    $a0, %lo(AI_STATUS_REG)($t6)
/* 0D4278 800D3678 3C018000 */  lui   $at, 0x8000
/* 0D427C 800D367C 27BDFFF8 */  addiu $sp, $sp, -8
/* 0D4280 800D3680 00817824 */  and   $t7, $a0, $at
/* 0D4284 800D3684 11E00003 */  beqz  $t7, .L800D3694
/* 0D4288 800D3688 00000000 */   nop   
/* 0D428C 800D368C 10000002 */  b     .L800D3698
/* 0D4290 800D3690 24020001 */   li    $v0, 1
.L800D3694:
/* 0D4294 800D3694 00001025 */  move  $v0, $zero
.L800D3698:
/* 0D4298 800D3698 03E00008 */  jr    $ra
/* 0D429C 800D369C 27BD0008 */   addiu $sp, $sp, 8
