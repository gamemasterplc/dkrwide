glabel func_80069A40
/* 06A640 80069A40 3C058012 */  lui   $a1, %hi(D_80120D20) # $a1, 0x8012
/* 06A644 80069A44 3C068012 */  lui   $a2, %hi(D_80120D1C) # $a2, 0x8012
/* 06A648 80069A48 24C60D1C */  addiu $a2, %lo(D_80120D1C) # addiu $a2, $a2, 0xd1c
/* 06A64C 80069A4C 24A50D20 */  addiu $a1, %lo(D_80120D20) # addiu $a1, $a1, 0xd20
/* 06A650 80069A50 8CAE0000 */  lw    $t6, ($a1)
/* 06A654 80069A54 8CD80000 */  lw    $t8, ($a2)
/* 06A658 80069A58 25CFFFFF */  addiu $t7, $t6, -1
/* 06A65C 80069A5C 2719FFFF */  addiu $t9, $t8, -1
/* 06A660 80069A60 ACAF0000 */  sw    $t7, ($a1)
/* 06A664 80069A64 1B200010 */  blez  $t9, .L80069AA8
/* 06A668 80069A68 ACD90000 */   sw    $t9, ($a2)
/* 06A66C 80069A6C 8C830000 */  lw    $v1, ($a0)
/* 06A670 80069A70 3C0A0140 */  lui   $t2, (0x01400040 >> 16) # lui $t2, 0x140
/* 06A674 80069A74 24690008 */  addiu $t1, $v1, 8
/* 06A678 80069A78 AC890000 */  sw    $t1, ($a0)
/* 06A67C 80069A7C 354A0040 */  ori   $t2, (0x01400040 & 0xFFFF) # ori $t2, $t2, 0x40
/* 06A680 80069A80 AC6A0000 */  sw    $t2, ($v1)
/* 06A684 80069A84 8CCB0000 */  lw    $t3, ($a2)
/* 06A688 80069A88 3C0D8012 */  lui   $t5, %hi(D_80120D88) # $t5, 0x8012
/* 06A68C 80069A8C 000B6080 */  sll   $t4, $t3, 2
/* 06A690 80069A90 01AC6821 */  addu  $t5, $t5, $t4
/* 06A694 80069A94 8DAD0D88 */  lw    $t5, %lo(D_80120D88)($t5)
/* 06A698 80069A98 3C018000 */  lui   $at, 0x8000
/* 06A69C 80069A9C 01A17021 */  addu  $t6, $t5, $at
/* 06A6A0 80069AA0 03E00008 */  jr    $ra
/* 06A6A4 80069AA4 AC6E0004 */   sw    $t6, 4($v1)

.L80069AA8:
/* 06A6A8 80069AA8 8C830000 */  lw    $v1, ($a0)
/* 06A6AC 80069AAC 3C18BC00 */  lui   $t8, (0xBC00000A >> 16) # lui $t8, 0xbc00
/* 06A6B0 80069AB0 246F0008 */  addiu $t7, $v1, 8
/* 06A6B4 80069AB4 AC8F0000 */  sw    $t7, ($a0)
/* 06A6B8 80069AB8 3718000A */  ori   $t8, (0xBC00000A & 0xFFFF) # ori $t8, $t8, 0xa
/* 06A6BC 80069ABC AC780000 */  sw    $t8, ($v1)
/* 06A6C0 80069AC0 AC600004 */  sw    $zero, 4($v1)
/* 06A6C4 80069AC4 03E00008 */  jr    $ra
/* 06A6C8 80069AC8 00000000 */   nop   

