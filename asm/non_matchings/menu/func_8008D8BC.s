glabel func_8008D8BC
/* 08E4BC 8008D8BC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 08E4C0 8008D8C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08E4C4 8008D8C4 0C01BAA4 */  jal   get_settings
/* 08E4C8 8008D8C8 AFA40030 */   sw    $a0, 0x30($sp)
/* 08E4CC 8008D8CC AFA2001C */  sw    $v0, 0x1c($sp)
/* 08E4D0 8008D8D0 0C01A955 */  jal   get_buttons_pressed_from_player
/* 08E4D4 8008D8D4 00002025 */   move  $a0, $zero
/* 08E4D8 8008D8D8 3C0E800E */  lui   $t6, %hi(gNumberOfActivePlayers) # $t6, 0x800e
/* 08E4DC 8008D8DC 8DCEF4BC */  lw    $t6, %lo(gNumberOfActivePlayers)($t6)
/* 08E4E0 8008D8E0 3C058012 */  lui   $a1, %hi(gControllersXAxisDirection) # $a1, 0x8012
/* 08E4E4 8008D8E4 80A5645C */  lb    $a1, %lo(gControllersXAxisDirection)($a1)
/* 08E4E8 8008D8E8 24010002 */  li    $at, 2
/* 08E4EC 8008D8EC 15C1000B */  bne   $t6, $at, .L8008D91C
/* 08E4F0 8008D8F0 00401825 */   move  $v1, $v0
/* 08E4F4 8008D8F4 24040001 */  li    $a0, 1
/* 08E4F8 8008D8F8 AFA20028 */  sw    $v0, 0x28($sp)
/* 08E4FC 8008D8FC 0C01A955 */  jal   get_buttons_pressed_from_player
/* 08E500 8008D900 AFA50024 */   sw    $a1, 0x24($sp)
/* 08E504 8008D904 3C0F8012 */  lui   $t7, %hi(gControllersXAxisDirection+1) # $t7, 0x8012
/* 08E508 8008D908 8FA30028 */  lw    $v1, 0x28($sp)
/* 08E50C 8008D90C 8FA50024 */  lw    $a1, 0x24($sp)
/* 08E510 8008D910 81EF645D */  lb    $t7, %lo(gControllersXAxisDirection+1)($t7)
/* 08E514 8008D914 00621825 */  or    $v1, $v1, $v0
/* 08E518 8008D918 00AF2821 */  addu  $a1, $a1, $t7
.L8008D91C:
/* 08E51C 8008D91C 3C028012 */  lui   $v0, %hi(D_80126494) # $v0, 0x8012
/* 08E520 8008D920 8C426494 */  lw    $v0, %lo(D_80126494)($v0)
/* 08E524 8008D924 30784000 */  andi  $t8, $v1, 0x4000
/* 08E528 8008D928 14400043 */  bnez  $v0, .L8008DA38
/* 08E52C 8008D92C 24010001 */   li    $at, 1
/* 08E530 8008D930 13000007 */  beqz  $t8, .L8008D950
/* 08E534 8008D934 30799000 */   andi  $t9, $v1, 0x9000
/* 08E538 8008D938 24040241 */  li    $a0, 577
/* 08E53C 8008D93C 0C000741 */  jal   func_80001D04
/* 08E540 8008D940 00002825 */   move  $a1, $zero
/* 08E544 8008D944 3C018012 */  lui   $at, %hi(D_80126484) # $at, 0x8012
/* 08E548 8008D948 100000C8 */  b     .L8008DC6C
/* 08E54C 8008D94C AC206484 */   sw    $zero, %lo(D_80126484)($at)
.L8008D950:
/* 08E550 8008D950 13200025 */  beqz  $t9, .L8008D9E8
/* 08E554 8008D954 3C028012 */   lui   $v0, %hi(D_8012648C) # $v0, 0x8012
/* 08E558 8008D958 3C028012 */  lui   $v0, %hi(D_8012648C) # $v0, 0x8012
/* 08E55C 8008D95C 2442648C */  addiu $v0, %lo(D_8012648C) # addiu $v0, $v0, 0x648c
/* 08E560 8008D960 8C490000 */  lw    $t1, ($v0)
/* 08E564 8008D964 2403000C */  li    $v1, 12
/* 08E568 8008D968 01230019 */  multu $t1, $v1
/* 08E56C 8008D96C 3C088012 */  lui   $t0, %hi(gSavefileInfo) # $t0, 0x8012
/* 08E570 8008D970 250864A0 */  addiu $t0, %lo(gSavefileInfo) # addiu $t0, $t0, 0x64a0
/* 08E574 8008D974 240400EF */  li    $a0, 239
/* 08E578 8008D978 00005012 */  mflo  $t2
/* 08E57C 8008D97C 010A5821 */  addu  $t3, $t0, $t2
/* 08E580 8008D980 916C0001 */  lbu   $t4, 1($t3)
/* 08E584 8008D984 00000000 */  nop   
/* 08E588 8008D988 11800012 */  beqz  $t4, .L8008D9D4
/* 08E58C 8008D98C 00000000 */   nop   
/* 08E590 8008D990 0C000741 */  jal   func_80001D04
/* 08E594 8008D994 00002825 */   move  $a1, $zero
/* 08E598 8008D998 3C028012 */  lui   $v0, %hi(D_8012648C) # $v0, 0x8012
/* 08E59C 8008D99C 2442648C */  addiu $v0, %lo(D_8012648C) # addiu $v0, $v0, 0x648c
/* 08E5A0 8008D9A0 8C440000 */  lw    $a0, ($v0)
/* 08E5A4 8008D9A4 0C01BADE */  jal   func_8006EB78
/* 08E5A8 8008D9A8 00000000 */   nop   
/* 08E5AC 8008D9AC 3C028012 */  lui   $v0, %hi(D_8012648C) # $v0, 0x8012
/* 08E5B0 8008D9B0 2442648C */  addiu $v0, %lo(D_8012648C) # addiu $v0, $v0, 0x648c
/* 08E5B4 8008D9B4 8C4D0000 */  lw    $t5, ($v0)
/* 08E5B8 8008D9B8 3C068012 */  lui   $a2, %hi(D_80126490) # $a2, 0x8012
/* 08E5BC 8008D9BC 24C66490 */  addiu $a2, %lo(D_80126490) # addiu $a2, $a2, 0x6490
/* 08E5C0 8008D9C0 240E0001 */  li    $t6, 1
/* 08E5C4 8008D9C4 3C018012 */  lui   $at, %hi(D_80126494) # $at, 0x8012
/* 08E5C8 8008D9C8 ACCD0000 */  sw    $t5, ($a2)
/* 08E5CC 8008D9CC 100000A7 */  b     .L8008DC6C
/* 08E5D0 8008D9D0 AC2E6494 */   sw    $t6, %lo(D_80126494)($at)
.L8008D9D4:
/* 08E5D4 8008D9D4 24040241 */  li    $a0, 577
/* 08E5D8 8008D9D8 0C000741 */  jal   func_80001D04
/* 08E5DC 8008D9DC 00002825 */   move  $a1, $zero
/* 08E5E0 8008D9E0 100000A3 */  b     .L8008DC70
/* 08E5E4 8008D9E4 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008D9E8:
/* 08E5E8 8008D9E8 2442648C */  addiu $v0, %lo(D_8012648C) # addiu $v0, $v0, 0x648c
/* 08E5EC 8008D9EC 8C460000 */  lw    $a2, ($v0)
/* 08E5F0 8008D9F0 04A10005 */  bgez  $a1, .L8008DA08
/* 08E5F4 8008D9F4 00C01825 */   move  $v1, $a2
/* 08E5F8 8008D9F8 18C00003 */  blez  $a2, .L8008DA08
/* 08E5FC 8008D9FC 24CFFFFF */   addiu $t7, $a2, -1
/* 08E600 8008DA00 AC4F0000 */  sw    $t7, ($v0)
/* 08E604 8008DA04 01E03025 */  move  $a2, $t7
.L8008DA08:
/* 08E608 8008DA08 18A00005 */  blez  $a1, .L8008DA20
/* 08E60C 8008DA0C 28C10002 */   slti  $at, $a2, 2
/* 08E610 8008DA10 10200003 */  beqz  $at, .L8008DA20
/* 08E614 8008DA14 24D80001 */   addiu $t8, $a2, 1
/* 08E618 8008DA18 AC580000 */  sw    $t8, ($v0)
/* 08E61C 8008DA1C 03003025 */  move  $a2, $t8
.L8008DA20:
/* 08E620 8008DA20 10660092 */  beq   $v1, $a2, .L8008DC6C
/* 08E624 8008DA24 240400EB */   li    $a0, 235
/* 08E628 8008DA28 0C000741 */  jal   func_80001D04
/* 08E62C 8008DA2C 00002825 */   move  $a1, $zero
/* 08E630 8008DA30 1000008F */  b     .L8008DC70
/* 08E634 8008DA34 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008DA38:
/* 08E638 8008DA38 1441003F */  bne   $v0, $at, .L8008DB38
/* 08E63C 8008DA3C 30699000 */   andi  $t1, $v1, 0x9000
/* 08E640 8008DA40 30794000 */  andi  $t9, $v1, 0x4000
/* 08E644 8008DA44 1320000C */  beqz  $t9, .L8008DA78
/* 08E648 8008DA48 24040241 */   li    $a0, 577
/* 08E64C 8008DA4C 0C000741 */  jal   func_80001D04
/* 08E650 8008DA50 00002825 */   move  $a1, $zero
/* 08E654 8008DA54 3C068012 */  lui   $a2, %hi(D_80126490) # $a2, 0x8012
/* 08E658 8008DA58 24C66490 */  addiu $a2, %lo(D_80126490) # addiu $a2, $a2, 0x6490
/* 08E65C 8008DA5C 8CC90000 */  lw    $t1, ($a2)
/* 08E660 8008DA60 3C028012 */  lui   $v0, %hi(D_8012648C) # $v0, 0x8012
/* 08E664 8008DA64 2442648C */  addiu $v0, %lo(D_8012648C) # addiu $v0, $v0, 0x648c
/* 08E668 8008DA68 3C018012 */  lui   $at, %hi(D_80126494) # $at, 0x8012
/* 08E66C 8008DA6C AC490000 */  sw    $t1, ($v0)
/* 08E670 8008DA70 1000007E */  b     .L8008DC6C
/* 08E674 8008DA74 AC206494 */   sw    $zero, %lo(D_80126494)($at)
.L8008DA78:
/* 08E678 8008DA78 306A9000 */  andi  $t2, $v1, 0x9000
/* 08E67C 8008DA7C 11400019 */  beqz  $t2, .L8008DAE4
/* 08E680 8008DA80 3C068012 */   lui   $a2, %hi(D_80126490) # $a2, 0x8012
/* 08E684 8008DA84 24C66490 */  addiu $a2, %lo(D_80126490) # addiu $a2, $a2, 0x6490
/* 08E688 8008DA88 8CCB0000 */  lw    $t3, ($a2)
/* 08E68C 8008DA8C 2403000C */  li    $v1, 12
/* 08E690 8008DA90 01630019 */  multu $t3, $v1
/* 08E694 8008DA94 3C088012 */  lui   $t0, %hi(gSavefileInfo) # $t0, 0x8012
/* 08E698 8008DA98 250864A0 */  addiu $t0, %lo(gSavefileInfo) # addiu $t0, $t0, 0x64a0
/* 08E69C 8008DA9C 00002825 */  move  $a1, $zero
/* 08E6A0 8008DAA0 24040241 */  li    $a0, 577
/* 08E6A4 8008DAA4 00006012 */  mflo  $t4
/* 08E6A8 8008DAA8 010C6821 */  addu  $t5, $t0, $t4
/* 08E6AC 8008DAAC 91AE0001 */  lbu   $t6, 1($t5)
/* 08E6B0 8008DAB0 00000000 */  nop   
/* 08E6B4 8008DAB4 15C00007 */  bnez  $t6, .L8008DAD4
/* 08E6B8 8008DAB8 00000000 */   nop   
/* 08E6BC 8008DABC 0C000741 */  jal   func_80001D04
/* 08E6C0 8008DAC0 240400EF */   li    $a0, 239
/* 08E6C4 8008DAC4 240F0002 */  li    $t7, 2
/* 08E6C8 8008DAC8 3C018012 */  lui   $at, %hi(D_80126494) # $at, 0x8012
/* 08E6CC 8008DACC 10000067 */  b     .L8008DC6C
/* 08E6D0 8008DAD0 AC2F6494 */   sw    $t7, %lo(D_80126494)($at)
.L8008DAD4:
/* 08E6D4 8008DAD4 0C000741 */  jal   func_80001D04
/* 08E6D8 8008DAD8 00002825 */   move  $a1, $zero
/* 08E6DC 8008DADC 10000064 */  b     .L8008DC70
/* 08E6E0 8008DAE0 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008DAE4:
/* 08E6E4 8008DAE4 3C068012 */  lui   $a2, %hi(D_80126490) # $a2, 0x8012
/* 08E6E8 8008DAE8 24C66490 */  addiu $a2, %lo(D_80126490) # addiu $a2, $a2, 0x6490
/* 08E6EC 8008DAEC 8CC70000 */  lw    $a3, ($a2)
/* 08E6F0 8008DAF0 04A10005 */  bgez  $a1, .L8008DB08
/* 08E6F4 8008DAF4 00E01825 */   move  $v1, $a3
/* 08E6F8 8008DAF8 18E00003 */  blez  $a3, .L8008DB08
/* 08E6FC 8008DAFC 24F8FFFF */   addiu $t8, $a3, -1
/* 08E700 8008DB00 ACD80000 */  sw    $t8, ($a2)
/* 08E704 8008DB04 03003825 */  move  $a3, $t8
.L8008DB08:
/* 08E708 8008DB08 18A00005 */  blez  $a1, .L8008DB20
/* 08E70C 8008DB0C 28E10002 */   slti  $at, $a3, 2
/* 08E710 8008DB10 10200003 */  beqz  $at, .L8008DB20
/* 08E714 8008DB14 24F90001 */   addiu $t9, $a3, 1
/* 08E718 8008DB18 ACD90000 */  sw    $t9, ($a2)
/* 08E71C 8008DB1C 03203825 */  move  $a3, $t9
.L8008DB20:
/* 08E720 8008DB20 10670052 */  beq   $v1, $a3, .L8008DC6C
/* 08E724 8008DB24 240400EB */   li    $a0, 235
/* 08E728 8008DB28 0C000741 */  jal   func_80001D04
/* 08E72C 8008DB2C 00002825 */   move  $a1, $zero
/* 08E730 8008DB30 1000004F */  b     .L8008DC70
/* 08E734 8008DB34 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008DB38:
/* 08E738 8008DB38 11200044 */  beqz  $t1, .L8008DC4C
/* 08E73C 8008DB3C 240400EF */   li    $a0, 239
/* 08E740 8008DB40 0C000741 */  jal   func_80001D04
/* 08E744 8008DB44 00002825 */   move  $a1, $zero
/* 08E748 8008DB48 3C068012 */  lui   $a2, %hi(D_80126490) # $a2, 0x8012
/* 08E74C 8008DB4C 24C66490 */  addiu $a2, %lo(D_80126490) # addiu $a2, $a2, 0x6490
/* 08E750 8008DB50 8CC40000 */  lw    $a0, ($a2)
/* 08E754 8008DB54 0C01BB06 */  jal   func_8006EC18
/* 08E758 8008DB58 00000000 */   nop   
/* 08E75C 8008DB5C 3C068012 */  lui   $a2, %hi(D_80126490) # $a2, 0x8012
/* 08E760 8008DB60 24C66490 */  addiu $a2, %lo(D_80126490) # addiu $a2, $a2, 0x6490
/* 08E764 8008DB64 8CC70000 */  lw    $a3, ($a2)
/* 08E768 8008DB68 2403000C */  li    $v1, 12
/* 08E76C 8008DB6C 00E30019 */  multu $a3, $v1
/* 08E770 8008DB70 3C088012 */  lui   $t0, %hi(gSavefileInfo) # $t0, 0x8012
/* 08E774 8008DB74 250864A0 */  addiu $t0, %lo(gSavefileInfo) # addiu $t0, $t0, 0x64a0
/* 08E778 8008DB78 8FA5001C */  lw    $a1, 0x1c($sp)
/* 08E77C 8008DB7C 24040001 */  li    $a0, 1
/* 08E780 8008DB80 00074880 */  sll   $t1, $a3, 2
/* 08E784 8008DB84 01274823 */  subu  $t1, $t1, $a3
/* 08E788 8008DB88 00094880 */  sll   $t1, $t1, 2
/* 08E78C 8008DB8C 3C01800E */  lui   $at, %hi(gSaveFileIndex) # $at, 0x800e
/* 08E790 8008DB90 00005012 */  mflo  $t2
/* 08E794 8008DB94 010A1021 */  addu  $v0, $t0, $t2
/* 08E798 8008DB98 A0400000 */  sb    $zero, ($v0)
/* 08E79C 8008DB9C A0440001 */  sb    $a0, 1($v0)
/* 08E7A0 8008DBA0 8CAB0000 */  lw    $t3, ($a1)
/* 08E7A4 8008DBA4 00000000 */  nop   
/* 08E7A8 8008DBA8 856C0000 */  lh    $t4, ($t3)
/* 08E7AC 8008DBAC 00075880 */  sll   $t3, $a3, 2
/* 08E7B0 8008DBB0 A44C0002 */  sh    $t4, 2($v0)
/* 08E7B4 8008DBB4 8CAD0010 */  lw    $t5, 0x10($a1)
/* 08E7B8 8008DBB8 01675823 */  subu  $t3, $t3, $a3
/* 08E7BC 8008DBBC 31AE0004 */  andi  $t6, $t5, 4
/* 08E7C0 8008DBC0 11C00002 */  beqz  $t6, .L8008DBCC
/* 08E7C4 8008DBC4 000B5880 */   sll   $t3, $t3, 2
/* 08E7C8 8008DBC8 A0440000 */  sb    $a0, ($v0)
.L8008DBCC:
/* 08E7CC 8008DBCC 3C028012 */  lui   $v0, %hi(D_8012648C) # $v0, 0x8012
/* 08E7D0 8008DBD0 2442648C */  addiu $v0, %lo(D_8012648C) # addiu $v0, $v0, 0x648c
/* 08E7D4 8008DBD4 8C460000 */  lw    $a2, ($v0)
/* 08E7D8 8008DBD8 00002825 */  move  $a1, $zero
/* 08E7DC 8008DBDC 00C30019 */  multu $a2, $v1
/* 08E7E0 8008DBE0 00065080 */  sll   $t2, $a2, 2
/* 08E7E4 8008DBE4 01465023 */  subu  $t2, $t2, $a2
/* 08E7E8 8008DBE8 000A5080 */  sll   $t2, $t2, 2
/* 08E7EC 8008DBEC 010A1021 */  addu  $v0, $t0, $t2
/* 08E7F0 8008DBF0 010B6021 */  addu  $t4, $t0, $t3
/* 08E7F4 8008DBF4 00007812 */  mflo  $t7
/* 08E7F8 8008DBF8 010FC021 */  addu  $t8, $t0, $t7
/* 08E7FC 8008DBFC 93190004 */  lbu   $t9, 4($t8)
/* 08E800 8008DC00 00000000 */  nop   
/* 08E804 8008DC04 1320000A */  beqz  $t9, .L8008DC30
/* 08E808 8008DC08 01856821 */   addu  $t5, $t4, $a1
/* 08E80C 8008DC0C 90440004 */  lbu   $a0, 4($v0)
/* 08E810 8008DC10 01091821 */  addu  $v1, $t0, $t1
.L8008DC14:
/* 08E814 8008DC14 A0640004 */  sb    $a0, 4($v1)
/* 08E818 8008DC18 90440005 */  lbu   $a0, 5($v0)
/* 08E81C 8008DC1C 24A50001 */  addiu $a1, $a1, 1
/* 08E820 8008DC20 24630001 */  addiu $v1, $v1, 1
/* 08E824 8008DC24 1480FFFB */  bnez  $a0, .L8008DC14
/* 08E828 8008DC28 24420001 */   addiu $v0, $v0, 1
/* 08E82C 8008DC2C 01856821 */  addu  $t5, $t4, $a1
.L8008DC30:
/* 08E830 8008DC30 A1A00004 */  sb    $zero, 4($t5)
/* 08E834 8008DC34 AC27F4CC */  sw    $a3, %lo(gSaveFileIndex)($at)
/* 08E838 8008DC38 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 08E83C 8008DC3C AC2063E0 */  sw    $zero, %lo(D_801263E0)($at)
/* 08E840 8008DC40 3C018012 */  lui   $at, %hi(D_80126484) # $at, 0x8012
/* 08E844 8008DC44 10000009 */  b     .L8008DC6C
/* 08E848 8008DC48 AC206484 */   sw    $zero, %lo(D_80126484)($at)
.L8008DC4C:
/* 08E84C 8008DC4C 306E4000 */  andi  $t6, $v1, 0x4000
/* 08E850 8008DC50 11C00006 */  beqz  $t6, .L8008DC6C
/* 08E854 8008DC54 24040241 */   li    $a0, 577
/* 08E858 8008DC58 0C000741 */  jal   func_80001D04
/* 08E85C 8008DC5C 00002825 */   move  $a1, $zero
/* 08E860 8008DC60 240F0001 */  li    $t7, 1
/* 08E864 8008DC64 3C018012 */  lui   $at, %hi(D_80126494) # $at, 0x8012
/* 08E868 8008DC68 AC2F6494 */  sw    $t7, %lo(D_80126494)($at)
.L8008DC6C:
/* 08E86C 8008DC6C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008DC70:
/* 08E870 8008DC70 27BD0030 */  addiu $sp, $sp, 0x30
/* 08E874 8008DC74 03E00008 */  jr    $ra
/* 08E878 8008DC78 00000000 */   nop   

