/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x800D2580 */

.include "macros.inc"

.set noat      # allow manual use of $at
.set noreorder # dont insert nops after branches
.set gp=64     # 64-bit instructions are used

glabel __osRestoreInt
/* 0D3180 800D2580 40086000 */  mfc0  $t0, $12
/* 0D3184 800D2584 01044025 */  or    $t0, $t0, $a0
/* 0D3188 800D2588 40886000 */  mtc0  $t0, $12
/* 0D318C 800D258C 00000000 */  nop   
/* 0D3190 800D2590 00000000 */  nop   
/* 0D3194 800D2594 03E00008 */  jr    $ra
/* 0D3198 800D2598 00000000 */   nop   

/* 0D319C 800D259C 00000000 */  nop 
