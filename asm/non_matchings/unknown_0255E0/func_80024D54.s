glabel func_80024D54
/* 025954 80024D54 27BDFF70 */  addiu $sp, $sp, -0x90
/* 025958 80024D58 AFB10020 */  sw    $s1, 0x20($sp)
/* 02595C 80024D5C AFBF002C */  sw    $ra, 0x2c($sp)
/* 025960 80024D60 AFB30028 */  sw    $s3, 0x28($sp)
/* 025964 80024D64 AFB20024 */  sw    $s2, 0x24($sp)
/* 025968 80024D68 AFB0001C */  sw    $s0, 0x1c($sp)
/* 02596C 80024D6C AFA40090 */  sw    $a0, 0x90($sp)
/* 025970 80024D70 AFA50094 */  sw    $a1, 0x94($sp)
/* 025974 80024D74 AFA60098 */  sw    $a2, 0x98($sp)
/* 025978 80024D78 AFA7009C */  sw    $a3, 0x9c($sp)
/* Load Half Screen Width */
jal is_widescreen
nop
beqz $v0, draw_game_cont
li $t7, 160
li $t7, 212
draw_game_cont:
sw $t7, 0x30($sp)
/* Reload variables */
lw $a0, 0x90($sp)
lw $a1, 0x94($sp)
lw $a2, 0x98($sp)
lw  $a3, 0x9c($sp)
/* 02597C 80024D7C 8C8F0000 */  lw    $t7, ($a0)
/* 025980 80024D80 3C118012 */  lui   $s1, %hi(D_8011B0A0) # $s1, 0x8012
/* 025984 80024D84 2631B0A0 */  addiu $s1, %lo(D_8011B0A0) # addiu $s1, $s1, -0x4f60
/* 025988 80024D88 AE2F0000 */  sw    $t7, ($s1)
/* 02598C 80024D8C 8CB90000 */  lw    $t9, ($a1)
/* 025990 80024D90 3C128012 */  lui   $s2, %hi(D_8011B0A4) # $s2, 0x8012
/* 025994 80024D94 2652B0A4 */  addiu $s2, %lo(D_8011B0A4) # addiu $s2, $s2, -0x4f5c
/* 025998 80024D98 AE590000 */  sw    $t9, ($s2)
/* 02599C 80024D9C 8CCB0000 */  lw    $t3, ($a2)
/* 0259A0 80024DA0 3C018012 */  lui   $at, %hi(D_8011B0A8) # $at, 0x8012
/* 0259A4 80024DA4 AC2BB0A8 */  sw    $t3, %lo(D_8011B0A8)($at)
/* 0259A8 80024DA8 8CED0000 */  lw    $t5, ($a3)
/* 0259AC 80024DAC 3C018012 */  lui   $at, %hi(D_8011B0AC) # $at, 0x8012
/* 0259B0 80024DB0 AC2DB0AC */  sw    $t5, %lo(D_8011B0AC)($at)
/* 0259B4 80024DB4 3C018012 */  lui   $at, %hi(D_8011B0DC) # $at, 0x8012
/* 0259B8 80024DB8 240E0001 */  li    $t6, 1
/* 0259BC 80024DBC AC2EB0DC */  sw    $t6, %lo(D_8011B0DC)($at)
/* 0259C0 80024DC0 3C018012 */  lui   $at, %hi(D_8011B0C4) # $at, 0x8012
/* 0259C4 80024DC4 AC20B0C4 */  sw    $zero, %lo(D_8011B0C4)($at)
/* 0259C8 80024DC8 3C018012 */  lui   $at, %hi(D_8011B0C0) # $at, 0x8012
/* 0259CC 80024DCC AC20B0C0 */  sw    $zero, %lo(D_8011B0C0)($at)
/* 0259D0 80024DD0 3C048012 */  lui   $a0, %hi(D_8011D37C) # $a0, 0x8012
/* 0259D4 80024DD4 3C018012 */  lui   $at, %hi(D_8011B0BC) # $at, 0x8012
/* 0259D8 80024DD8 8C84D37C */  lw    $a0, %lo(D_8011D37C)($a0)
/* 0259DC 80024DDC 0C01994B */  jal   func_8006652C
/* 0259E0 80024DE0 AC20B0BC */   sw    $zero, %lo(D_8011B0BC)($at)
/* 0259E4 80024DE4 0C01BAA8 */  jal   is_game_paused
/* 0259E8 80024DE8 00409825 */   move  $s3, $v0
/* 0259EC 80024DEC 10400003 */  beqz  $v0, .L80024DFC
/* 0259F0 80024DF0 3C188012 */   lui   $t8, %hi(D_8011D384) # $t8, 0x8012
/* 0259F4 80024DF4 10000004 */  b     .L80024E08
/* 0259F8 80024DF8 AFA00084 */   sw    $zero, 0x84($sp)
.L80024DFC:
/* 0259FC 80024DFC 8FAF00A0 */  lw    $t7, 0xa0($sp)
/* 025A00 80024E00 00000000 */  nop   
/* 025A04 80024E04 AFAF0084 */  sw    $t7, 0x84($sp)
.L80024E08:
/* 025A08 80024E08 8F18D384 */  lw    $t8, %lo(D_8011D384)($t8)
/* 025A0C 80024E0C 00000000 */  nop   
/* 025A10 80024E10 13000005 */  beqz  $t8, .L80024E28
/* 025A14 80024E14 8FA600A0 */   lw    $a2, 0xa0($sp)
/* 025A18 80024E18 8FA40084 */  lw    $a0, 0x84($sp)
/* 025A1C 80024E1C 0C02E706 */  jal   func_800B9C18
/* 025A20 80024E20 00000000 */   nop   
/* 025A24 80024E24 8FA600A0 */  lw    $a2, 0xa0($sp)
.L80024E28:
/* 025A28 80024E28 24040002 */  li    $a0, 2
/* 025A2C 80024E2C 0C00B637 */  jal   func_8002D8DC
/* 025A30 80024E30 24050002 */   li    $a1, 2
/* 025A34 80024E34 3C03800E */  lui   $v1, %hi(gCurrentLevelHeader2) # $v1, 0x800e
/* 025A38 80024E38 8C63C91C */  lw    $v1, %lo(gCurrentLevelHeader2)($v1)
/* 025A3C 80024E3C 00001025 */  move  $v0, $zero
/* 025A40 80024E40 0062C821 */  addu  $t9, $v1, $v0
.L80024E44:
/* 025A44 80024E44 8F240074 */  lw    $a0, 0x74($t9)
/* 025A48 80024E48 2401FFFF */  li    $at, -1
/* 025A4C 80024E4C 10810008 */  beq   $a0, $at, .L80024E70
/* 025A50 80024E50 00000000 */   nop   
/* 025A54 80024E54 8FA50084 */  lw    $a1, 0x84($sp)
/* 025A58 80024E58 0C01FC93 */  jal   func_8007F24C
/* 025A5C 80024E5C AFA20034 */   sw    $v0, 0x34($sp)
/* 025A60 80024E60 3C03800E */  lui   $v1, %hi(gCurrentLevelHeader2) # $v1, 0x800e
/* 025A64 80024E64 8C63C91C */  lw    $v1, %lo(gCurrentLevelHeader2)($v1)
/* 025A68 80024E68 8FA20034 */  lw    $v0, 0x34($sp)
/* 025A6C 80024E6C 00000000 */  nop   
.L80024E70:
/* 025A70 80024E70 24420004 */  addiu $v0, $v0, 4
/* 025A74 80024E74 2841001C */  slti  $at, $v0, 0x1c
/* 025A78 80024E78 1420FFF2 */  bnez  $at, .L80024E44
/* 025A7C 80024E7C 0062C821 */   addu  $t9, $v1, $v0
/* 025A80 80024E80 8C6400AC */  lw    $a0, 0xac($v1)
/* 025A84 80024E84 2401FFFF */  li    $at, -1
/* 025A88 80024E88 10810007 */  beq   $a0, $at, .L80024EA8
/* 025A8C 80024E8C 00000000 */   nop   
/* 025A90 80024E90 8FA50084 */  lw    $a1, 0x84($sp)
/* 025A94 80024E94 0C01FD18 */  jal   update_pulsating_light_data
/* 025A98 80024E98 00000000 */   nop   
/* 025A9C 80024E9C 3C03800E */  lui   $v1, %hi(gCurrentLevelHeader2) # $v1, 0x800e
/* 025AA0 80024EA0 8C63C91C */  lw    $v1, %lo(gCurrentLevelHeader2)($v1)
/* 025AA4 80024EA4 00000000 */  nop   
.L80024EA8:
/* 025AA8 80024EA8 3C048012 */  lui   $a0, %hi(D_8011B0E0) # $a0, 0x8012
/* 025AAC 80024EAC 2484B0E0 */  addiu $a0, %lo(D_8011B0E0) # addiu $a0, $a0, -0x4f20
/* 025AB0 80024EB0 24090001 */  li    $t1, 1
/* 025AB4 80024EB4 A0890000 */  sb    $t1, ($a0)
/* 025AB8 80024EB8 8062004C */  lb    $v0, 0x4c($v1)
/* 025ABC 80024EBC 24010007 */  li    $at, 7
/* 025AC0 80024EC0 14410007 */  bne   $v0, $at, .L80024EE0
/* 025AC4 80024EC4 24010006 */   li    $at, 6
/* 025AC8 80024EC8 A0800000 */  sb    $zero, ($a0)
/* 025ACC 80024ECC 3C018012 */  lui   $at, %hi(D_8011B0FC) # $at, 0x8012
/* 025AD0 80024ED0 AC29B0FC */  sw    $t1, %lo(D_8011B0FC)($at)
/* 025AD4 80024ED4 8062004C */  lb    $v0, 0x4c($v1)
/* 025AD8 80024ED8 00000000 */  nop   
/* 025ADC 80024EDC 24010006 */  li    $at, 6
.L80024EE0:
/* 025AE0 80024EE0 10410004 */  beq   $v0, $at, .L80024EF4
/* 025AE4 80024EE4 00000000 */   nop   
/* 025AE8 80024EE8 806A00BD */  lb    $t2, 0xbd($v1)
/* 025AEC 80024EEC 00000000 */  nop   
/* 025AF0 80024EF0 11400002 */  beqz  $t2, .L80024EFC
.L80024EF4:
/* 025AF4 80024EF4 3C018012 */   lui   $at, %hi(D_8011B0FC) # $at, 0x8012
/* 025AF8 80024EF8 AC29B0FC */  sw    $t1, %lo(D_8011B0FC)($at)
.L80024EFC:
/* 025AFC 80024EFC 806B0049 */  lb    $t3, 0x49($v1)
/* 025B00 80024F00 2401FFFF */  li    $at, -1
/* 025B04 80024F04 15610025 */  bne   $t3, $at, .L80024F9C
/* 025B08 80024F08 00000000 */   nop   
/* 025B0C 80024F0C 8FA70084 */  lw    $a3, 0x84($sp)
/* 025B10 80024F10 806F00A2 */  lb    $t7, 0xa2($v1)
/* 025B14 80024F14 8C6C00A4 */  lw    $t4, 0xa4($v1)
/* 025B18 80024F18 01E70019 */  multu $t7, $a3
/* 025B1C 80024F1C 91880000 */  lbu   $t0, ($t4)
/* 025B20 80024F20 846E00A8 */  lh    $t6, 0xa8($v1)
/* 025B24 80024F24 00086A40 */  sll   $t5, $t0, 9
/* 025B28 80024F28 25A8FFFF */  addiu $t0, $t5, -1
/* 025B2C 80024F2C 3C02800E */  lui   $v0, %hi(gCurrentLevelHeader2) # $v0, 0x800e
/* 025B30 80024F30 2442C91C */  addiu $v0, %lo(gCurrentLevelHeader2) # addiu $v0, $v0, -0x36e4
/* 025B34 80024F34 3C058012 */  lui   $a1, %hi(D_8011B114) # $a1, 0x8012
/* 025B38 80024F38 3C068012 */  lui   $a2, %hi(D_8011B110) # $a2, 0x8012
/* 025B3C 80024F3C 24C6B110 */  addiu $a2, %lo(D_8011B110) # addiu $a2, $a2, -0x4ef0
/* 025B40 80024F40 24A5B114 */  addiu $a1, %lo(D_8011B114) # addiu $a1, $a1, -0x4eec
/* 025B44 80024F44 0000C012 */  mflo  $t8
/* 025B48 80024F48 01D8C821 */  addu  $t9, $t6, $t8
/* 025B4C 80024F4C 03285024 */  and   $t2, $t9, $t0
/* 025B50 80024F50 A46A00A8 */  sh    $t2, 0xa8($v1)
/* 025B54 80024F54 8C430000 */  lw    $v1, ($v0)
/* 025B58 80024F58 00000000 */  nop   
/* 025B5C 80024F5C 806F00A3 */  lb    $t7, 0xa3($v1)
/* 025B60 80024F60 8C6B00A4 */  lw    $t3, 0xa4($v1)
/* 025B64 80024F64 01E70019 */  multu $t7, $a3
/* 025B68 80024F68 91680001 */  lbu   $t0, 1($t3)
/* 025B6C 80024F6C 846D00AA */  lh    $t5, 0xaa($v1)
/* 025B70 80024F70 00086240 */  sll   $t4, $t0, 9
/* 025B74 80024F74 2588FFFF */  addiu $t0, $t4, -1
/* 025B78 80024F78 00007012 */  mflo  $t6
/* 025B7C 80024F7C 01AEC021 */  addu  $t8, $t5, $t6
/* 025B80 80024F80 0308C824 */  and   $t9, $t8, $t0
/* 025B84 80024F84 A47900AA */  sh    $t9, 0xaa($v1)
/* 025B88 80024F88 8C4A0000 */  lw    $t2, ($v0)
/* 025B8C 80024F8C 00000000 */  nop   
/* 025B90 80024F90 8D4400A4 */  lw    $a0, 0xa4($t2)
/* 025B94 80024F94 0C01FBE0 */  jal   func_8007EF80
/* 025B98 80024F98 00000000 */   nop   
.L80024F9C:
/* 025B9C 80024F9C 0C0270C3 */  jal   get_filtered_cheats
/* 025BA0 80024FA0 A3A00083 */   sb    $zero, 0x83($sp)
/* 025BA4 80024FA4 304B0004 */  andi  $t3, $v0, 4
/* 025BA8 80024FA8 11600003 */  beqz  $t3, .L80024FB8
/* 025BAC 80024FAC 3C0FA000 */   lui   $t7, %hi(D_A0000200) # $t7, 0xa000
/* 025BB0 80024FB0 240C0001 */  li    $t4, 1
/* 025BB4 80024FB4 A3AC0083 */  sb    $t4, 0x83($sp)
.L80024FB8:
/* 025BB8 80024FB8 8DED0200 */  lw    $t5, %lo(D_A0000200)($t7)
/* 025BBC 80024FBC 3C01AC29 */  lui   $at, 0xac29
/* 025BC0 80024FC0 11A10002 */  beq   $t5, $at, .L80024FCC
/* 025BC4 80024FC4 240E0001 */   li    $t6, 1
/* 025BC8 80024FC8 A3AE0083 */  sb    $t6, 0x83($sp)
.L80024FCC:
/* 025BCC 80024FCC 0C01ECF4 */  jal   func_8007B3D0
/* 025BD0 80024FD0 02202025 */   move  $a0, $s1
/* 025BD4 80024FD4 8E220000 */  lw    $v0, ($s1)
/* 025BD8 80024FD8 3C19BC00 */  lui   $t9, (0xBC000002 >> 16) # lui $t9, 0xbc00
/* 025BDC 80024FDC 24580008 */  addiu $t8, $v0, 8
/* 025BE0 80024FE0 AE380000 */  sw    $t8, ($s1)
/* 025BE4 80024FE4 37390002 */  ori   $t9, (0xBC000002 & 0xFFFF) # ori $t9, $t9, 2
/* 025BE8 80024FE8 AC590000 */  sw    $t9, ($v0)
/* 025BEC 80024FEC AC400004 */  sw    $zero, 4($v0)
/* 025BF0 80024FF0 8E220000 */  lw    $v0, ($s1)
/* 025BF4 80024FF4 3C0BB600 */  lui   $t3, 0xb600
/* 025BF8 80024FF8 244A0008 */  addiu $t2, $v0, 8
/* 025BFC 80024FFC AE2A0000 */  sw    $t2, ($s1)
/* 025C00 80025000 240C1000 */  li    $t4, 4096
/* 025C04 80025004 AC4C0004 */  sw    $t4, 4($v0)
/* 025C08 80025008 AC4B0000 */  sw    $t3, ($v0)
/* 025C0C 8002500C 8E220000 */  lw    $v0, ($s1)
/* 025C10 80025010 3C0DF900 */  lui   $t5, 0xf900
/* 025C14 80025014 244F0008 */  addiu $t7, $v0, 8
/* 025C18 80025018 AE2F0000 */  sw    $t7, ($s1)
/* 025C1C 8002501C 240E0064 */  li    $t6, 100
/* 025C20 80025020 AC4E0004 */  sw    $t6, 4($v0)
/* 025C24 80025024 AC4D0000 */  sw    $t5, ($v0)
/* 025C28 80025028 8E220000 */  lw    $v0, ($s1)
/* 025C2C 8002502C 240AFFFF */  li    $t2, -1
/* 025C30 80025030 24580008 */  addiu $t8, $v0, 8
/* 025C34 80025034 AE380000 */  sw    $t8, ($s1)
/* 025C38 80025038 3C19FA00 */  lui   $t9, 0xfa00
/* 025C3C 8002503C AC590000 */  sw    $t9, ($v0)
/* 025C40 80025040 AC4A0004 */  sw    $t2, 4($v0)
/* 025C44 80025044 8E220000 */  lw    $v0, ($s1)
/* 025C48 80025048 240FFF00 */  li    $t7, -256
/* 025C4C 8002504C 244B0008 */  addiu $t3, $v0, 8
/* 025C50 80025050 AE2B0000 */  sw    $t3, ($s1)
/* 025C54 80025054 3C0CFB00 */  lui   $t4, 0xfb00
/* 025C58 80025058 AC4C0000 */  sw    $t4, ($v0)
/* 025C5C 8002505C 0C02B503 */  jal   func_800AD40C
/* 025C60 80025060 AC4F0004 */   sw    $t7, 4($v0)
/* 025C64 80025064 8FA50084 */  lw    $a1, 0x84($sp)
/* 025C68 80025068 0C00C20E */  jal   func_80030838
/* 025C6C 8002506C 02602025 */   move  $a0, $s3
/* 025C70 80025070 8FA40084 */  lw    $a0, 0x84($sp)
/* 025C74 80025074 0C02BD01 */  jal   func_800AF404
/* 025C78 80025078 00000000 */   nop   
/* 025C7C 8002507C 3C0D800E */  lui   $t5, %hi(gCurrentLevelModel) # $t5, 0x800e
/* 025C80 80025080 8DADC918 */  lw    $t5, %lo(gCurrentLevelModel)($t5)
/* 025C84 80025084 8FA40084 */  lw    $a0, 0x84($sp)
/* 025C88 80025088 85AE001E */  lh    $t6, 0x1e($t5)
/* 025C8C 8002508C 00000000 */  nop   
/* 025C90 80025090 19C00003 */  blez  $t6, .L800250A0
/* 025C94 80025094 00000000 */   nop   
/* 025C98 80025098 0C009F89 */  jal   func_80027E24
/* 025C9C 8002509C 00000000 */   nop   
.L800250A0:
/* 025CA0 800250A0 3C108012 */  lui   $s0, %hi(D_8011B0B4) # $s0, 0x8012
/* 025CA4 800250A4 2610B0B4 */  addiu $s0, %lo(D_8011B0B4) # addiu $s0, $s0, -0x4f4c
/* 025CA8 800250A8 0013082A */  slt   $at, $zero, $s3
/* 025CAC 800250AC AE000000 */  sw    $zero, ($s0)
/* 025CB0 800250B0 1020007E */  beqz  $at, .L800252AC
/* 025CB4 800250B4 00001025 */   move  $v0, $zero
.L800250B8:
/* 025CB8 800250B8 14400009 */  bnez  $v0, .L800250E0
/* 025CBC 800250BC 83B90083 */   lb    $t9, 0x83($sp)
/* 025CC0 800250C0 0C003861 */  jal   func_8000E184
/* 025CC4 800250C4 00000000 */   nop   
/* 025CC8 800250C8 10400004 */  beqz  $v0, .L800250DC
/* 025CCC 800250CC 24010001 */   li    $at, 1
/* 025CD0 800250D0 16610002 */  bne   $s3, $at, .L800250DC
/* 025CD4 800250D4 24180001 */   li    $t8, 1
/* 025CD8 800250D8 AE180000 */  sw    $t8, ($s0)
.L800250DC:
/* 025CDC 800250DC 83B90083 */  lb    $t9, 0x83($sp)
.L800250E0:
/* 025CE0 800250E0 3C0BB700 */  lui   $t3, 0xb700
/* 025CE4 800250E4 13200007 */  beqz  $t9, .L80025104
/* 025CE8 800250E8 00000000 */   nop   
/* 025CEC 800250EC 8E220000 */  lw    $v0, ($s1)
/* 025CF0 800250F0 240C1000 */  li    $t4, 4096
/* 025CF4 800250F4 244A0008 */  addiu $t2, $v0, 8
/* 025CF8 800250F8 AE2A0000 */  sw    $t2, ($s1)
/* 025CFC 800250FC AC4C0004 */  sw    $t4, 4($v0)
/* 025D00 80025100 AC4B0000 */  sw    $t3, ($v0)
.L80025104:
/* 025D04 80025104 8E040000 */  lw    $a0, ($s0)
/* 025D08 80025108 0C00C24F */  jal   func_8003093C
/* 025D0C 8002510C 00000000 */   nop   
/* 025D10 80025110 8E220000 */  lw    $v0, ($s1)
/* 025D14 80025114 3C0DE700 */  lui   $t5, 0xe700
/* 025D18 80025118 244F0008 */  addiu $t7, $v0, 8
/* 025D1C 8002511C AE2F0000 */  sw    $t7, ($s1)
/* 025D20 80025120 AC400004 */  sw    $zero, 4($v0)
/* 025D24 80025124 AC4D0000 */  sw    $t5, ($v0)
/* 025D28 80025128 8E040000 */  lw    $a0, ($s0)
/* 025D2C 8002512C 0C01997A */  jal   func_800665E8
/* 025D30 80025130 00000000 */   nop   
/* 025D34 80025134 02202025 */  move  $a0, $s1
/* 025D38 80025138 0C019B37 */  jal   func_80066CDC
/* 025D3C 8002513C 02402825 */   move  $a1, $s2
/* 025D40 80025140 0C00A8C7 */  jal   func_8002A31C
/* 025D44 80025144 00000000 */   nop   
/* 025D48 80025148 2A610002 */  slti  $at, $s3, 2
/* 025D4C 8002514C 10200013 */  beqz  $at, .L8002519C
/* 025D50 80025150 02202025 */   move  $a0, $s1
/* 025D54 80025154 02202025 */  move  $a0, $s1
/* 025D58 80025158 0C01A102 */  jal   func_80068408
/* 025D5C 8002515C 02402825 */   move  $a1, $s2
/* 025D60 80025160 3C0E800E */  lui   $t6, %hi(gCurrentLevelHeader2) # $t6, 0x800e
/* 025D64 80025164 8DCEC91C */  lw    $t6, %lo(gCurrentLevelHeader2)($t6)
/* 025D68 80025168 2401FFFF */  li    $at, -1
/* 025D6C 8002516C 81D80049 */  lb    $t8, 0x49($t6)
/* 025D70 80025170 00000000 */  nop   
/* 025D74 80025174 17010005 */  bne   $t8, $at, .L8002518C
/* 025D78 80025178 00000000 */   nop   
/* 025D7C 8002517C 0C00A014 */  jal   func_80028050
/* 025D80 80025180 00000000 */   nop   
/* 025D84 80025184 10000010 */  b     .L800251C8
/* 025D88 80025188 8E220000 */   lw    $v0, ($s1)
.L8002518C:
/* 025D8C 8002518C 0C00A304 */  jal   render_skydome
/* 025D90 80025190 00000000 */   nop   
/* 025D94 80025194 1000000C */  b     .L800251C8
/* 025D98 80025198 8E220000 */   lw    $v0, ($s1)
.L8002519C:
/* 025D9C 8002519C 0C01A01F */  jal   func_8006807C
/* 025DA0 800251A0 02402825 */   move  $a1, $s2
/* 025DA4 800251A4 0C00A26E */  jal   func_800289B8
/* 025DA8 800251A8 00000000 */   nop   
/* 025DAC 800251AC 02202025 */  move  $a0, $s1
/* 025DB0 800251B0 0C019F4F */  jal   func_80067D3C
/* 025DB4 800251B4 02402825 */   move  $a1, $s2
/* 025DB8 800251B8 02202025 */  move  $a0, $s1
/* 025DBC 800251BC 0C01A102 */  jal   func_80068408
/* 025DC0 800251C0 02402825 */   move  $a1, $s2
/* 025DC4 800251C4 8E220000 */  lw    $v0, ($s1)
.L800251C8:
/* 025DC8 800251C8 3C0AE700 */  lui   $t2, 0xe700
/* 025DCC 800251CC 24590008 */  addiu $t9, $v0, 8
/* 025DD0 800251D0 AE390000 */  sw    $t9, ($s1)
/* 025DD4 800251D4 AC400004 */  sw    $zero, 4($v0)
/* 025DD8 800251D8 AC4A0000 */  sw    $t2, ($v0)
/* 025DDC 800251DC 8FA400A0 */  lw    $a0, 0xa0($sp)
/* 025DE0 800251E0 0C00A334 */  jal   func_80028CD0
/* 025DE4 800251E4 00000000 */   nop   
/* 025DE8 800251E8 2404FFFF */  li    $a0, -1
/* 025DEC 800251EC 0C02ACC2 */  jal   func_800AB308
/* 025DF0 800251F0 2405FE00 */   li    $a1, -512
/* 025DF4 800251F4 3C0B800E */  lui   $t3, %hi(gCurrentLevelHeader2) # $t3, 0x800e
/* 025DF8 800251F8 8D6BC91C */  lw    $t3, %lo(gCurrentLevelHeader2)($t3)
/* 025DFC 800251FC 2A610002 */  slti  $at, $s3, 2
/* 025E00 80025200 856C0090 */  lh    $t4, 0x90($t3)
/* 025E04 80025204 00000000 */  nop   
/* 025E08 80025208 1980000B */  blez  $t4, .L80025238
/* 025E0C 8002520C 00000000 */   nop   
/* 025E10 80025210 10200009 */  beqz  $at, .L80025238
/* 025E14 80025214 02202025 */   move  $a0, $s1
/* 025E18 80025218 8FAF0084 */  lw    $t7, 0x84($sp)
/* 025E1C 8002521C 3C068012 */  lui   $a2, %hi(D_8011B0A8) # $a2, 0x8012
/* 025E20 80025220 3C078012 */  lui   $a3, %hi(D_8011B0AC) # $a3, 0x8012
/* 025E24 80025224 24E7B0AC */  addiu $a3, %lo(D_8011B0AC) # addiu $a3, $a3, -0x4f54
/* 025E28 80025228 24C6B0A8 */  addiu $a2, %lo(D_8011B0A8) # addiu $a2, $a2, -0x4f58
/* 025E2C 8002522C 02402825 */  move  $a1, $s2
/* 025E30 80025230 0C02AF9A */  jal   func_800ABE68
/* 025E34 80025234 AFAF0010 */   sw    $t7, 0x10($sp)
.L80025238:
/* 025E38 80025238 0C01A748 */  jal   func_80069D20
/* 025E3C 8002523C 00000000 */   nop   
/* 025E40 80025240 0C02B40C */  jal   func_800AD030
/* 025E44 80025244 00402025 */   move  $a0, $v0
/* 025E48 80025248 0C01A748 */  jal   func_80069D20
/* 025E4C 8002524C 00000000 */   nop   
/* 025E50 80025250 3C068012 */  lui   $a2, %hi(D_8011B0A8) # $a2, 0x8012
/* 025E54 80025254 24C6B0A8 */  addiu $a2, %lo(D_8011B0A8) # addiu $a2, $a2, -0x4f58
/* 025E58 80025258 02202025 */  move  $a0, $s1
/* 025E5C 8002525C 02402825 */  move  $a1, $s2
/* 025E60 80025260 0C02B288 */  jal   func_800ACA20
/* 025E64 80025264 00403825 */   move  $a3, $v0
/* 025E68 80025268 8E040000 */  lw    $a0, ($s0)
/* 025E6C 8002526C 0C006EC6 */  jal   func_8001BB18
/* 025E70 80025270 00000000 */   nop   
/* 025E74 80025274 8FAD00A0 */  lw    $t5, 0xa0($sp)
/* 025E78 80025278 3C068012 */  lui   $a2, %hi(D_8011B0A8) # $a2, 0x8012
/* 025E7C 8002527C 24C6B0A8 */  addiu $a2, %lo(D_8011B0A8) # addiu $a2, $a2, -0x4f58
/* 025E80 80025280 02202025 */  move  $a0, $s1
/* 025E84 80025284 02402825 */  move  $a1, $s2
/* 025E88 80025288 00403825 */  move  $a3, $v0
/* 025E8C 8002528C 0C028068 */  jal   func_800A01A0
/* 025E90 80025290 AFAD0010 */   sw    $t5, 0x10($sp)
/* 025E94 80025294 8E0E0000 */  lw    $t6, ($s0)
/* 025E98 80025298 00000000 */  nop   
/* 025E9C 8002529C 25C20001 */  addiu $v0, $t6, 1
/* 025EA0 800252A0 0053082A */  slt   $at, $v0, $s3
/* 025EA4 800252A4 1420FF84 */  bnez  $at, .L800250B8
/* 025EA8 800252A8 AE020000 */   sw    $v0, ($s0)
.L800252AC:
/* 025EAC 800252AC 24010003 */  li    $at, 3
/* 025EB0 800252B0 1661006C */  bne   $s3, $at, .L80025464
/* 025EB4 800252B4 00000000 */   nop   
/* 025EB8 800252B8 0C01AF66 */  jal   get_current_level_race_type
/* 025EBC 800252BC 00000000 */   nop   
/* 025EC0 800252C0 24010042 */  li    $at, 66
/* 025EC4 800252C4 10410067 */  beq   $v0, $at, .L80025464
/* 025EC8 800252C8 00000000 */   nop   
/* 025ECC 800252CC 0C01AF66 */  jal   get_current_level_race_type
/* 025ED0 800252D0 00000000 */   nop   
/* 025ED4 800252D4 24010040 */  li    $at, 64
/* 025ED8 800252D8 10410062 */  beq   $v0, $at, .L80025464
/* 025EDC 800252DC 00000000 */   nop   
/* 025EE0 800252E0 0C01AF66 */  jal   get_current_level_race_type
/* 025EE4 800252E4 00000000 */   nop   
/* 025EE8 800252E8 24010041 */  li    $at, 65
/* 025EEC 800252EC 1041005D */  beq   $v0, $at, .L80025464
/* 025EF0 800252F0 00000000 */   nop   
/* 025EF4 800252F4 0C02A116 */  jal   func_800A8458
/* 025EF8 800252F8 00000000 */   nop   
/* 025EFC 800252FC 14400054 */  bnez  $v0, .L80025450
/* 025F00 80025300 00000000 */   nop   
/* 025F04 80025304 83B90083 */  lb    $t9, 0x83($sp)
/* 025F08 80025308 00000000 */  nop   
/* 025F0C 8002530C 13200008 */  beqz  $t9, .L80025330
/* 025F10 80025310 00000000 */   nop   
/* 025F14 80025314 8E220000 */  lw    $v0, ($s1)
/* 025F18 80025318 3C0BB700 */  lui   $t3, 0xb700
/* 025F1C 8002531C 244A0008 */  addiu $t2, $v0, 8
/* 025F20 80025320 AE2A0000 */  sw    $t2, ($s1)
/* 025F24 80025324 240C1000 */  li    $t4, 4096
/* 025F28 80025328 AC4C0004 */  sw    $t4, 4($v0)
/* 025F2C 8002532C AC4B0000 */  sw    $t3, ($v0)
.L80025330:
/* 025F30 80025330 0C00C24F */  jal   func_8003093C
/* 025F34 80025334 24040003 */   li    $a0, 3
/* 025F38 80025338 8E220000 */  lw    $v0, ($s1)
/* 025F3C 8002533C 3C0DE700 */  lui   $t5, 0xe700
/* 025F40 80025340 244F0008 */  addiu $t7, $v0, 8
/* 025F44 80025344 AE2F0000 */  sw    $t7, ($s1)
/* 025F48 80025348 24040003 */  li    $a0, 3
/* 025F4C 8002534C AC400004 */  sw    $zero, 4($v0)
/* 025F50 80025350 0C01997A */  jal   func_800665E8
/* 025F54 80025354 AC4D0000 */   sw    $t5, ($v0)
/* 025F58 80025358 0C019948 */  jal   func_80066520
/* 025F5C 8002535C 00000000 */   nop   
/* 025F60 80025360 8FA400A0 */  lw    $a0, 0xa0($sp)
/* 025F64 80025364 0C009E3A */  jal   func_800278E8
/* 025F68 80025368 00000000 */   nop   
/* 025F6C 8002536C 02202025 */  move  $a0, $s1
/* 025F70 80025370 0C019B37 */  jal   func_80066CDC
/* 025F74 80025374 02402825 */   move  $a1, $s2
/* 025F78 80025378 0C00A8C7 */  jal   func_8002A31C
/* 025F7C 8002537C 00000000 */   nop   
/* 025F80 80025380 02202025 */  move  $a0, $s1
/* 025F84 80025384 0C01A01F */  jal   func_8006807C
/* 025F88 80025388 02402825 */   move  $a1, $s2
/* 025F8C 8002538C 0C00A26E */  jal   func_800289B8
/* 025F90 80025390 00000000 */   nop   
/* 025F94 80025394 02202025 */  move  $a0, $s1
/* 025F98 80025398 0C019F4F */  jal   func_80067D3C
/* 025F9C 8002539C 02402825 */   move  $a1, $s2
/* 025FA0 800253A0 02202025 */  move  $a0, $s1
/* 025FA4 800253A4 0C01A102 */  jal   func_80068408
/* 025FA8 800253A8 02402825 */   move  $a1, $s2
/* 025FAC 800253AC 8E220000 */  lw    $v0, ($s1)
/* 025FB0 800253B0 3C18E700 */  lui   $t8, 0xe700
/* 025FB4 800253B4 244E0008 */  addiu $t6, $v0, 8
/* 025FB8 800253B8 AE2E0000 */  sw    $t6, ($s1)
/* 025FBC 800253BC AC400004 */  sw    $zero, 4($v0)
/* 025FC0 800253C0 AC580000 */  sw    $t8, ($v0)
/* 025FC4 800253C4 8FA400A0 */  lw    $a0, 0xa0($sp)
/* 025FC8 800253C8 0C00A334 */  jal   func_80028CD0
/* 025FCC 800253CC 00000000 */   nop   
/* 025FD0 800253D0 2404FFFF */  li    $a0, -1
/* 025FD4 800253D4 0C02ACC2 */  jal   func_800AB308
/* 025FD8 800253D8 2405FE00 */   li    $a1, -512
/* 025FDC 800253DC 0C01A748 */  jal   func_80069D20
/* 025FE0 800253E0 00000000 */   nop   
/* 025FE4 800253E4 0C02B40C */  jal   func_800AD030
/* 025FE8 800253E8 00402025 */   move  $a0, $v0
/* 025FEC 800253EC 0C01A748 */  jal   func_80069D20
/* 025FF0 800253F0 00000000 */   nop   
/* 025FF4 800253F4 3C068012 */  lui   $a2, %hi(D_8011B0A8) # $a2, 0x8012
/* 025FF8 800253F8 24C6B0A8 */  addiu $a2, %lo(D_8011B0A8) # addiu $a2, $a2, -0x4f58
/* 025FFC 800253FC 02202025 */  move  $a0, $s1
/* 026000 80025400 02402825 */  move  $a1, $s2
/* 026004 80025404 0C02B288 */  jal   func_800ACA20
/* 026008 80025408 00403825 */   move  $a3, $v0
/* 02600C 8002540C 0C0310BB */  jal   set_text_font
/* 026010 80025410 00002025 */   move  $a0, $zero
/* 026014 80025414 3C198000 */  lui   $t9, %hi(osTvType) # $t9, 0x8000
/* 026018 80025418 8F390300 */  lw    $t9, %lo(osTvType)($t9)
/* 02601C 8002541C 02202025 */  move  $a0, $s1
/* 026020 80025420 17200004 */  bnez  $t9, .L80025434
/* 026024 80025424 3C07800E */   lui   $a3, %hi(D_800E5DF0) # $a3, 0x800e
lw $a1, 0x30($sp)
addiu $a1, $a1, 6
/* 02602C 8002542C 10000003 */  b     .L8002543C
/* 026030 80025430 2406008A */   li    $a2, 138
.L80025434:
lw $a1, 0x30($sp)
addiu $a1, $a1, 10
/* 026038 80025438 2406007D */  li    $a2, 125
.L8002543C:
/* 02603C 8002543C 24E75DF0 */  addiu $a3, %lo(D_800E5DF0) # addiu $a3, $a3, 0x5df0
/* 026040 80025440 0C031110 */  jal   draw_text
/* 026044 80025444 AFA00010 */   sw    $zero, 0x10($sp)
/* 026048 80025448 10000006 */  b     .L80025464
/* 02604C 8002544C 00000000 */   nop   
.L80025450:
/* 026050 80025450 0C01997A */  jal   func_800665E8
/* 026054 80025454 24040003 */   li    $a0, 3
/* 026058 80025458 8FA400A0 */  lw    $a0, 0xa0($sp)
/* 02605C 8002545C 0C009E3A */  jal   func_800278E8
/* 026060 80025460 00000000 */   nop   
.L80025464:
/* 026064 80025464 0C01A0AB */  jal   func_800682AC
/* 026068 80025468 02202025 */   move  $a0, $s1
/* 02606C 8002546C 8E220000 */  lw    $v0, ($s1)
/* 026070 80025470 3C0BE700 */  lui   $t3, 0xe700
/* 026074 80025474 244A0008 */  addiu $t2, $v0, 8
/* 026078 80025478 AE2A0000 */  sw    $t2, ($s1)
/* 02607C 8002547C AC400004 */  sw    $zero, 4($v0)
/* 026080 80025480 AC4B0000 */  sw    $t3, ($v0)
/* 026084 80025484 8E220000 */  lw    $v0, ($s1)
/* 026088 80025488 3C0FBC00 */  lui   $t7, (0xBC000002 >> 16) # lui $t7, 0xbc00
/* 02608C 8002548C 244C0008 */  addiu $t4, $v0, 8
/* 026090 80025490 AE2C0000 */  sw    $t4, ($s1)
/* 026094 80025494 3C058012 */  lui   $a1, %hi(D_8011B0C8) # $a1, 0x8012
/* 026098 80025498 35EF0002 */  ori   $t7, (0xBC000002 & 0xFFFF) # ori $t7, $t7, 2
/* 02609C 8002549C 24A5B0C8 */  addiu $a1, %lo(D_8011B0C8) # addiu $a1, $a1, -0x4f38
/* 0260A0 800254A0 AC4F0000 */  sw    $t7, ($v0)
/* 0260A4 800254A4 AC400004 */  sw    $zero, 4($v0)
/* 0260A8 800254A8 8CAD0000 */  lw    $t5, ($a1)
/* 0260AC 800254AC 240E0001 */  li    $t6, 1
/* 0260B0 800254B0 8FAA0090 */  lw    $t2, 0x90($sp)
/* 0260B4 800254B4 8E390000 */  lw    $t9, ($s1)
/* 0260B8 800254B8 01CDC023 */  subu  $t8, $t6, $t5
/* 0260BC 800254BC ACB80000 */  sw    $t8, ($a1)
/* 0260C0 800254C0 AD590000 */  sw    $t9, ($t2)
/* 0260C4 800254C4 8FAC0094 */  lw    $t4, 0x94($sp)
/* 0260C8 800254C8 8E4B0000 */  lw    $t3, ($s2)
/* 0260CC 800254CC 3C0F8012 */  lui   $t7, %hi(D_8011B0A8) # $t7, 0x8012
/* 0260D0 800254D0 AD8B0000 */  sw    $t3, ($t4)
/* 0260D4 800254D4 8FAE0098 */  lw    $t6, 0x98($sp)
/* 0260D8 800254D8 8DEFB0A8 */  lw    $t7, %lo(D_8011B0A8)($t7)
/* 0260DC 800254DC 3C0D8012 */  lui   $t5, %hi(D_8011B0AC) # $t5, 0x8012
/* 0260E0 800254E0 ADCF0000 */  sw    $t7, ($t6)
/* 0260E4 800254E4 8FB8009C */  lw    $t8, 0x9c($sp)
/* 0260E8 800254E8 8DADB0AC */  lw    $t5, %lo(D_8011B0AC)($t5)
/* 0260EC 800254EC 00000000 */  nop   
/* 0260F0 800254F0 AF0D0000 */  sw    $t5, ($t8)
/* 0260F4 800254F4 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0260F8 800254F8 8FB30028 */  lw    $s3, 0x28($sp)
/* 0260FC 800254FC 8FB20024 */  lw    $s2, 0x24($sp)
/* 026100 80025500 8FB10020 */  lw    $s1, 0x20($sp)
/* 026104 80025504 8FB0001C */  lw    $s0, 0x1c($sp)
/* 026108 80025508 03E00008 */  jr    $ra
/* 02610C 8002550C 27BD0090 */   addiu $sp, $sp, 0x90
