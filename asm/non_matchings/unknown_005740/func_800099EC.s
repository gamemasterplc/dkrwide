.late_rodata
glabel D_800E4F18
.double -100000.0

.text
glabel func_800099EC
/* 00A5EC 800099EC 308E00FF */  andi  $t6, $a0, 0xff
/* 00A5F0 800099F0 000E7880 */  sll   $t7, $t6, 2
/* 00A5F4 800099F4 01EE7823 */  subu  $t7, $t7, $t6
/* 00A5F8 800099F8 3C188012 */  lui   $t8, %hi(D_80119C58) # $t8, 0x8012
/* 00A5FC 800099FC 27189C58 */  addiu $t8, %lo(D_80119C58) # addiu $t8, $t8, -0x63a8
/* 00A600 80009A00 000F79C0 */  sll   $t7, $t7, 7
/* 00A604 80009A04 AFA40000 */  sw    $a0, ($sp)
/* 00A608 80009A08 01F81021 */  addu  $v0, $t7, $t8
/* 00A60C 80009A0C 8047017C */  lb    $a3, 0x17c($v0)
/* 00A610 80009A10 24030001 */  li    $v1, 1
/* 00A614 80009A14 1CE00003 */  bgtz  $a3, .L80009A24
/* 00A618 80009A18 24460004 */   addiu $a2, $v0, 4
/* 00A61C 80009A1C 03E00008 */  jr    $ra
/* 00A620 80009A20 00001025 */   move  $v0, $zero

.L80009A24:
/* 00A624 80009A24 18E00020 */  blez  $a3, .L80009AA8
/* 00A628 80009A28 00002025 */   move  $a0, $zero
/* 00A62C 80009A2C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 00A630 80009A30 44817000 */  mtc1  $at, $f14
/* 00A634 80009A34 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 00A638 80009A38 44816000 */  mtc1  $at, $f12
/* 00A63C 80009A3C 3C01800E */  lui   $at, %hi(D_800E4F18 + 4) # $at, 0x800e
/* 00A640 80009A40 C4234F18 */  lwc1  $f3, %lo(D_800E4F18)($at)
/* 00A644 80009A44 C4224F1C */  lwc1  $f2, %lo(D_800E4F18 + 4)($at)
/* 00A648 80009A48 8045017C */  lb    $a1, 0x17c($v0)
/* 00A64C 80009A4C 00000000 */  nop   
.L80009A50:
/* 00A650 80009A50 C4C00000 */  lwc1  $f0, ($a2)
/* 00A654 80009A54 24840001 */  addiu $a0, $a0, 1
/* 00A658 80009A58 46000121 */  cvt.d.s $f4, $f0
/* 00A65C 80009A5C 46241032 */  c.eq.d $f2, $f4
/* 00A660 80009A60 0085082A */  slt   $at, $a0, $a1
/* 00A664 80009A64 4501000D */  bc1t  .L80009A9C
/* 00A668 80009A68 00000000 */   nop   
/* 00A66C 80009A6C 460C0180 */  add.s $f6, $f0, $f12
/* 00A670 80009A70 46003221 */  cvt.d.s $f8, $f6
/* 00A674 80009A74 46281032 */  c.eq.d $f2, $f8
/* 00A678 80009A78 00000000 */  nop   
/* 00A67C 80009A7C 45010007 */  bc1t  .L80009A9C
/* 00A680 80009A80 00000000 */   nop   
/* 00A684 80009A84 460E0280 */  add.s $f10, $f0, $f14
/* 00A688 80009A88 46005421 */  cvt.d.s $f16, $f10
/* 00A68C 80009A8C 46301032 */  c.eq.d $f2, $f16
/* 00A690 80009A90 00000000 */  nop   
/* 00A694 80009A94 45000002 */  bc1f  .L80009AA0
/* 00A698 80009A98 00000000 */   nop   
.L80009A9C:
/* 00A69C 80009A9C 00001825 */  move  $v1, $zero
.L80009AA0:
/* 00A6A0 80009AA0 1420FFEB */  bnez  $at, .L80009A50
/* 00A6A4 80009AA4 24C6000C */   addiu $a2, $a2, 0xc
.L80009AA8:
/* 00A6A8 80009AA8 00601025 */  move  $v0, $v1
/* 00A6AC 80009AAC 03E00008 */  jr    $ra
/* 00A6B0 80009AB0 00000000 */   nop   

