glabel func_8008C168
/* 08CD68 8008C168 3C058012 */  lui   $a1, %hi(D_801263C0) # $a1, 0x8012
/* 08CD6C 8008C16C 24A563C0 */  addiu $a1, %lo(D_801263C0) # addiu $a1, $a1, 0x63c0
/* 08CD70 8008C170 80A20001 */  lb    $v0, 1($a1)
/* 08CD74 8008C174 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08CD78 8008C178 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08CD7C 8008C17C AFB00018 */  sw    $s0, 0x18($sp)
/* 08CD80 8008C180 18400037 */  blez  $v0, .L8008C260
/* 08CD84 8008C184 AFA40020 */   sw    $a0, 0x20($sp)
/* 08CD88 8008C188 00447823 */  subu  $t7, $v0, $a0
/* 08CD8C 8008C18C A0AF0001 */  sb    $t7, 1($a1)
/* 08CD90 8008C190 80B80001 */  lb    $t8, 1($a1)
/* 08CD94 8008C194 3C108012 */  lui   $s0, %hi(D_801263B8) # $s0, 0x8012
/* 08CD98 8008C198 1F000031 */  bgtz  $t8, .L8008C260
/* 08CD9C 8008C19C 261063B8 */   addiu $s0, %lo(D_801263B8) # addiu $s0, $s0, 0x63b8
/* 08CDA0 8008C1A0 82020000 */  lb    $v0, ($s0)
/* 08CDA4 8008C1A4 3C04800E */  lui   $a0, %hi(D_800DFDB4) # $a0, 0x800e
/* 08CDA8 8008C1A8 0440000E */  bltz  $v0, .L8008C1E4
/* 08CDAC 8008C1AC 0002C840 */   sll   $t9, $v0, 1
/* 08CDB0 8008C1B0 00992021 */  addu  $a0, $a0, $t9
/* 08CDB4 8008C1B4 9084FDB4 */  lbu   $a0, %lo(D_800DFDB4)($a0)
/* 08CDB8 8008C1B8 0C000445 */  jal   func_80001114
/* 08CDBC 8008C1BC 00000000 */   nop   
/* 08CDC0 8008C1C0 82080000 */  lb    $t0, ($s0)
/* 08CDC4 8008C1C4 3C04800E */  lui   $a0, %hi(D_800DFDB4+1) # $a0, 0x800e
/* 08CDC8 8008C1C8 00084840 */  sll   $t1, $t0, 1
/* 08CDCC 8008C1CC 00892021 */  addu  $a0, $a0, $t1
/* 08CDD0 8008C1D0 9084FDB5 */  lbu   $a0, %lo(D_800DFDB4+1)($a0)
/* 08CDD4 8008C1D4 0C000445 */  jal   func_80001114
/* 08CDD8 8008C1D8 00000000 */   nop   
/* 08CDDC 8008C1DC 3C058012 */  lui   $a1, %hi(D_801263C0) # $a1, 0x8012
/* 08CDE0 8008C1E0 24A563C0 */  addiu $a1, %lo(D_801263C0) # addiu $a1, $a1, 0x63c0
.L8008C1E4:
/* 08CDE4 8008C1E4 3C038012 */  lui   $v1, %hi(D_801263B4) # $v1, 0x8012
/* 08CDE8 8008C1E8 246363B4 */  addiu $v1, %lo(D_801263B4) # addiu $v1, $v1, 0x63b4
/* 08CDEC 8008C1EC 80620000 */  lb    $v0, ($v1)
/* 08CDF0 8008C1F0 3C04800E */  lui   $a0, %hi(D_800DFDB4) # $a0, 0x800e
/* 08CDF4 8008C1F4 04400004 */  bltz  $v0, .L8008C208
/* 08CDF8 8008C1F8 A2020000 */   sb    $v0, ($s0)
/* 08CDFC 8008C1FC 846A0002 */  lh    $t2, 2($v1)
/* 08CE00 8008C200 00000000 */  nop   
/* 08CE04 8008C204 A60A0002 */  sh    $t2, 2($s0)
.L8008C208:
/* 08CE08 8008C208 80AB0000 */  lb    $t3, ($a1)
/* 08CE0C 8008C20C 00000000 */  nop   
/* 08CE10 8008C210 A06B0000 */  sb    $t3, ($v1)
/* 08CE14 8008C214 80620000 */  lb    $v0, ($v1)
/* 08CE18 8008C218 00000000 */  nop   
/* 08CE1C 8008C21C 04400010 */  bltz  $v0, .L8008C260
/* 08CE20 8008C220 00026840 */   sll   $t5, $v0, 1
/* 08CE24 8008C224 84AC0002 */  lh    $t4, 2($a1)
/* 08CE28 8008C228 008D2021 */  addu  $a0, $a0, $t5
/* 08CE2C 8008C22C A46C0002 */  sh    $t4, 2($v1)
/* 08CE30 8008C230 9084FDB4 */  lbu   $a0, %lo(D_800DFDB4)($a0)
/* 08CE34 8008C234 0C00045C */  jal   func_80001170
/* 08CE38 8008C238 00000000 */   nop   
/* 08CE3C 8008C23C 3C038012 */  lui   $v1, %hi(D_801263B4) # $v1, 0x8012
/* 08CE40 8008C240 246363B4 */  addiu $v1, %lo(D_801263B4) # addiu $v1, $v1, 0x63b4
/* 08CE44 8008C244 806E0000 */  lb    $t6, ($v1)
/* 08CE48 8008C248 3C04800E */  lui   $a0, %hi(D_800DFDB4+1) # $a0, 0x800e
/* 08CE4C 8008C24C 000E7840 */  sll   $t7, $t6, 1
/* 08CE50 8008C250 008F2021 */  addu  $a0, $a0, $t7
/* 08CE54 8008C254 9084FDB5 */  lbu   $a0, %lo(D_800DFDB4+1)($a0)
/* 08CE58 8008C258 0C00045C */  jal   func_80001170
/* 08CE5C 8008C25C 00000000 */   nop   
.L8008C260:
/* 08CE60 8008C260 3C038012 */  lui   $v1, %hi(D_801263B4) # $v1, 0x8012
/* 08CE64 8008C264 246363B4 */  addiu $v1, %lo(D_801263B4) # addiu $v1, $v1, 0x63b4
/* 08CE68 8008C268 80620000 */  lb    $v0, ($v1)
/* 08CE6C 8008C26C 3C108012 */  lui   $s0, %hi(D_801263B8) # $s0, 0x8012
/* 08CE70 8008C270 0440001F */  bltz  $v0, .L8008C2F0
/* 08CE74 8008C274 261063B8 */   addiu $s0, %lo(D_801263B8) # addiu $s0, $s0, 0x63b8
/* 08CE78 8008C278 8FB90020 */  lw    $t9, 0x20($sp)
/* 08CE7C 8008C27C 84780002 */  lh    $t8, 2($v1)
/* 08CE80 8008C280 00194080 */  sll   $t0, $t9, 2
/* 08CE84 8008C284 03084821 */  addu  $t1, $t8, $t0
/* 08CE88 8008C288 A4690002 */  sh    $t1, 2($v1)
/* 08CE8C 8008C28C 84660002 */  lh    $a2, 2($v1)
/* 08CE90 8008C290 00025840 */  sll   $t3, $v0, 1
/* 08CE94 8008C294 28C10080 */  slti  $at, $a2, 0x80
/* 08CE98 8008C298 14200005 */  bnez  $at, .L8008C2B0
/* 08CE9C 8008C29C 3C04800E */   lui   $a0, %hi(D_800DFDB4) # $a0, 0x800e
/* 08CEA0 8008C2A0 240A007F */  li    $t2, 127
/* 08CEA4 8008C2A4 A46A0002 */  sh    $t2, 2($v1)
/* 08CEA8 8008C2A8 84660002 */  lh    $a2, 2($v1)
/* 08CEAC 8008C2AC 00000000 */  nop   
.L8008C2B0:
/* 08CEB0 8008C2B0 008B2021 */  addu  $a0, $a0, $t3
/* 08CEB4 8008C2B4 9084FDB4 */  lbu   $a0, %lo(D_800DFDB4)($a0)
/* 08CEB8 8008C2B8 0C00049A */  jal   func_80001268
/* 08CEBC 8008C2BC 30C500FF */   andi  $a1, $a2, 0xff
/* 08CEC0 8008C2C0 3C038012 */  lui   $v1, %hi(D_801263B4) # $v1, 0x8012
/* 08CEC4 8008C2C4 246363B4 */  addiu $v1, %lo(D_801263B4) # addiu $v1, $v1, 0x63b4
/* 08CEC8 8008C2C8 806C0000 */  lb    $t4, ($v1)
/* 08CECC 8008C2CC 3C04800E */  lui   $a0, %hi(D_800DFDB4+1) # $a0, 0x800e
/* 08CED0 8008C2D0 000C6840 */  sll   $t5, $t4, 1
/* 08CED4 8008C2D4 008D2021 */  addu  $a0, $a0, $t5
/* 08CED8 8008C2D8 9084FDB5 */  lbu   $a0, %lo(D_800DFDB4+1)($a0)
/* 08CEDC 8008C2DC 90650003 */  lbu   $a1, 3($v1)
/* 08CEE0 8008C2E0 0C00049A */  jal   func_80001268
/* 08CEE4 8008C2E4 00000000 */   nop   
/* 08CEE8 8008C2E8 3C038012 */  lui   $v1, %hi(D_801263B4) # $v1, 0x8012
/* 08CEEC 8008C2EC 246363B4 */  addiu $v1, %lo(D_801263B4) # addiu $v1, $v1, 0x63b4
.L8008C2F0:
/* 08CEF0 8008C2F0 82020000 */  lb    $v0, ($s0)
/* 08CEF4 8008C2F4 8FAF0020 */  lw    $t7, 0x20($sp)
/* 08CEF8 8008C2F8 0440002A */  bltz  $v0, .L8008C3A4
/* 08CEFC 8008C2FC 000FC880 */   sll   $t9, $t7, 2
/* 08CF00 8008C300 860E0002 */  lh    $t6, 2($s0)
/* 08CF04 8008C304 80680000 */  lb    $t0, ($v1)
/* 08CF08 8008C308 01D9C023 */  subu  $t8, $t6, $t9
/* 08CF0C 8008C30C 11020020 */  beq   $t0, $v0, .L8008C390
/* 08CF10 8008C310 A6180002 */   sh    $t8, 2($s0)
/* 08CF14 8008C314 86030002 */  lh    $v1, 2($s0)
/* 08CF18 8008C318 00026040 */  sll   $t4, $v0, 1
/* 08CF1C 8008C31C 04610010 */  bgez  $v1, .L8008C360
/* 08CF20 8008C320 3C04800E */   lui   $a0, %hi(D_800DFDB4) # $a0, 0x800e
/* 08CF24 8008C324 00024840 */  sll   $t1, $v0, 1
/* 08CF28 8008C328 3C04800E */  lui   $a0, %hi(D_800DFDB4) # $a0, 0x800e
/* 08CF2C 8008C32C 00892021 */  addu  $a0, $a0, $t1
/* 08CF30 8008C330 9084FDB4 */  lbu   $a0, %lo(D_800DFDB4)($a0)
/* 08CF34 8008C334 0C000445 */  jal   func_80001114
/* 08CF38 8008C338 00000000 */   nop   
/* 08CF3C 8008C33C 820A0000 */  lb    $t2, ($s0)
/* 08CF40 8008C340 3C04800E */  lui   $a0, %hi(D_800DFDB4+1) # $a0, 0x800e
/* 08CF44 8008C344 000A5840 */  sll   $t3, $t2, 1
/* 08CF48 8008C348 008B2021 */  addu  $a0, $a0, $t3
/* 08CF4C 8008C34C 9084FDB5 */  lbu   $a0, %lo(D_800DFDB4+1)($a0)
/* 08CF50 8008C350 0C000445 */  jal   func_80001114
/* 08CF54 8008C354 00000000 */   nop   
/* 08CF58 8008C358 1000000E */  b     .L8008C394
/* 08CF5C 8008C35C 860E0002 */   lh    $t6, 2($s0)
.L8008C360:
/* 08CF60 8008C360 008C2021 */  addu  $a0, $a0, $t4
/* 08CF64 8008C364 9084FDB4 */  lbu   $a0, %lo(D_800DFDB4)($a0)
/* 08CF68 8008C368 0C00049A */  jal   func_80001268
/* 08CF6C 8008C36C 306500FF */   andi  $a1, $v1, 0xff
/* 08CF70 8008C370 820D0000 */  lb    $t5, ($s0)
/* 08CF74 8008C374 3C04800E */  lui   $a0, %hi(D_800DFDB4+1) # $a0, 0x800e
/* 08CF78 8008C378 000D7840 */  sll   $t7, $t5, 1
/* 08CF7C 8008C37C 008F2021 */  addu  $a0, $a0, $t7
/* 08CF80 8008C380 9084FDB5 */  lbu   $a0, %lo(D_800DFDB4+1)($a0)
/* 08CF84 8008C384 92050003 */  lbu   $a1, 3($s0)
/* 08CF88 8008C388 0C00049A */  jal   func_80001268
/* 08CF8C 8008C38C 00000000 */   nop   
.L8008C390:
/* 08CF90 8008C390 860E0002 */  lh    $t6, 2($s0)
.L8008C394:
/* 08CF94 8008C394 2419FFFF */  li    $t9, -1
/* 08CF98 8008C398 05C10003 */  bgez  $t6, .L8008C3A8
/* 08CF9C 8008C39C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 08CFA0 8008C3A0 A2190000 */  sb    $t9, ($s0)
.L8008C3A4:
/* 08CFA4 8008C3A4 8FBF001C */  lw    $ra, 0x1c($sp)
.L8008C3A8:
/* 08CFA8 8008C3A8 8FB00018 */  lw    $s0, 0x18($sp)
/* 08CFAC 8008C3AC 03E00008 */  jr    $ra
/* 08CFB0 8008C3B0 27BD0020 */   addiu $sp, $sp, 0x20

