glabel gzip_huft_build
/* 0C6E74 800C6274 27BDFA08 */  addiu $sp, $sp, -0x5f8
/* 0C6E78 800C6278 AFB20020 */  sw    $s2, 0x20($sp)
/* 0C6E7C 800C627C AFB1001C */  sw    $s1, 0x1c($sp)
/* 0C6E80 800C6280 27B105B0 */  addiu $s1, $sp, 0x5b0
/* 0C6E84 800C6284 00809025 */  move  $s2, $a0
/* 0C6E88 800C6288 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0C6E8C 800C628C AFA505FC */  sw    $a1, 0x5fc($sp)
/* 0C6E90 800C6290 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0C6E94 800C6294 AFB70034 */  sw    $s7, 0x34($sp)
/* 0C6E98 800C6298 AFB60030 */  sw    $s6, 0x30($sp)
/* 0C6E9C 800C629C AFB5002C */  sw    $s5, 0x2c($sp)
/* 0C6EA0 800C62A0 AFB40028 */  sw    $s4, 0x28($sp)
/* 0C6EA4 800C62A4 AFB30024 */  sw    $s3, 0x24($sp)
/* 0C6EA8 800C62A8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0C6EAC 800C62AC AFA60600 */  sw    $a2, 0x600($sp)
/* 0C6EB0 800C62B0 AFA70604 */  sw    $a3, 0x604($sp)
/* 0C6EB4 800C62B4 24050044 */  li    $a1, 68
/* 0C6EB8 800C62B8 0C034138 */  jal   bzero
/* 0C6EBC 800C62BC 02202025 */   move  $a0, $s1
/* 0C6EC0 800C62C0 8FAE05FC */  lw    $t6, 0x5fc($sp)
/* 0C6EC4 800C62C4 0240F025 */  move  $fp, $s2
/* 0C6EC8 800C62C8 31C20003 */  andi  $v0, $t6, 3
/* 0C6ECC 800C62CC 00021023 */  negu  $v0, $v0
/* 0C6ED0 800C62D0 1040000D */  beqz  $v0, .L800C6308
/* 0C6ED4 800C62D4 01C0F825 */   move  $ra, $t6
/* 0C6ED8 800C62D8 004E1821 */  addu  $v1, $v0, $t6
.L800C62DC:
/* 0C6EDC 800C62DC 8FCF0000 */  lw    $t7, ($fp)
/* 0C6EE0 800C62E0 27FFFFFF */  addiu $ra, $ra, -1
/* 0C6EE4 800C62E4 000FC080 */  sll   $t8, $t7, 2
/* 0C6EE8 800C62E8 02381021 */  addu  $v0, $s1, $t8
/* 0C6EEC 800C62EC 8C590000 */  lw    $t9, ($v0)
/* 0C6EF0 800C62F0 27DE0004 */  addiu $fp, $fp, 4
/* 0C6EF4 800C62F4 272E0001 */  addiu $t6, $t9, 1
/* 0C6EF8 800C62F8 147FFFF8 */  bne   $v1, $ra, .L800C62DC
/* 0C6EFC 800C62FC AC4E0000 */   sw    $t6, ($v0)
/* 0C6F00 800C6300 13E00023 */  beqz  $ra, .L800C6390
/* 0C6F04 800C6304 8FAF05FC */   lw    $t7, 0x5fc($sp)
.L800C6308:
/* 0C6F08 800C6308 8FCF0000 */  lw    $t7, ($fp)
/* 0C6F0C 800C630C 27FFFFFC */  addiu $ra, $ra, -4
/* 0C6F10 800C6310 000FC080 */  sll   $t8, $t7, 2
/* 0C6F14 800C6314 02381021 */  addu  $v0, $s1, $t8
/* 0C6F18 800C6318 8C590000 */  lw    $t9, ($v0)
/* 0C6F1C 800C631C 27DE0010 */  addiu $fp, $fp, 0x10
/* 0C6F20 800C6320 272E0001 */  addiu $t6, $t9, 1
/* 0C6F24 800C6324 AC4E0000 */  sw    $t6, ($v0)
/* 0C6F28 800C6328 8FCFFFF4 */  lw    $t7, -0xc($fp)
/* 0C6F2C 800C632C 00000000 */  nop   
/* 0C6F30 800C6330 000FC080 */  sll   $t8, $t7, 2
/* 0C6F34 800C6334 02381021 */  addu  $v0, $s1, $t8
/* 0C6F38 800C6338 8C590000 */  lw    $t9, ($v0)
/* 0C6F3C 800C633C 00000000 */  nop   
/* 0C6F40 800C6340 272E0001 */  addiu $t6, $t9, 1
/* 0C6F44 800C6344 AC4E0000 */  sw    $t6, ($v0)
/* 0C6F48 800C6348 8FCFFFF8 */  lw    $t7, -8($fp)
/* 0C6F4C 800C634C 00000000 */  nop   
/* 0C6F50 800C6350 000FC080 */  sll   $t8, $t7, 2
/* 0C6F54 800C6354 02381021 */  addu  $v0, $s1, $t8
/* 0C6F58 800C6358 8C590000 */  lw    $t9, ($v0)
/* 0C6F5C 800C635C 00000000 */  nop   
/* 0C6F60 800C6360 272E0001 */  addiu $t6, $t9, 1
/* 0C6F64 800C6364 AC4E0000 */  sw    $t6, ($v0)
/* 0C6F68 800C6368 8FCFFFFC */  lw    $t7, -4($fp)
/* 0C6F6C 800C636C 00000000 */  nop   
/* 0C6F70 800C6370 000FC080 */  sll   $t8, $t7, 2
/* 0C6F74 800C6374 02381021 */  addu  $v0, $s1, $t8
/* 0C6F78 800C6378 8C590000 */  lw    $t9, ($v0)
/* 0C6F7C 800C637C 00000000 */  nop   
/* 0C6F80 800C6380 272E0001 */  addiu $t6, $t9, 1
/* 0C6F84 800C6384 17E0FFE0 */  bnez  $ra, .L800C6308
/* 0C6F88 800C6388 AC4E0000 */   sw    $t6, ($v0)
/* 0C6F8C 800C638C 8FAF05FC */  lw    $t7, 0x5fc($sp)
.L800C6390:
/* 0C6F90 800C6390 8FB805B0 */  lw    $t8, 0x5b0($sp)
/* 0C6F94 800C6394 8FA50610 */  lw    $a1, 0x610($sp)
/* 0C6F98 800C6398 15F80007 */  bne   $t7, $t8, .L800C63B8
/* 0C6F9C 800C639C 24070001 */   li    $a3, 1
/* 0C6FA0 800C63A0 8FA50610 */  lw    $a1, 0x610($sp)
/* 0C6FA4 800C63A4 8FB5060C */  lw    $s5, 0x60c($sp)
/* 0C6FA8 800C63A8 00000000 */  nop   
/* 0C6FAC 800C63AC AEA00000 */  sw    $zero, ($s5)
/* 0C6FB0 800C63B0 10000136 */  b     .L800C688C
/* 0C6FB4 800C63B4 ACA00000 */   sw    $zero, ($a1)
.L800C63B8:
/* 0C6FB8 800C63B8 8CB00000 */  lw    $s0, ($a1)
/* 0C6FBC 800C63BC 27A405B4 */  addiu $a0, $sp, 0x5b4
/* 0C6FC0 800C63C0 24020011 */  li    $v0, 17
.L800C63C4:
/* 0C6FC4 800C63C4 8C990000 */  lw    $t9, ($a0)
/* 0C6FC8 800C63C8 00000000 */  nop   
/* 0C6FCC 800C63CC 17200005 */  bnez  $t9, .L800C63E4
/* 0C6FD0 800C63D0 0207082B */   sltu  $at, $s0, $a3
/* 0C6FD4 800C63D4 24E70001 */  addiu $a3, $a3, 1
/* 0C6FD8 800C63D8 14E2FFFA */  bne   $a3, $v0, .L800C63C4
/* 0C6FDC 800C63DC 24840004 */   addiu $a0, $a0, 4
/* 0C6FE0 800C63E0 0207082B */  sltu  $at, $s0, $a3
.L800C63E4:
/* 0C6FE4 800C63E4 10200002 */  beqz  $at, .L800C63F0
/* 0C6FE8 800C63E8 00E0A025 */   move  $s4, $a3
/* 0C6FEC 800C63EC 00E08025 */  move  $s0, $a3
.L800C63F0:
/* 0C6FF0 800C63F0 241F0010 */  li    $ra, 16
/* 0C6FF4 800C63F4 27A305F0 */  addiu $v1, $sp, 0x5f0
.L800C63F8:
/* 0C6FF8 800C63F8 8C6E0000 */  lw    $t6, ($v1)
/* 0C6FFC 800C63FC 00000000 */  nop   
/* 0C7000 800C6400 15C00005 */  bnez  $t6, .L800C6418
/* 0C7004 800C6404 03F0082B */   sltu  $at, $ra, $s0
/* 0C7008 800C6408 27FFFFFF */  addiu $ra, $ra, -1
/* 0C700C 800C640C 17E0FFFA */  bnez  $ra, .L800C63F8
/* 0C7010 800C6410 2463FFFC */   addiu $v1, $v1, -4
/* 0C7014 800C6414 03F0082B */  sltu  $at, $ra, $s0
.L800C6418:
/* 0C7018 800C6418 10200002 */  beqz  $at, .L800C6424
/* 0C701C 800C641C AFBF05A8 */   sw    $ra, 0x5a8($sp)
/* 0C7020 800C6420 03E08025 */  move  $s0, $ra
.L800C6424:
/* 0C7024 800C6424 240F0001 */  li    $t7, 1
/* 0C7028 800C6428 00FF082B */  sltu  $at, $a3, $ra
/* 0C702C 800C642C ACB00000 */  sw    $s0, ($a1)
/* 0C7030 800C6430 1020000B */  beqz  $at, .L800C6460
/* 0C7034 800C6434 00EF1004 */   sllv  $v0, $t7, $a3
/* 0C7038 800C6438 001FC080 */  sll   $t8, $ra, 2
/* 0C703C 800C643C 27B905B0 */  addiu $t9, $sp, 0x5b0
/* 0C7040 800C6440 03192821 */  addu  $a1, $t8, $t9
.L800C6444:
/* 0C7044 800C6444 8C8E0000 */  lw    $t6, ($a0)
/* 0C7048 800C6448 24840004 */  addiu $a0, $a0, 4
/* 0C704C 800C644C 004E1023 */  subu  $v0, $v0, $t6
/* 0C7050 800C6450 00027840 */  sll   $t7, $v0, 1
/* 0C7054 800C6454 0085082B */  sltu  $at, $a0, $a1
/* 0C7058 800C6458 1420FFFA */  bnez  $at, .L800C6444
/* 0C705C 800C645C 01E01025 */   move  $v0, $t7
.L800C6460:
/* 0C7060 800C6460 8C640000 */  lw    $a0, ($v1)
/* 0C7064 800C6464 27FFFFFF */  addiu $ra, $ra, -1
/* 0C7068 800C6468 00441023 */  subu  $v0, $v0, $a0
/* 0C706C 800C646C 0082C021 */  addu  $t8, $a0, $v0
/* 0C7070 800C6470 AC780000 */  sw    $t8, ($v1)
/* 0C7074 800C6474 AFA00080 */  sw    $zero, 0x80($sp)
/* 0C7078 800C6478 00003825 */  move  $a3, $zero
/* 0C707C 800C647C 27BE05B4 */  addiu $fp, $sp, 0x5b4
/* 0C7080 800C6480 27A60084 */  addiu $a2, $sp, 0x84
/* 0C7084 800C6484 13E00023 */  beqz  $ra, .L800C6514
/* 0C7088 800C6488 2463FFFC */   addiu $v1, $v1, -4
/* 0C708C 800C648C 33E50003 */  andi  $a1, $ra, 3
/* 0C7090 800C6490 00052823 */  negu  $a1, $a1
/* 0C7094 800C6494 10A0000D */  beqz  $a1, .L800C64CC
/* 0C7098 800C6498 00BF1021 */   addu  $v0, $a1, $ra
/* 0C709C 800C649C 0002C880 */  sll   $t9, $v0, 2
/* 0C70A0 800C64A0 27AE05B0 */  addiu $t6, $sp, 0x5b0
/* 0C70A4 800C64A4 032E2021 */  addu  $a0, $t9, $t6
.L800C64A8:
/* 0C70A8 800C64A8 8FCF0000 */  lw    $t7, ($fp)
/* 0C70AC 800C64AC 2463FFFC */  addiu $v1, $v1, -4
/* 0C70B0 800C64B0 00EF3821 */  addu  $a3, $a3, $t7
/* 0C70B4 800C64B4 ACC70000 */  sw    $a3, ($a2)
/* 0C70B8 800C64B8 24C60004 */  addiu $a2, $a2, 4
/* 0C70BC 800C64BC 1483FFFA */  bne   $a0, $v1, .L800C64A8
/* 0C70C0 800C64C0 27DE0004 */   addiu $fp, $fp, 4
/* 0C70C4 800C64C4 27B805B0 */  addiu $t8, $sp, 0x5b0
/* 0C70C8 800C64C8 10780012 */  beq   $v1, $t8, .L800C6514
.L800C64CC:
/* 0C70CC 800C64CC 27A205B0 */   addiu $v0, $sp, 0x5b0
.L800C64D0:
/* 0C70D0 800C64D0 8FD90000 */  lw    $t9, ($fp)
/* 0C70D4 800C64D4 2463FFF0 */  addiu $v1, $v1, -0x10
/* 0C70D8 800C64D8 00F93821 */  addu  $a3, $a3, $t9
/* 0C70DC 800C64DC ACC70000 */  sw    $a3, ($a2)
/* 0C70E0 800C64E0 8FCE0004 */  lw    $t6, 4($fp)
/* 0C70E4 800C64E4 24C60010 */  addiu $a2, $a2, 0x10
/* 0C70E8 800C64E8 00EE3821 */  addu  $a3, $a3, $t6
/* 0C70EC 800C64EC ACC7FFF4 */  sw    $a3, -0xc($a2)
/* 0C70F0 800C64F0 8FCF0008 */  lw    $t7, 8($fp)
/* 0C70F4 800C64F4 27DE0010 */  addiu $fp, $fp, 0x10
/* 0C70F8 800C64F8 00EF3821 */  addu  $a3, $a3, $t7
/* 0C70FC 800C64FC ACC7FFF8 */  sw    $a3, -8($a2)
/* 0C7100 800C6500 8FD8FFFC */  lw    $t8, -4($fp)
/* 0C7104 800C6504 00000000 */  nop   
/* 0C7108 800C6508 00F83821 */  addu  $a3, $a3, $t8
/* 0C710C 800C650C 1462FFF0 */  bne   $v1, $v0, .L800C64D0
/* 0C7110 800C6510 ACC7FFFC */   sw    $a3, -4($a2)
.L800C6514:
/* 0C7114 800C6514 0240F025 */  move  $fp, $s2
/* 0C7118 800C6518 0000F825 */  move  $ra, $zero
/* 0C711C 800C651C 27A5007C */  addiu $a1, $sp, 0x7c
/* 0C7120 800C6520 27A400C4 */  addiu $a0, $sp, 0xc4
.L800C6524:
/* 0C7124 800C6524 8FC70000 */  lw    $a3, ($fp)
/* 0C7128 800C6528 27DE0004 */  addiu $fp, $fp, 4
/* 0C712C 800C652C 10E00009 */  beqz  $a3, .L800C6554
/* 0C7130 800C6530 0007C880 */   sll   $t9, $a3, 2
/* 0C7134 800C6534 00B91021 */  addu  $v0, $a1, $t9
/* 0C7138 800C6538 8C430000 */  lw    $v1, ($v0)
/* 0C713C 800C653C 00000000 */  nop   
/* 0C7140 800C6540 00037080 */  sll   $t6, $v1, 2
/* 0C7144 800C6544 008E7821 */  addu  $t7, $a0, $t6
/* 0C7148 800C6548 ADFF0000 */  sw    $ra, ($t7)
/* 0C714C 800C654C 24780001 */  addiu $t8, $v1, 1
/* 0C7150 800C6550 AC580000 */  sw    $t8, ($v0)
.L800C6554:
/* 0C7154 800C6554 8FB905FC */  lw    $t9, 0x5fc($sp)
/* 0C7158 800C6558 27FF0001 */  addiu $ra, $ra, 1
/* 0C715C 800C655C 03F9082B */  sltu  $at, $ra, $t9
/* 0C7160 800C6560 1420FFF0 */  bnez  $at, .L800C6524
/* 0C7164 800C6564 00000000 */   nop   
/* 0C7168 800C6568 8FAE05A8 */  lw    $t6, 0x5a8($sp)
/* 0C716C 800C656C 0000F825 */  move  $ra, $zero
/* 0C7170 800C6570 01D4082A */  slt   $at, $t6, $s4
/* 0C7174 800C6574 AFA0007C */  sw    $zero, 0x7c($sp)
/* 0C7178 800C6578 0080F025 */  move  $fp, $a0
/* 0C717C 800C657C 240CFFFF */  li    $t4, -1
/* 0C7180 800C6580 00105023 */  negu  $t2, $s0
/* 0C7184 800C6584 AFA00544 */  sw    $zero, 0x544($sp)
/* 0C7188 800C6588 00003025 */  move  $a2, $zero
/* 0C718C 800C658C 142000BF */  bnez  $at, .L800C688C
/* 0C7190 800C6590 00004025 */   move  $t0, $zero
/* 0C7194 800C6594 00147880 */  sll   $t7, $s4, 2
/* 0C7198 800C6598 27B805B0 */  addiu $t8, $sp, 0x5b0
/* 0C719C 800C659C 3C17800E */  lui   $s7, %hi(D_800E3760) # $s7, 0x800e
/* 0C71A0 800C65A0 3C128013 */  lui   $s2, %hi(D_8012AAD8) # $s2, 0x8013
/* 0C71A4 800C65A4 8FB5060C */  lw    $s5, 0x60c($sp)
/* 0C71A8 800C65A8 2652AAD8 */  addiu $s2, %lo(D_8012AAD8) # addiu $s2, $s2, -0x5528
/* 0C71AC 800C65AC 26F73760 */  addiu $s7, %lo(D_800E3760) # addiu $s7, $s7, 0x3760
/* 0C71B0 800C65B0 01F81021 */  addu  $v0, $t7, $t8
/* 0C71B4 800C65B4 27B30584 */  addiu $s3, $sp, 0x584
.L800C65B8:
/* 0C71B8 800C65B8 8C560000 */  lw    $s6, ($v0)
/* 0C71BC 800C65BC 000C6880 */  sll   $t5, $t4, 2
/* 0C71C0 800C65C0 02C02825 */  move  $a1, $s6
/* 0C71C4 800C65C4 12C000AB */  beqz  $s6, .L800C6874
/* 0C71C8 800C65C8 26D6FFFF */   addiu $s6, $s6, -1
/* 0C71CC 800C65CC 8FAE05FC */  lw    $t6, 0x5fc($sp)
/* 0C71D0 800C65D0 27B9007C */  addiu $t9, $sp, 0x7c
/* 0C71D4 800C65D4 000E7880 */  sll   $t7, $t6, 2
/* 0C71D8 800C65D8 01B95821 */  addu  $t3, $t5, $t9
/* 0C71DC 800C65DC 27B800C4 */  addiu $t8, $sp, 0xc4
/* 0C71E0 800C65E0 01F8C821 */  addu  $t9, $t7, $t8
/* 0C71E4 800C65E4 240F0001 */  li    $t7, 1
/* 0C71E8 800C65E8 268E001F */  addiu $t6, $s4, 0x1f
/* 0C71EC 800C65EC 01CFC004 */  sllv  $t8, $t7, $t6
/* 0C71F0 800C65F0 AFB80040 */  sw    $t8, 0x40($sp)
/* 0C71F4 800C65F4 AFB90044 */  sw    $t9, 0x44($sp)
/* 0C71F8 800C65F8 AFA2005C */  sw    $v0, 0x5c($sp)
.L800C65FC:
/* 0C71FC 800C65FC 01501821 */  addu  $v1, $t2, $s0
/* 0C7200 800C6600 0074082A */  slt   $at, $v1, $s4
/* 0C7204 800C6604 10200047 */  beqz  $at, .L800C6724
/* 0C7208 800C6608 26D10001 */   addiu $s1, $s6, 1
/* 0C720C 800C660C 27B90544 */  addiu $t9, $sp, 0x544
/* 0C7210 800C6610 01B94821 */  addu  $t1, $t5, $t9
/* 0C7214 800C6614 8FAF05A8 */  lw    $t7, 0x5a8($sp)
.L800C6618:
/* 0C7218 800C6618 258C0001 */  addiu $t4, $t4, 1
/* 0C721C 800C661C 01E34023 */  subu  $t0, $t7, $v1
/* 0C7220 800C6620 0208082B */  sltu  $at, $s0, $t0
/* 0C7224 800C6624 25AD0004 */  addiu $t5, $t5, 4
/* 0C7228 800C6628 25290004 */  addiu $t1, $t1, 4
/* 0C722C 800C662C 256B0004 */  addiu $t3, $t3, 4
/* 0C7230 800C6630 10200002 */  beqz  $at, .L800C663C
/* 0C7234 800C6634 00605025 */   move  $t2, $v1
/* 0C7238 800C6638 02004025 */  move  $t0, $s0
.L800C663C:
/* 0C723C 800C663C 028A1023 */  subu  $v0, $s4, $t2
/* 0C7240 800C6640 240E0001 */  li    $t6, 1
/* 0C7244 800C6644 004E2004 */  sllv  $a0, $t6, $v0
/* 0C7248 800C6648 0224082B */  sltu  $at, $s1, $a0
/* 0C724C 800C664C 10200012 */  beqz  $at, .L800C6698
/* 0C7250 800C6650 00403825 */   move  $a3, $v0
/* 0C7254 800C6654 24470001 */  addiu $a3, $v0, 1
/* 0C7258 800C6658 00961823 */  subu  $v1, $a0, $s6
/* 0C725C 800C665C 0014C080 */  sll   $t8, $s4, 2
/* 0C7260 800C6660 27B905B0 */  addiu $t9, $sp, 0x5b0
/* 0C7264 800C6664 00E8082B */  sltu  $at, $a3, $t0
/* 0C7268 800C6668 2463FFFF */  addiu $v1, $v1, -1
/* 0C726C 800C666C 1020000A */  beqz  $at, .L800C6698
/* 0C7270 800C6670 03193021 */   addu  $a2, $t8, $t9
.L800C6674:
/* 0C7274 800C6674 8CC40004 */  lw    $a0, 4($a2)
/* 0C7278 800C6678 00031040 */  sll   $v0, $v1, 1
/* 0C727C 800C667C 0082082B */  sltu  $at, $a0, $v0
/* 0C7280 800C6680 10200005 */  beqz  $at, .L800C6698
/* 0C7284 800C6684 24C60004 */   addiu $a2, $a2, 4
/* 0C7288 800C6688 24E70001 */  addiu $a3, $a3, 1
/* 0C728C 800C668C 00E8082B */  sltu  $at, $a3, $t0
/* 0C7290 800C6690 1420FFF8 */  bnez  $at, .L800C6674
/* 0C7294 800C6694 00441823 */   subu  $v1, $v0, $a0
.L800C6698:
/* 0C7298 800C6698 8E430000 */  lw    $v1, ($s2)
/* 0C729C 800C669C 240F0001 */  li    $t7, 1
/* 0C72A0 800C66A0 8EF80000 */  lw    $t8, ($s7)
/* 0C72A4 800C66A4 00EF4004 */  sllv  $t0, $t7, $a3
/* 0C72A8 800C66A8 000370C0 */  sll   $t6, $v1, 3
/* 0C72AC 800C66AC 0068C821 */  addu  $t9, $v1, $t0
/* 0C72B0 800C66B0 272F0001 */  addiu $t7, $t9, 1
/* 0C72B4 800C66B4 01D83021 */  addu  $a2, $t6, $t8
/* 0C72B8 800C66B8 AE4F0000 */  sw    $t7, ($s2)
/* 0C72BC 800C66BC 24C40008 */  addiu $a0, $a2, 8
/* 0C72C0 800C66C0 AEA40000 */  sw    $a0, ($s5)
/* 0C72C4 800C66C4 ACC00004 */  sw    $zero, 4($a2)
/* 0C72C8 800C66C8 24D50004 */  addiu $s5, $a2, 4
/* 0C72CC 800C66CC 00803025 */  move  $a2, $a0
/* 0C72D0 800C66D0 11800010 */  beqz  $t4, .L800C6714
/* 0C72D4 800C66D4 AD240000 */   sw    $a0, ($t1)
/* 0C72D8 800C66D8 AD7F0000 */  sw    $ra, ($t3)
/* 0C72DC 800C66DC 24EE0010 */  addiu $t6, $a3, 0x10
/* 0C72E0 800C66E0 A3AE0584 */  sb    $t6, 0x584($sp)
/* 0C72E4 800C66E4 A3B00585 */  sb    $s0, 0x585($sp)
/* 0C72E8 800C66E8 AFA40588 */  sw    $a0, 0x588($sp)
/* 0C72EC 800C66EC 0150C823 */  subu  $t9, $t2, $s0
/* 0C72F0 800C66F0 8D38FFFC */  lw    $t8, -4($t1)
/* 0C72F4 800C66F4 033F7806 */  srlv  $t7, $ra, $t9
/* 0C72F8 800C66F8 8E610000 */  lw    $at, ($s3)
/* 0C72FC 800C66FC 000F70C0 */  sll   $t6, $t7, 3
/* 0C7300 800C6700 030EC821 */  addu  $t9, $t8, $t6
/* 0C7304 800C6704 AF210000 */  sw    $at, ($t9)
/* 0C7308 800C6708 8E6E0004 */  lw    $t6, 4($s3)
/* 0C730C 800C670C 00000000 */  nop   
/* 0C7310 800C6710 AF2E0004 */  sw    $t6, 4($t9)
.L800C6714:
/* 0C7314 800C6714 01501821 */  addu  $v1, $t2, $s0
/* 0C7318 800C6718 0074082A */  slt   $at, $v1, $s4
/* 0C731C 800C671C 1420FFBE */  bnez  $at, .L800C6618
/* 0C7320 800C6720 8FAF05A8 */   lw    $t7, 0x5a8($sp)
.L800C6724:
/* 0C7324 800C6724 8FAF0044 */  lw    $t7, 0x44($sp)
/* 0C7328 800C6728 24180001 */  li    $t8, 1
/* 0C732C 800C672C 028A1823 */  subu  $v1, $s4, $t2
/* 0C7330 800C6730 01582804 */  sllv  $a1, $t8, $t2
/* 0C7334 800C6734 03CF082B */  sltu  $at, $fp, $t7
/* 0C7338 800C6738 A3A30585 */  sb    $v1, 0x585($sp)
/* 0C733C 800C673C 14200004 */  bnez  $at, .L800C6750
/* 0C7340 800C6740 24A5FFFF */   addiu $a1, $a1, -1
/* 0C7344 800C6744 24190063 */  li    $t9, 99
/* 0C7348 800C6748 10000021 */  b     .L800C67D0
/* 0C734C 800C674C A3B90584 */   sb    $t9, 0x584($sp)
.L800C6750:
/* 0C7350 800C6750 8FC20000 */  lw    $v0, ($fp)
/* 0C7354 800C6754 8FAE0600 */  lw    $t6, 0x600($sp)
/* 0C7358 800C6758 8FA40600 */  lw    $a0, 0x600($sp)
/* 0C735C 800C675C 004E082B */  sltu  $at, $v0, $t6
/* 0C7360 800C6760 1020000B */  beqz  $at, .L800C6790
/* 0C7364 800C6764 2C410100 */   sltiu $at, $v0, 0x100
/* 0C7368 800C6768 10200004 */  beqz  $at, .L800C677C
/* 0C736C 800C676C 240F000F */   li    $t7, 15
/* 0C7370 800C6770 24180010 */  li    $t8, 16
/* 0C7374 800C6774 10000002 */  b     .L800C6780
/* 0C7378 800C6778 A3B80584 */   sb    $t8, 0x584($sp)
.L800C677C:
/* 0C737C 800C677C A3AF0584 */  sb    $t7, 0x584($sp)
.L800C6780:
/* 0C7380 800C6780 8FD90000 */  lw    $t9, ($fp)
/* 0C7384 800C6784 27DE0004 */  addiu $fp, $fp, 4
/* 0C7388 800C6788 10000011 */  b     .L800C67D0
/* 0C738C 800C678C A7B90588 */   sh    $t9, 0x588($sp)
.L800C6790:
/* 0C7390 800C6790 8FB80608 */  lw    $t8, 0x608($sp)
/* 0C7394 800C6794 00447023 */  subu  $t6, $v0, $a0
/* 0C7398 800C6798 01D87821 */  addu  $t7, $t6, $t8
/* 0C739C 800C679C 91F90000 */  lbu   $t9, ($t7)
/* 0C73A0 800C67A0 8FAE0604 */  lw    $t6, 0x604($sp)
/* 0C73A4 800C67A4 A3B90584 */  sb    $t9, 0x584($sp)
/* 0C73A8 800C67A8 8FD80000 */  lw    $t8, ($fp)
/* 0C73AC 800C67AC 27DE0004 */  addiu $fp, $fp, 4
/* 0C73B0 800C67B0 00187840 */  sll   $t7, $t8, 1
/* 0C73B4 800C67B4 0004C040 */  sll   $t8, $a0, 1
/* 0C73B8 800C67B8 01CFC821 */  addu  $t9, $t6, $t7
/* 0C73BC 800C67BC 00187023 */  negu  $t6, $t8
/* 0C73C0 800C67C0 032E7821 */  addu  $t7, $t9, $t6
/* 0C73C4 800C67C4 95F80000 */  lhu   $t8, ($t7)
/* 0C73C8 800C67C8 00000000 */  nop   
/* 0C73CC 800C67CC A7B80588 */  sh    $t8, 0x588($sp)
.L800C67D0:
/* 0C73D0 800C67D0 015F3806 */  srlv  $a3, $ra, $t2
/* 0C73D4 800C67D4 00E8082B */  sltu  $at, $a3, $t0
/* 0C73D8 800C67D8 1020000B */  beqz  $at, .L800C6808
/* 0C73DC 800C67DC 24190001 */   li    $t9, 1
/* 0C73E0 800C67E0 00791004 */  sllv  $v0, $t9, $v1
.L800C67E4:
/* 0C73E4 800C67E4 8E610000 */  lw    $at, ($s3)
/* 0C73E8 800C67E8 000770C0 */  sll   $t6, $a3, 3
/* 0C73EC 800C67EC 00CE7821 */  addu  $t7, $a2, $t6
/* 0C73F0 800C67F0 ADE10000 */  sw    $at, ($t7)
/* 0C73F4 800C67F4 8E790004 */  lw    $t9, 4($s3)
/* 0C73F8 800C67F8 00E23821 */  addu  $a3, $a3, $v0
/* 0C73FC 800C67FC 00E8082B */  sltu  $at, $a3, $t0
/* 0C7400 800C6800 1420FFF8 */  bnez  $at, .L800C67E4
/* 0C7404 800C6804 ADF90004 */   sw    $t9, 4($t7)
.L800C6808:
/* 0C7408 800C6808 8FA70040 */  lw    $a3, 0x40($sp)
/* 0C740C 800C680C 8D620000 */  lw    $v0, ($t3)
/* 0C7410 800C6810 03E77024 */  and   $t6, $ra, $a3
/* 0C7414 800C6814 11C00005 */  beqz  $t6, .L800C682C
.L800C6818:
/* 0C7418 800C6818 0007C042 */   srl   $t8, $a3, 1
/* 0C741C 800C681C 03E7F826 */  xor   $ra, $ra, $a3
/* 0C7420 800C6820 03F87824 */  and   $t7, $ra, $t8
/* 0C7424 800C6824 15E0FFFC */  bnez  $t7, .L800C6818
/* 0C7428 800C6828 03003825 */   move  $a3, $t8
.L800C682C:
/* 0C742C 800C682C 03E7F826 */  xor   $ra, $ra, $a3
/* 0C7430 800C6830 03E5C824 */  and   $t9, $ra, $a1
/* 0C7434 800C6834 1322000B */  beq   $t9, $v0, .L800C6864
/* 0C7438 800C6838 02C02825 */   move  $a1, $s6
.L800C683C:
/* 0C743C 800C683C 01505023 */  subu  $t2, $t2, $s0
/* 0C7440 800C6840 240E0001 */  li    $t6, 1
/* 0C7444 800C6844 014EC004 */  sllv  $t8, $t6, $t2
/* 0C7448 800C6848 8D6EFFFC */  lw    $t6, -4($t3)
/* 0C744C 800C684C 270FFFFF */  addiu $t7, $t8, -1
/* 0C7450 800C6850 03EFC824 */  and   $t9, $ra, $t7
/* 0C7454 800C6854 258CFFFF */  addiu $t4, $t4, -1
/* 0C7458 800C6858 25ADFFFC */  addiu $t5, $t5, -4
/* 0C745C 800C685C 172EFFF7 */  bne   $t9, $t6, .L800C683C
/* 0C7460 800C6860 256BFFFC */   addiu $t3, $t3, -4
.L800C6864:
/* 0C7464 800C6864 16C0FF65 */  bnez  $s6, .L800C65FC
/* 0C7468 800C6868 26D6FFFF */   addiu $s6, $s6, -1
/* 0C746C 800C686C 8FA2005C */  lw    $v0, 0x5c($sp)
/* 0C7470 800C6870 00000000 */  nop   
.L800C6874:
/* 0C7474 800C6874 8FB805A8 */  lw    $t8, 0x5a8($sp)
/* 0C7478 800C6878 26940001 */  addiu $s4, $s4, 1
/* 0C747C 800C687C 0314082A */  slt   $at, $t8, $s4
/* 0C7480 800C6880 1020FF4D */  beqz  $at, .L800C65B8
/* 0C7484 800C6884 24420004 */   addiu $v0, $v0, 4
/* 0C7488 800C6888 AFB5060C */  sw    $s5, 0x60c($sp)
.L800C688C:
/* 0C748C 800C688C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0C7490 800C6890 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C7494 800C6894 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0C7498 800C6898 8FB20020 */  lw    $s2, 0x20($sp)
/* 0C749C 800C689C 8FB30024 */  lw    $s3, 0x24($sp)
/* 0C74A0 800C68A0 8FB40028 */  lw    $s4, 0x28($sp)
/* 0C74A4 800C68A4 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0C74A8 800C68A8 8FB60030 */  lw    $s6, 0x30($sp)
/* 0C74AC 800C68AC 8FB70034 */  lw    $s7, 0x34($sp)
/* 0C74B0 800C68B0 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0C74B4 800C68B4 03E00008 */  jr    $ra
/* 0C74B8 800C68B8 27BD05F8 */   addiu $sp, $sp, 0x5f8

/* 0C74BC 800C68BC 00000000 */  nop   
