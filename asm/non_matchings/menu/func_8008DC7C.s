glabel func_8008DC7C
/* 08E87C 8008DC7C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08E880 8008DC80 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08E884 8008DC84 AFA40020 */  sw    $a0, 0x20($sp)
/* 08E888 8008DC88 0C01A955 */  jal   get_buttons_pressed_from_player
/* 08E88C 8008DC8C 00002025 */   move  $a0, $zero
/* 08E890 8008DC90 3C0E800E */  lui   $t6, %hi(gNumberOfActivePlayers) # $t6, 0x800e
/* 08E894 8008DC94 8DCEF4BC */  lw    $t6, %lo(gNumberOfActivePlayers)($t6)
/* 08E898 8008DC98 3C058012 */  lui   $a1, %hi(gControllersXAxisDirection) # $a1, 0x8012
/* 08E89C 8008DC9C 80A5645C */  lb    $a1, %lo(gControllersXAxisDirection)($a1)
/* 08E8A0 8008DCA0 24010002 */  li    $at, 2
/* 08E8A4 8008DCA4 15C1000B */  bne   $t6, $at, .L8008DCD4
/* 08E8A8 8008DCA8 00401825 */   move  $v1, $v0
/* 08E8AC 8008DCAC 24040001 */  li    $a0, 1
/* 08E8B0 8008DCB0 AFA2001C */  sw    $v0, 0x1c($sp)
/* 08E8B4 8008DCB4 0C01A955 */  jal   get_buttons_pressed_from_player
/* 08E8B8 8008DCB8 AFA50018 */   sw    $a1, 0x18($sp)
/* 08E8BC 8008DCBC 3C0F8012 */  lui   $t7, %hi(gControllersXAxisDirection+1) # $t7, 0x8012
/* 08E8C0 8008DCC0 8FA3001C */  lw    $v1, 0x1c($sp)
/* 08E8C4 8008DCC4 8FA50018 */  lw    $a1, 0x18($sp)
/* 08E8C8 8008DCC8 81EF645D */  lb    $t7, %lo(gControllersXAxisDirection+1)($t7)
/* 08E8CC 8008DCCC 00621825 */  or    $v1, $v1, $v0
/* 08E8D0 8008DCD0 00AF2821 */  addu  $a1, $a1, $t7
.L8008DCD4:
/* 08E8D4 8008DCD4 3C188012 */  lui   $t8, %hi(D_80126494) # $t8, 0x8012
/* 08E8D8 8008DCD8 8F186494 */  lw    $t8, %lo(D_80126494)($t8)
/* 08E8DC 8008DCDC 30794000 */  andi  $t9, $v1, 0x4000
/* 08E8E0 8008DCE0 17000035 */  bnez  $t8, .L8008DDB8
/* 08E8E4 8008DCE4 306F9000 */   andi  $t7, $v1, 0x9000
/* 08E8E8 8008DCE8 13200007 */  beqz  $t9, .L8008DD08
/* 08E8EC 8008DCEC 30689000 */   andi  $t0, $v1, 0x9000
/* 08E8F0 8008DCF0 24040241 */  li    $a0, 577
/* 08E8F4 8008DCF4 0C000741 */  jal   func_80001D04
/* 08E8F8 8008DCF8 00002825 */   move  $a1, $zero
/* 08E8FC 8008DCFC 3C018012 */  lui   $at, %hi(D_80126488) # $at, 0x8012
/* 08E900 8008DD00 10000057 */  b     .L8008DE60
/* 08E904 8008DD04 AC206488 */   sw    $zero, %lo(D_80126488)($at)
.L8008DD08:
/* 08E908 8008DD08 11000017 */  beqz  $t0, .L8008DD68
/* 08E90C 8008DD0C 3C068012 */   lui   $a2, %hi(D_8012648C) # $a2, 0x8012
/* 08E910 8008DD10 3C068012 */  lui   $a2, %hi(D_8012648C) # $a2, 0x8012
/* 08E914 8008DD14 24C6648C */  addiu $a2, %lo(D_8012648C) # addiu $a2, $a2, 0x648c
/* 08E918 8008DD18 8CC90000 */  lw    $t1, ($a2)
/* 08E91C 8008DD1C 3C0B8012 */  lui   $t3, %hi(gSavefileInfo+1) # $t3, 0x8012
/* 08E920 8008DD20 00095080 */  sll   $t2, $t1, 2
/* 08E924 8008DD24 01495023 */  subu  $t2, $t2, $t1
/* 08E928 8008DD28 000A5080 */  sll   $t2, $t2, 2
/* 08E92C 8008DD2C 016A5821 */  addu  $t3, $t3, $t2
/* 08E930 8008DD30 916B64A1 */  lbu   $t3, %lo(gSavefileInfo+1)($t3)
/* 08E934 8008DD34 00002825 */  move  $a1, $zero
/* 08E938 8008DD38 11600007 */  beqz  $t3, .L8008DD58
/* 08E93C 8008DD3C 24040241 */   li    $a0, 577
/* 08E940 8008DD40 0C000741 */  jal   func_80001D04
/* 08E944 8008DD44 240400EF */   li    $a0, 239
/* 08E948 8008DD48 240C0001 */  li    $t4, 1
/* 08E94C 8008DD4C 3C018012 */  lui   $at, %hi(D_80126494) # $at, 0x8012
/* 08E950 8008DD50 10000043 */  b     .L8008DE60
/* 08E954 8008DD54 AC2C6494 */   sw    $t4, %lo(D_80126494)($at)
.L8008DD58:
/* 08E958 8008DD58 0C000741 */  jal   func_80001D04
/* 08E95C 8008DD5C 00002825 */   move  $a1, $zero
/* 08E960 8008DD60 10000040 */  b     .L8008DE64
/* 08E964 8008DD64 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008DD68:
/* 08E968 8008DD68 24C6648C */  addiu $a2, %lo(D_8012648C) # addiu $a2, $a2, 0x648c
/* 08E96C 8008DD6C 8CC30000 */  lw    $v1, ($a2)
/* 08E970 8008DD70 04A10005 */  bgez  $a1, .L8008DD88
/* 08E974 8008DD74 00601025 */   move  $v0, $v1
/* 08E978 8008DD78 18600003 */  blez  $v1, .L8008DD88
/* 08E97C 8008DD7C 246DFFFF */   addiu $t5, $v1, -1
/* 08E980 8008DD80 ACCD0000 */  sw    $t5, ($a2)
/* 08E984 8008DD84 01A01825 */  move  $v1, $t5
.L8008DD88:
/* 08E988 8008DD88 18A00005 */  blez  $a1, .L8008DDA0
/* 08E98C 8008DD8C 28610002 */   slti  $at, $v1, 2
/* 08E990 8008DD90 10200003 */  beqz  $at, .L8008DDA0
/* 08E994 8008DD94 246E0001 */   addiu $t6, $v1, 1
/* 08E998 8008DD98 ACCE0000 */  sw    $t6, ($a2)
/* 08E99C 8008DD9C 01C01825 */  move  $v1, $t6
.L8008DDA0:
/* 08E9A0 8008DDA0 1043002F */  beq   $v0, $v1, .L8008DE60
/* 08E9A4 8008DDA4 240400EB */   li    $a0, 235
/* 08E9A8 8008DDA8 0C000741 */  jal   func_80001D04
/* 08E9AC 8008DDAC 00002825 */   move  $a1, $zero
/* 08E9B0 8008DDB0 1000002C */  b     .L8008DE64
/* 08E9B4 8008DDB4 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008DDB8:
/* 08E9B8 8008DDB8 11E00022 */  beqz  $t7, .L8008DE44
/* 08E9BC 8008DDBC 240400EF */   li    $a0, 239
/* 08E9C0 8008DDC0 0C000741 */  jal   func_80001D04
/* 08E9C4 8008DDC4 00002825 */   move  $a1, $zero
/* 08E9C8 8008DDC8 3C068012 */  lui   $a2, %hi(D_8012648C) # $a2, 0x8012
/* 08E9CC 8008DDCC 24C6648C */  addiu $a2, %lo(D_8012648C) # addiu $a2, $a2, 0x648c
/* 08E9D0 8008DDD0 8CC40000 */  lw    $a0, ($a2)
/* 08E9D4 8008DDD4 0C01BB2B */  jal   func_8006ECAC
/* 08E9D8 8008DDD8 00000000 */   nop   
/* 08E9DC 8008DDDC 3C068012 */  lui   $a2, %hi(D_8012648C) # $a2, 0x8012
/* 08E9E0 8008DDE0 24C6648C */  addiu $a2, %lo(D_8012648C) # addiu $a2, $a2, 0x648c
/* 08E9E4 8008DDE4 8CC30000 */  lw    $v1, ($a2)
/* 08E9E8 8008DDE8 3C198012 */  lui   $t9, %hi(gSavefileInfo) # $t9, 0x8012
/* 08E9EC 8008DDEC 0003C080 */  sll   $t8, $v1, 2
/* 08E9F0 8008DDF0 0303C023 */  subu  $t8, $t8, $v1
/* 08E9F4 8008DDF4 0018C080 */  sll   $t8, $t8, 2
/* 08E9F8 8008DDF8 273964A0 */  addiu $t9, %lo(gSavefileInfo) # addiu $t9, $t9, 0x64a0
/* 08E9FC 8008DDFC 03191021 */  addu  $v0, $t8, $t9
/* 08EA00 8008DE00 24080044 */  li    $t0, 68
/* 08EA04 8008DE04 2409004B */  li    $t1, 75
/* 08EA08 8008DE08 240A0052 */  li    $t2, 82
/* 08EA0C 8008DE0C A0400000 */  sb    $zero, ($v0)
/* 08EA10 8008DE10 A0400001 */  sb    $zero, 1($v0)
/* 08EA14 8008DE14 A4400002 */  sh    $zero, 2($v0)
/* 08EA18 8008DE18 A0480004 */  sb    $t0, 4($v0)
/* 08EA1C 8008DE1C A0490005 */  sb    $t1, 5($v0)
/* 08EA20 8008DE20 A04A0006 */  sb    $t2, 6($v0)
/* 08EA24 8008DE24 A0400007 */  sb    $zero, 7($v0)
/* 08EA28 8008DE28 3C01800E */  lui   $at, %hi(gSaveFileIndex) # $at, 0x800e
/* 08EA2C 8008DE2C AC23F4CC */  sw    $v1, %lo(gSaveFileIndex)($at)
/* 08EA30 8008DE30 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 08EA34 8008DE34 AC2063E0 */  sw    $zero, %lo(D_801263E0)($at)
/* 08EA38 8008DE38 3C018012 */  lui   $at, %hi(D_80126488) # $at, 0x8012
/* 08EA3C 8008DE3C 10000008 */  b     .L8008DE60
/* 08EA40 8008DE40 AC206488 */   sw    $zero, %lo(D_80126488)($at)
.L8008DE44:
/* 08EA44 8008DE44 306B4000 */  andi  $t3, $v1, 0x4000
/* 08EA48 8008DE48 11600005 */  beqz  $t3, .L8008DE60
/* 08EA4C 8008DE4C 24040241 */   li    $a0, 577
/* 08EA50 8008DE50 0C000741 */  jal   func_80001D04
/* 08EA54 8008DE54 00002825 */   move  $a1, $zero
/* 08EA58 8008DE58 3C018012 */  lui   $at, %hi(D_80126494) # $at, 0x8012
/* 08EA5C 8008DE5C AC206494 */  sw    $zero, %lo(D_80126494)($at)
.L8008DE60:
/* 08EA60 8008DE60 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008DE64:
/* 08EA64 8008DE64 27BD0020 */  addiu $sp, $sp, 0x20
/* 08EA68 8008DE68 03E00008 */  jr    $ra
/* 08EA6C 8008DE6C 00000000 */   nop   

