glabel func_80070130
/* 070D30 80070130 27BDFFF8 */  addiu $sp, $sp, -8
/* 070D34 80070134 00E0C825 */  move  $t9, $a3
/* 070D38 80070138 3C013780 */  li    $at, 0x37800000 # 0.000015
/* 070D3C 8007013C FFBF0000 */  sd    $ra, ($sp)
/* 070D40 80070140 00803825 */  move  $a3, $a0
/* 070D44 80070144 44819000 */  mtc1  $at, $f18
/* 070D48 80070148 0C01C20C */  jal   func_80070830
/* 070D4C 8007014C 00A02025 */   move  $a0, $a1
/* 070D50 80070150 44824000 */  mtc1  $v0, $f8
/* 070D54 80070154 00A02025 */  move  $a0, $a1
/* 070D58 80070158 46804220 */  cvt.s.w $f8, $f8
/* 070D5C 8007015C 46124202 */  mul.s $f8, $f8, $f18
/* 070D60 80070160 0C01C20B */  jal   func_8007082C
/* 070D64 80070164 00000000 */   nop   
/* 070D68 80070168 44825000 */  mtc1  $v0, $f10
/* 070D6C 8007016C 44868000 */  mtc1  $a2, $f16
/* 070D70 80070170 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 070D74 80070174 468052A0 */  cvt.s.w $f10, $f10
/* 070D78 80070178 E4F00028 */  swc1  $f16, 0x28($a3)
/* 070D7C 8007017C ACE00008 */  sw    $zero, 8($a3)
/* 070D80 80070180 ACE0000C */  sw    $zero, 0xc($a3)
/* 070D84 80070184 ACE00018 */  sw    $zero, 0x18($a3)
/* 070D88 80070188 ACE0001C */  sw    $zero, 0x1c($a3)
/* 070D8C 8007018C 46125282 */  mul.s $f10, $f10, $f18
/* 070D90 80070190 44999000 */  mtc1  $t9, $f18
/* 070D94 80070194 ACE00020 */  sw    $zero, 0x20($a3)
/* 070D98 80070198 ACE00024 */  sw    $zero, 0x24($a3)
/* 070D9C 8007019C ACE0002C */  sw    $zero, 0x2c($a3)
/* 070DA0 800701A0 ACE00030 */  sw    $zero, 0x30($a3)
/* 070DA4 800701A4 ACE00034 */  sw    $zero, 0x34($a3)
/* 070DA8 800701A8 46105282 */  mul.s $f10, $f10, $f16
/* 070DAC 800701AC ACE00038 */  sw    $zero, 0x38($a3)
/* 070DB0 800701B0 46104202 */  mul.s $f8, $f8, $f16
/* 070DB4 800701B4 44818000 */  mtc1  $at, $f16
/* 070DB8 800701B8 E4EA0000 */  swc1  $f10, ($a3)
/* 070DBC 800701BC 46125282 */  mul.s $f10, $f10, $f18
/* 070DC0 800701C0 E4F0003C */  swc1  $f16, 0x3c($a3)
/* 070DC4 800701C4 E4E80004 */  swc1  $f8, 4($a3)
/* 070DC8 800701C8 46004207 */  neg.s $f8, $f8
/* 070DCC 800701CC E4E80010 */  swc1  $f8, 0x10($a3)
/* 070DD0 800701D0 E4EA0014 */  swc1  $f10, 0x14($a3)
/* Check if in widescreen to do sprite matrix scaling */
jal is_widescreen
nop
beqz $v0, end
nop
/* Load 320/424 value */
lui $at, 0x3F41
ori $at, $at, 0x3522
mtc1 $at, $f10
/* Scale sprite matrix first column by 320/424 */
lwc1 $f8, 0($a3)
mul.s $f8, $f8, $f10
swc1 $f8, 0($a3)
lwc1 $f8, 0x10($a3)
mul.s $f8, $f8, $f10
swc1 $f8, 0x10($a3)
end:
/* 070DD4 800701D4 DFBF0000 */  ld    $ra, ($sp)
/* 070DD8 800701D8 27BD0008 */  addiu $sp, $sp, 8
/* 070DDC 800701DC 03E00008 */  jr    $ra
/* 070DE0 800701E0 00000000 */   nop   