/* 06A6CC 80069ACC 3C0E8012 */  lui   $t6, %hi(D_80120CE4) # $t6, 0x8012
/* 06A6D0 80069AD0 8DCE0CE4 */  lw    $t6, %lo(D_80120CE4)($t6)
/* 06A6D4 80069AD4 3C188012 */  lui   $t8, %hi(D_80120AC0) # $t8, 0x8012
/* 06A6D8 80069AD8 000E7900 */  sll   $t7, $t6, 4
/* 06A6DC 80069ADC 01EE7821 */  addu  $t7, $t7, $t6
/* 06A6E0 80069AE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 06A6E4 80069AE4 000F7880 */  sll   $t7, $t7, 2
/* 06A6E8 80069AE8 27180AC0 */  addiu $t8, %lo(D_80120AC0) # addiu $t8, $t8, 0xac0
/* 06A6EC 80069AEC E7AC0018 */  swc1  $f12, 0x18($sp)
/* 06A6F0 80069AF0 01F81021 */  addu  $v0, $t7, $t8
/* 06A6F4 80069AF4 C444000C */  lwc1  $f4, 0xc($v0)
/* 06A6F8 80069AF8 C7A60018 */  lwc1  $f6, 0x18($sp)
/* 06A6FC 80069AFC E7AE001C */  swc1  $f14, 0x1c($sp)
/* 06A700 80069B00 46062200 */  add.s $f8, $f4, $f6
/* 06A704 80069B04 AFA60020 */  sw    $a2, 0x20($sp)
/* 06A708 80069B08 C7B0001C */  lwc1  $f16, 0x1c($sp)
/* 06A70C 80069B0C C44A0010 */  lwc1  $f10, 0x10($v0)
/* 06A710 80069B10 C7A60020 */  lwc1  $f6, 0x20($sp)
/* 06A714 80069B14 C4440014 */  lwc1  $f4, 0x14($v0)
/* 06A718 80069B18 E448000C */  swc1  $f8, 0xc($v0)
/* 06A71C 80069B1C 46105480 */  add.s $f18, $f10, $f16
/* 06A720 80069B20 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06A724 80069B24 46062200 */  add.s $f8, $f4, $f6
/* 06A728 80069B28 E4520010 */  swc1  $f18, 0x10($v0)
/* 06A72C 80069B2C E4480014 */  swc1  $f8, 0x14($v0)
/* 06A730 80069B30 8C460014 */  lw    $a2, 0x14($v0)
/* 06A734 80069B34 C44E0010 */  lwc1  $f14, 0x10($v0)
/* 06A738 80069B38 C44C000C */  lwc1  $f12, 0xc($v0)
/* 06A73C 80069B3C 0C00A7C6 */  jal   get_level_segment_index_from_position
/* 06A740 80069B40 00000000 */   nop   
/* 06A744 80069B44 3C198012 */  lui   $t9, %hi(D_80120CE4) # $t9, 0x8012
/* 06A748 80069B48 8F390CE4 */  lw    $t9, %lo(D_80120CE4)($t9)
/* 06A74C 80069B4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06A750 80069B50 00194100 */  sll   $t0, $t9, 4
/* 06A754 80069B54 01194021 */  addu  $t0, $t0, $t9
/* 06A758 80069B58 00084080 */  sll   $t0, $t0, 2
/* 06A75C 80069B5C 3C018012 */  lui   $at, %hi(D_80120AC0+52) # $at, 0x8012
/* 06A760 80069B60 00280821 */  addu  $at, $at, $t0
/* 06A764 80069B64 A4220AF4 */  sh    $v0, %lo(D_80120AC0+52)($at)
/* 06A768 80069B68 03E00008 */  jr    $ra
/* 06A76C 80069B6C 27BD0018 */   addiu $sp, $sp, 0x18

