glabel func_8000FC6C
/* 01086C 8000FC6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 010870 8000FC70 AFBF0014 */  sw    $ra, 0x14($sp)
/* 010874 8000FC74 8C8E0040 */  lw    $t6, 0x40($a0)
/* 010878 8000FC78 AC850058 */  sw    $a1, 0x58($a0)
/* 01087C 8000FC7C C5C40008 */  lwc1  $f4, 8($t6)
/* 010880 8000FC80 A4A0000C */  sh    $zero, 0xc($a1)
/* 010884 8000FC84 E4A40000 */  swc1  $f4, ($a1)
/* 010888 8000FC88 8C8F0040 */  lw    $t7, 0x40($a0)
/* 01088C 8000FC8C 00803025 */  move  $a2, $a0
/* 010890 8000FC90 8DF80000 */  lw    $t8, ($t7)
/* 010894 8000FC94 ACA00004 */  sw    $zero, 4($a1)
/* 010898 8000FC98 0018CA03 */  sra   $t9, $t8, 8
/* 01089C 8000FC9C A4B9000E */  sh    $t9, 0xe($a1)
/* 0108A0 8000FCA0 8C820040 */  lw    $v0, 0x40($a0)
/* 0108A4 8000FCA4 00000000 */  nop   
/* 0108A8 8000FCA8 84480036 */  lh    $t0, 0x36($v0)
/* 0108AC 8000FCAC 00000000 */  nop   
/* 0108B0 8000FCB0 11000008 */  beqz  $t0, .L8000FCD4
/* 0108B4 8000FCB4 00000000 */   nop   
/* 0108B8 8000FCB8 84440038 */  lh    $a0, 0x38($v0)
/* 0108BC 8000FCBC AFA60018 */  sw    $a2, 0x18($sp)
/* 0108C0 8000FCC0 0C01EB9D */  jal   load_texture
/* 0108C4 8000FCC4 AFA5001C */   sw    $a1, 0x1c($sp)
/* 0108C8 8000FCC8 8FA5001C */  lw    $a1, 0x1c($sp)
/* 0108CC 8000FCCC 8FA60018 */  lw    $a2, 0x18($sp)
/* 0108D0 8000FCD0 ACA20004 */  sw    $v0, 4($a1)
.L8000FCD4:
/* 0108D4 8000FCD4 8CAA0004 */  lw    $t2, 4($a1)
/* 0108D8 8000FCD8 2409FFFF */  li    $t1, -1
/* 0108DC 8000FCDC A4A90008 */  sh    $t1, 8($a1)
/* 0108E0 8000FCE0 3C018012 */  lui   $at, %hi(D_8011AE54) # $at, 0x8012
/* 0108E4 8000FCE4 AC2AAE54 */  sw    $t2, %lo(D_8011AE54)($at)
/* 0108E8 8000FCE8 8CCB0040 */  lw    $t3, 0x40($a2)
/* 0108EC 8000FCEC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0108F0 8000FCF0 856C0036 */  lh    $t4, 0x36($t3)
/* 0108F4 8000FCF4 24020014 */  li    $v0, 20
/* 0108F8 8000FCF8 11800007 */  beqz  $t4, .L8000FD18
/* 0108FC 8000FCFC 00000000 */   nop   
/* 010900 8000FD00 8CAD0004 */  lw    $t5, 4($a1)
/* 010904 8000FD04 00000000 */  nop   
/* 010908 8000FD08 15A00003 */  bnez  $t5, .L8000FD18
/* 01090C 8000FD0C 00000000 */   nop   
/* 010910 8000FD10 10000001 */  b     .L8000FD18
/* 010914 8000FD14 00001025 */   move  $v0, $zero
.L8000FD18:
/* 010918 8000FD18 03E00008 */  jr    $ra
/* 01091C 8000FD1C 27BD0018 */   addiu $sp, $sp, 0x18

