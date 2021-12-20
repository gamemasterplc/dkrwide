.late_rodata
glabel D_800E5EA0
.double 1000.0

.text
glabel render_level_geometry_and_objects
/* 029BAC 80028FAC 27BDFE90 */  addiu $sp, $sp, -0x170
/* 029BB0 80028FB0 AFBF003C */  sw    $ra, 0x3c($sp)
/* 029BB4 80028FB4 AFB60038 */  sw    $s6, 0x38($sp)
/* 029BB8 80028FB8 AFB50034 */  sw    $s5, 0x34($sp)
/* 029BBC 80028FBC AFB40030 */  sw    $s4, 0x30($sp)
/* 029BC0 80028FC0 AFB3002C */  sw    $s3, 0x2c($sp)
/* 029BC4 80028FC4 AFB20028 */  sw    $s2, 0x28($sp)
/* 029BC8 80028FC8 AFB10024 */  sw    $s1, 0x24($sp)
/* 029BCC 80028FCC 0C004B0C */  jal   func_80012C30
/* 029BD0 80028FD0 AFB00020 */   sw    $s0, 0x20($sp)
/* 029BD4 80028FD4 0C01BAA4 */  jal   get_settings
/* 029BD8 80028FD8 00000000 */   nop   
/* 029BDC 80028FDC 904E0049 */  lbu   $t6, 0x49($v0)
/* 029BE0 80028FE0 24010024 */  li    $at, 36
/* 029BE4 80028FE4 15C10003 */  bne   $t6, $at, .L80028FF4
/* 029BE8 80028FE8 240F0001 */   li    $t7, 1
/* 029BEC 80028FEC 3C018012 */  lui   $at, %hi(D_8011B0FC) # $at, 0x8012
/* 029BF0 80028FF0 AC2FB0FC */  sw    $t7, %lo(D_8011B0FC)($at)
.L80028FF4:
/* 029BF4 80028FF4 0C005205 */  jal   func_80014814
/* 029BF8 80028FF8 27A4016C */   addiu $a0, $sp, 0x16c
/* 029BFC 80028FFC 3C10800E */  lui   $s0, %hi(gCurrentLevelModel) # $s0, 0x800e
/* 029C00 80029000 8E10C918 */  lw    $s0, %lo(gCurrentLevelModel)($s0)
/* 029C04 80029004 AFA20160 */  sw    $v0, 0x160($sp)
/* 029C08 80029008 8618001A */  lh    $t8, 0x1a($s0)
/* 029C0C 8002900C 00000000 */  nop   
/* 029C10 80029010 2B010002 */  slti  $at, $t8, 2
/* 029C14 80029014 1420000F */  bnez  $at, .L80029054
/* 029C18 80029018 24080001 */   li    $t0, 1
/* 029C1C 8002901C AFA00168 */  sw    $zero, 0x168($sp)
/* 029C20 80029020 8606001A */  lh    $a2, 0x1a($s0)
/* 029C24 80029024 27B90168 */  addiu $t9, $sp, 0x168
/* 029C28 80029028 AFB90010 */  sw    $t9, 0x10($sp)
/* 029C2C 8002902C 00002025 */  move  $a0, $zero
/* 029C30 80029030 00002825 */  move  $a1, $zero
/* 029C34 80029034 27A700D8 */  addiu $a3, $sp, 0xd8
/* 029C38 80029038 0C00A6BE */  jal   traverse_segments_bsp_tree
/* 029C3C 8002903C 24C6FFFF */   addiu $a2, $a2, -1
/* 029C40 80029040 3C10800E */  lui   $s0, %hi(gCurrentLevelModel) # $s0, 0x800e
/* 029C44 80029044 8E10C918 */  lw    $s0, %lo(gCurrentLevelModel)($s0)
/* 029C48 80029048 10000005 */  b     .L80029060
/* 029C4C 8002904C 8609001A */   lh    $t1, 0x1a($s0)
/* 029C50 80029050 24080001 */  li    $t0, 1
.L80029054:
/* 029C54 80029054 AFA80168 */  sw    $t0, 0x168($sp)
/* 029C58 80029058 A3A000D8 */  sb    $zero, 0xd8($sp)
/* 029C5C 8002905C 8609001A */  lh    $t1, 0x1a($s0)
.L80029060:
/* 029C60 80029060 24120001 */  li    $s2, 1
/* 029C64 80029064 19200008 */  blez  $t1, .L80029088
/* 029C68 80029068 3C0C8012 */   lui   $t4, %hi(D_8011B0E0) # $t4, 0x8012
/* 029C6C 8002906C 27A20059 */  addiu $v0, $sp, 0x59
.L80029070:
/* 029C70 80029070 A0400000 */  sb    $zero, ($v0)
/* 029C74 80029074 860A001A */  lh    $t2, 0x1a($s0)
/* 029C78 80029078 26520001 */  addiu $s2, $s2, 1
/* 029C7C 8002907C 0152082A */  slt   $at, $t2, $s2
/* 029C80 80029080 1020FFFB */  beqz  $at, .L80029070
/* 029C84 80029084 24420001 */   addiu $v0, $v0, 1
.L80029088:
/* 029C88 80029088 818CB0E0 */  lb    $t4, %lo(D_8011B0E0)($t4)
/* 029C8C 8002908C 240B0001 */  li    $t3, 1
/* 029C90 80029090 11800016 */  beqz  $t4, .L800290EC
/* 029C94 80029094 A3AB0058 */   sb    $t3, 0x58($sp)
/* 029C98 80029098 8FAD0168 */  lw    $t5, 0x168($sp)
/* 029C9C 8002909C 00009025 */  move  $s2, $zero
/* 029CA0 800290A0 19A00012 */  blez  $t5, .L800290EC
/* 029CA4 800290A4 27B60058 */   addiu $s6, $sp, 0x58
/* 029CA8 800290A8 27B000D8 */  addiu $s0, $sp, 0xd8
/* 029CAC 800290AC 24110001 */  li    $s1, 1
.L800290B0:
/* 029CB0 800290B0 92040000 */  lbu   $a0, ($s0)
/* 029CB4 800290B4 0C00A596 */  jal   render_level_segment
/* 029CB8 800290B8 00002825 */   move  $a1, $zero
/* 029CBC 800290BC 920E0000 */  lbu   $t6, ($s0)
/* 029CC0 800290C0 26520001 */  addiu $s2, $s2, 1
/* 029CC4 800290C4 02CE7821 */  addu  $t7, $s6, $t6
/* 029CC8 800290C8 A1F10001 */  sb    $s1, 1($t7)
/* 029CCC 800290CC 8FB80168 */  lw    $t8, 0x168($sp)
/* 029CD0 800290D0 26100001 */  addiu $s0, $s0, 1
/* 029CD4 800290D4 0258082A */  slt   $at, $s2, $t8
/* 029CD8 800290D8 1420FFF5 */  bnez  $at, .L800290B0
/* 029CDC 800290DC 00000000 */   nop   
/* 029CE0 800290E0 3C10800E */  lui   $s0, %hi(gCurrentLevelModel) # $s0, 0x800e
/* 029CE4 800290E4 8E10C918 */  lw    $s0, %lo(gCurrentLevelModel)($s0)
/* 029CE8 800290E8 00000000 */  nop   
.L800290EC:
/* 029CEC 800290EC 8619001A */  lh    $t9, 0x1a($s0)
/* 029CF0 800290F0 27B60058 */  addiu $s6, $sp, 0x58
/* 029CF4 800290F4 2B210002 */  slti  $at, $t9, 2
/* 029CF8 800290F8 10200003 */  beqz  $at, .L80029108
/* 029CFC 800290FC 3C138012 */   lui   $s3, %hi(D_8011B0A0) # $s3, 0x8012
/* 029D00 80029100 24080001 */  li    $t0, 1
/* 029D04 80029104 A3A80059 */  sb    $t0, 0x59($sp)
.L80029108:
/* 029D08 80029108 2673B0A0 */  addiu $s3, %lo(D_8011B0A0) # addiu $s3, $s3, -0x4f60
/* 029D0C 8002910C 0C01ECF4 */  jal   func_8007B3D0
/* 029D10 80029110 02602025 */   move  $a0, $s3
/* 029D14 80029114 8FA3016C */  lw    $v1, 0x16c($sp)
/* 029D18 80029118 8FA40160 */  lw    $a0, 0x160($sp)
/* 029D1C 8002911C 0C0054D2 */  jal   func_80015348
/* 029D20 80029120 2465FFFF */   addiu $a1, $v1, -1
/* 029D24 80029124 0C019888 */  jal   func_80066220
/* 029D28 80029128 00000000 */   nop   
/* 029D2C 8002912C 8FA3016C */  lw    $v1, 0x16c($sp)
/* 029D30 80029130 8FB20160 */  lw    $s2, 0x160($sp)
/* 029D34 80029134 30490001 */  andi  $t1, $v0, 1
/* 029D38 80029138 240A0200 */  li    $t2, 512
/* 029D3C 8002913C 012A5804 */  sllv  $t3, $t2, $t1
/* 029D40 80029140 0243082A */  slt   $at, $s2, $v1
/* 029D44 80029144 10200056 */  beqz  $at, .L800292A0
/* 029D48 80029148 AFAB0158 */   sw    $t3, 0x158($sp)
/* 029D4C 8002914C 3C158012 */  lui   $s5, %hi(D_8011B0A8) # $s5, 0x8012
/* 029D50 80029150 3C148012 */  lui   $s4, %hi(D_8011B0A4) # $s4, 0x8012
/* 029D54 80029154 2694B0A4 */  addiu $s4, %lo(D_8011B0A4) # addiu $s4, $s4, -0x4f5c
/* 029D58 80029158 26B5B0A8 */  addiu $s5, %lo(D_8011B0A8) # addiu $s5, $s5, -0x4f58
/* 029D5C 8002915C 02402025 */  move  $a0, $s2
.L80029160:
/* 029D60 80029160 0C003A52 */  jal   get_object
/* 029D64 80029164 241000FF */   li    $s0, 255
/* 029D68 80029168 84430006 */  lh    $v1, 6($v0)
/* 029D6C 8002916C 8FAF0158 */  lw    $t7, 0x158($sp)
/* 029D70 80029170 306D0080 */  andi  $t5, $v1, 0x80
/* 029D74 80029174 11A00003 */  beqz  $t5, .L80029184
/* 029D78 80029178 00408825 */   move  $s1, $v0
/* 029D7C 8002917C 10000006 */  b     .L80029198
/* 029D80 80029180 00008025 */   move  $s0, $zero
.L80029184:
/* 029D84 80029184 306E8000 */  andi  $t6, $v1, 0x8000
/* 029D88 80029188 15C00004 */  bnez  $t6, .L8002919C
/* 029D8C 8002918C 006FC024 */   and   $t8, $v1, $t7
/* 029D90 80029190 90500039 */  lbu   $s0, 0x39($v0)
/* 029D94 80029194 00000000 */  nop   
.L80029198:
/* 029D98 80029198 006FC024 */  and   $t8, $v1, $t7
.L8002919C:
/* 029D9C 8002919C 13000002 */  beqz  $t8, .L800291A8
/* 029DA0 800291A0 240100FF */   li    $at, 255
/* 029DA4 800291A4 00008025 */  move  $s0, $zero
.L800291A8:
/* 029DA8 800291A8 10400039 */  beqz  $v0, .L80029290
/* 029DAC 800291AC 8FA3016C */   lw    $v1, 0x16c($sp)
/* 029DB0 800291B0 16010037 */  bne   $s0, $at, .L80029290
/* 029DB4 800291B4 8FA3016C */   lw    $v1, 0x16c($sp)
/* 029DB8 800291B8 0C00AA40 */  jal   func_8002A900
/* 029DBC 800291BC 02202025 */   move  $a0, $s1
/* 029DC0 800291C0 10400033 */  beqz  $v0, .L80029290
/* 029DC4 800291C4 8FA3016C */   lw    $v1, 0x16c($sp)
/* 029DC8 800291C8 8639002E */  lh    $t9, 0x2e($s1)
/* 029DCC 800291CC 3C01800E */  lui   $at, %hi(D_800E5EA0 + 4) # $at, 0x800e
/* 029DD0 800291D0 02D94021 */  addu  $t0, $s6, $t9
/* 029DD4 800291D4 910A0001 */  lbu   $t2, 1($t0)
/* 029DD8 800291D8 00000000 */  nop   
/* 029DDC 800291DC 15400009 */  bnez  $t2, .L80029204
/* 029DE0 800291E0 00000000 */   nop   
/* 029DE4 800291E4 C6260034 */  lwc1  $f6, 0x34($s1)
/* 029DE8 800291E8 C4255EA0 */  lwc1  $f5, %lo(D_800E5EA0)($at)
/* 029DEC 800291EC C4245EA4 */  lwc1  $f4, %lo(D_800E5EA0 + 4)($at)
/* 029DF0 800291F0 46003221 */  cvt.d.s $f8, $f6
/* 029DF4 800291F4 4628203C */  c.lt.d $f4, $f8
/* 029DF8 800291F8 00000000 */  nop   
/* 029DFC 800291FC 45000024 */  bc1f  .L80029290
/* 029E00 80029200 8FA3016C */   lw    $v1, 0x16c($sp)
.L80029204:
/* 029E04 80029204 86290006 */  lh    $t1, 6($s1)
/* 029E08 80029208 02602025 */  move  $a0, $s3
/* 029E0C 8002920C 312B8000 */  andi  $t3, $t1, 0x8000
/* 029E10 80029210 11600006 */  beqz  $t3, .L8002922C
/* 029E14 80029214 02802825 */   move  $a1, $s4
/* 029E18 80029218 02A03025 */  move  $a2, $s5
/* 029E1C 8002921C 0C004B57 */  jal   func_80012D5C
/* 029E20 80029220 02203825 */   move  $a3, $s1
/* 029E24 80029224 1000001A */  b     .L80029290
/* 029E28 80029228 8FA3016C */   lw    $v1, 0x16c($sp)
.L8002922C:
/* 029E2C 8002922C 8E250050 */  lw    $a1, 0x50($s1)
/* 029E30 80029230 00000000 */  nop   
/* 029E34 80029234 10A00004 */  beqz  $a1, .L80029248
/* 029E38 80029238 02602025 */   move  $a0, $s3
/* 029E3C 8002923C 0C00B4E1 */  jal   render_floor_decal
/* 029E40 80029240 02202025 */   move  $a0, $s1
/* 029E44 80029244 02602025 */  move  $a0, $s3
.L80029248:
/* 029E48 80029248 02802825 */  move  $a1, $s4
/* 029E4C 8002924C 02A03025 */  move  $a2, $s5
/* 029E50 80029250 0C004B57 */  jal   func_80012D5C
/* 029E54 80029254 02203825 */   move  $a3, $s1
/* 029E58 80029258 8E250058 */  lw    $a1, 0x58($s1)
/* 029E5C 8002925C 00000000 */  nop   
/* 029E60 80029260 10A0000B */  beqz  $a1, .L80029290
/* 029E64 80029264 8FA3016C */   lw    $v1, 0x16c($sp)
/* 029E68 80029268 8E2C0040 */  lw    $t4, 0x40($s1)
/* 029E6C 8002926C 00000000 */  nop   
/* 029E70 80029270 958D0030 */  lhu   $t5, 0x30($t4)
/* 029E74 80029274 00000000 */  nop   
/* 029E78 80029278 31AE0010 */  andi  $t6, $t5, 0x10
/* 029E7C 8002927C 11C00004 */  beqz  $t6, .L80029290
/* 029E80 80029280 8FA3016C */   lw    $v1, 0x16c($sp)
/* 029E84 80029284 0C00B59C */  jal   func_8002D670
/* 029E88 80029288 02202025 */   move  $a0, $s1
/* 029E8C 8002928C 8FA3016C */  lw    $v1, 0x16c($sp)
.L80029290:
/* 029E90 80029290 26520001 */  addiu $s2, $s2, 1
/* 029E94 80029294 0243082A */  slt   $at, $s2, $v1
/* 029E98 80029298 1420FFB1 */  bnez  $at, .L80029160
/* 029E9C 8002929C 02402025 */   move  $a0, $s2
.L800292A0:
/* 029EA0 800292A0 8FAF0160 */  lw    $t7, 0x160($sp)
/* 029EA4 800292A4 2472FFFF */  addiu $s2, $v1, -1
/* 029EA8 800292A8 3C148012 */  lui   $s4, %hi(D_8011B0A4) # $s4, 0x8012
/* 029EAC 800292AC 3C158012 */  lui   $s5, %hi(D_8011B0A8) # $s5, 0x8012
/* 029EB0 800292B0 024F082A */  slt   $at, $s2, $t7
/* 029EB4 800292B4 26B5B0A8 */  addiu $s5, %lo(D_8011B0A8) # addiu $s5, $s5, -0x4f58
/* 029EB8 800292B8 14200044 */  bnez  $at, .L800293CC
/* 029EBC 800292BC 2694B0A4 */   addiu $s4, %lo(D_8011B0A4) # addiu $s4, $s4, -0x4f5c
/* 029EC0 800292C0 25F8FFFF */  addiu $t8, $t7, -1
/* 029EC4 800292C4 AFB80044 */  sw    $t8, 0x44($sp)
.L800292C8:
/* 029EC8 800292C8 0C003A52 */  jal   get_object
/* 029ECC 800292CC 02402025 */   move  $a0, $s2
/* 029ED0 800292D0 84430006 */  lh    $v1, 6($v0)
/* 029ED4 800292D4 8FB90158 */  lw    $t9, 0x158($sp)
/* 029ED8 800292D8 00408825 */  move  $s1, $v0
/* 029EDC 800292DC 00794024 */  and   $t0, $v1, $t9
/* 029EE0 800292E0 11000003 */  beqz  $t0, .L800292F0
/* 029EE4 800292E4 24100001 */   li    $s0, 1
/* 029EE8 800292E8 10000001 */  b     .L800292F0
/* 029EEC 800292EC 00008025 */   move  $s0, $zero
.L800292F0:
/* 029EF0 800292F0 10400033 */  beqz  $v0, .L800293C0
/* 029EF4 800292F4 8FA80044 */   lw    $t0, 0x44($sp)
/* 029EF8 800292F8 12000030 */  beqz  $s0, .L800293BC
/* 029EFC 800292FC 306A0100 */   andi  $t2, $v1, 0x100
/* 029F00 80029300 1140002F */  beqz  $t2, .L800293C0
/* 029F04 80029304 8FA80044 */   lw    $t0, 0x44($sp)
/* 029F08 80029308 8449002E */  lh    $t1, 0x2e($v0)
/* 029F0C 8002930C 00000000 */  nop   
/* 029F10 80029310 02C95821 */  addu  $t3, $s6, $t1
/* 029F14 80029314 916C0001 */  lbu   $t4, 1($t3)
/* 029F18 80029318 00000000 */  nop   
/* 029F1C 8002931C 11800028 */  beqz  $t4, .L800293C0
/* 029F20 80029320 8FA80044 */   lw    $t0, 0x44($sp)
/* 029F24 80029324 0C00AA40 */  jal   func_8002A900
/* 029F28 80029328 02202025 */   move  $a0, $s1
/* 029F2C 8002932C 10400024 */  beqz  $v0, .L800293C0
/* 029F30 80029330 8FA80044 */   lw    $t0, 0x44($sp)
/* 029F34 80029334 862D0006 */  lh    $t5, 6($s1)
/* 029F38 80029338 02602025 */  move  $a0, $s3
/* 029F3C 8002933C 31AE8000 */  andi  $t6, $t5, 0x8000
/* 029F40 80029340 11C00006 */  beqz  $t6, .L8002935C
/* 029F44 80029344 02802825 */   move  $a1, $s4
/* 029F48 80029348 02A03025 */  move  $a2, $s5
/* 029F4C 8002934C 0C004B57 */  jal   func_80012D5C
/* 029F50 80029350 02203825 */   move  $a3, $s1
/* 029F54 80029354 1000001A */  b     .L800293C0
/* 029F58 80029358 8FA80044 */   lw    $t0, 0x44($sp)
.L8002935C:
/* 029F5C 8002935C 8E250050 */  lw    $a1, 0x50($s1)
/* 029F60 80029360 00000000 */  nop   
/* 029F64 80029364 10A00004 */  beqz  $a1, .L80029378
/* 029F68 80029368 02602025 */   move  $a0, $s3
/* 029F6C 8002936C 0C00B4E1 */  jal   render_floor_decal
/* 029F70 80029370 02202025 */   move  $a0, $s1
/* 029F74 80029374 02602025 */  move  $a0, $s3
.L80029378:
/* 029F78 80029378 02802825 */  move  $a1, $s4
/* 029F7C 8002937C 02A03025 */  move  $a2, $s5
/* 029F80 80029380 0C004B57 */  jal   func_80012D5C
/* 029F84 80029384 02203825 */   move  $a3, $s1
/* 029F88 80029388 8E250058 */  lw    $a1, 0x58($s1)
/* 029F8C 8002938C 00000000 */  nop   
/* 029F90 80029390 10A0000B */  beqz  $a1, .L800293C0
/* 029F94 80029394 8FA80044 */   lw    $t0, 0x44($sp)
/* 029F98 80029398 8E2F0040 */  lw    $t7, 0x40($s1)
/* 029F9C 8002939C 00000000 */  nop   
/* 029FA0 800293A0 95F80030 */  lhu   $t8, 0x30($t7)
/* 029FA4 800293A4 00000000 */  nop   
/* 029FA8 800293A8 33190010 */  andi  $t9, $t8, 0x10
/* 029FAC 800293AC 13200004 */  beqz  $t9, .L800293C0
/* 029FB0 800293B0 8FA80044 */   lw    $t0, 0x44($sp)
/* 029FB4 800293B4 0C00B59C */  jal   func_8002D670
/* 029FB8 800293B8 02202025 */   move  $a0, $s1
.L800293BC:
/* 029FBC 800293BC 8FA80044 */  lw    $t0, 0x44($sp)
.L800293C0:
/* 029FC0 800293C0 2652FFFF */  addiu $s2, $s2, -1
/* 029FC4 800293C4 1648FFC0 */  bne   $s2, $t0, .L800292C8
/* 029FC8 800293C8 00000000 */   nop   
.L800293CC:
/* 029FCC 800293CC 3C0A8012 */  lui   $t2, %hi(D_8011B0E0) # $t2, 0x8012
/* 029FD0 800293D0 814AB0E0 */  lb    $t2, %lo(D_8011B0E0)($t2)
/* 029FD4 800293D4 8FA20168 */  lw    $v0, 0x168($sp)
/* 029FD8 800293D8 1140000C */  beqz  $t2, .L8002940C
/* 029FDC 800293DC 2442FFFF */   addiu $v0, $v0, -1
/* 029FE0 800293E0 0440000A */  bltz  $v0, .L8002940C
/* 029FE4 800293E4 27A900D8 */   addiu $t1, $sp, 0xd8
/* 029FE8 800293E8 00498021 */  addu  $s0, $v0, $t1
/* 029FEC 800293EC 27B100D8 */  addiu $s1, $sp, 0xd8
.L800293F0:
/* 029FF0 800293F0 92040000 */  lbu   $a0, ($s0)
/* 029FF4 800293F4 0C00A596 */  jal   render_level_segment
/* 029FF8 800293F8 24050001 */   li    $a1, 1
/* 029FFC 800293FC 2610FFFF */  addiu $s0, $s0, -1
/* 02A000 80029400 0211082B */  sltu  $at, $s0, $s1
/* 02A004 80029404 1020FFFA */  beqz  $at, .L800293F0
/* 02A008 80029408 00000000 */   nop   
.L8002940C:
/* 02A00C 8002940C 3C0B8012 */  lui   $t3, %hi(D_8011D384) # $t3, 0x8012
/* 02A010 80029410 8D6BD384 */  lw    $t3, %lo(D_8011D384)($t3)
/* 02A014 80029414 00000000 */  nop   
/* 02A018 80029418 11600007 */  beqz  $t3, .L80029438
/* 02A01C 8002941C 00000000 */   nop   
/* 02A020 80029420 0C019888 */  jal   func_80066220
/* 02A024 80029424 00000000 */   nop   
/* 02A028 80029428 02602025 */  move  $a0, $s3
/* 02A02C 8002942C 02802825 */  move  $a1, $s4
/* 02A030 80029430 0C02EA39 */  jal   func_800BA8E4
/* 02A034 80029434 00403025 */   move  $a2, $v0
.L80029438:
/* 02A038 80029438 0C01ECF4 */  jal   func_8007B3D0
/* 02A03C 8002943C 02602025 */   move  $a0, $s3
/* 02A040 80029440 02602025 */  move  $a0, $s3
/* 02A044 80029444 00002825 */  move  $a1, $zero
/* 02A048 80029448 0C01ED32 */  jal   func_8007B4C8
/* 02A04C 8002944C 2406000A */   li    $a2, 10
/* 02A050 80029450 0C004B0F */  jal   func_80012C3C
/* 02A054 80029454 02602025 */   move  $a0, $s3
/* 02A058 80029458 8FA3016C */  lw    $v1, 0x16c($sp)
/* 02A05C 8002945C 8FAC0160 */  lw    $t4, 0x160($sp)
/* 02A060 80029460 2472FFFF */  addiu $s2, $v1, -1
/* 02A064 80029464 024C082A */  slt   $at, $s2, $t4
/* 02A068 80029468 14200060 */  bnez  $at, .L800295EC
/* 02A06C 8002946C 258DFFFF */   addiu $t5, $t4, -1
/* 02A070 80029470 AFAD0044 */  sw    $t5, 0x44($sp)
/* 02A074 80029474 02402025 */  move  $a0, $s2
.L80029478:
/* 02A078 80029478 0C003A52 */  jal   get_object
/* 02A07C 8002947C 241000FF */   li    $s0, 255
/* 02A080 80029480 84430006 */  lh    $v1, 6($v0)
/* 02A084 80029484 8FB80158 */  lw    $t8, 0x158($sp)
/* 02A088 80029488 306E0080 */  andi  $t6, $v1, 0x80
/* 02A08C 8002948C 11C00003 */  beqz  $t6, .L8002949C
/* 02A090 80029490 00408825 */   move  $s1, $v0
/* 02A094 80029494 10000006 */  b     .L800294B0
/* 02A098 80029498 24100001 */   li    $s0, 1
.L8002949C:
/* 02A09C 8002949C 306F8000 */  andi  $t7, $v1, 0x8000
/* 02A0A0 800294A0 15E00004 */  bnez  $t7, .L800294B4
/* 02A0A4 800294A4 0078C824 */   and   $t9, $v1, $t8
/* 02A0A8 800294A8 90500039 */  lbu   $s0, 0x39($v0)
/* 02A0AC 800294AC 00000000 */  nop   
.L800294B0:
/* 02A0B0 800294B0 0078C824 */  and   $t9, $v1, $t8
.L800294B4:
/* 02A0B4 800294B4 13200002 */  beqz  $t9, .L800294C0
/* 02A0B8 800294B8 00000000 */   nop   
/* 02A0BC 800294BC 00008025 */  move  $s0, $zero
.L800294C0:
/* 02A0C0 800294C0 84480048 */  lh    $t0, 0x48($v0)
/* 02A0C4 800294C4 24010001 */  li    $at, 1
/* 02A0C8 800294C8 15010004 */  bne   $t0, $at, .L800294DC
/* 02A0CC 800294CC 2A0100FF */   slti  $at, $s0, 0xff
/* 02A0D0 800294D0 14200002 */  bnez  $at, .L800294DC
/* 02A0D4 800294D4 00000000 */   nop   
/* 02A0D8 800294D8 00008025 */  move  $s0, $zero
.L800294DC:
/* 02A0DC 800294DC 1040003F */  beqz  $v0, .L800295DC
/* 02A0E0 800294E0 2A0100FF */   slti  $at, $s0, 0xff
/* 02A0E4 800294E4 1020003E */  beqz  $at, .L800295E0
/* 02A0E8 800294E8 8FA80044 */   lw    $t0, 0x44($sp)
/* 02A0EC 800294EC 844A002E */  lh    $t2, 0x2e($v0)
/* 02A0F0 800294F0 00000000 */  nop   
/* 02A0F4 800294F4 02CA4821 */  addu  $t1, $s6, $t2
/* 02A0F8 800294F8 912B0001 */  lbu   $t3, 1($t1)
/* 02A0FC 800294FC 00000000 */  nop   
/* 02A100 80029500 11600037 */  beqz  $t3, .L800295E0
/* 02A104 80029504 8FA80044 */   lw    $t0, 0x44($sp)
/* 02A108 80029508 0C00AA40 */  jal   func_8002A900
/* 02A10C 8002950C 02202025 */   move  $a0, $s1
/* 02A110 80029510 10400033 */  beqz  $v0, .L800295E0
/* 02A114 80029514 8FA80044 */   lw    $t0, 0x44($sp)
/* 02A118 80029518 1A000023 */  blez  $s0, .L800295A8
/* 02A11C 8002951C 00000000 */   nop   
/* 02A120 80029520 862C0006 */  lh    $t4, 6($s1)
/* 02A124 80029524 02602025 */  move  $a0, $s3
/* 02A128 80029528 318D8000 */  andi  $t5, $t4, 0x8000
/* 02A12C 8002952C 11A00006 */  beqz  $t5, .L80029548
/* 02A130 80029530 02802825 */   move  $a1, $s4
/* 02A134 80029534 02A03025 */  move  $a2, $s5
/* 02A138 80029538 0C004B57 */  jal   func_80012D5C
/* 02A13C 8002953C 02203825 */   move  $a3, $s1
/* 02A140 80029540 1000001A */  b     .L800295AC
/* 02A144 80029544 86390048 */   lh    $t9, 0x48($s1)
.L80029548:
/* 02A148 80029548 8E250050 */  lw    $a1, 0x50($s1)
/* 02A14C 8002954C 00000000 */  nop   
/* 02A150 80029550 10A00004 */  beqz  $a1, .L80029564
/* 02A154 80029554 02602025 */   move  $a0, $s3
/* 02A158 80029558 0C00B4E1 */  jal   render_floor_decal
/* 02A15C 8002955C 02202025 */   move  $a0, $s1
/* 02A160 80029560 02602025 */  move  $a0, $s3
.L80029564:
/* 02A164 80029564 02802825 */  move  $a1, $s4
/* 02A168 80029568 02A03025 */  move  $a2, $s5
/* 02A16C 8002956C 0C004B57 */  jal   func_80012D5C
/* 02A170 80029570 02203825 */   move  $a3, $s1
/* 02A174 80029574 8E250058 */  lw    $a1, 0x58($s1)
/* 02A178 80029578 00000000 */  nop   
/* 02A17C 8002957C 10A0000A */  beqz  $a1, .L800295A8
/* 02A180 80029580 00000000 */   nop   
/* 02A184 80029584 8E2E0040 */  lw    $t6, 0x40($s1)
/* 02A188 80029588 00000000 */  nop   
/* 02A18C 8002958C 95CF0030 */  lhu   $t7, 0x30($t6)
/* 02A190 80029590 00000000 */  nop   
/* 02A194 80029594 31F80010 */  andi  $t8, $t7, 0x10
/* 02A198 80029598 13000003 */  beqz  $t8, .L800295A8
/* 02A19C 8002959C 00000000 */   nop   
/* 02A1A0 800295A0 0C00B59C */  jal   func_8002D670
/* 02A1A4 800295A4 02202025 */   move  $a0, $s1
.L800295A8:
/* 02A1A8 800295A8 86390048 */  lh    $t9, 0x48($s1)
.L800295AC:
/* 02A1AC 800295AC 24010001 */  li    $at, 1
/* 02A1B0 800295B0 1721000A */  bne   $t9, $at, .L800295DC
/* 02A1B4 800295B4 02602025 */   move  $a0, $s3
/* 02A1B8 800295B8 02802825 */  move  $a1, $s4
/* 02A1BC 800295BC 02A03025 */  move  $a2, $s5
/* 02A1C0 800295C0 0C004E83 */  jal   func_80013A0C
/* 02A1C4 800295C4 02203825 */   move  $a3, $s1
/* 02A1C8 800295C8 02602025 */  move  $a0, $s3
/* 02A1CC 800295CC 02802825 */  move  $a1, $s4
/* 02A1D0 800295D0 02A03025 */  move  $a2, $s5
/* 02A1D4 800295D4 0C004F73 */  jal   func_80013DCC
/* 02A1D8 800295D8 02203825 */   move  $a3, $s1
.L800295DC:
/* 02A1DC 800295DC 8FA80044 */  lw    $t0, 0x44($sp)
.L800295E0:
/* 02A1E0 800295E0 2652FFFF */  addiu $s2, $s2, -1
/* 02A1E4 800295E4 1648FFA4 */  bne   $s2, $t0, .L80029478
/* 02A1E8 800295E8 02402025 */   move  $a0, $s2
.L800295EC:
/* 02A1EC 800295EC 3C0A800E */  lui   $t2, %hi(D_800DC924) # $t2, 0x800e
/* 02A1F0 800295F0 8D4AC924 */  lw    $t2, %lo(D_800DC924)($t2)
/* 02A1F4 800295F4 00000000 */  nop   
/* 02A1F8 800295F8 1140000C */  beqz  $t2, .L8002962C
/* 02A1FC 800295FC 8FBF003C */   lw    $ra, 0x3c($sp)
/* 02A200 80029600 0C009D5A */  jal   func_80027568
/* 02A204 80029604 00000000 */   nop   
/* 02A208 80029608 10400008 */  beqz  $v0, .L8002962C
/* 02A20C 8002960C 8FBF003C */   lw    $ra, 0x3c($sp)
/* 02A210 80029610 0C019888 */  jal   func_80066220
/* 02A214 80029614 00000000 */   nop   
/* 02A218 80029618 8FA50168 */  lw    $a1, 0x168($sp)
/* 02A21C 8002961C 27A400D8 */  addiu $a0, $sp, 0xd8
/* 02A220 80029620 0C009607 */  jal   func_8002581C
/* 02A224 80029624 00403025 */   move  $a2, $v0
/* 02A228 80029628 8FBF003C */  lw    $ra, 0x3c($sp)
.L8002962C:
/* 02A22C 8002962C 3C018012 */  lui   $at, %hi(D_8011B0FC) # $at, 0x8012
/* 02A230 80029630 8FB00020 */  lw    $s0, 0x20($sp)
/* 02A234 80029634 8FB10024 */  lw    $s1, 0x24($sp)
/* 02A238 80029638 8FB20028 */  lw    $s2, 0x28($sp)
/* 02A23C 8002963C 8FB3002C */  lw    $s3, 0x2c($sp)
/* 02A240 80029640 8FB40030 */  lw    $s4, 0x30($sp)
/* 02A244 80029644 8FB50034 */  lw    $s5, 0x34($sp)
/* 02A248 80029648 8FB60038 */  lw    $s6, 0x38($sp)
/* 02A24C 8002964C AC20B0FC */  sw    $zero, %lo(D_8011B0FC)($at)
/* 02A250 80029650 03E00008 */  jr    $ra
/* 02A254 80029654 27BD0170 */   addiu $sp, $sp, 0x170
