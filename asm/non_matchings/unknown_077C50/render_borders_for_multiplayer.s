glabel render_borders_for_multiplayer
/* 077C50 80077050 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 077C54 80077054 AFBF001C */  sw    $ra, 0x1c($sp)
/* 077C58 80077058 AFB00018 */  sw    $s0, 0x18($sp)
/* 077C5C 8007705C 0C01E948 */  jal   get_video_width_and_height_as_s32
/* 077C60 80077060 00808025 */   move  $s0, $a0
/* 077C64 80077064 3045FFFF */  andi  $a1, $v0, 0xffff
/* 077C68 80077068 00057202 */  srl   $t6, $a1, 8
/* 077C6C 8007706C AFAE0028 */  sw    $t6, 0x28($sp)
/* 077C70 80077070 8E030000 */  lw    $v1, ($s0)
/* 077C74 80077074 3C18BA00 */  lui   $t8, (0xBA001402 >> 16) # lui $t8, 0xba00
/* 077C78 80077078 246F0008 */  addiu $t7, $v1, 8
/* 077C7C 8007707C AE0F0000 */  sw    $t7, ($s0)
/* 077C80 80077080 37181402 */  ori   $t8, (0xBA001402 & 0xFFFF) # ori $t8, $t8, 0x1402
/* 077C84 80077084 3C190030 */  lui   $t9, 0x30
/* 077C88 80077088 AC790004 */  sw    $t9, 4($v1)
/* 077C8C 8007708C AC780000 */  sw    $t8, ($v1)
/* 077C90 80077090 8E030000 */  lw    $v1, ($s0)
/* 077C94 80077094 3C0D0001 */  lui   $t5, (0x00010001 >> 16) # lui $t5, 1
/* 077C98 80077098 246B0008 */  addiu $t3, $v1, 8
/* 077C9C 8007709C AE0B0000 */  sw    $t3, ($s0)
/* 077CA0 800770A0 35AD0001 */  ori   $t5, (0x00010001 & 0xFFFF) # ori $t5, $t5, 1
/* 077CA4 800770A4 3C0CF700 */  lui   $t4, 0xf700
/* 077CA8 800770A8 00022402 */  srl   $a0, $v0, 0x10
/* 077CAC 800770AC AC6C0000 */  sw    $t4, ($v1)
/* 077CB0 800770B0 AC6D0004 */  sw    $t5, 4($v1)
/* 077CB4 800770B4 000451C2 */  srl   $t2, $a0, 7
/* 077CB8 800770B8 AFAA0024 */  sw    $t2, 0x24($sp)
/* 077CBC 800770BC AFA50038 */  sw    $a1, 0x38($sp)
/* 077CC0 800770C0 0C019884 */  jal   get_viewport_count
/* 077CC4 800770C4 AFA40034 */   sw    $a0, 0x34($sp)
/* 077CC8 800770C8 8FA80034 */  lw    $t0, 0x34($sp)
/* 077CCC 800770CC 8FA90038 */  lw    $t1, 0x38($sp)
/* 077CD0 800770D0 8FAA0024 */  lw    $t2, 0x24($sp)
/* 077CD4 800770D4 24010001 */  li    $at, 1
/* 077CD8 800770D8 10410008 */  beq   $v0, $at, .L800770FC
/* 077CDC 800770DC 00087842 */   srl   $t7, $t0, 1
/* 077CE0 800770E0 24010002 */  li    $at, 2
/* 077CE4 800770E4 10410016 */  beq   $v0, $at, .L80077140
/* 077CE8 800770E8 24010003 */   li    $at, 3
/* 077CEC 800770EC 10410038 */  beq   $v0, $at, .L800771D0
/* 077CF0 800770F0 00000000 */   nop   
/* 077CF4 800770F4 10000059 */  b     .L8007725C
/* 077CF8 800770F8 8FBF001C */   lw    $ra, 0x1c($sp)
.L800770FC:
/* 077CFC 800770FC 8E030000 */  lw    $v1, ($s0)
/* 077D00 80077100 01EA1023 */  subu  $v0, $t7, $t2
/* 077D04 80077104 313803FF */  andi  $t8, $t1, 0x3ff
/* 077D08 80077108 0018CB80 */  sll   $t9, $t8, 0xe
/* 077D0C 8007710C 004A6021 */  addu  $t4, $v0, $t2
/* 077D10 80077110 3C01F600 */  lui   $at, 0xf600
/* 077D14 80077114 246E0008 */  addiu $t6, $v1, 8
/* 077D18 80077118 AE0E0000 */  sw    $t6, ($s0)
/* 077D1C 8007711C 03215825 */  or    $t3, $t9, $at
/* 077D20 80077120 318D03FF */  andi  $t5, $t4, 0x3ff
/* 077D24 80077124 000D7080 */  sll   $t6, $t5, 2
/* 077D28 80077128 305803FF */  andi  $t8, $v0, 0x3ff
/* 077D2C 8007712C 0018C880 */  sll   $t9, $t8, 2
/* 077D30 80077130 016E7825 */  or    $t7, $t3, $t6
/* 077D34 80077134 AC6F0000 */  sw    $t7, ($v1)
/* 077D38 80077138 10000047 */  b     .L80077258
/* 077D3C 8007713C AC790004 */   sw    $t9, 4($v1)
.L80077140:
/* 077D40 80077140 AFA80034 */  sw    $t0, 0x34($sp)
/* 077D44 80077144 AFA90038 */  sw    $t1, 0x38($sp)
/* 077D48 80077148 0C01AF6C */  jal   get_current_level_header
/* 077D4C 8007714C AFAA0024 */   sw    $t2, 0x24($sp)
/* 077D50 80077150 0C02A116 */  jal   func_800A8458
/* 077D54 80077154 AFA20020 */   sw    $v0, 0x20($sp)
/* 077D58 80077158 8FA90038 */  lw    $t1, 0x38($sp)
/* 077D5C 8007715C 8FA80034 */  lw    $t0, 0x34($sp)
/* 077D60 80077160 8FAA0024 */  lw    $t2, 0x24($sp)
/* 077D64 80077164 14400008 */  bnez  $v0, .L80077188
/* 077D68 80077168 312F03FF */   andi  $t7, $t1, 0x3ff
/* 077D6C 8007716C 8FAC0020 */  lw    $t4, 0x20($sp)
/* 077D70 80077170 00000000 */  nop   
/* 077D74 80077174 818D004C */  lb    $t5, 0x4c($t4)
/* 077D78 80077178 00000000 */  nop   
/* 077D7C 8007717C 31AB0040 */  andi  $t3, $t5, 0x40
/* 077D80 80077180 11600013 */  beqz  $t3, .L800771D0
/* 077D84 80077184 00000000 */   nop   
.L80077188:
/* 077D88 80077188 8E030000 */  lw    $v1, ($s0)
/* 077D8C 8007718C 000FC380 */  sll   $t8, $t7, 0xe
/* 077D90 80077190 3C01F600 */  lui   $at, 0xf600
/* 077D94 80077194 310C03FF */  andi  $t4, $t0, 0x3ff
/* 077D98 80077198 000C6880 */  sll   $t5, $t4, 2
/* 077D9C 8007719C 0301C825 */  or    $t9, $t8, $at
/* 077DA0 800771A0 246E0008 */  addiu $t6, $v1, 8
/* 077DA4 800771A4 AE0E0000 */  sw    $t6, ($s0)
/* 077DA8 800771A8 032D5825 */  or    $t3, $t9, $t5
/* 077DAC 800771AC 00097042 */  srl   $t6, $t1, 1
/* 077DB0 800771B0 00086042 */  srl   $t4, $t0, 1
/* 077DB4 800771B4 319903FF */  andi  $t9, $t4, 0x3ff
/* 077DB8 800771B8 31CF03FF */  andi  $t7, $t6, 0x3ff
/* 077DBC 800771BC 000FC380 */  sll   $t8, $t7, 0xe
/* 077DC0 800771C0 00196880 */  sll   $t5, $t9, 2
/* 077DC4 800771C4 AC6B0000 */  sw    $t3, ($v1)
/* 077DC8 800771C8 030D5825 */  or    $t3, $t8, $t5
/* 077DCC 800771CC AC6B0004 */  sw    $t3, 4($v1)
.L800771D0:
/* 077DD0 800771D0 8E030000 */  lw    $v1, ($s0)
/* 077DD4 800771D4 00087842 */  srl   $t7, $t0, 1
/* 077DD8 800771D8 01EA1023 */  subu  $v0, $t7, $t2
/* 077DDC 800771DC 312C03FF */  andi  $t4, $t1, 0x3ff
/* 077DE0 800771E0 8FA70028 */  lw    $a3, 0x28($sp)
/* 077DE4 800771E4 000CCB80 */  sll   $t9, $t4, 0xe
/* 077DE8 800771E8 004A6821 */  addu  $t5, $v0, $t2
/* 077DEC 800771EC 3C01F600 */  lui   $at, 0xf600
/* 077DF0 800771F0 246E0008 */  addiu $t6, $v1, 8
/* 077DF4 800771F4 AE0E0000 */  sw    $t6, ($s0)
/* 077DF8 800771F8 0321C025 */  or    $t8, $t9, $at
/* 077DFC 800771FC 31AB03FF */  andi  $t3, $t5, 0x3ff
/* 077E00 80077200 000B7080 */  sll   $t6, $t3, 2
/* 077E04 80077204 304C03FF */  andi  $t4, $v0, 0x3ff
/* 077E08 80077208 000CC880 */  sll   $t9, $t4, 2
/* 077E0C 8007720C 030E7825 */  or    $t7, $t8, $t6
/* 077E10 80077210 00095842 */  srl   $t3, $t1, 1
/* 077E14 80077214 AC6F0000 */  sw    $t7, ($v1)
/* 077E18 80077218 AC790004 */  sw    $t9, 4($v1)
/* 077E1C 8007721C 8E030000 */  lw    $v1, ($s0)
/* 077E20 80077220 01672823 */  subu  $a1, $t3, $a3
/* 077E24 80077224 00A7C021 */  addu  $t8, $a1, $a3
/* 077E28 80077228 330E03FF */  andi  $t6, $t8, 0x3ff
/* 077E2C 8007722C 246D0008 */  addiu $t5, $v1, 8
/* 077E30 80077230 AE0D0000 */  sw    $t5, ($s0)
/* 077E34 80077234 000E7B80 */  sll   $t7, $t6, 0xe
/* 077E38 80077238 311903FF */  andi  $t9, $t0, 0x3ff
/* 077E3C 8007723C 00196880 */  sll   $t5, $t9, 2
/* 077E40 80077240 01E16025 */  or    $t4, $t7, $at
/* 077E44 80077244 30B803FF */  andi  $t8, $a1, 0x3ff
/* 077E48 80077248 00187380 */  sll   $t6, $t8, 0xe
/* 077E4C 8007724C 018D5825 */  or    $t3, $t4, $t5
/* 077E50 80077250 AC6B0000 */  sw    $t3, ($v1)
/* 077E54 80077254 AC6E0004 */  sw    $t6, 4($v1)
.L80077258:
/* 077E58 80077258 8FBF001C */  lw    $ra, 0x1c($sp)
.L8007725C:
/* 077E5C 8007725C 8FB00018 */  lw    $s0, 0x18($sp)
/* 077E60 80077260 03E00008 */  jr    $ra
/* 077E64 80077264 27BD0040 */   addiu $sp, $sp, 0x40