/* 06A770 80069B70 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 06A774 80069B74 AFB2001C */  sw    $s2, 0x1c($sp)
/* 06A778 80069B78 3C128012 */  lui   $s2, %hi(D_80120CE4) # $s2, 0x8012
/* 06A77C 80069B7C 26520CE4 */  addiu $s2, %lo(D_80120CE4) # addiu $s2, $s2, 0xce4
/* 06A780 80069B80 8E4E0000 */  lw    $t6, ($s2)
/* 06A784 80069B84 AFB30020 */  sw    $s3, 0x20($sp)
/* 06A788 80069B88 24130044 */  li    $s3, 68
/* 06A78C 80069B8C 01D30019 */  multu $t6, $s3
/* 06A790 80069B90 AFB10018 */  sw    $s1, 0x18($sp)
/* 06A794 80069B94 3C118012 */  lui   $s1, %hi(D_80120AC0) # $s1, 0x8012
/* 06A798 80069B98 26310AC0 */  addiu $s1, %lo(D_80120AC0) # addiu $s1, $s1, 0xac0
/* 06A79C 80069B9C AFBF0024 */  sw    $ra, 0x24($sp)
/* 06A7A0 80069BA0 AFB00014 */  sw    $s0, 0x14($sp)
/* 06A7A4 80069BA4 E7AC0028 */  swc1  $f12, 0x28($sp)
/* 06A7A8 80069BA8 E7AE002C */  swc1  $f14, 0x2c($sp)
/* 06A7AC 80069BAC AFA60030 */  sw    $a2, 0x30($sp)
/* 06A7B0 80069BB0 00007812 */  mflo  $t7
/* 06A7B4 80069BB4 022FC021 */  addu  $t8, $s1, $t7
/* 06A7B8 80069BB8 87040000 */  lh    $a0, ($t8)
/* 06A7BC 80069BBC 0C01C1FE */  jal   func_800707F8
/* 06A7C0 80069BC0 00000000 */   nop   
/* 06A7C4 80069BC4 8E590000 */  lw    $t9, ($s2)
/* 06A7C8 80069BC8 C7A60028 */  lwc1  $f6, 0x28($sp)
/* 06A7CC 80069BCC 03330019 */  multu $t9, $s3
/* 06A7D0 80069BD0 46003202 */  mul.s $f8, $f6, $f0
/* 06A7D4 80069BD4 00004012 */  mflo  $t0
/* 06A7D8 80069BD8 02288021 */  addu  $s0, $s1, $t0
/* 06A7DC 80069BDC C604000C */  lwc1  $f4, 0xc($s0)
/* 06A7E0 80069BE0 86040000 */  lh    $a0, ($s0)
/* 06A7E4 80069BE4 46082281 */  sub.s $f10, $f4, $f8
/* 06A7E8 80069BE8 0C01C1F1 */  jal   func_800707C4
/* 06A7EC 80069BEC E60A000C */   swc1  $f10, 0xc($s0)
/* 06A7F0 80069BF0 8E490000 */  lw    $t1, ($s2)
/* 06A7F4 80069BF4 C7B20028 */  lwc1  $f18, 0x28($sp)
/* 06A7F8 80069BF8 01330019 */  multu $t1, $s3
/* 06A7FC 80069BFC 46009182 */  mul.s $f6, $f18, $f0
/* 06A800 80069C00 00005012 */  mflo  $t2
/* 06A804 80069C04 022A8021 */  addu  $s0, $s1, $t2
/* 06A808 80069C08 C6100014 */  lwc1  $f16, 0x14($s0)
/* 06A80C 80069C0C 86040000 */  lh    $a0, ($s0)
/* 06A810 80069C10 46068101 */  sub.s $f4, $f16, $f6
/* 06A814 80069C14 0C01C1F1 */  jal   func_800707C4
/* 06A818 80069C18 E6040014 */   swc1  $f4, 0x14($s0)
/* 06A81C 80069C1C 8E4B0000 */  lw    $t3, ($s2)
/* 06A820 80069C20 C7AA0030 */  lwc1  $f10, 0x30($sp)
/* 06A824 80069C24 01730019 */  multu $t3, $s3
/* 06A828 80069C28 46005482 */  mul.s $f18, $f10, $f0
/* 06A82C 80069C2C 00006012 */  mflo  $t4
/* 06A830 80069C30 022C8021 */  addu  $s0, $s1, $t4
/* 06A834 80069C34 C608000C */  lwc1  $f8, 0xc($s0)
/* 06A838 80069C38 86040000 */  lh    $a0, ($s0)
/* 06A83C 80069C3C 46124401 */  sub.s $f16, $f8, $f18
/* 06A840 80069C40 0C01C1FE */  jal   func_800707F8
/* 06A844 80069C44 E610000C */   swc1  $f16, 0xc($s0)
/* 06A848 80069C48 8E4D0000 */  lw    $t5, ($s2)
/* 06A84C 80069C4C C7A40030 */  lwc1  $f4, 0x30($sp)
/* 06A850 80069C50 01B30019 */  multu $t5, $s3
/* 06A854 80069C54 46002282 */  mul.s $f10, $f4, $f0
/* 06A858 80069C58 00007012 */  mflo  $t6
/* 06A85C 80069C5C 022E8021 */  addu  $s0, $s1, $t6
/* 06A860 80069C60 C6060014 */  lwc1  $f6, 0x14($s0)
/* 06A864 80069C64 C60C000C */  lwc1  $f12, 0xc($s0)
/* 06A868 80069C68 460A3200 */  add.s $f8, $f6, $f10
/* 06A86C 80069C6C C60E0010 */  lwc1  $f14, 0x10($s0)
/* 06A870 80069C70 E6080014 */  swc1  $f8, 0x14($s0)
/* 06A874 80069C74 8E060014 */  lw    $a2, 0x14($s0)
/* 06A878 80069C78 0C00A7C6 */  jal   get_level_segment_index_from_position
/* 06A87C 80069C7C 00000000 */   nop   
/* 06A880 80069C80 8E4F0000 */  lw    $t7, ($s2)
/* 06A884 80069C84 00000000 */  nop   
/* 06A888 80069C88 01F30019 */  multu $t7, $s3
/* 06A88C 80069C8C 0000C012 */  mflo  $t8
/* 06A890 80069C90 0238C821 */  addu  $t9, $s1, $t8
/* 06A894 80069C94 A7220034 */  sh    $v0, 0x34($t9)
/* 06A898 80069C98 8FBF0024 */  lw    $ra, 0x24($sp)
/* 06A89C 80069C9C 8FB30020 */  lw    $s3, 0x20($sp)
/* 06A8A0 80069CA0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 06A8A4 80069CA4 8FB10018 */  lw    $s1, 0x18($sp)
/* 06A8A8 80069CA8 8FB00014 */  lw    $s0, 0x14($sp)
/* 06A8AC 80069CAC 03E00008 */  jr    $ra
/* 06A8B0 80069CB0 27BD0028 */   addiu $sp, $sp, 0x28

