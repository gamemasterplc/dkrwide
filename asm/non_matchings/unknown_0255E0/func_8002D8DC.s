glabel func_8002D8DC
/* 02E4DC 8002D8DC 27BDFF68 */  addiu $sp, $sp, -0x98
/* 02E4E0 8002D8E0 3C0E8012 */  lui   $t6, %hi(D_8011B0C8) # $t6, 0x8012
/* 02E4E4 8002D8E4 8DCEB0C8 */  lw    $t6, %lo(D_8011B0C8)($t6)
/* 02E4E8 8002D8E8 3C038012 */  lui   $v1, %hi(D_8011B0CC) # $v1, 0x8012
/* 02E4EC 8002D8EC 2463B0CC */  addiu $v1, %lo(D_8011B0CC) # addiu $v1, $v1, -0x4f34
/* 02E4F0 8002D8F0 AFBE0050 */  sw    $fp, 0x50($sp)
/* 02E4F4 8002D8F4 24010001 */  li    $at, 1
/* 02E4F8 8002D8F8 0080F025 */  move  $fp, $a0
/* 02E4FC 8002D8FC AFBF0054 */  sw    $ra, 0x54($sp)
/* 02E500 8002D900 AFB7004C */  sw    $s7, 0x4c($sp)
/* 02E504 8002D904 AFB60048 */  sw    $s6, 0x48($sp)
/* 02E508 8002D908 AFB50044 */  sw    $s5, 0x44($sp)
/* 02E50C 8002D90C AFB40040 */  sw    $s4, 0x40($sp)
/* 02E510 8002D910 AFB3003C */  sw    $s3, 0x3c($sp)
/* 02E514 8002D914 AFB20038 */  sw    $s2, 0x38($sp)
/* 02E518 8002D918 AFB10034 */  sw    $s1, 0x34($sp)
/* 02E51C 8002D91C AFB00030 */  sw    $s0, 0x30($sp)
/* 02E520 8002D920 E7B90028 */  swc1  $f25, 0x28($sp)
/* 02E524 8002D924 E7B8002C */  swc1  $f24, 0x2c($sp)
/* 02E528 8002D928 E7B70020 */  swc1  $f23, 0x20($sp)
/* 02E52C 8002D92C E7B60024 */  swc1  $f22, 0x24($sp)
/* 02E530 8002D930 E7B50018 */  swc1  $f21, 0x18($sp)
/* 02E534 8002D934 E7B4001C */  swc1  $f20, 0x1c($sp)
/* 02E538 8002D938 AFA5009C */  sw    $a1, 0x9c($sp)
/* 02E53C 8002D93C AFA600A0 */  sw    $a2, 0xa0($sp)
/* 02E540 8002D940 14810003 */  bne   $a0, $at, .L8002D950
/* 02E544 8002D944 AC6E0000 */   sw    $t6, ($v1)
/* 02E548 8002D948 25D80002 */  addiu $t8, $t6, 2
/* 02E54C 8002D94C AC780000 */  sw    $t8, ($v1)
.L8002D950:
/* 02E550 8002D950 8C620000 */  lw    $v0, ($v1)
/* 02E554 8002D954 3C088012 */  lui   $t0, %hi(D_8011D320) # $t0, 0x8012
/* 02E558 8002D958 0002C880 */  sll   $t9, $v0, 2
/* 02E55C 8002D95C 01194021 */  addu  $t0, $t0, $t9
/* 02E560 8002D960 8D08D320 */  lw    $t0, %lo(D_8011D320)($t0)
/* 02E564 8002D964 3C098012 */  lui   $t1, %hi(D_8011D338) # $t1, 0x8012
/* 02E568 8002D968 3C018012 */  lui   $at, %hi(D_8011D330) # $at, 0x8012
/* 02E56C 8002D96C 01394821 */  addu  $t1, $t1, $t9
/* 02E570 8002D970 8D29D338 */  lw    $t1, %lo(D_8011D338)($t1)
/* 02E574 8002D974 3C0A8012 */  lui   $t2, %hi(D_8011D350) # $t2, 0x8012
/* 02E578 8002D978 AC28D330 */  sw    $t0, %lo(D_8011D330)($at)
/* 02E57C 8002D97C 3C018012 */  lui   $at, %hi(D_8011D348) # $at, 0x8012
/* 02E580 8002D980 01595021 */  addu  $t2, $t2, $t9
/* 02E584 8002D984 8D4AD350 */  lw    $t2, %lo(D_8011D350)($t2)
/* 02E588 8002D988 AC29D348 */  sw    $t1, %lo(D_8011D348)($at)
/* 02E58C 8002D98C 3C018012 */  lui   $at, %hi(D_8011D360) # $at, 0x8012
/* 02E590 8002D990 AC2AD360 */  sw    $t2, %lo(D_8011D360)($at)
/* 02E594 8002D994 3C018012 */  lui   $at, %hi(D_8011D364) # $at, 0x8012
/* 02E598 8002D998 AC20D364 */  sw    $zero, %lo(D_8011D364)($at)
/* 02E59C 8002D99C 3C018012 */  lui   $at, %hi(D_8011D368) # $at, 0x8012
/* 02E5A0 8002D9A0 AC20D368 */  sw    $zero, %lo(D_8011D368)($at)
/* 02E5A4 8002D9A4 3C018012 */  lui   $at, %hi(D_8011D36C) # $at, 0x8012
/* 02E5A8 8002D9A8 0C019884 */  jal   get_viewport_count
/* 02E5AC 8002D9AC AC20D36C */   sw    $zero, %lo(D_8011D36C)($at)
/* 02E5B0 8002D9B0 0040B025 */  move  $s6, $v0
/* 02E5B4 8002D9B4 27A40094 */  addiu $a0, $sp, 0x94
/* 02E5B8 8002D9B8 0C003A62 */  jal   func_8000E988
/* 02E5BC 8002D9BC 27A50090 */   addiu $a1, $sp, 0x90
/* 02E5C0 8002D9C0 8FAB0094 */  lw    $t3, 0x94($sp)
/* 02E5C4 8002D9C4 8FAC0090 */  lw    $t4, 0x90($sp)
/* 02E5C8 8002D9C8 AFA20078 */  sw    $v0, 0x78($sp)
/* 02E5CC 8002D9CC 016C082A */  slt   $at, $t3, $t4
/* 02E5D0 8002D9D0 102000F3 */  beqz  $at, .L8002DDA0
/* 02E5D4 8002D9D4 24170005 */   li    $s7, 5
/* 02E5D8 8002D9D8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 02E5DC 8002D9DC 3C158012 */  lui   $s5, %hi(D_8011D0D4) # $s5, 0x8012
/* 02E5E0 8002D9E0 4481C000 */  mtc1  $at, $f24
/* 02E5E4 8002D9E4 4480B000 */  mtc1  $zero, $f22
/* 02E5E8 8002D9E8 26B5D0D4 */  addiu $s5, %lo(D_8011D0D4) # addiu $s5, $s5, -0x2f2c
/* 02E5EC 8002D9EC 24140002 */  li    $s4, 2
/* 02E5F0 8002D9F0 2413FFFF */  li    $s3, -1
/* 02E5F4 8002D9F4 8FAE0094 */  lw    $t6, 0x94($sp)
.L8002D9F8:
/* 02E5F8 8002D9F8 8FAD0078 */  lw    $t5, 0x78($sp)
/* 02E5FC 8002D9FC 000E7880 */  sll   $t7, $t6, 2
/* 02E600 8002DA00 01AFC021 */  addu  $t8, $t5, $t7
/* 02E604 8002DA04 8F110000 */  lw    $s1, ($t8)
/* 02E608 8002DA08 25D90001 */  addiu $t9, $t6, 1
/* 02E60C 8002DA0C 8E320040 */  lw    $s2, 0x40($s1)
/* 02E610 8002DA10 8E300058 */  lw    $s0, 0x58($s1)
/* 02E614 8002DA14 8E220050 */  lw    $v0, 0x50($s1)
/* 02E618 8002DA18 AFB90094 */  sw    $t9, 0x94($sp)
/* 02E61C 8002DA1C 86230006 */  lh    $v1, 6($s1)
/* 02E620 8002DA20 00000000 */  nop   
/* 02E624 8002DA24 30688000 */  andi  $t0, $v1, 0x8000
/* 02E628 8002DA28 150000D8 */  bnez  $t0, .L8002DD8C
/* 02E62C 8002DA2C 8FA90094 */   lw    $t1, 0x94($sp)
/* 02E630 8002DA30 1040000F */  beqz  $v0, .L8002DA70
/* 02E634 8002DA34 306A4000 */   andi  $t2, $v1, 0x4000
/* 02E638 8002DA38 C4440000 */  lwc1  $f4, ($v0)
/* 02E63C 8002DA3C 00000000 */  nop   
/* 02E640 8002DA40 4604B03C */  c.lt.s $f22, $f4
/* 02E644 8002DA44 00000000 */  nop   
/* 02E648 8002DA48 45000009 */  bc1f  .L8002DA70
/* 02E64C 8002DA4C 306A4000 */   andi  $t2, $v1, 0x4000
/* 02E650 8002DA50 86490032 */  lh    $t1, 0x32($s2)
/* 02E654 8002DA54 00000000 */  nop   
/* 02E658 8002DA58 17C90005 */  bne   $fp, $t1, .L8002DA70
/* 02E65C 8002DA5C 306A4000 */   andi  $t2, $v1, 0x4000
/* 02E660 8002DA60 A4530008 */  sh    $s3, 8($v0)
/* 02E664 8002DA64 86230006 */  lh    $v1, 6($s1)
/* 02E668 8002DA68 00000000 */  nop   
/* 02E66C 8002DA6C 306A4000 */  andi  $t2, $v1, 0x4000
.L8002DA70:
/* 02E670 8002DA70 11400002 */  beqz  $t2, .L8002DA7C
/* 02E674 8002DA74 00000000 */   nop   
/* 02E678 8002DA78 00001025 */  move  $v0, $zero
.L8002DA7C:
/* 02E67C 8002DA7C 10400005 */  beqz  $v0, .L8002DA94
/* 02E680 8002DA80 00000000 */   nop   
/* 02E684 8002DA84 864B0032 */  lh    $t3, 0x32($s2)
/* 02E688 8002DA88 00000000 */  nop   
/* 02E68C 8002DA8C 128B0007 */  beq   $s4, $t3, .L8002DAAC
/* 02E690 8002DA90 00000000 */   nop   
.L8002DA94:
/* 02E694 8002DA94 1200000D */  beqz  $s0, .L8002DACC
/* 02E698 8002DA98 00000000 */   nop   
/* 02E69C 8002DA9C 864C0036 */  lh    $t4, 0x36($s2)
/* 02E6A0 8002DAA0 00000000 */  nop   
/* 02E6A4 8002DAA4 168C0009 */  bne   $s4, $t4, .L8002DACC
/* 02E6A8 8002DAA8 00000000 */   nop   
.L8002DAAC:
/* 02E6AC 8002DAAC C62C000C */  lwc1  $f12, 0xc($s1)
/* 02E6B0 8002DAB0 C62E0010 */  lwc1  $f14, 0x10($s1)
/* 02E6B4 8002DAB4 8E260014 */  lw    $a2, 0x14($s1)
/* 02E6B8 8002DAB8 0C0198D2 */  jal   func_80066348
/* 02E6BC 8002DABC AFA2006C */   sw    $v0, 0x6c($sp)
/* 02E6C0 8002DAC0 8FA2006C */  lw    $v0, 0x6c($sp)
/* 02E6C4 8002DAC4 10000003 */  b     .L8002DAD4
/* 02E6C8 8002DAC8 46000506 */   mov.s $f20, $f0
.L8002DACC:
/* 02E6CC 8002DACC 4480A000 */  mtc1  $zero, $f20
/* 02E6D0 8002DAD0 00000000 */  nop   
.L8002DAD4:
/* 02E6D4 8002DAD4 1040004C */  beqz  $v0, .L8002DC08
/* 02E6D8 8002DAD8 00000000 */   nop   
/* 02E6DC 8002DADC C4460000 */  lwc1  $f6, ($v0)
/* 02E6E0 8002DAE0 00000000 */  nop   
/* 02E6E4 8002DAE4 4606B03C */  c.lt.s $f22, $f6
/* 02E6E8 8002DAE8 00000000 */  nop   
/* 02E6EC 8002DAEC 45000046 */  bc1f  .L8002DC08
/* 02E6F0 8002DAF0 00000000 */   nop   
/* 02E6F4 8002DAF4 864D0032 */  lh    $t5, 0x32($s2)
/* 02E6F8 8002DAF8 00000000 */  nop   
/* 02E6FC 8002DAFC 17CD0042 */  bne   $fp, $t5, .L8002DC08
/* 02E700 8002DB00 00000000 */   nop   
/* 02E704 8002DB04 E6B80000 */  swc1  $f24, ($s5)
/* 02E708 8002DB08 A4530008 */  sh    $s3, 8($v0)
/* 02E70C 8002DB0C 864F0032 */  lh    $t7, 0x32($s2)
/* 02E710 8002DB10 00002025 */  move  $a0, $zero
/* 02E714 8002DB14 168F0019 */  bne   $s4, $t7, .L8002DB7C
/* 02E718 8002DB18 00000000 */   nop   
/* 02E71C 8002DB1C 1AC00017 */  blez  $s6, .L8002DB7C
/* 02E720 8002DB20 2AC10004 */   slti  $at, $s6, 4
/* 02E724 8002DB24 10200015 */  beqz  $at, .L8002DB7C
/* 02E728 8002DB28 00000000 */   nop   
/* 02E72C 8002DB2C 86220048 */  lh    $v0, 0x48($s1)
/* 02E730 8002DB30 24010001 */  li    $at, 1
/* 02E734 8002DB34 1441000B */  bne   $v0, $at, .L8002DB64
/* 02E738 8002DB38 00000000 */   nop   
/* 02E73C 8002DB3C 8E380064 */  lw    $t8, 0x64($s1)
/* 02E740 8002DB40 00002825 */  move  $a1, $zero
/* 02E744 8002DB44 87020000 */  lh    $v0, ($t8)
/* 02E748 8002DB48 00000000 */  nop   
/* 02E74C 8002DB4C 10530026 */  beq   $v0, $s3, .L8002DBE8
/* 02E750 8002DB50 00000000 */   nop   
/* 02E754 8002DB54 0C00B88D */  jal   func_8002E234
/* 02E758 8002DB58 02202025 */   move  $a0, $s1
/* 02E75C 8002DB5C 10000022 */  b     .L8002DBE8
/* 02E760 8002DB60 24040001 */   li    $a0, 1
.L8002DB64:
/* 02E764 8002DB64 16E20020 */  bne   $s7, $v0, .L8002DBE8
/* 02E768 8002DB68 00002825 */   move  $a1, $zero
/* 02E76C 8002DB6C 0C00B88D */  jal   func_8002E234
/* 02E770 8002DB70 02202025 */   move  $a0, $s1
/* 02E774 8002DB74 1000001C */  b     .L8002DBE8
/* 02E778 8002DB78 24040001 */   li    $a0, 1
.L8002DB7C:
/* 02E77C 8002DB7C 8643004A */  lh    $v1, 0x4a($s2)
/* 02E780 8002DB80 00002825 */  move  $a1, $zero
/* 02E784 8002DB84 44834000 */  mtc1  $v1, $f8
/* 02E788 8002DB88 00000000 */  nop   
/* 02E78C 8002DB8C 46804020 */  cvt.s.w $f0, $f8
/* 02E790 8002DB90 4600A03C */  c.lt.s $f20, $f0
/* 02E794 8002DB94 00000000 */  nop   
/* 02E798 8002DB98 45000013 */  bc1f  .L8002DBE8
/* 02E79C 8002DB9C 00000000 */   nop   
/* 02E7A0 8002DBA0 8642004C */  lh    $v0, 0x4c($s2)
/* 02E7A4 8002DBA4 00000000 */  nop   
/* 02E7A8 8002DBA8 44825000 */  mtc1  $v0, $f10
/* 02E7AC 8002DBAC 00627023 */  subu  $t6, $v1, $v0
/* 02E7B0 8002DBB0 46805420 */  cvt.s.w $f16, $f10
/* 02E7B4 8002DBB4 4614803C */  c.lt.s $f16, $f20
/* 02E7B8 8002DBB8 00000000 */  nop   
/* 02E7BC 8002DBBC 45000007 */  bc1f  .L8002DBDC
/* 02E7C0 8002DBC0 00000000 */   nop   
/* 02E7C4 8002DBC4 448E2000 */  mtc1  $t6, $f4
/* 02E7C8 8002DBC8 46140481 */  sub.s $f18, $f0, $f20
/* 02E7CC 8002DBCC 468021A0 */  cvt.s.w $f6, $f4
/* 02E7D0 8002DBD0 00000000 */  nop   
/* 02E7D4 8002DBD4 46069203 */  div.s $f8, $f18, $f6
/* 02E7D8 8002DBD8 E6A80000 */  swc1  $f8, ($s5)
.L8002DBDC:
/* 02E7DC 8002DBDC 0C00B88D */  jal   func_8002E234
/* 02E7E0 8002DBE0 02202025 */   move  $a0, $s1
/* 02E7E4 8002DBE4 24040001 */  li    $a0, 1
.L8002DBE8:
/* 02E7E8 8002DBE8 14800007 */  bnez  $a0, .L8002DC08
/* 02E7EC 8002DBEC 00000000 */   nop   
/* 02E7F0 8002DBF0 8E390054 */  lw    $t9, 0x54($s1)
/* 02E7F4 8002DBF4 00000000 */  nop   
/* 02E7F8 8002DBF8 13200003 */  beqz  $t9, .L8002DC08
/* 02E7FC 8002DBFC 00000000 */   nop   
/* 02E800 8002DC00 0C00B78C */  jal   func_8002DE30
/* 02E804 8002DC04 02202025 */   move  $a0, $s1
.L8002DC08:
/* 02E808 8002DC08 12000060 */  beqz  $s0, .L8002DD8C
/* 02E80C 8002DC0C 8FA90094 */   lw    $t1, 0x94($sp)
/* 02E810 8002DC10 C60A0000 */  lwc1  $f10, ($s0)
/* 02E814 8002DC14 8FA8009C */  lw    $t0, 0x9c($sp)
/* 02E818 8002DC18 460AB03C */  c.lt.s $f22, $f10
/* 02E81C 8002DC1C 00000000 */  nop   
/* 02E820 8002DC20 4500005A */  bc1f  .L8002DD8C
/* 02E824 8002DC24 8FA90094 */   lw    $t1, 0x94($sp)
/* 02E828 8002DC28 86490036 */  lh    $t1, 0x36($s2)
/* 02E82C 8002DC2C 00000000 */  nop   
/* 02E830 8002DC30 15090056 */  bne   $t0, $t1, .L8002DD8C
/* 02E834 8002DC34 8FA90094 */   lw    $t1, 0x94($sp)
/* 02E838 8002DC38 A6130008 */  sh    $s3, 8($s0)
/* 02E83C 8002DC3C E6B80000 */  swc1  $f24, ($s5)
/* 02E840 8002DC40 8E040004 */  lw    $a0, 4($s0)
/* 02E844 8002DC44 8FAA00A0 */  lw    $t2, 0xa0($sp)
/* 02E848 8002DC48 10800019 */  beqz  $a0, .L8002DCB0
/* 02E84C 8002DC4C 00000000 */   nop   
/* 02E850 8002DC50 11400017 */  beqz  $t2, .L8002DCB0
/* 02E854 8002DC54 00000000 */   nop   
/* 02E858 8002DC58 948B0012 */  lhu   $t3, 0x12($a0)
/* 02E85C 8002DC5C 24010100 */  li    $at, 256
/* 02E860 8002DC60 11610013 */  beq   $t3, $at, .L8002DCB0
/* 02E864 8002DC64 00000000 */   nop   
/* 02E868 8002DC68 860C000C */  lh    $t4, 0xc($s0)
/* 02E86C 8002DC6C 860D000E */  lh    $t5, 0xe($s0)
/* 02E870 8002DC70 00000000 */  nop   
/* 02E874 8002DC74 018D7821 */  addu  $t7, $t4, $t5
/* 02E878 8002DC78 A60F000C */  sh    $t7, 0xc($s0)
/* 02E87C 8002DC7C 8603000C */  lh    $v1, 0xc($s0)
/* 02E880 8002DC80 94820012 */  lhu   $v0, 0x12($a0)
/* 02E884 8002DC84 00000000 */  nop   
/* 02E888 8002DC88 0043082A */  slt   $at, $v0, $v1
/* 02E88C 8002DC8C 10200008 */  beqz  $at, .L8002DCB0
/* 02E890 8002DC90 0062C023 */   subu  $t8, $v1, $v0
.L8002DC94:
/* 02E894 8002DC94 A618000C */  sh    $t8, 0xc($s0)
/* 02E898 8002DC98 8603000C */  lh    $v1, 0xc($s0)
/* 02E89C 8002DC9C 94820012 */  lhu   $v0, 0x12($a0)
/* 02E8A0 8002DCA0 00000000 */  nop   
/* 02E8A4 8002DCA4 0043082A */  slt   $at, $v0, $v1
/* 02E8A8 8002DCA8 1420FFFA */  bnez  $at, .L8002DC94
/* 02E8AC 8002DCAC 0062C023 */   subu  $t8, $v1, $v0
.L8002DCB0:
/* 02E8B0 8002DCB0 864E0032 */  lh    $t6, 0x32($s2)
/* 02E8B4 8002DCB4 00000000 */  nop   
/* 02E8B8 8002DCB8 168E0019 */  bne   $s4, $t6, .L8002DD20
/* 02E8BC 8002DCBC 00000000 */   nop   
/* 02E8C0 8002DCC0 1AC00017 */  blez  $s6, .L8002DD20
/* 02E8C4 8002DCC4 2AC10004 */   slti  $at, $s6, 4
/* 02E8C8 8002DCC8 10200015 */  beqz  $at, .L8002DD20
/* 02E8CC 8002DCCC 00000000 */   nop   
/* 02E8D0 8002DCD0 86220048 */  lh    $v0, 0x48($s1)
/* 02E8D4 8002DCD4 24010001 */  li    $at, 1
/* 02E8D8 8002DCD8 1441000B */  bne   $v0, $at, .L8002DD08
/* 02E8DC 8002DCDC 00000000 */   nop   
/* 02E8E0 8002DCE0 8E390064 */  lw    $t9, 0x64($s1)
/* 02E8E4 8002DCE4 02202025 */  move  $a0, $s1
/* 02E8E8 8002DCE8 87220000 */  lh    $v0, ($t9)
/* 02E8EC 8002DCEC 00000000 */  nop   
/* 02E8F0 8002DCF0 10530026 */  beq   $v0, $s3, .L8002DD8C
/* 02E8F4 8002DCF4 8FA90094 */   lw    $t1, 0x94($sp)
/* 02E8F8 8002DCF8 0C00B88D */  jal   func_8002E234
/* 02E8FC 8002DCFC 24050001 */   li    $a1, 1
/* 02E900 8002DD00 10000022 */  b     .L8002DD8C
/* 02E904 8002DD04 8FA90094 */   lw    $t1, 0x94($sp)
.L8002DD08:
/* 02E908 8002DD08 16E2001F */  bne   $s7, $v0, .L8002DD88
/* 02E90C 8002DD0C 02202025 */   move  $a0, $s1
/* 02E910 8002DD10 0C00B88D */  jal   func_8002E234
/* 02E914 8002DD14 24050001 */   li    $a1, 1
/* 02E918 8002DD18 1000001C */  b     .L8002DD8C
/* 02E91C 8002DD1C 8FA90094 */   lw    $t1, 0x94($sp)
.L8002DD20:
/* 02E920 8002DD20 8643004A */  lh    $v1, 0x4a($s2)
/* 02E924 8002DD24 02202025 */  move  $a0, $s1
/* 02E928 8002DD28 44838000 */  mtc1  $v1, $f16
/* 02E92C 8002DD2C 00000000 */  nop   
/* 02E930 8002DD30 46808020 */  cvt.s.w $f0, $f16
/* 02E934 8002DD34 4600A03C */  c.lt.s $f20, $f0
/* 02E938 8002DD38 00000000 */  nop   
/* 02E93C 8002DD3C 45000013 */  bc1f  .L8002DD8C
/* 02E940 8002DD40 8FA90094 */   lw    $t1, 0x94($sp)
/* 02E944 8002DD44 8642004C */  lh    $v0, 0x4c($s2)
/* 02E948 8002DD48 00000000 */  nop   
/* 02E94C 8002DD4C 44822000 */  mtc1  $v0, $f4
/* 02E950 8002DD50 00624023 */  subu  $t0, $v1, $v0
/* 02E954 8002DD54 468024A0 */  cvt.s.w $f18, $f4
/* 02E958 8002DD58 4614903C */  c.lt.s $f18, $f20
/* 02E95C 8002DD5C 00000000 */  nop   
/* 02E960 8002DD60 45000007 */  bc1f  .L8002DD80
/* 02E964 8002DD64 00000000 */   nop   
/* 02E968 8002DD68 44884000 */  mtc1  $t0, $f8
/* 02E96C 8002DD6C 46140181 */  sub.s $f6, $f0, $f20
/* 02E970 8002DD70 468042A0 */  cvt.s.w $f10, $f8
/* 02E974 8002DD74 00000000 */  nop   
/* 02E978 8002DD78 460A3403 */  div.s $f16, $f6, $f10
/* 02E97C 8002DD7C E6B00000 */  swc1  $f16, ($s5)
.L8002DD80:
/* 02E980 8002DD80 0C00B88D */  jal   func_8002E234
/* 02E984 8002DD84 24050001 */   li    $a1, 1
.L8002DD88:
/* 02E988 8002DD88 8FA90094 */  lw    $t1, 0x94($sp)
.L8002DD8C:
/* 02E98C 8002DD8C 8FAA0090 */  lw    $t2, 0x90($sp)
/* 02E990 8002DD90 00000000 */  nop   
/* 02E994 8002DD94 012A082A */  slt   $at, $t1, $t2
/* 02E998 8002DD98 1420FF17 */  bnez  $at, .L8002D9F8
/* 02E99C 8002DD9C 8FAE0094 */   lw    $t6, 0x94($sp)
.L8002DDA0:
/* 02E9A0 8002DDA0 3C038012 */  lui   $v1, %hi(D_8011D364) # $v1, 0x8012
/* 02E9A4 8002DDA4 2463D364 */  addiu $v1, %lo(D_8011D364) # addiu $v1, $v1, -0x2c9c
/* 02E9A8 8002DDA8 3C028012 */  lui   $v0, %hi(D_8011D360) # $v0, 0x8012
/* 02E9AC 8002DDAC 8C6D0000 */  lw    $t5, ($v1)
/* 02E9B0 8002DDB0 2442D360 */  addiu $v0, %lo(D_8011D360) # addiu $v0, $v0, -0x2ca0
/* 02E9B4 8002DDB4 8C4C0000 */  lw    $t4, ($v0)
/* 02E9B8 8002DDB8 3C0B8012 */  lui   $t3, %hi(D_8011D368) # $t3, 0x8012
/* 02E9BC 8002DDBC 8D6BD368 */  lw    $t3, %lo(D_8011D368)($t3)
/* 02E9C0 8002DDC0 000D78C0 */  sll   $t7, $t5, 3
/* 02E9C4 8002DDC4 018FC021 */  addu  $t8, $t4, $t7
/* 02E9C8 8002DDC8 A70B0004 */  sh    $t3, 4($t8)
/* 02E9CC 8002DDCC 8C680000 */  lw    $t0, ($v1)
/* 02E9D0 8002DDD0 8C590000 */  lw    $t9, ($v0)
/* 02E9D4 8002DDD4 3C0E8012 */  lui   $t6, %hi(D_8011D36C) # $t6, 0x8012
/* 02E9D8 8002DDD8 8DCED36C */  lw    $t6, %lo(D_8011D36C)($t6)
/* 02E9DC 8002DDDC 000848C0 */  sll   $t1, $t0, 3
/* 02E9E0 8002DDE0 03295021 */  addu  $t2, $t9, $t1
/* 02E9E4 8002DDE4 A54E0006 */  sh    $t6, 6($t2)
/* 02E9E8 8002DDE8 8FBF0054 */  lw    $ra, 0x54($sp)
/* 02E9EC 8002DDEC 8FBE0050 */  lw    $fp, 0x50($sp)
/* 02E9F0 8002DDF0 8FB7004C */  lw    $s7, 0x4c($sp)
/* 02E9F4 8002DDF4 8FB60048 */  lw    $s6, 0x48($sp)
/* 02E9F8 8002DDF8 8FB50044 */  lw    $s5, 0x44($sp)
/* 02E9FC 8002DDFC 8FB40040 */  lw    $s4, 0x40($sp)
/* 02EA00 8002DE00 8FB3003C */  lw    $s3, 0x3c($sp)
/* 02EA04 8002DE04 8FB20038 */  lw    $s2, 0x38($sp)
/* 02EA08 8002DE08 8FB10034 */  lw    $s1, 0x34($sp)
/* 02EA0C 8002DE0C 8FB00030 */  lw    $s0, 0x30($sp)
/* 02EA10 8002DE10 C7B8002C */  lwc1  $f24, 0x2c($sp)
/* 02EA14 8002DE14 C7B90028 */  lwc1  $f25, 0x28($sp)
/* 02EA18 8002DE18 C7B60024 */  lwc1  $f22, 0x24($sp)
/* 02EA1C 8002DE1C C7B70020 */  lwc1  $f23, 0x20($sp)
/* 02EA20 8002DE20 C7B4001C */  lwc1  $f20, 0x1c($sp)
/* 02EA24 8002DE24 C7B50018 */  lwc1  $f21, 0x18($sp)
/* 02EA28 8002DE28 03E00008 */  jr    $ra
/* 02EA2C 8002DE2C 27BD0098 */   addiu $sp, $sp, 0x98
