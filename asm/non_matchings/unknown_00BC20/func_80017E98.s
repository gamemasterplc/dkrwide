glabel func_80017E98
/* 018A98 80017E98 27BDFEE8 */  addiu $sp, $sp, -0x118
/* 018A9C 80017E9C 3C038012 */  lui   $v1, %hi(objCount) # $v1, 0x8012
/* 018AA0 80017EA0 8C63AE5C */  lw    $v1, %lo(objCount)($v1)
/* 018AA4 80017EA4 AFB30044 */  sw    $s3, 0x44($sp)
/* 018AA8 80017EA8 3C018012 */  lui   $at, %hi(D_8011AED0) # $at, 0x8012
/* 018AAC 80017EAC AFBF005C */  sw    $ra, 0x5c($sp)
/* 018AB0 80017EB0 AFBE0058 */  sw    $fp, 0x58($sp)
/* 018AB4 80017EB4 AFB70054 */  sw    $s7, 0x54($sp)
/* 018AB8 80017EB8 AFB60050 */  sw    $s6, 0x50($sp)
/* 018ABC 80017EBC AFB5004C */  sw    $s5, 0x4c($sp)
/* 018AC0 80017EC0 AFB40048 */  sw    $s4, 0x48($sp)
/* 018AC4 80017EC4 AFB20040 */  sw    $s2, 0x40($sp)
/* 018AC8 80017EC8 AFB1003C */  sw    $s1, 0x3c($sp)
/* 018ACC 80017ECC AFB00038 */  sw    $s0, 0x38($sp)
/* 018AD0 80017ED0 E7B70030 */  swc1  $f23, 0x30($sp)
/* 018AD4 80017ED4 E7B60034 */  swc1  $f22, 0x34($sp)
/* 018AD8 80017ED8 E7B50028 */  swc1  $f21, 0x28($sp)
/* 018ADC 80017EDC E7B4002C */  swc1  $f20, 0x2c($sp)
/* 018AE0 80017EE0 00005025 */  move  $t2, $zero
/* 018AE4 80017EE4 AC20AED0 */  sw    $zero, %lo(D_8011AED0)($at)
/* 018AE8 80017EE8 18600047 */  blez  $v1, .L80018008
/* 018AEC 80017EEC 00009825 */   move  $s3, $zero
/* 018AF0 80017EF0 3C148012 */  lui   $s4, %hi(D_8011AECC) # $s4, 0x8012
/* 018AF4 80017EF4 3C098012 */  lui   $t1, %hi(D_8011AED8) # $t1, 0x8012
/* 018AF8 80017EF8 3C068012 */  lui   $a2, %hi(gObjPtrList) # $a2, 0x8012
/* 018AFC 80017EFC 24C6AE58 */  addiu $a2, %lo(gObjPtrList) # addiu $a2, $a2, -0x51a8
/* 018B00 80017F00 2529AED8 */  addiu $t1, %lo(D_8011AED8) # addiu $t1, $t1, -0x5128
/* 018B04 80017F04 2694AECC */  addiu $s4, %lo(D_8011AECC) # addiu $s4, $s4, -0x5134
/* 018B08 80017F08 00001025 */  move  $v0, $zero
/* 018B0C 80017F0C 2408000D */  li    $t0, 13
/* 018B10 80017F10 2405003C */  li    $a1, 60
.L80017F14:
/* 018B14 80017F14 8CCE0000 */  lw    $t6, ($a2)
/* 018B18 80017F18 26730001 */  addiu $s3, $s3, 1
/* 018B1C 80017F1C 01C27821 */  addu  $t7, $t6, $v0
/* 018B20 80017F20 8DF00000 */  lw    $s0, ($t7)
/* 018B24 80017F24 00000000 */  nop   
/* 018B28 80017F28 86180006 */  lh    $t8, 6($s0)
/* 018B2C 80017F2C 00000000 */  nop   
/* 018B30 80017F30 33198000 */  andi  $t9, $t8, 0x8000
/* 018B34 80017F34 17200032 */  bnez  $t9, .L80018000
/* 018B38 80017F38 0263082A */   slt   $at, $s3, $v1
/* 018B3C 80017F3C 860B0048 */  lh    $t3, 0x48($s0)
/* 018B40 80017F40 3C078012 */  lui   $a3, %hi(D_8011AED0) # $a3, 0x8012
/* 018B44 80017F44 150B002E */  bne   $t0, $t3, .L80018000
/* 018B48 80017F48 0263082A */   slt   $at, $s3, $v1
/* 018B4C 80017F4C 8CE7AED0 */  lw    $a3, %lo(D_8011AED0)($a3)
/* 018B50 80017F50 00000000 */  nop   
/* 018B54 80017F54 28E1003C */  slti  $at, $a3, 0x3c
/* 018B58 80017F58 10200029 */  beqz  $at, .L80018000
/* 018B5C 80017F5C 0263082A */   slt   $at, $s3, $v1
/* 018B60 80017F60 8E17003C */  lw    $s7, 0x3c($s0)
/* 018B64 80017F64 852C0000 */  lh    $t4, ($t1)
/* 018B68 80017F68 82ED001A */  lb    $t5, 0x1a($s7)
/* 018B6C 80017F6C 00000000 */  nop   
/* 018B70 80017F70 158D0023 */  bne   $t4, $t5, .L80018000
/* 018B74 80017F74 0263082A */   slt   $at, $s3, $v1
/* 018B78 80017F78 00E50019 */  multu $a3, $a1
/* 018B7C 80017F7C 8E8E0000 */  lw    $t6, ($s4)
/* 018B80 80017F80 3C078012 */  lui   $a3, %hi(D_8011AED0) # $a3, 0x8012
/* 018B84 80017F84 24E7AED0 */  addiu $a3, %lo(D_8011AED0) # addiu $a3, $a3, -0x5130
/* 018B88 80017F88 00007812 */  mflo  $t7
/* 018B8C 80017F8C 01CFC021 */  addu  $t8, $t6, $t7
/* 018B90 80017F90 AF100028 */  sw    $s0, 0x28($t8)
/* 018B94 80017F94 92F90017 */  lbu   $t9, 0x17($s7)
/* 018B98 80017F98 92E40009 */  lbu   $a0, 9($s7)
/* 018B9C 80017F9C 13200003 */  beqz  $t9, .L80017FAC
/* 018BA0 80017FA0 00000000 */   nop   
/* 018BA4 80017FA4 248400FF */  addiu $a0, $a0, 0xff
/* 018BA8 80017FA8 254A0001 */  addiu $t2, $t2, 1
.L80017FAC:
/* 018BAC 80017FAC 8CEC0000 */  lw    $t4, ($a3)
/* 018BB0 80017FB0 8E8B0000 */  lw    $t3, ($s4)
/* 018BB4 80017FB4 01850019 */  multu $t4, $a1
/* 018BB8 80017FB8 240FFFFF */  li    $t7, -1
/* 018BBC 80017FBC 3C038012 */  lui   $v1, %hi(objCount) # $v1, 0x8012
/* 018BC0 80017FC0 00006812 */  mflo  $t5
/* 018BC4 80017FC4 016D7021 */  addu  $t6, $t3, $t5
/* 018BC8 80017FC8 A5C4002C */  sh    $a0, 0x2c($t6)
/* 018BCC 80017FCC 8CF90000 */  lw    $t9, ($a3)
/* 018BD0 80017FD0 8E980000 */  lw    $t8, ($s4)
/* 018BD4 80017FD4 03250019 */  multu $t9, $a1
/* 018BD8 80017FD8 00006012 */  mflo  $t4
/* 018BDC 80017FDC 030C5821 */  addu  $t3, $t8, $t4
/* 018BE0 80017FE0 A16F003A */  sb    $t7, 0x3a($t3)
/* 018BE4 80017FE4 8CED0000 */  lw    $t5, ($a3)
/* 018BE8 80017FE8 00000000 */  nop   
/* 018BEC 80017FEC 25AE0001 */  addiu $t6, $t5, 1
/* 018BF0 80017FF0 ACEE0000 */  sw    $t6, ($a3)
/* 018BF4 80017FF4 8C63AE5C */  lw    $v1, %lo(objCount)($v1)
/* 018BF8 80017FF8 00000000 */  nop   
/* 018BFC 80017FFC 0263082A */  slt   $at, $s3, $v1
.L80018000:
/* 018C00 80018000 1420FFC4 */  bnez  $at, .L80017F14
/* 018C04 80018004 24420004 */   addiu $v0, $v0, 4
.L80018008:
/* 018C08 80018008 3C078012 */  lui   $a3, %hi(D_8011AED0) # $a3, 0x8012
/* 018C0C 8001800C 8CE7AED0 */  lw    $a3, %lo(D_8011AED0)($a3)
/* 018C10 80018010 3C148012 */  lui   $s4, %hi(D_8011AECC) # $s4, 0x8012
/* 018C14 80018014 8FB20104 */  lw    $s2, 0x104($sp)
/* 018C18 80018018 2694AECC */  addiu $s4, %lo(D_8011AECC) # addiu $s4, $s4, -0x5134
/* 018C1C 8001801C 00004825 */  move  $t1, $zero
/* 018C20 80018020 24E6FFFF */  addiu $a2, $a3, -1
/* 018C24 80018024 24080001 */  li    $t0, 1
.L80018028:
/* 018C28 80018028 18C00023 */  blez  $a2, .L800180B8
/* 018C2C 8001802C 00009825 */   move  $s3, $zero
/* 018C30 80018030 00008825 */  move  $s1, $zero
.L80018034:
/* 018C34 80018034 8E990000 */  lw    $t9, ($s4)
/* 018C38 80018038 26730001 */  addiu $s3, $s3, 1
/* 018C3C 8001803C 03311021 */  addu  $v0, $t9, $s1
/* 018C40 80018040 8443002C */  lh    $v1, 0x2c($v0)
/* 018C44 80018044 84440068 */  lh    $a0, 0x68($v0)
/* 018C48 80018048 00000000 */  nop   
/* 018C4C 8001804C 14640003 */  bne   $v1, $a0, .L8001805C
/* 018C50 80018050 0083082A */   slt   $at, $a0, $v1
/* 018C54 80018054 24090001 */  li    $t1, 1
/* 018C58 80018058 00609025 */  move  $s2, $v1
.L8001805C:
/* 018C5C 8001805C 10200014 */  beqz  $at, .L800180B0
/* 018C60 80018060 0266082A */   slt   $at, $s3, $a2
/* 018C64 80018064 A444002C */  sh    $a0, 0x2c($v0)
/* 018C68 80018068 8E980000 */  lw    $t8, ($s4)
/* 018C6C 8001806C 8C500028 */  lw    $s0, 0x28($v0)
/* 018C70 80018070 03111021 */  addu  $v0, $t8, $s1
/* 018C74 80018074 8C4C0064 */  lw    $t4, 0x64($v0)
/* 018C78 80018078 3C078012 */  lui   $a3, %hi(D_8011AED0) # $a3, 0x8012
/* 018C7C 8001807C AC4C0028 */  sw    $t4, 0x28($v0)
/* 018C80 80018080 8E8F0000 */  lw    $t7, ($s4)
/* 018C84 80018084 00004025 */  move  $t0, $zero
/* 018C88 80018088 01F15821 */  addu  $t3, $t7, $s1
/* 018C8C 8001808C A5630068 */  sh    $v1, 0x68($t3)
/* 018C90 80018090 8E8D0000 */  lw    $t5, ($s4)
/* 018C94 80018094 00000000 */  nop   
/* 018C98 80018098 01B17021 */  addu  $t6, $t5, $s1
/* 018C9C 8001809C ADD00064 */  sw    $s0, 0x64($t6)
/* 018CA0 800180A0 8CE7AED0 */  lw    $a3, %lo(D_8011AED0)($a3)
/* 018CA4 800180A4 00000000 */  nop   
/* 018CA8 800180A8 24E6FFFF */  addiu $a2, $a3, -1
/* 018CAC 800180AC 0266082A */  slt   $at, $s3, $a2
.L800180B0:
/* 018CB0 800180B0 1420FFE0 */  bnez  $at, .L80018034
/* 018CB4 800180B4 2631003C */   addiu $s1, $s1, 0x3c
.L800180B8:
/* 018CB8 800180B8 1100FFDB */  beqz  $t0, .L80018028
/* 018CBC 800180BC 24080001 */   li    $t0, 1
/* 018CC0 800180C0 3C088012 */  lui   $t0, %hi(D_8011AED4) # $t0, 0x8012
/* 018CC4 800180C4 2508AED4 */  addiu $t0, %lo(D_8011AED4) # addiu $t0, $t0, -0x512c
/* 018CC8 800180C8 AD070000 */  sw    $a3, ($t0)
/* 018CCC 800180CC 00EAC823 */  subu  $t9, $a3, $t2
/* 018CD0 800180D0 3C018012 */  lui   $at, %hi(D_8011AED0) # $at, 0x8012
/* 018CD4 800180D4 1120000A */  beqz  $t1, .L80018100
/* 018CD8 800180D8 AC39AED0 */   sw    $t9, %lo(D_8011AED0)($at)
/* 018CDC 800180DC 24040014 */  li    $a0, 20
/* 018CE0 800180E0 0C02D8D7 */  jal   set_render_printf_position
/* 018CE4 800180E4 240500DC */   li    $a1, 220
/* 018CE8 800180E8 3C04800E */  lui   $a0, %hi(D_800E50D4) # $a0, 0x800e
/* 018CEC 800180EC 248450D4 */  addiu $a0, %lo(D_800E50D4) # addiu $a0, $a0, 0x50d4
/* 018CF0 800180F0 0C02D7B7 */  jal   render_printf
/* 018CF4 800180F4 02402825 */   move  $a1, $s2
/* 018CF8 800180F8 3C088012 */  lui   $t0, %hi(D_8011AED4) # $t0, 0x8012
/* 018CFC 800180FC 2508AED4 */  addiu $t0, %lo(D_8011AED4) # addiu $t0, $t0, -0x512c
.L80018100:
/* 018D00 80018100 3C078012 */  lui   $a3, %hi(D_8011AED0) # $a3, 0x8012
/* 018D04 80018104 8CE7AED0 */  lw    $a3, %lo(D_8011AED0)($a3)
/* 018D08 80018108 8D020000 */  lw    $v0, ($t0)
/* 018D0C 8001810C 00E09825 */  move  $s3, $a3
/* 018D10 80018110 00E2082A */  slt   $at, $a3, $v0
/* 018D14 80018114 10200026 */  beqz  $at, .L800181B0
/* 018D18 80018118 00078900 */   sll   $s1, $a3, 4
/* 018D1C 8001811C 02278823 */  subu  $s1, $s1, $a3
/* 018D20 80018120 00118880 */  sll   $s1, $s1, 2
.L80018124:
/* 018D24 80018124 8E980000 */  lw    $t8, ($s4)
/* 018D28 80018128 00002025 */  move  $a0, $zero
/* 018D2C 8001812C 03116021 */  addu  $t4, $t8, $s1
/* 018D30 80018130 8585002C */  lh    $a1, 0x2c($t4)
/* 018D34 80018134 00003025 */  move  $a2, $zero
/* 018D38 80018138 18E00018 */  blez  $a3, .L8001819C
/* 018D3C 8001813C 24A5FF01 */   addiu $a1, $a1, -0xff
/* 018D40 80018140 00001100 */  sll   $v0, $zero, 4
/* 018D44 80018144 00401023 */  subu  $v0, $v0, $zero
/* 018D48 80018148 00021080 */  sll   $v0, $v0, 2
.L8001814C:
/* 018D4C 8001814C 8E8F0000 */  lw    $t7, ($s4)
/* 018D50 80018150 00000000 */  nop   
/* 018D54 80018154 01E21821 */  addu  $v1, $t7, $v0
/* 018D58 80018158 846B002C */  lh    $t3, 0x2c($v1)
/* 018D5C 8001815C 00000000 */  nop   
/* 018D60 80018160 14AB0008 */  bne   $a1, $t3, .L80018184
/* 018D64 80018164 00000000 */   nop   
/* 018D68 80018168 A073003A */  sb    $s3, 0x3a($v1)
/* 018D6C 8001816C 8E8D0000 */  lw    $t5, ($s4)
/* 018D70 80018170 3C078012 */  lui   $a3, %hi(D_8011AED0) # $a3, 0x8012
/* 018D74 80018174 01B17021 */  addu  $t6, $t5, $s1
/* 018D78 80018178 A1C4003A */  sb    $a0, 0x3a($t6)
/* 018D7C 8001817C 8CE7AED0 */  lw    $a3, %lo(D_8011AED0)($a3)
/* 018D80 80018180 24060001 */  li    $a2, 1
.L80018184:
/* 018D84 80018184 24840001 */  addiu $a0, $a0, 1
/* 018D88 80018188 0087082A */  slt   $at, $a0, $a3
/* 018D8C 8001818C 10200003 */  beqz  $at, .L8001819C
/* 018D90 80018190 2442003C */   addiu $v0, $v0, 0x3c
/* 018D94 80018194 10C0FFED */  beqz  $a2, .L8001814C
/* 018D98 80018198 00000000 */   nop   
.L8001819C:
/* 018D9C 8001819C 8D020000 */  lw    $v0, ($t0)
/* 018DA0 800181A0 26730001 */  addiu $s3, $s3, 1
/* 018DA4 800181A4 0262082A */  slt   $at, $s3, $v0
/* 018DA8 800181A8 1420FFDE */  bnez  $at, .L80018124
/* 018DAC 800181AC 2631003C */   addiu $s1, $s1, 0x3c
.L800181B0:
/* 018DB0 800181B0 184000FC */  blez  $v0, .L800185A4
/* 018DB4 800181B4 00009825 */   move  $s3, $zero
/* 018DB8 800181B8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 018DBC 800181BC 4481B000 */  mtc1  $at, $f22
/* 018DC0 800181C0 4480A000 */  mtc1  $zero, $f20
/* 018DC4 800181C4 00008825 */  move  $s1, $zero
.L800181C8:
/* 018DC8 800181C8 8E990000 */  lw    $t9, ($s4)
/* 018DCC 800181CC 27A40094 */  addiu $a0, $sp, 0x94
/* 018DD0 800181D0 02399021 */  addu  $s2, $s1, $t9
/* 018DD4 800181D4 8E500028 */  lw    $s0, 0x28($s2)
/* 018DD8 800181D8 27A5007C */  addiu $a1, $sp, 0x7c
/* 018DDC 800181DC 86180000 */  lh    $t8, ($s0)
/* 018DE0 800181E0 8E17003C */  lw    $s7, 0x3c($s0)
/* 018DE4 800181E4 A7B8007C */  sh    $t8, 0x7c($sp)
/* 018DE8 800181E8 860C0002 */  lh    $t4, 2($s0)
/* 018DEC 800181EC 00000000 */  nop   
/* 018DF0 800181F0 A7AC007E */  sh    $t4, 0x7e($sp)
/* 018DF4 800181F4 860F0004 */  lh    $t7, 4($s0)
/* 018DF8 800181F8 E7B60084 */  swc1  $f22, 0x84($sp)
/* 018DFC 800181FC E7B40088 */  swc1  $f20, 0x88($sp)
/* 018E00 80018200 E7B4008C */  swc1  $f20, 0x8c($sp)
/* 018E04 80018204 E7B40090 */  swc1  $f20, 0x90($sp)
/* 018E08 80018208 0C01BF0C */  jal   func_8006FC30
/* 018E0C 8001820C A7AF0080 */   sh    $t7, 0x80($sp)
/* 018E10 80018210 4405A000 */  mfc1  $a1, $f20
/* 018E14 80018214 4406A000 */  mfc1  $a2, $f20
/* 018E18 80018218 4407B000 */  mfc1  $a3, $f22
/* 018E1C 8001821C 27AB00E8 */  addiu $t3, $sp, 0xe8
/* 018E20 80018220 27AD00E4 */  addiu $t5, $sp, 0xe4
/* 018E24 80018224 27AE00E0 */  addiu $t6, $sp, 0xe0
/* 018E28 80018228 AFAE0018 */  sw    $t6, 0x18($sp)
/* 018E2C 8001822C AFAD0014 */  sw    $t5, 0x14($sp)
/* 018E30 80018230 AFAB0010 */  sw    $t3, 0x10($sp)
/* 018E34 80018234 0C01BD93 */  jal   guMtxXFMF
/* 018E38 80018238 27A40094 */   addiu $a0, $sp, 0x94
/* 018E3C 8001823C C7A400E8 */  lwc1  $f4, 0xe8($sp)
/* 018E40 80018240 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 018E44 80018244 E6440000 */  swc1  $f4, ($s2)
/* 018E48 80018248 C7A600E4 */  lwc1  $f6, 0xe4($sp)
/* 018E4C 8001824C 3C078012 */  lui   $a3, %hi(D_8011AED0) # $a3, 0x8012
/* 018E50 80018250 E6460004 */  swc1  $f6, 4($s2)
/* 018E54 80018254 C7A800E0 */  lwc1  $f8, 0xe0($sp)
/* 018E58 80018258 266C0001 */  addiu $t4, $s3, 1
/* 018E5C 8001825C E6480008 */  swc1  $f8, 8($s2)
/* 018E60 80018260 C60A000C */  lwc1  $f10, 0xc($s0)
/* 018E64 80018264 C7B000E8 */  lwc1  $f16, 0xe8($sp)
/* 018E68 80018268 C6040010 */  lwc1  $f4, 0x10($s0)
/* 018E6C 8001826C 46105482 */  mul.s $f18, $f10, $f16
/* 018E70 80018270 C7A600E4 */  lwc1  $f6, 0xe4($sp)
/* 018E74 80018274 C6100014 */  lwc1  $f16, 0x14($s0)
/* 018E78 80018278 46062202 */  mul.s $f8, $f4, $f6
/* 018E7C 8001827C C7A400E0 */  lwc1  $f4, 0xe0($sp)
/* 018E80 80018280 00000000 */  nop   
/* 018E84 80018284 46048182 */  mul.s $f6, $f16, $f4
/* 018E88 80018288 46089280 */  add.s $f10, $f18, $f8
/* 018E8C 8001828C 46065480 */  add.s $f18, $f10, $f6
/* 018E90 80018290 46009207 */  neg.s $f8, $f18
/* 018E94 80018294 E648000C */  swc1  $f8, 0xc($s2)
/* 018E98 80018298 C610000C */  lwc1  $f16, 0xc($s0)
/* 018E9C 8001829C 44819000 */  mtc1  $at, $f18
/* 018EA0 800182A0 E6500010 */  swc1  $f16, 0x10($s2)
/* 018EA4 800182A4 C6040010 */  lwc1  $f4, 0x10($s0)
/* 018EA8 800182A8 3C014300 */  li    $at, 0x43000000 # 128.000000
/* 018EAC 800182AC E6440014 */  swc1  $f4, 0x14($s2)
/* 018EB0 800182B0 C60A0014 */  lwc1  $f10, 0x14($s0)
/* 018EB4 800182B4 44812000 */  mtc1  $at, $f4
/* 018EB8 800182B8 E64A0018 */  swc1  $f10, 0x18($s2)
/* 018EBC 800182BC C6060008 */  lwc1  $f6, 8($s0)
/* 018EC0 800182C0 00000000 */  nop   
/* 018EC4 800182C4 46123202 */  mul.s $f8, $f6, $f18
/* 018EC8 800182C8 E648001C */  swc1  $f8, 0x1c($s2)
/* 018ECC 800182CC C6100008 */  lwc1  $f16, 8($s0)
/* 018ED0 800182D0 E6540024 */  swc1  $f20, 0x24($s2)
/* 018ED4 800182D4 46048282 */  mul.s $f10, $f16, $f4
/* 018ED8 800182D8 E6540020 */  swc1  $f20, 0x20($s2)
/* 018EDC 800182DC 4459F800 */  cfc1  $t9, $31
/* 018EE0 800182E0 00000000 */  nop   
/* 018EE4 800182E4 37210003 */  ori   $at, $t9, 3
/* 018EE8 800182E8 38210002 */  xori  $at, $at, 2
/* 018EEC 800182EC 44C1F800 */  ctc1  $at, $31
/* 018EF0 800182F0 00000000 */  nop   
/* 018EF4 800182F4 460051A4 */  cvt.w.s $f6, $f10
/* 018EF8 800182F8 44183000 */  mfc1  $t8, $f6
/* 018EFC 800182FC 44D9F800 */  ctc1  $t9, $31
/* 018F00 80018300 A658002C */  sh    $t8, 0x2c($s2)
/* 018F04 80018304 8CE7AED0 */  lw    $a3, %lo(D_8011AED0)($a3)
/* 018F08 80018308 00000000 */  nop   
/* 018F0C 8001830C 0267082A */  slt   $at, $s3, $a3
/* 018F10 80018310 1020003A */  beqz  $at, .L800183FC
/* 018F14 80018314 00000000 */   nop   
/* 018F18 80018318 267E0001 */  addiu $fp, $s3, 1
/* 018F1C 8001831C 15870002 */  bne   $t4, $a3, .L80018328
/* 018F20 80018320 03C02825 */   move  $a1, $fp
/* 018F24 80018324 00002825 */  move  $a1, $zero
.L80018328:
/* 018F28 80018328 0005B100 */  sll   $s6, $a1, 4
/* 018F2C 8001832C 8E8F0000 */  lw    $t7, ($s4)
/* 018F30 80018330 02C5B023 */  subu  $s6, $s6, $a1
/* 018F34 80018334 0016B080 */  sll   $s6, $s6, 2
/* 018F38 80018338 01F65821 */  addu  $t3, $t7, $s6
/* 018F3C 8001833C 8D620028 */  lw    $v0, 0x28($t3)
/* 018F40 80018340 C612000C */  lwc1  $f18, 0xc($s0)
/* 018F44 80018344 C448000C */  lwc1  $f8, 0xc($v0)
/* 018F48 80018348 C6100010 */  lwc1  $f16, 0x10($s0)
/* 018F4C 8001834C 46089001 */  sub.s $f0, $f18, $f8
/* 018F50 80018350 C4440010 */  lwc1  $f4, 0x10($v0)
/* 018F54 80018354 46000482 */  mul.s $f18, $f0, $f0
/* 018F58 80018358 46048081 */  sub.s $f2, $f16, $f4
/* 018F5C 8001835C C60A0014 */  lwc1  $f10, 0x14($s0)
/* 018F60 80018360 C4460014 */  lwc1  $f6, 0x14($v0)
/* 018F64 80018364 46021202 */  mul.s $f8, $f2, $f2
/* 018F68 80018368 46065381 */  sub.s $f14, $f10, $f6
/* 018F6C 8001836C 460E7102 */  mul.s $f4, $f14, $f14
/* 018F70 80018370 46089400 */  add.s $f16, $f18, $f8
/* 018F74 80018374 0C0326B4 */  jal   sqrtf
/* 018F78 80018378 46048300 */   add.s $f12, $f16, $f4
/* 018F7C 8001837C E6400020 */  swc1  $f0, 0x20($s2)
/* 018F80 80018380 8E950000 */  lw    $s5, ($s4)
/* 018F84 80018384 2401FFFF */  li    $at, -1
/* 018F88 80018388 02B66821 */  addu  $t5, $s5, $s6
/* 018F8C 8001838C 81A3003A */  lb    $v1, 0x3a($t5)
/* 018F90 80018390 00000000 */  nop   
/* 018F94 80018394 10610016 */  beq   $v1, $at, .L800183F0
/* 018F98 80018398 00037100 */   sll   $t6, $v1, 4
/* 018F9C 8001839C 01C37023 */  subu  $t6, $t6, $v1
/* 018FA0 800183A0 000E7080 */  sll   $t6, $t6, 2
/* 018FA4 800183A4 02AEC821 */  addu  $t9, $s5, $t6
/* 018FA8 800183A8 8F220028 */  lw    $v0, 0x28($t9)
/* 018FAC 800183AC C60A000C */  lwc1  $f10, 0xc($s0)
/* 018FB0 800183B0 C446000C */  lwc1  $f6, 0xc($v0)
/* 018FB4 800183B4 C6120010 */  lwc1  $f18, 0x10($s0)
/* 018FB8 800183B8 46065001 */  sub.s $f0, $f10, $f6
/* 018FBC 800183BC C4480010 */  lwc1  $f8, 0x10($v0)
/* 018FC0 800183C0 46000282 */  mul.s $f10, $f0, $f0
/* 018FC4 800183C4 46089081 */  sub.s $f2, $f18, $f8
/* 018FC8 800183C8 C6100014 */  lwc1  $f16, 0x14($s0)
/* 018FCC 800183CC C4440014 */  lwc1  $f4, 0x14($v0)
/* 018FD0 800183D0 46021182 */  mul.s $f6, $f2, $f2
/* 018FD4 800183D4 46048381 */  sub.s $f14, $f16, $f4
/* 018FD8 800183D8 460E7202 */  mul.s $f8, $f14, $f14
/* 018FDC 800183DC 46065480 */  add.s $f18, $f10, $f6
/* 018FE0 800183E0 0C0326B4 */  jal   sqrtf
/* 018FE4 800183E4 46089300 */   add.s $f12, $f18, $f8
/* 018FE8 800183E8 10000042 */  b     .L800184F4
/* 018FEC 800183EC E6400024 */   swc1  $f0, 0x24($s2)
.L800183F0:
/* 018FF0 800183F0 C6500020 */  lwc1  $f16, 0x20($s2)
/* 018FF4 800183F4 1000003F */  b     .L800184F4
/* 018FF8 800183F8 E6500024 */   swc1  $f16, 0x24($s2)
.L800183FC:
/* 018FFC 800183FC 8E950000 */  lw    $s5, ($s4)
/* 019000 80018400 00000000 */  nop   
/* 019004 80018404 02B1C021 */  addu  $t8, $s5, $s1
/* 019008 80018408 8305003A */  lb    $a1, 0x3a($t8)
/* 01900C 8001840C 00000000 */  nop   
/* 019010 80018410 24A50001 */  addiu $a1, $a1, 1
/* 019014 80018414 14A70003 */  bne   $a1, $a3, .L80018424
/* 019018 80018418 0005B100 */   sll   $s6, $a1, 4
/* 01901C 8001841C 00002825 */  move  $a1, $zero
/* 019020 80018420 0005B100 */  sll   $s6, $a1, 4
.L80018424:
/* 019024 80018424 02C5B023 */  subu  $s6, $s6, $a1
/* 019028 80018428 0016B080 */  sll   $s6, $s6, 2
/* 01902C 8001842C 02B66021 */  addu  $t4, $s5, $s6
/* 019030 80018430 8D820028 */  lw    $v0, 0x28($t4)
/* 019034 80018434 C604000C */  lwc1  $f4, 0xc($s0)
/* 019038 80018438 C44A000C */  lwc1  $f10, 0xc($v0)
/* 01903C 8001843C C6060010 */  lwc1  $f6, 0x10($s0)
/* 019040 80018440 460A2001 */  sub.s $f0, $f4, $f10
/* 019044 80018444 C4520010 */  lwc1  $f18, 0x10($v0)
/* 019048 80018448 46000102 */  mul.s $f4, $f0, $f0
/* 01904C 8001844C 46123081 */  sub.s $f2, $f6, $f18
/* 019050 80018450 C6080014 */  lwc1  $f8, 0x14($s0)
/* 019054 80018454 C4500014 */  lwc1  $f16, 0x14($v0)
/* 019058 80018458 46021282 */  mul.s $f10, $f2, $f2
/* 01905C 8001845C 46104381 */  sub.s $f14, $f8, $f16
/* 019060 80018460 460E7482 */  mul.s $f18, $f14, $f14
/* 019064 80018464 460A2180 */  add.s $f6, $f4, $f10
/* 019068 80018468 0C0326B4 */  jal   sqrtf
/* 01906C 8001846C 46123300 */   add.s $f12, $f6, $f18
/* 019070 80018470 E6400020 */  swc1  $f0, 0x20($s2)
/* 019074 80018474 8E950000 */  lw    $s5, ($s4)
/* 019078 80018478 2401FFFF */  li    $at, -1
/* 01907C 8001847C 02B67821 */  addu  $t7, $s5, $s6
/* 019080 80018480 81E3003A */  lb    $v1, 0x3a($t7)
/* 019084 80018484 00000000 */  nop   
/* 019088 80018488 10610017 */  beq   $v1, $at, .L800184E8
/* 01908C 8001848C 00035900 */   sll   $t3, $v1, 4
/* 019090 80018490 01635823 */  subu  $t3, $t3, $v1
/* 019094 80018494 000B5880 */  sll   $t3, $t3, 2
/* 019098 80018498 02AB6821 */  addu  $t5, $s5, $t3
/* 01909C 8001849C 8DA20028 */  lw    $v0, 0x28($t5)
/* 0190A0 800184A0 C608000C */  lwc1  $f8, 0xc($s0)
/* 0190A4 800184A4 C450000C */  lwc1  $f16, 0xc($v0)
/* 0190A8 800184A8 C6040010 */  lwc1  $f4, 0x10($s0)
/* 0190AC 800184AC 46104001 */  sub.s $f0, $f8, $f16
/* 0190B0 800184B0 C44A0010 */  lwc1  $f10, 0x10($v0)
/* 0190B4 800184B4 46000202 */  mul.s $f8, $f0, $f0
/* 0190B8 800184B8 460A2081 */  sub.s $f2, $f4, $f10
/* 0190BC 800184BC C6060014 */  lwc1  $f6, 0x14($s0)
/* 0190C0 800184C0 C4520014 */  lwc1  $f18, 0x14($v0)
/* 0190C4 800184C4 46021402 */  mul.s $f16, $f2, $f2
/* 0190C8 800184C8 46123381 */  sub.s $f14, $f6, $f18
/* 0190CC 800184CC 460E7282 */  mul.s $f10, $f14, $f14
/* 0190D0 800184D0 46104100 */  add.s $f4, $f8, $f16
/* 0190D4 800184D4 0C0326B4 */  jal   sqrtf
/* 0190D8 800184D8 460A2300 */   add.s $f12, $f4, $f10
/* 0190DC 800184DC E6400024 */  swc1  $f0, 0x24($s2)
/* 0190E0 800184E0 10000004 */  b     .L800184F4
/* 0190E4 800184E4 267E0001 */   addiu $fp, $s3, 1
.L800184E8:
/* 0190E8 800184E8 C6460020 */  lwc1  $f6, 0x20($s2)
/* 0190EC 800184EC 267E0001 */  addiu $fp, $s3, 1
/* 0190F0 800184F0 E6460024 */  swc1  $f6, 0x24($s2)
.L800184F4:
/* 0190F4 800184F4 82EE000B */  lb    $t6, 0xb($s7)
/* 0190F8 800184F8 03C09825 */  move  $s3, $fp
/* 0190FC 800184FC A24E002E */  sb    $t6, 0x2e($s2)
/* 019100 80018500 82F9000F */  lb    $t9, 0xf($s7)
/* 019104 80018504 2631003C */  addiu $s1, $s1, 0x3c
/* 019108 80018508 A2590032 */  sb    $t9, 0x32($s2)
/* 01910C 8001850C 82F80013 */  lb    $t8, 0x13($s7)
/* 019110 80018510 00000000 */  nop   
/* 019114 80018514 A2580036 */  sb    $t8, 0x36($s2)
/* 019118 80018518 82EC000C */  lb    $t4, 0xc($s7)
/* 01911C 8001851C 00000000 */  nop   
/* 019120 80018520 A24C002F */  sb    $t4, 0x2f($s2)
/* 019124 80018524 82EF0010 */  lb    $t7, 0x10($s7)
/* 019128 80018528 00000000 */  nop   
/* 01912C 8001852C A24F0033 */  sb    $t7, 0x33($s2)
/* 019130 80018530 82EB0014 */  lb    $t3, 0x14($s7)
/* 019134 80018534 00000000 */  nop   
/* 019138 80018538 A24B0037 */  sb    $t3, 0x37($s2)
/* 01913C 8001853C 82ED000D */  lb    $t5, 0xd($s7)
/* 019140 80018540 00000000 */  nop   
/* 019144 80018544 A24D0030 */  sb    $t5, 0x30($s2)
/* 019148 80018548 82EE0011 */  lb    $t6, 0x11($s7)
/* 01914C 8001854C 3C0D8012 */  lui   $t5, %hi(D_8011AED4) # $t5, 0x8012
/* 019150 80018550 A24E0034 */  sb    $t6, 0x34($s2)
/* 019154 80018554 82F90015 */  lb    $t9, 0x15($s7)
/* 019158 80018558 00000000 */  nop   
/* 01915C 8001855C A2590038 */  sb    $t9, 0x38($s2)
/* 019160 80018560 82F8000E */  lb    $t8, 0xe($s7)
/* 019164 80018564 00000000 */  nop   
/* 019168 80018568 A2580031 */  sb    $t8, 0x31($s2)
/* 01916C 8001856C 82EC0012 */  lb    $t4, 0x12($s7)
/* 019170 80018570 00000000 */  nop   
/* 019174 80018574 A24C0035 */  sb    $t4, 0x35($s2)
/* 019178 80018578 82EF0016 */  lb    $t7, 0x16($s7)
/* 01917C 8001857C 00000000 */  nop   
/* 019180 80018580 A24F0039 */  sb    $t7, 0x39($s2)
/* 019184 80018584 92EB0019 */  lbu   $t3, 0x19($s7)
/* 019188 80018588 00000000 */  nop   
/* 01918C 8001858C A24B003B */  sb    $t3, 0x3b($s2)
/* 019190 80018590 8DADAED4 */  lw    $t5, %lo(D_8011AED4)($t5)
/* 019194 80018594 00000000 */  nop   
/* 019198 80018598 03CD082A */  slt   $at, $fp, $t5
/* 01919C 8001859C 1420FF0A */  bnez  $at, .L800181C8
/* 0191A0 800185A0 00000000 */   nop   
.L800185A4:
/* 0191A4 800185A4 8FBF005C */  lw    $ra, 0x5c($sp)
/* 0191A8 800185A8 C7B50028 */  lwc1  $f21, 0x28($sp)
/* 0191AC 800185AC C7B4002C */  lwc1  $f20, 0x2c($sp)
/* 0191B0 800185B0 C7B70030 */  lwc1  $f23, 0x30($sp)
/* 0191B4 800185B4 C7B60034 */  lwc1  $f22, 0x34($sp)
/* 0191B8 800185B8 8FB00038 */  lw    $s0, 0x38($sp)
/* 0191BC 800185BC 8FB1003C */  lw    $s1, 0x3c($sp)
/* 0191C0 800185C0 8FB20040 */  lw    $s2, 0x40($sp)
/* 0191C4 800185C4 8FB30044 */  lw    $s3, 0x44($sp)
/* 0191C8 800185C8 8FB40048 */  lw    $s4, 0x48($sp)
/* 0191CC 800185CC 8FB5004C */  lw    $s5, 0x4c($sp)
/* 0191D0 800185D0 8FB60050 */  lw    $s6, 0x50($sp)
/* 0191D4 800185D4 8FB70054 */  lw    $s7, 0x54($sp)
/* 0191D8 800185D8 8FBE0058 */  lw    $fp, 0x58($sp)
/* 0191DC 800185DC 03E00008 */  jr    $ra
/* 0191E0 800185E0 27BD0118 */   addiu $sp, $sp, 0x118