/* 06A8B4 80069CB4 3C0E8012 */  lui   $t6, %hi(D_80120CE4) # $t6, 0x8012
/* 06A8B8 80069CB8 8DCE0CE4 */  lw    $t6, %lo(D_80120CE4)($t6)
/* 06A8BC 80069CBC 3C188012 */  lui   $t8, %hi(D_80120AC0) # $t8, 0x8012
/* 06A8C0 80069CC0 000E7900 */  sll   $t7, $t6, 4
/* 06A8C4 80069CC4 01EE7821 */  addu  $t7, $t7, $t6
/* 06A8C8 80069CC8 000F7880 */  sll   $t7, $t7, 2
/* 06A8CC 80069CCC 27180AC0 */  addiu $t8, %lo(D_80120AC0) # addiu $t8, $t8, 0xac0
/* 06A8D0 80069CD0 01F81021 */  addu  $v0, $t7, $t8
/* 06A8D4 80069CD4 84590000 */  lh    $t9, ($v0)
/* 06A8D8 80069CD8 84490002 */  lh    $t1, 2($v0)
/* 06A8DC 80069CDC 844B0004 */  lh    $t3, 4($v0)
/* 06A8E0 80069CE0 03244021 */  addu  $t0, $t9, $a0
/* 06A8E4 80069CE4 01255021 */  addu  $t2, $t1, $a1
/* 06A8E8 80069CE8 01666021 */  addu  $t4, $t3, $a2
/* 06A8EC 80069CEC A4480000 */  sh    $t0, ($v0)
/* 06A8F0 80069CF0 A44A0002 */  sh    $t2, 2($v0)
/* 06A8F4 80069CF4 03E00008 */  jr    $ra
/* 06A8F8 80069CF8 A44C0004 */   sh    $t4, 4($v0)
