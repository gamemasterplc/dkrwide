glabel func_8008D5F8
/* 08E1F8 8008D5F8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 08E1FC 8008D5FC AFBF0014 */  sw    $ra, 0x14($sp)
/* 08E200 8008D600 AFA40028 */  sw    $a0, 0x28($sp)
/* 08E204 8008D604 0C01A955 */  jal   get_buttons_pressed_from_player
/* 08E208 8008D608 00002025 */   move  $a0, $zero
/* 08E20C 8008D60C 3C0E800E */  lui   $t6, %hi(gNumberOfActivePlayers) # $t6, 0x800e
/* 08E210 8008D610 8DCEF4BC */  lw    $t6, %lo(gNumberOfActivePlayers)($t6)
/* 08E214 8008D614 3C068012 */  lui   $a2, %hi(gControllersXAxisDirection) # $a2, 0x8012
/* 08E218 8008D618 3C078012 */  lui   $a3, %hi(gControllersYAxisDirection) # $a3, 0x8012
/* 08E21C 8008D61C 24080002 */  li    $t0, 2
/* 08E220 8008D620 80C6645C */  lb    $a2, %lo(gControllersXAxisDirection)($a2)
/* 08E224 8008D624 80E76464 */  lb    $a3, %lo(gControllersYAxisDirection)($a3)
/* 08E228 8008D628 150E0011 */  bne   $t0, $t6, .L8008D670
/* 08E22C 8008D62C 00401825 */   move  $v1, $v0
/* 08E230 8008D630 24040001 */  li    $a0, 1
/* 08E234 8008D634 AFA20024 */  sw    $v0, 0x24($sp)
/* 08E238 8008D638 AFA60020 */  sw    $a2, 0x20($sp)
/* 08E23C 8008D63C 0C01A955 */  jal   get_buttons_pressed_from_player
/* 08E240 8008D640 AFA7001C */   sw    $a3, 0x1c($sp)
/* 08E244 8008D644 3C0F8012 */  lui   $t7, %hi(gControllersXAxisDirection+1) # $t7, 0x8012
/* 08E248 8008D648 3C188012 */  lui   $t8, %hi(gControllersYAxisDirection+1) # $t8, 0x8012
/* 08E24C 8008D64C 8FA30024 */  lw    $v1, 0x24($sp)
/* 08E250 8008D650 8FA60020 */  lw    $a2, 0x20($sp)
/* 08E254 8008D654 8FA7001C */  lw    $a3, 0x1c($sp)
/* 08E258 8008D658 81EF645D */  lb    $t7, %lo(gControllersXAxisDirection+1)($t7)
/* 08E25C 8008D65C 83186465 */  lb    $t8, %lo(gControllersYAxisDirection+1)($t8)
/* 08E260 8008D660 24080002 */  li    $t0, 2
/* 08E264 8008D664 00621825 */  or    $v1, $v1, $v0
/* 08E268 8008D668 00CF3021 */  addu  $a2, $a2, $t7
/* 08E26C 8008D66C 00F83821 */  addu  $a3, $a3, $t8
.L8008D670:
/* 08E270 8008D670 30799000 */  andi  $t9, $v1, 0x9000
/* 08E274 8008D674 13200046 */  beqz  $t9, .L8008D790
/* 08E278 8008D678 3C098012 */   lui   $t1, %hi(D_801263E0) # $t1, 0x8012
/* 08E27C 8008D67C 252963E0 */  addiu $t1, %lo(D_801263E0) # addiu $t1, $t1, 0x63e0
/* 08E280 8008D680 8D220000 */  lw    $v0, ($t1)
/* 08E284 8008D684 3C0B800E */  lui   $t3, %hi(gSaveFileIndex) # $t3, 0x800e
/* 08E288 8008D688 10400008 */  beqz  $v0, .L8008D6AC
/* 08E28C 8008D68C 256BF4CC */   addiu $t3, %lo(gSaveFileIndex) # addiu $t3, $t3, -0xb34
/* 08E290 8008D690 240A0001 */  li    $t2, 1
/* 08E294 8008D694 104A0021 */  beq   $v0, $t2, .L8008D71C
/* 08E298 8008D698 240400EF */   li    $a0, 239
/* 08E29C 8008D69C 1048002E */  beq   $v0, $t0, .L8008D758
/* 08E2A0 8008D6A0 240400EF */   li    $a0, 239
/* 08E2A4 8008D6A4 1000003F */  b     .L8008D7A4
/* 08E2A8 8008D6A8 00000000 */   nop   
.L8008D6AC:
/* 08E2AC 8008D6AC 8D6C0000 */  lw    $t4, ($t3)
/* 08E2B0 8008D6B0 3C0E8012 */  lui   $t6, %hi(gSavefileInfo) # $t6, 0x8012
/* 08E2B4 8008D6B4 000C6880 */  sll   $t5, $t4, 2
/* 08E2B8 8008D6B8 01AC6823 */  subu  $t5, $t5, $t4
/* 08E2BC 8008D6BC 000D6880 */  sll   $t5, $t5, 2
/* 08E2C0 8008D6C0 25CE64A0 */  addiu $t6, %lo(gSavefileInfo) # addiu $t6, $t6, 0x64a0
/* 08E2C4 8008D6C4 01AE1021 */  addu  $v0, $t5, $t6
/* 08E2C8 8008D6C8 904F0001 */  lbu   $t7, 1($v0)
/* 08E2CC 8008D6CC 3C18800E */  lui   $t8, %hi(gIsInAdventureTwo) # $t8, 0x800e
/* 08E2D0 8008D6D0 11E0000E */  beqz  $t7, .L8008D70C
/* 08E2D4 8008D6D4 240400EF */   li    $a0, 239
/* 08E2D8 8008D6D8 8F18F494 */  lw    $t8, %lo(gIsInAdventureTwo)($t8)
/* 08E2DC 8008D6DC 90590000 */  lbu   $t9, ($v0)
/* 08E2E0 8008D6E0 2404015C */  li    $a0, 348
/* 08E2E4 8008D6E4 13190008 */  beq   $t8, $t9, .L8008D708
/* 08E2E8 8008D6E8 00002825 */   move  $a1, $zero
/* 08E2EC 8008D6EC AFA60020 */  sw    $a2, 0x20($sp)
/* 08E2F0 8008D6F0 0C000741 */  jal   func_80001D04
/* 08E2F4 8008D6F4 AFA7001C */   sw    $a3, 0x1c($sp)
/* 08E2F8 8008D6F8 8FA60020 */  lw    $a2, 0x20($sp)
/* 08E2FC 8008D6FC 8FA7001C */  lw    $a3, 0x1c($sp)
/* 08E300 8008D700 10000028 */  b     .L8008D7A4
/* 08E304 8008D704 24080002 */   li    $t0, 2
.L8008D708:
/* 08E308 8008D708 240400EF */  li    $a0, 239
.L8008D70C:
/* 08E30C 8008D70C 0C000741 */  jal   func_80001D04
/* 08E310 8008D710 00002825 */   move  $a1, $zero
/* 08E314 8008D714 10000065 */  b     .L8008D8AC
/* 08E318 8008D718 24020001 */   li    $v0, 1
.L8008D71C:
/* 08E31C 8008D71C 0C000741 */  jal   func_80001D04
/* 08E320 8008D720 00002825 */   move  $a1, $zero
/* 08E324 8008D724 3C0B800E */  lui   $t3, %hi(gSaveFileIndex) # $t3, 0x800e
/* 08E328 8008D728 256BF4CC */  addiu $t3, %lo(gSaveFileIndex) # addiu $t3, $t3, -0xb34
/* 08E32C 8008D72C 8D6C0000 */  lw    $t4, ($t3)
/* 08E330 8008D730 3C018012 */  lui   $at, %hi(D_8012648C) # $at, 0x8012
/* 08E334 8008D734 AC2C648C */  sw    $t4, %lo(D_8012648C)($at)
/* 08E338 8008D738 240A0001 */  li    $t2, 1
/* 08E33C 8008D73C 3C018012 */  lui   $at, %hi(D_80126484) # $at, 0x8012
/* 08E340 8008D740 AC2A6484 */  sw    $t2, %lo(D_80126484)($at)
/* 08E344 8008D744 3C018012 */  lui   $at, %hi(D_80126494) # $at, 0x8012
/* 08E348 8008D748 AC206494 */  sw    $zero, %lo(D_80126494)($at)
/* 08E34C 8008D74C 10000057 */  b     .L8008D8AC
/* 08E350 8008D750 00001025 */   move  $v0, $zero
/* 08E354 8008D754 240400EF */  li    $a0, 239
.L8008D758:
/* 08E358 8008D758 0C000741 */  jal   func_80001D04
/* 08E35C 8008D75C 00002825 */   move  $a1, $zero
/* 08E360 8008D760 3C0B800E */  lui   $t3, %hi(gSaveFileIndex) # $t3, 0x800e
/* 08E364 8008D764 256BF4CC */  addiu $t3, %lo(gSaveFileIndex) # addiu $t3, $t3, -0xb34
/* 08E368 8008D768 8D6D0000 */  lw    $t5, ($t3)
/* 08E36C 8008D76C 3C018012 */  lui   $at, %hi(D_8012648C) # $at, 0x8012
/* 08E370 8008D770 AC2D648C */  sw    $t5, %lo(D_8012648C)($at)
/* 08E374 8008D774 240A0001 */  li    $t2, 1
/* 08E378 8008D778 3C018012 */  lui   $at, %hi(D_80126488) # $at, 0x8012
/* 08E37C 8008D77C AC2A6488 */  sw    $t2, %lo(D_80126488)($at)
/* 08E380 8008D780 3C018012 */  lui   $at, %hi(D_80126494) # $at, 0x8012
/* 08E384 8008D784 AC206494 */  sw    $zero, %lo(D_80126494)($at)
/* 08E388 8008D788 10000048 */  b     .L8008D8AC
/* 08E38C 8008D78C 00001025 */   move  $v0, $zero
.L8008D790:
/* 08E390 8008D790 306E4000 */  andi  $t6, $v1, 0x4000
/* 08E394 8008D794 11C00003 */  beqz  $t6, .L8008D7A4
/* 08E398 8008D798 00000000 */   nop   
/* 08E39C 8008D79C 10000043 */  b     .L8008D8AC
/* 08E3A0 8008D7A0 2402FFFF */   li    $v0, -1
.L8008D7A4:
/* 08E3A4 8008D7A4 3C098012 */  lui   $t1, %hi(D_801263E0) # $t1, 0x8012
/* 08E3A8 8008D7A8 252963E0 */  addiu $t1, %lo(D_801263E0) # addiu $t1, $t1, 0x63e0
/* 08E3AC 8008D7AC 3C0B800E */  lui   $t3, %hi(gSaveFileIndex) # $t3, 0x800e
/* 08E3B0 8008D7B0 8D220000 */  lw    $v0, ($t1)
/* 08E3B4 8008D7B4 256BF4CC */  addiu $t3, %lo(gSaveFileIndex) # addiu $t3, $t3, -0xb34
/* 08E3B8 8008D7B8 8D630000 */  lw    $v1, ($t3)
/* 08E3BC 8008D7BC 00027A00 */  sll   $t7, $v0, 8
/* 08E3C0 8008D7C0 240A0001 */  li    $t2, 1
/* 08E3C4 8008D7C4 14400016 */  bnez  $v0, .L8008D820
/* 08E3C8 8008D7C8 01E32025 */   or    $a0, $t7, $v1
/* 08E3CC 8008D7CC 04C10005 */  bgez  $a2, .L8008D7E4
/* 08E3D0 8008D7D0 00000000 */   nop   
/* 08E3D4 8008D7D4 18600003 */  blez  $v1, .L8008D7E4
/* 08E3D8 8008D7D8 2478FFFF */   addiu $t8, $v1, -1
/* 08E3DC 8008D7DC AD780000 */  sw    $t8, ($t3)
/* 08E3E0 8008D7E0 03001825 */  move  $v1, $t8
.L8008D7E4:
/* 08E3E4 8008D7E4 18C00005 */  blez  $a2, .L8008D7FC
/* 08E3E8 8008D7E8 28610002 */   slti  $at, $v1, 2
/* 08E3EC 8008D7EC 10200003 */  beqz  $at, .L8008D7FC
/* 08E3F0 8008D7F0 24790001 */   addiu $t9, $v1, 1
/* 08E3F4 8008D7F4 AD790000 */  sw    $t9, ($t3)
/* 08E3F8 8008D7F8 03201825 */  move  $v1, $t9
.L8008D7FC:
/* 08E3FC 8008D7FC 04E10024 */  bgez  $a3, .L8008D890
/* 08E400 8008D800 28610002 */   slti  $at, $v1, 2
/* 08E404 8008D804 14200004 */  bnez  $at, .L8008D818
/* 08E408 8008D808 01401025 */   move  $v0, $t2
/* 08E40C 8008D80C AD280000 */  sw    $t0, ($t1)
/* 08E410 8008D810 1000001F */  b     .L8008D890
/* 08E414 8008D814 01001025 */   move  $v0, $t0
.L8008D818:
/* 08E418 8008D818 1000001D */  b     .L8008D890
/* 08E41C 8008D81C AD2A0000 */   sw    $t2, ($t1)
.L8008D820:
/* 08E420 8008D820 04C10005 */  bgez  $a2, .L8008D838
/* 08E424 8008D824 00000000 */   nop   
/* 08E428 8008D828 15020003 */  bne   $t0, $v0, .L8008D838
/* 08E42C 8008D82C 00000000 */   nop   
/* 08E430 8008D830 AD2A0000 */  sw    $t2, ($t1)
/* 08E434 8008D834 01401025 */  move  $v0, $t2
.L8008D838:
/* 08E438 8008D838 18C00005 */  blez  $a2, .L8008D850
/* 08E43C 8008D83C 00000000 */   nop   
/* 08E440 8008D840 15420003 */  bne   $t2, $v0, .L8008D850
/* 08E444 8008D844 00000000 */   nop   
/* 08E448 8008D848 AD280000 */  sw    $t0, ($t1)
/* 08E44C 8008D84C 01001025 */  move  $v0, $t0
.L8008D850:
/* 08E450 8008D850 18E00010 */  blez  $a3, .L8008D894
/* 08E454 8008D854 00026200 */   sll   $t4, $v0, 8
/* 08E458 8008D858 15420005 */  bne   $t2, $v0, .L8008D870
/* 08E45C 8008D85C 28610002 */   slti  $at, $v1, 2
/* 08E460 8008D860 14200003 */  bnez  $at, .L8008D870
/* 08E464 8008D864 00000000 */   nop   
/* 08E468 8008D868 AD600000 */  sw    $zero, ($t3)
/* 08E46C 8008D86C 00001825 */  move  $v1, $zero
.L8008D870:
/* 08E470 8008D870 15020005 */  bne   $t0, $v0, .L8008D888
/* 08E474 8008D874 00000000 */   nop   
/* 08E478 8008D878 1C600003 */  bgtz  $v1, .L8008D888
/* 08E47C 8008D87C 00000000 */   nop   
/* 08E480 8008D880 AD680000 */  sw    $t0, ($t3)
/* 08E484 8008D884 01001825 */  move  $v1, $t0
.L8008D888:
/* 08E488 8008D888 AD200000 */  sw    $zero, ($t1)
/* 08E48C 8008D88C 00001025 */  move  $v0, $zero
.L8008D890:
/* 08E490 8008D890 00026200 */  sll   $t4, $v0, 8
.L8008D894:
/* 08E494 8008D894 01836825 */  or    $t5, $t4, $v1
/* 08E498 8008D898 108D0003 */  beq   $a0, $t5, .L8008D8A8
/* 08E49C 8008D89C 00002825 */   move  $a1, $zero
/* 08E4A0 8008D8A0 0C000741 */  jal   func_80001D04
/* 08E4A4 8008D8A4 240400EB */   li    $a0, 235
.L8008D8A8:
/* 08E4A8 8008D8A8 00001025 */  move  $v0, $zero
.L8008D8AC:
/* 08E4AC 8008D8AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08E4B0 8008D8B0 27BD0028 */  addiu $sp, $sp, 0x28
/* 08E4B4 8008D8B4 03E00008 */  jr    $ra
/* 08E4B8 8008D8B8 00000000 */   nop   

