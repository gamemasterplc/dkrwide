glabel func_800090C0
/* 009CC0 800090C0 460E7482 */  mul.s $f18, $f14, $f14
/* 009CC4 800090C4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 009CC8 800090C8 E7AC0028 */  swc1  $f12, 0x28($sp)
/* 009CCC 800090CC C7B00028 */  lwc1  $f16, 0x28($sp)
/* 009CD0 800090D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 009CD4 800090D4 46108402 */  mul.s $f16, $f16, $f16
/* 009CD8 800090D8 AFA60030 */  sw    $a2, 0x30($sp)
/* 009CDC 800090DC E7AE002C */  swc1  $f14, 0x2c($sp)
/* 009CE0 800090E0 0C0326B4 */  jal   sqrtf
/* 009CE4 800090E4 46128300 */   add.s $f12, $f16, $f18
/* 009CE8 800090E8 C7AE002C */  lwc1  $f14, 0x2c($sp)
/* 009CEC 800090EC C7AC0028 */  lwc1  $f12, 0x28($sp)
/* 009CF0 800090F0 0C01C1D4 */  jal   func_80070750
/* 009CF4 800090F4 E7A0001C */   swc1  $f0, 0x1c($sp)
/* 009CF8 800090F8 8FA60030 */  lw    $a2, 0x30($sp)
/* 009CFC 800090FC 340EFFFF */  li    $t6, 65535
/* 009D00 80009100 01C21823 */  subu  $v1, $t6, $v0
/* 009D04 80009104 C7A2001C */  lwc1  $f2, 0x1c($sp)
/* 009D08 80009108 0066082A */  slt   $at, $v1, $a2
/* 009D0C 8000910C 1020002F */  beqz  $at, .L800091CC
/* 009D10 80009110 00602825 */   move  $a1, $v1
/* 009D14 80009114 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 009D18 80009118 44815000 */  mtc1  $at, $f10
/* 009D1C 8000911C 00C52023 */  subu  $a0, $a2, $a1
/* 009D20 80009120 460A103E */  c.le.s $f2, $f10
/* 009D24 80009124 00044C00 */  sll   $t1, $a0, 0x10
/* 009D28 80009128 4500001F */  bc1f  .L800091A8
/* 009D2C 8000912C 00000000 */   nop   
/* 009D30 80009130 00C32023 */  subu  $a0, $a2, $v1
/* 009D34 80009134 00047C00 */  sll   $t7, $a0, 0x10
/* 009D38 80009138 000F2403 */  sra   $a0, $t7, 0x10
/* 009D3C 8000913C 0C01C20C */  jal   func_80070830
/* 009D40 80009140 E7A2001C */   swc1  $f2, 0x1c($sp)
/* 009D44 80009144 C7A2001C */  lwc1  $f2, 0x1c($sp)
/* 009D48 80009148 04410003 */  bgez  $v0, .L80009158
/* 009D4C 8000914C 0002CA83 */   sra   $t9, $v0, 0xa
/* 009D50 80009150 244103FF */  addiu $at, $v0, 0x3ff
/* 009D54 80009154 0001CA83 */  sra   $t9, $at, 0xa
.L80009158:
/* 009D58 80009158 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 009D5C 8000915C 44812000 */  mtc1  $at, $f4
/* 009D60 80009160 44998000 */  mtc1  $t9, $f16
/* 009D64 80009164 46041182 */  mul.s $f6, $f2, $f4
/* 009D68 80009168 3C014280 */  li    $at, 0x42800000 # 64.000000
/* 009D6C 8000916C 44815000 */  mtc1  $at, $f10
/* 009D70 80009170 468084A0 */  cvt.s.w $f18, $f16
/* 009D74 80009174 46069202 */  mul.s $f8, $f18, $f6
/* 009D78 80009178 46085401 */  sub.s $f16, $f10, $f8
/* 009D7C 8000917C 4448F800 */  cfc1  $t0, $31
/* 009D80 80009180 00000000 */  nop   
/* 009D84 80009184 35010003 */  ori   $at, $t0, 3
/* 009D88 80009188 38210002 */  xori  $at, $at, 2
/* 009D8C 8000918C 44C1F800 */  ctc1  $at, $31
/* 009D90 80009190 00000000 */  nop   
/* 009D94 80009194 46008124 */  cvt.w.s $f4, $f16
/* 009D98 80009198 44032000 */  mfc1  $v1, $f4
/* 009D9C 8000919C 44C8F800 */  ctc1  $t0, $31
/* 009DA0 800091A0 10000036 */  b     .L8000927C
/* 009DA4 800091A4 00000000 */   nop   
.L800091A8:
/* 009DA8 800091A8 0C01C224 */  jal   func_80070890
/* 009DAC 800091AC 00092403 */   sra   $a0, $t1, 0x10
/* 009DB0 800091B0 04410003 */  bgez  $v0, .L800091C0
/* 009DB4 800091B4 00025A83 */   sra   $t3, $v0, 0xa
/* 009DB8 800091B8 244103FF */  addiu $at, $v0, 0x3ff
/* 009DBC 800091BC 00015A83 */  sra   $t3, $at, 0xa
.L800091C0:
/* 009DC0 800091C0 240C0040 */  li    $t4, 64
/* 009DC4 800091C4 1000002D */  b     .L8000927C
/* 009DC8 800091C8 018B1823 */   subu  $v1, $t4, $t3
.L800091CC:
/* 009DCC 800091CC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 009DD0 800091D0 44819000 */  mtc1  $at, $f18
/* 009DD4 800091D4 00A62023 */  subu  $a0, $a1, $a2
/* 009DD8 800091D8 4612103E */  c.le.s $f2, $f18
/* 009DDC 800091DC 0004CC00 */  sll   $t9, $a0, 0x10
/* 009DE0 800091E0 4500001F */  bc1f  .L80009260
/* 009DE4 800091E4 00000000 */   nop   
/* 009DE8 800091E8 00A62023 */  subu  $a0, $a1, $a2
/* 009DEC 800091EC 00046C00 */  sll   $t5, $a0, 0x10
/* 009DF0 800091F0 000D2403 */  sra   $a0, $t5, 0x10
/* 009DF4 800091F4 0C01C20C */  jal   func_80070830
/* 009DF8 800091F8 E7A2001C */   swc1  $f2, 0x1c($sp)
/* 009DFC 800091FC C7A2001C */  lwc1  $f2, 0x1c($sp)
/* 009E00 80009200 04410003 */  bgez  $v0, .L80009210
/* 009E04 80009204 00027A83 */   sra   $t7, $v0, 0xa
/* 009E08 80009208 244103FF */  addiu $at, $v0, 0x3ff
/* 009E0C 8000920C 00017A83 */  sra   $t7, $at, 0xa
.L80009210:
/* 009E10 80009210 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 009E14 80009214 44814000 */  mtc1  $at, $f8
/* 009E18 80009218 448F3000 */  mtc1  $t7, $f6
/* 009E1C 8000921C 46081402 */  mul.s $f16, $f2, $f8
/* 009E20 80009220 3C014280 */  li    $at, 0x42800000 # 64.000000
/* 009E24 80009224 44819000 */  mtc1  $at, $f18
/* 009E28 80009228 468032A0 */  cvt.s.w $f10, $f6
/* 009E2C 8000922C 46105102 */  mul.s $f4, $f10, $f16
/* 009E30 80009230 46122180 */  add.s $f6, $f4, $f18
/* 009E34 80009234 4458F800 */  cfc1  $t8, $31
/* 009E38 80009238 00000000 */  nop   
/* 009E3C 8000923C 37010003 */  ori   $at, $t8, 3
/* 009E40 80009240 38210002 */  xori  $at, $at, 2
/* 009E44 80009244 44C1F800 */  ctc1  $at, $31
/* 009E48 80009248 00000000 */  nop   
/* 009E4C 8000924C 46003224 */  cvt.w.s $f8, $f6
/* 009E50 80009250 44034000 */  mfc1  $v1, $f8
/* 009E54 80009254 44D8F800 */  ctc1  $t8, $31
/* 009E58 80009258 10000008 */  b     .L8000927C
/* 009E5C 8000925C 00000000 */   nop   
.L80009260:
/* 009E60 80009260 0C01C224 */  jal   func_80070890
/* 009E64 80009264 00192403 */   sra   $a0, $t9, 0x10
/* 009E68 80009268 04410003 */  bgez  $v0, .L80009278
/* 009E6C 8000926C 00021A83 */   sra   $v1, $v0, 0xa
/* 009E70 80009270 244103FF */  addiu $at, $v0, 0x3ff
/* 009E74 80009274 00011A83 */  sra   $v1, $at, 0xa
.L80009278:
/* 009E78 80009278 24630040 */  addiu $v1, $v1, 0x40
.L8000927C:
/* 009E7C 8000927C 0C0270C3 */  jal   get_filtered_cheats
/* 009E80 80009280 AFA30020 */   sw    $v1, 0x20($sp)
/* 009E84 80009284 8FA30020 */  lw    $v1, 0x20($sp)
/* 009E88 80009288 30490004 */  andi  $t1, $v0, 4
/* 009E8C 8000928C 11200002 */  beqz  $t1, .L80009298
/* 009E90 80009290 240A0080 */   li    $t2, 128
/* 009E94 80009294 01431823 */  subu  $v1, $t2, $v1
.L80009298:
/* 009E98 80009298 8FBF0014 */  lw    $ra, 0x14($sp)
/* 009E9C 8000929C 27BD0028 */  addiu $sp, $sp, 0x28
/* 009EA0 800092A0 03E00008 */  jr    $ra
/* 009EA4 800092A4 00601025 */   move  $v0, $v1
