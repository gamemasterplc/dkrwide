glabel alSynNew
/* 065D30 80065130 27BDFF90 */  addiu $sp, $sp, -0x70
/* 065D34 80065134 AFBF0044 */  sw    $ra, 0x44($sp)
/* 065D38 80065138 AFBE0040 */  sw    $fp, 0x40($sp)
/* 065D3C 8006513C AFB7003C */  sw    $s7, 0x3c($sp)
/* 065D40 80065140 AFB60038 */  sw    $s6, 0x38($sp)
/* 065D44 80065144 AFB50034 */  sw    $s5, 0x34($sp)
/* 065D48 80065148 AFB40030 */  sw    $s4, 0x30($sp)
/* 065D4C 8006514C AFB3002C */  sw    $s3, 0x2c($sp)
/* 065D50 80065150 AFB20028 */  sw    $s2, 0x28($sp)
/* 065D54 80065154 AFB10024 */  sw    $s1, 0x24($sp)
/* 065D58 80065158 AFB00020 */  sw    $s0, 0x20($sp)
/* 065D5C 8006515C 8CB70014 */  lw    $s7, 0x14($a1)
/* 065D60 80065160 AC800000 */  sw    $zero, ($a0)
/* 065D64 80065164 8CAE0004 */  lw    $t6, 4($a1)
/* 065D68 80065168 AC800020 */  sw    $zero, 0x20($a0)
/* 065D6C 8006516C AC80001C */  sw    $zero, 0x1c($a0)
/* 065D70 80065170 AC8E003C */  sw    $t6, 0x3c($a0)
/* 065D74 80065174 8CAF0018 */  lw    $t7, 0x18($a1)
/* 065D78 80065178 241800A0 */  li    $t8, 160
/* 065D7C 8006517C AC980048 */  sw    $t8, 0x48($a0)
/* 065D80 80065180 AC8F0044 */  sw    $t7, 0x44($a0)
/* 065D84 80065184 8CB90010 */  lw    $t9, 0x10($a1)
/* 065D88 80065188 0080B025 */  move  $s6, $a0
/* 065D8C 8006518C 00A0F025 */  move  $fp, $a1
/* 065D90 80065190 2408001C */  li    $t0, 28
/* 065D94 80065194 AC990024 */  sw    $t9, 0x24($a0)
/* 065D98 80065198 AFA80010 */  sw    $t0, 0x10($sp)
/* 065D9C 8006519C 00002025 */  move  $a0, $zero
/* 065DA0 800651A0 00002825 */  move  $a1, $zero
/* 065DA4 800651A4 24070001 */  li    $a3, 1
/* 065DA8 800651A8 0C031DFC */  jal   alHeapDBAlloc
/* 065DAC 800651AC 02E03025 */   move  $a2, $s7
/* 065DB0 800651B0 AFA2005C */  sw    $v0, 0x5c($sp)
/* 065DB4 800651B4 0C019439 */  jal   alSaveNew
/* 065DB8 800651B8 00402025 */   move  $a0, $v0
/* 065DBC 800651BC 8FA9005C */  lw    $t1, 0x5c($sp)
/* 065DC0 800651C0 240A004C */  li    $t2, 76
/* 065DC4 800651C4 AEC90038 */  sw    $t1, 0x38($s6)
/* 065DC8 800651C8 AFAA0010 */  sw    $t2, 0x10($sp)
/* 065DCC 800651CC 00002025 */  move  $a0, $zero
/* 065DD0 800651D0 00002825 */  move  $a1, $zero
/* 065DD4 800651D4 02E03025 */  move  $a2, $s7
/* 065DD8 800651D8 0C031DFC */  jal   alHeapDBAlloc
/* 065DDC 800651DC 24070002 */   li    $a3, 2
/* 065DE0 800651E0 240B0002 */  li    $t3, 2
/* 065DE4 800651E4 AEC20034 */  sw    $v0, 0x34($s6)
/* 065DE8 800651E8 AECB0040 */  sw    $t3, 0x40($s6)
/* 065DEC 800651EC 8FC70004 */  lw    $a3, 4($fp)
/* 065DF0 800651F0 240C0004 */  li    $t4, 4
/* 065DF4 800651F4 AFAC0010 */  sw    $t4, 0x10($sp)
/* 065DF8 800651F8 00002025 */  move  $a0, $zero
/* 065DFC 800651FC 00002825 */  move  $a1, $zero
/* 065E00 80065200 0C031DFC */  jal   alHeapDBAlloc
/* 065E04 80065204 02E03025 */   move  $a2, $s7
/* 065E08 80065208 8EC40034 */  lw    $a0, 0x34($s6)
/* 065E0C 8006520C 8FC60004 */  lw    $a2, 4($fp)
/* 065E10 80065210 0C019409 */  jal   alAuxBusNew
/* 065E14 80065214 00402825 */   move  $a1, $v0
/* 065E18 80065218 8FC70004 */  lw    $a3, 4($fp)
/* 065E1C 8006521C 240D0004 */  li    $t5, 4
/* 065E20 80065220 AFAD0010 */  sw    $t5, 0x10($sp)
/* 065E24 80065224 00002025 */  move  $a0, $zero
/* 065E28 80065228 00002825 */  move  $a1, $zero
/* 065E2C 8006522C 0C031DFC */  jal   alHeapDBAlloc
/* 065E30 80065230 02E03025 */   move  $a2, $s7
/* 065E34 80065234 8EC40034 */  lw    $a0, 0x34($s6)
/* 065E38 80065238 8FC60004 */  lw    $a2, 4($fp)
/* 065E3C 8006523C 00402825 */  move  $a1, $v0
/* 065E40 80065240 0C019409 */  jal   alAuxBusNew
/* 065E44 80065244 2484004C */   addiu $a0, $a0, 0x4c
/* 065E48 80065248 240E0020 */  li    $t6, 32
/* 065E4C 8006524C AFAE0010 */  sw    $t6, 0x10($sp)
/* 065E50 80065250 00002025 */  move  $a0, $zero
/* 065E54 80065254 00002825 */  move  $a1, $zero
/* 065E58 80065258 02E03025 */  move  $a2, $s7
/* 065E5C 8006525C 0C031DFC */  jal   alHeapDBAlloc
/* 065E60 80065260 24070001 */   li    $a3, 1
/* 065E64 80065264 AEC20030 */  sw    $v0, 0x30($s6)
/* 065E68 80065268 8FC70004 */  lw    $a3, 4($fp)
/* 065E6C 8006526C 240F0004 */  li    $t7, 4
/* 065E70 80065270 AFAF0010 */  sw    $t7, 0x10($sp)
/* 065E74 80065274 00002025 */  move  $a0, $zero
/* 065E78 80065278 00002825 */  move  $a1, $zero
/* 065E7C 8006527C 0C031DFC */  jal   alHeapDBAlloc
/* 065E80 80065280 02E03025 */   move  $a2, $s7
/* 065E84 80065284 8EC40030 */  lw    $a0, 0x30($s6)
/* 065E88 80065288 8FC60004 */  lw    $a2, 4($fp)
/* 065E8C 8006528C 0C019421 */  jal   alMainBusNew
/* 065E90 80065290 00402825 */   move  $a1, $v0
/* 065E94 80065294 00008025 */  move  $s0, $zero
/* 065E98 80065298 03C08825 */  move  $s1, $fp
/* 065E9C 8006529C 2412004C */  li    $s2, 76
.L800652A0:
/* 065EA0 800652A0 9238001C */  lbu   $t8, 0x1c($s1)
/* 065EA4 800652A4 02C02025 */  move  $a0, $s6
/* 065EA8 800652A8 13000008 */  beqz  $t8, .L800652CC
/* 065EAC 800652AC 00102C00 */   sll   $a1, $s0, 0x10
/* 065EB0 800652B0 0005CC03 */  sra   $t9, $a1, 0x10
/* 065EB4 800652B4 03202825 */  move  $a1, $t9
/* 065EB8 800652B8 03C03025 */  move  $a2, $fp
/* 065EBC 800652BC 0C019618 */  jal   alSynAllocFX
/* 065EC0 800652C0 02E03825 */   move  $a3, $s7
/* 065EC4 800652C4 1000000A */  b     .L800652F0
/* 065EC8 800652C8 26100001 */   addiu $s0, $s0, 1
.L800652CC:
/* 065ECC 800652CC 02120019 */  multu $s0, $s2
/* 065ED0 800652D0 8EC80034 */  lw    $t0, 0x34($s6)
/* 065ED4 800652D4 8EC40030 */  lw    $a0, 0x30($s6)
/* 065ED8 800652D8 24050002 */  li    $a1, 2
/* 065EDC 800652DC 00004812 */  mflo  $t1
/* 065EE0 800652E0 01093021 */  addu  $a2, $t0, $t1
/* 065EE4 800652E4 0C0330E4 */  jal   alMainBusParam
/* 065EE8 800652E8 00000000 */   nop   
/* 065EEC 800652EC 26100001 */  addiu $s0, $s0, 1
.L800652F0:
/* 065EF0 800652F0 2A010002 */  slti  $at, $s0, 2
/* 065EF4 800652F4 1420FFEA */  bnez  $at, .L800652A0
/* 065EF8 800652F8 26310001 */   addiu $s1, $s1, 1
/* 065EFC 800652FC AEC00004 */  sw    $zero, 4($s6)
/* 065F00 80065300 AEC00008 */  sw    $zero, 8($s6)
/* 065F04 80065304 AEC00014 */  sw    $zero, 0x14($s6)
/* 065F08 80065308 AEC00018 */  sw    $zero, 0x18($s6)
/* 065F0C 8006530C AEC0000C */  sw    $zero, 0xc($s6)
/* 065F10 80065310 AEC00010 */  sw    $zero, 0x10($s6)
/* 065F14 80065314 8FC70004 */  lw    $a3, 4($fp)
/* 065F18 80065318 240A00E0 */  li    $t2, 224
/* 065F1C 8006531C AFAA0010 */  sw    $t2, 0x10($sp)
/* 065F20 80065320 00002025 */  move  $a0, $zero
/* 065F24 80065324 00002825 */  move  $a1, $zero
/* 065F28 80065328 0C031DFC */  jal   alHeapDBAlloc
/* 065F2C 8006532C 02E03025 */   move  $a2, $s7
/* 065F30 80065330 8FCB0004 */  lw    $t3, 4($fp)
/* 065F34 80065334 00008025 */  move  $s0, $zero
/* 065F38 80065338 19600030 */  blez  $t3, .L800653FC
/* 065F3C 8006533C 00408825 */   move  $s1, $v0
/* 065F40 80065340 26C50004 */  addiu $a1, $s6, 4
/* 065F44 80065344 AFA50048 */  sw    $a1, 0x48($sp)
/* 065F48 80065348 2452008C */  addiu $s2, $v0, 0x8c
/* 065F4C 8006534C 24530058 */  addiu $s3, $v0, 0x58
/* 065F50 80065350 24540010 */  addiu $s4, $v0, 0x10
.L80065354:
/* 065F54 80065354 8FA50048 */  lw    $a1, 0x48($sp)
/* 065F58 80065358 0220A825 */  move  $s5, $s1
/* 065F5C 8006535C 0C0321E4 */  jal   alLink
/* 065F60 80065360 02202025 */   move  $a0, $s1
/* 065F64 80065364 AE200008 */  sw    $zero, 8($s1)
/* 065F68 80065368 8EC50024 */  lw    $a1, 0x24($s6)
/* 065F6C 8006536C 02802025 */  move  $a0, $s4
/* 065F70 80065370 0C0193BE */  jal   alLoadNew
/* 065F74 80065374 02E03025 */   move  $a2, $s7
/* 065F78 80065378 02802025 */  move  $a0, $s4
/* 065F7C 8006537C 24050001 */  li    $a1, 1
/* 065F80 80065380 0C032D50 */  jal   alLoadParam
/* 065F84 80065384 00003025 */   move  $a2, $zero
/* 065F88 80065388 02602025 */  move  $a0, $s3
/* 065F8C 8006538C 0C0193E7 */  jal   alResampleNew
/* 065F90 80065390 02E02825 */   move  $a1, $s7
/* 065F94 80065394 02602025 */  move  $a0, $s3
/* 065F98 80065398 24050001 */  li    $a1, 1
/* 065F9C 8006539C 0C033024 */  jal   alResampleParam
/* 065FA0 800653A0 02803025 */   move  $a2, $s4
/* 065FA4 800653A4 02402025 */  move  $a0, $s2
/* 065FA8 800653A8 0C019395 */  jal   alEnvmixerNew
/* 065FAC 800653AC 02E02825 */   move  $a1, $s7
/* 065FB0 800653B0 02402025 */  move  $a0, $s2
/* 065FB4 800653B4 24050001 */  li    $a1, 1
/* 065FB8 800653B8 0C032A9F */  jal   alEnvmixerParam
/* 065FBC 800653BC 02603025 */   move  $a2, $s3
/* 065FC0 800653C0 8EC40034 */  lw    $a0, 0x34($s6)
/* 065FC4 800653C4 24050002 */  li    $a1, 2
/* 065FC8 800653C8 0C019675 */  jal   alAuxBusParam
/* 065FCC 800653CC 02403025 */   move  $a2, $s2
/* 065FD0 800653D0 26AC008C */  addiu $t4, $s5, 0x8c
/* 065FD4 800653D4 AEAC000C */  sw    $t4, 0xc($s5)
/* 065FD8 800653D8 8FCD0004 */  lw    $t5, 4($fp)
/* 065FDC 800653DC 26100001 */  addiu $s0, $s0, 1
/* 065FE0 800653E0 020D082A */  slt   $at, $s0, $t5
/* 065FE4 800653E4 263100E0 */  addiu $s1, $s1, 0xe0
/* 065FE8 800653E8 265200E0 */  addiu $s2, $s2, 0xe0
/* 065FEC 800653EC 267300E0 */  addiu $s3, $s3, 0xe0
/* 065FF0 800653F0 1420FFD8 */  bnez  $at, .L80065354
/* 065FF4 800653F4 269400E0 */   addiu $s4, $s4, 0xe0
/* 065FF8 800653F8 00008025 */  move  $s0, $zero
.L800653FC:
/* 065FFC 800653FC 8FA4005C */  lw    $a0, 0x5c($sp)
/* 066000 80065400 8EC60030 */  lw    $a2, 0x30($s6)
/* 066004 80065404 0C033138 */  jal   alSaveParam
/* 066008 80065408 24050001 */   li    $a1, 1
/* 06600C 8006540C 8FC70008 */  lw    $a3, 8($fp)
/* 066010 80065410 240E001C */  li    $t6, 28
/* 066014 80065414 AFAE0010 */  sw    $t6, 0x10($sp)
/* 066018 80065418 00002025 */  move  $a0, $zero
/* 06601C 8006541C 00002825 */  move  $a1, $zero
/* 066020 80065420 0C031DFC */  jal   alHeapDBAlloc
/* 066024 80065424 02E03025 */   move  $a2, $s7
/* 066028 80065428 AEC0002C */  sw    $zero, 0x2c($s6)
/* 06602C 8006542C 8FCF0008 */  lw    $t7, 8($fp)
/* 066030 80065430 00401825 */  move  $v1, $v0
/* 066034 80065434 19E0000A */  blez  $t7, .L80065460
/* 066038 80065438 00000000 */   nop   
.L8006543C:
/* 06603C 8006543C 8ED8002C */  lw    $t8, 0x2c($s6)
/* 066040 80065440 26100001 */  addiu $s0, $s0, 1
/* 066044 80065444 AC780000 */  sw    $t8, ($v1)
/* 066048 80065448 AEC3002C */  sw    $v1, 0x2c($s6)
/* 06604C 8006544C 8FD90008 */  lw    $t9, 8($fp)
/* 066050 80065450 2463001C */  addiu $v1, $v1, 0x1c
/* 066054 80065454 0219082A */  slt   $at, $s0, $t9
/* 066058 80065458 1420FFF8 */  bnez  $at, .L8006543C
/* 06605C 8006545C 00000000 */   nop   
.L80065460:
/* 066060 80065460 AED70028 */  sw    $s7, 0x28($s6)
/* 066064 80065464 8FBF0044 */  lw    $ra, 0x44($sp)
/* 066068 80065468 8FBE0040 */  lw    $fp, 0x40($sp)
/* 06606C 8006546C 8FB7003C */  lw    $s7, 0x3c($sp)
/* 066070 80065470 8FB60038 */  lw    $s6, 0x38($sp)
/* 066074 80065474 8FB50034 */  lw    $s5, 0x34($sp)
/* 066078 80065478 8FB40030 */  lw    $s4, 0x30($sp)
/* 06607C 8006547C 8FB3002C */  lw    $s3, 0x2c($sp)
/* 066080 80065480 8FB20028 */  lw    $s2, 0x28($sp)
/* 066084 80065484 8FB10024 */  lw    $s1, 0x24($sp)
/* 066088 80065488 8FB00020 */  lw    $s0, 0x20($sp)
/* 06608C 8006548C 03E00008 */  jr    $ra
/* 066090 80065490 27BD0070 */   addiu $sp, $sp, 0x70

