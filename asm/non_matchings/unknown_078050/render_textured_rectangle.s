glabel render_textured_rectangle
/* 0796B8 80078AB8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0796BC 80078ABC AFBF002C */  sw    $ra, 0x2c($sp)
/* 0796C0 80078AC0 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0796C4 80078AC4 AFB70024 */  sw    $s7, 0x24($sp)
/* 0796C8 80078AC8 AFB60020 */  sw    $s6, 0x20($sp)
/* 0796CC 80078ACC AFB5001C */  sw    $s5, 0x1c($sp)
/* 0796D0 80078AD0 AFB40018 */  sw    $s4, 0x18($sp)
/* 0796D4 80078AD4 AFB30014 */  sw    $s3, 0x14($sp)
/* 0796D8 80078AD8 AFB20010 */  sw    $s2, 0x10($sp)
/* 0796DC 80078ADC AFB1000C */  sw    $s1, 0xc($sp)
/* 0796E0 80078AE0 AFB00008 */  sw    $s0, 8($sp)
/* 0796E4 80078AE4 8C820000 */  lw    $v0, ($a0)
/* 0796E8 80078AE8 3C18800E */  lui   $t8, %hi(D_800DE628) # $t8, 0x800e
/* 0796EC 80078AEC 244E0008 */  addiu $t6, $v0, 8
/* 0796F0 80078AF0 AC8E0000 */  sw    $t6, ($a0)
/* 0796F4 80078AF4 2718E628 */  addiu $t8, %lo(D_800DE628) # addiu $t8, $t8, -0x19d8
/* 0796F8 80078AF8 3C0F0600 */  lui   $t7, 0x600
/* 0796FC 80078AFC AC4F0000 */  sw    $t7, ($v0)
/* 079700 80078B00 AC580004 */  sw    $t8, 4($v0)
/* 079704 80078B04 8C820000 */  lw    $v0, ($a0)
/* 079708 80078B08 3C0EFA00 */  lui   $t6, 0xfa00
/* 07970C 80078B0C 24590008 */  addiu $t9, $v0, 8
/* 079710 80078B10 AC990000 */  sw    $t9, ($a0)
/* 079714 80078B14 AC4E0000 */  sw    $t6, ($v0)
/* 079718 80078B18 93B80043 */  lbu   $t8, 0x43($sp)
/* 07971C 80078B1C 93AF0047 */  lbu   $t7, 0x47($sp)
/* 079720 80078B20 0018CE00 */  sll   $t9, $t8, 0x18
/* 079724 80078B24 000FC400 */  sll   $t8, $t7, 0x10
/* 079728 80078B28 03387025 */  or    $t6, $t9, $t8
/* 07972C 80078B2C 93B9004B */  lbu   $t9, 0x4b($sp)
/* 079730 80078B30 00808025 */  move  $s0, $a0
/* 079734 80078B34 0019C200 */  sll   $t8, $t9, 8
/* 079738 80078B38 01D87825 */  or    $t7, $t6, $t8
/* 07973C 80078B3C 93AE004F */  lbu   $t6, 0x4f($sp)
/* 079740 80078B40 0006F080 */  sll   $fp, $a2, 2
/* 079744 80078B44 01EEC025 */  or    $t8, $t7, $t6
/* 079748 80078B48 AC580004 */  sw    $t8, 4($v0)
/* 07974C 80078B4C 8CA80000 */  lw    $t0, ($a1)
/* 079750 80078B50 0007F880 */  sll   $ra, $a3, 2
/* 079754 80078B54 11000051 */  beqz  $t0, .L80078C9C
/* 079758 80078B58 00A05025 */   move  $t2, $a1
/* 07975C 80078B5C 3C170400 */  lui   $s7, (0x04000400 >> 16) # lui $s7, 0x400
/* 079760 80078B60 36F70400 */  ori   $s7, (0x04000400 & 0xFFFF) # ori $s7, $s7, 0x400
/* 079764 80078B64 3C16B200 */  lui   $s6, 0xb200
/* 079768 80078B68 3C15B300 */  lui   $s5, 0xb300
/* 07976C 80078B6C 3C14E400 */  lui   $s4, 0xe400
/* 079770 80078B70 3C138000 */  lui   $s3, 0x8000
/* 079774 80078B74 3C120700 */  lui   $s2, 0x700
.L80078B78:
/* 079778 80078B78 854E0004 */  lh    $t6, 4($t2)
/* 07977C 80078B7C 85590006 */  lh    $t9, 6($t2)
/* 079780 80078B80 000EC080 */  sll   $t8, $t6, 2
/* 079784 80078B84 910E0000 */  lbu   $t6, ($t0)
/* 079788 80078B88 00197880 */  sll   $t7, $t9, 2
/* 07978C 80078B8C 91190001 */  lbu   $t9, 1($t0)
/* 079790 80078B90 031E3021 */  addu  $a2, $t8, $fp
/* 079794 80078B94 01FF3821 */  addu  $a3, $t7, $ra
/* 079798 80078B98 000EC080 */  sll   $t8, $t6, 2
/* 07979C 80078B9C 03065821 */  addu  $t3, $t8, $a2
/* 0797A0 80078BA0 00197880 */  sll   $t7, $t9, 2
/* 0797A4 80078BA4 19600039 */  blez  $t3, .L80078C8C
/* 0797A8 80078BA8 01E76021 */   addu  $t4, $t7, $a3
/* 0797AC 80078BAC 19800037 */  blez  $t4, .L80078C8C
/* 0797B0 80078BB0 00006825 */   move  $t5, $zero
/* 0797B4 80078BB4 04C10004 */  bgez  $a2, .L80078BC8
/* 0797B8 80078BB8 00008825 */   move  $s1, $zero
/* 0797BC 80078BBC 000668C0 */  sll   $t5, $a2, 3
/* 0797C0 80078BC0 000D6823 */  negu  $t5, $t5
/* 0797C4 80078BC4 00003025 */  move  $a2, $zero
.L80078BC8:
/* 0797C8 80078BC8 04E10004 */  bgez  $a3, .L80078BDC
/* 0797CC 80078BCC 00000000 */   nop   
/* 0797D0 80078BD0 000788C0 */  sll   $s1, $a3, 3
/* 0797D4 80078BD4 00118823 */  negu  $s1, $s1
/* 0797D8 80078BD8 00003825 */  move  $a3, $zero
.L80078BDC:
/* 0797DC 80078BDC 8E020000 */  lw    $v0, ($s0)
/* 0797E0 80078BE0 00000000 */  nop   
/* 0797E4 80078BE4 244E0008 */  addiu $t6, $v0, 8
/* 0797E8 80078BE8 AE0E0000 */  sw    $t6, ($s0)
/* 0797EC 80078BEC 8504000A */  lh    $a0, 0xa($t0)
/* 0797F0 80078BF0 00000000 */  nop   
/* 0797F4 80078BF4 309800FF */  andi  $t8, $a0, 0xff
/* 0797F8 80078BF8 0018CC00 */  sll   $t9, $t8, 0x10
/* 0797FC 80078BFC 000470C0 */  sll   $t6, $a0, 3
/* 079800 80078C00 31D8FFFF */  andi  $t8, $t6, 0xffff
/* 079804 80078C04 03327825 */  or    $t7, $t9, $s2
/* 079808 80078C08 01F8C825 */  or    $t9, $t7, $t8
/* 07980C 80078C0C AC590000 */  sw    $t9, ($v0)
/* 079810 80078C10 8D0E000C */  lw    $t6, 0xc($t0)
/* 079814 80078C14 31790FFF */  andi  $t9, $t3, 0xfff
/* 079818 80078C18 01D37821 */  addu  $t7, $t6, $s3
/* 07981C 80078C1C AC4F0004 */  sw    $t7, 4($v0)
/* 079820 80078C20 8E020000 */  lw    $v0, ($s0)
/* 079824 80078C24 00197300 */  sll   $t6, $t9, 0xc
/* 079828 80078C28 24580008 */  addiu $t8, $v0, 8
/* 07982C 80078C2C AE180000 */  sw    $t8, ($s0)
/* 079830 80078C30 31980FFF */  andi  $t8, $t4, 0xfff
/* 079834 80078C34 01D47825 */  or    $t7, $t6, $s4
/* 079838 80078C38 01F8C825 */  or    $t9, $t7, $t8
/* 07983C 80078C3C 30CE0FFF */  andi  $t6, $a2, 0xfff
/* 079840 80078C40 000E7B00 */  sll   $t7, $t6, 0xc
/* 079844 80078C44 30F80FFF */  andi  $t8, $a3, 0xfff
/* 079848 80078C48 AC590000 */  sw    $t9, ($v0)
/* 07984C 80078C4C 01F8C825 */  or    $t9, $t7, $t8
/* 079850 80078C50 AC590004 */  sw    $t9, 4($v0)
/* 079854 80078C54 8E020000 */  lw    $v0, ($s0)
/* 079858 80078C58 3239FFFF */  andi  $t9, $s1, 0xffff
/* 07985C 80078C5C 244E0008 */  addiu $t6, $v0, 8
/* 079860 80078C60 AE0E0000 */  sw    $t6, ($s0)
/* 079864 80078C64 000DC400 */  sll   $t8, $t5, 0x10
/* 079868 80078C68 03197025 */  or    $t6, $t8, $t9
/* 07986C 80078C6C AC4E0004 */  sw    $t6, 4($v0)
/* 079870 80078C70 AC550000 */  sw    $s5, ($v0)
/* 079874 80078C74 8E020000 */  lw    $v0, ($s0)
/* 079878 80078C78 00000000 */  nop   
/* 07987C 80078C7C 244F0008 */  addiu $t7, $v0, 8
/* 079880 80078C80 AE0F0000 */  sw    $t7, ($s0)
/* 079884 80078C84 AC570004 */  sw    $s7, 4($v0)
/* 079888 80078C88 AC560000 */  sw    $s6, ($v0)
.L80078C8C:
/* 07988C 80078C8C 8D480008 */  lw    $t0, 8($t2)
/* 079890 80078C90 254A0008 */  addiu $t2, $t2, 8
/* 079894 80078C94 1500FFB8 */  bnez  $t0, .L80078B78
/* 079898 80078C98 00000000 */   nop   
.L80078C9C:
/* 07989C 80078C9C 8E020000 */  lw    $v0, ($s0)
/* 0798A0 80078CA0 3C19E700 */  lui   $t9, 0xe700
/* 0798A4 80078CA4 24580008 */  addiu $t8, $v0, 8
/* 0798A8 80078CA8 AE180000 */  sw    $t8, ($s0)
/* 0798AC 80078CAC AC400004 */  sw    $zero, 4($v0)
/* 0798B0 80078CB0 AC590000 */  sw    $t9, ($v0)
/* 0798B4 80078CB4 8E020000 */  lw    $v0, ($s0)
/* 0798B8 80078CB8 2418FFFF */  li    $t8, -1
/* 0798BC 80078CBC 244E0008 */  addiu $t6, $v0, 8
/* 0798C0 80078CC0 AE0E0000 */  sw    $t6, ($s0)
/* 0798C4 80078CC4 3C0FFA00 */  lui   $t7, 0xfa00
/* 0798C8 80078CC8 AC4F0000 */  sw    $t7, ($v0)
/* 0798CC 80078CCC AC580004 */  sw    $t8, 4($v0)
/* 0798D0 80078CD0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0798D4 80078CD4 8FBE0028 */  lw    $fp, 0x28($sp)
/* 0798D8 80078CD8 8FB70024 */  lw    $s7, 0x24($sp)
/* 0798DC 80078CDC 8FB60020 */  lw    $s6, 0x20($sp)
/* 0798E0 80078CE0 8FB5001C */  lw    $s5, 0x1c($sp)
/* 0798E4 80078CE4 8FB40018 */  lw    $s4, 0x18($sp)
/* 0798E8 80078CE8 8FB30014 */  lw    $s3, 0x14($sp)
/* 0798EC 80078CEC 8FB20010 */  lw    $s2, 0x10($sp)
/* 0798F0 80078CF0 8FB1000C */  lw    $s1, 0xc($sp)
/* 0798F4 80078CF4 8FB00008 */  lw    $s0, 8($sp)
/* 0798F8 80078CF8 03E00008 */  jr    $ra
/* 0798FC 80078CFC 27BD0030 */   addiu $sp, $sp, 0x30

