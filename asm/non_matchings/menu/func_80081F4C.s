glabel func_80081F4C
/* 082B4C 80081F4C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 082B50 80081F50 AFB20028 */  sw    $s2, 0x28($sp)
/* 082B54 80081F54 3C12800E */  lui   $s2, %hi(D_800DF794) # $s2, 0x800e
/* 082B58 80081F58 2652F794 */  addiu $s2, %lo(D_800DF794) # addiu $s2, $s2, -0x86c
/* 082B5C 80081F5C 8E470000 */  lw    $a3, ($s2)
/* 082B60 80081F60 AFB60038 */  sw    $s6, 0x38($sp)
/* 082B64 80081F64 E7B4001C */  swc1  $f20, 0x1c($sp)
/* 082B68 80081F68 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 082B6C 80081F6C 24160004 */  li    $s6, 4
/* 082B70 80081F70 AFB3002C */  sw    $s3, 0x2c($sp)
/* 082B74 80081F74 AFB10024 */  sw    $s1, 0x24($sp)
/* 082B78 80081F78 240E0001 */  li    $t6, 1
/* 082B7C 80081F7C 4481A000 */  mtc1  $at, $f20
/* 082B80 80081F80 00809825 */  move  $s3, $a0
/* 082B84 80081F84 AFBF003C */  sw    $ra, 0x3c($sp)
/* 082B88 80081F88 AFB50034 */  sw    $s5, 0x34($sp)
/* 082B8C 80081F8C AFB40030 */  sw    $s4, 0x30($sp)
/* 082B90 80081F90 AFB00020 */  sw    $s0, 0x20($sp)
/* 082B94 80081F94 E7B50018 */  swc1  $f21, 0x18($sp)
/* 082B98 80081F98 AFAE0040 */  sw    $t6, 0x40($sp)
/* 082B9C 80081F9C 12C70086 */  beq   $s6, $a3, .L800821B8
/* 082BA0 80081FA0 00008825 */   move  $s1, $zero
/* 082BA4 80081FA4 3C0F8012 */  lui   $t7, %hi(gIgnorePlayerInput) # $t7, 0x8012
/* 082BA8 80081FA8 8DEF63C4 */  lw    $t7, %lo(gIgnorePlayerInput)($t7)
/* 082BAC 80081FAC 3C18800E */  lui   $t8, %hi(gNumberOfActivePlayers) # $t8, 0x800e
/* 082BB0 80081FB0 15E0000F */  bnez  $t7, .L80081FF0
/* 082BB4 80081FB4 00000000 */   nop   
/* 082BB8 80081FB8 8F18F4BC */  lw    $t8, %lo(gNumberOfActivePlayers)($t8)
/* 082BBC 80081FBC 00008025 */  move  $s0, $zero
/* 082BC0 80081FC0 1B00000B */  blez  $t8, .L80081FF0
/* 082BC4 80081FC4 00000000 */   nop   
.L80081FC8:
/* 082BC8 80081FC8 0C01A955 */  jal   get_buttons_pressed_from_player
/* 082BCC 80081FCC 02002025 */   move  $a0, $s0
/* 082BD0 80081FD0 3C19800E */  lui   $t9, %hi(gNumberOfActivePlayers) # $t9, 0x800e
/* 082BD4 80081FD4 8F39F4BC */  lw    $t9, %lo(gNumberOfActivePlayers)($t9)
/* 082BD8 80081FD8 26100001 */  addiu $s0, $s0, 1
/* 082BDC 80081FDC 0219082A */  slt   $at, $s0, $t9
/* 082BE0 80081FE0 1420FFF9 */  bnez  $at, .L80081FC8
/* 082BE4 80081FE4 02228825 */   or    $s1, $s1, $v0
/* 082BE8 80081FE8 8E470000 */  lw    $a3, ($s2)
/* 082BEC 80081FEC 00000000 */  nop   
.L80081FF0:
/* 082BF0 80081FF0 3C108012 */  lui   $s0, %hi(D_80126854) # $s0, 0x8012
/* 082BF4 80081FF4 26106854 */  addiu $s0, %lo(D_80126854) # addiu $s0, $s0, 0x6854
/* 082BF8 80081FF8 8E080000 */  lw    $t0, ($s0)
/* 082BFC 80081FFC 3C158012 */  lui   $s5, %hi(D_80126860) # $s5, 0x8012
/* 082C00 80082000 01134821 */  addu  $t1, $t0, $s3
/* 082C04 80082004 AE090000 */  sw    $t1, ($s0)
/* 082C08 80082008 24130001 */  li    $s3, 1
/* 082C0C 8008200C 26B56860 */  addiu $s5, %lo(D_80126860) # addiu $s5, $s5, 0x6860
/* 082C10 80082010 24140002 */  li    $s4, 2
.L80082014:
/* 082C14 80082014 10E00007 */  beqz  $a3, .L80082034
/* 082C18 80082018 00E01025 */   move  $v0, $a3
/* 082C1C 8008201C 1053001D */  beq   $v0, $s3, .L80082094
/* 082C20 80082020 3C038012 */   lui   $v1, %hi(D_8012685C) # $v1, 0x8012
/* 082C24 80082024 10540044 */  beq   $v0, $s4, .L80082138
/* 082C28 80082028 32399000 */   andi  $t9, $s1, 0x9000
/* 082C2C 8008202C 10000054 */  b     .L80082180
/* 082C30 80082030 44809000 */   mtc1  $zero, $f18
.L80082034:
/* 082C34 80082034 322A9000 */  andi  $t2, $s1, 0x9000
/* 082C38 80082038 11400006 */  beqz  $t2, .L80082054
/* 082C3C 8008203C 3C038012 */   lui   $v1, %hi(D_80126858) # $v1, 0x8012
/* 082C40 80082040 AE000000 */  sw    $zero, ($s0)
/* 082C44 80082044 AE530000 */  sw    $s3, ($s2)
/* 082C48 80082048 00008825 */  move  $s1, $zero
/* 082C4C 8008204C 1000004B */  b     .L8008217C
/* 082C50 80082050 02603825 */   move  $a3, $s3
.L80082054:
/* 082C54 80082054 8E020000 */  lw    $v0, ($s0)
/* 082C58 80082058 8C636858 */  lw    $v1, %lo(D_80126858)($v1)
/* 082C5C 8008205C 00000000 */  nop   
/* 082C60 80082060 0043082A */  slt   $at, $v0, $v1
/* 082C64 80082064 14200005 */  bnez  $at, .L8008207C
/* 082C68 80082068 00435823 */   subu  $t3, $v0, $v1
/* 082C6C 8008206C AE0B0000 */  sw    $t3, ($s0)
/* 082C70 80082070 AE530000 */  sw    $s3, ($s2)
/* 082C74 80082074 10000041 */  b     .L8008217C
/* 082C78 80082078 02603825 */   move  $a3, $s3
.L8008207C:
/* 082C7C 8008207C 44822000 */  mtc1  $v0, $f4
/* 082C80 80082080 44834000 */  mtc1  $v1, $f8
/* 082C84 80082084 468021A0 */  cvt.s.w $f6, $f4
/* 082C88 80082088 468042A0 */  cvt.s.w $f10, $f8
/* 082C8C 8008208C 1000003B */  b     .L8008217C
/* 082C90 80082090 460A3503 */   div.s $f20, $f6, $f10
.L80082094:
/* 082C94 80082094 8C63685C */  lw    $v1, %lo(D_8012685C)($v1)
/* 082C98 80082098 32229000 */  andi  $v0, $s1, 0x9000
/* 082C9C 8008209C 04610002 */  bgez  $v1, .L800820A8
/* 082CA0 800820A0 00000000 */   nop   
/* 082CA4 800820A4 AE000000 */  sw    $zero, ($s0)
.L800820A8:
/* 082CA8 800820A8 1040000D */  beqz  $v0, .L800820E0
/* 082CAC 800820AC 00000000 */   nop   
/* 082CB0 800820B0 8EAD0000 */  lw    $t5, ($s5)
/* 082CB4 800820B4 AE000000 */  sw    $zero, ($s0)
/* 082CB8 800820B8 000D082A */  slt   $at, $zero, $t5
/* 082CBC 800820BC AE540000 */  sw    $s4, ($s2)
/* 082CC0 800820C0 10200004 */  beqz  $at, .L800820D4
/* 082CC4 800820C4 00008825 */   move  $s1, $zero
/* 082CC8 800820C8 24040016 */  li    $a0, 22
/* 082CCC 800820CC 0C000741 */  jal   func_80001D04
/* 082CD0 800820D0 00002825 */   move  $a1, $zero
.L800820D4:
/* 082CD4 800820D4 8E470000 */  lw    $a3, ($s2)
/* 082CD8 800820D8 10000029 */  b     .L80082180
/* 082CDC 800820DC 44809000 */   mtc1  $zero, $f18
.L800820E0:
/* 082CE0 800820E0 8E020000 */  lw    $v0, ($s0)
/* 082CE4 800820E4 00000000 */  nop   
/* 082CE8 800820E8 0043082A */  slt   $at, $v0, $v1
/* 082CEC 800820EC 1420000C */  bnez  $at, .L80082120
/* 082CF0 800820F0 00437023 */   subu  $t6, $v0, $v1
/* 082CF4 800820F4 8EB80000 */  lw    $t8, ($s5)
/* 082CF8 800820F8 AE0E0000 */  sw    $t6, ($s0)
/* 082CFC 800820FC 01D8082A */  slt   $at, $t6, $t8
/* 082D00 80082100 10200004 */  beqz  $at, .L80082114
/* 082D04 80082104 AE540000 */   sw    $s4, ($s2)
/* 082D08 80082108 24040016 */  li    $a0, 22
/* 082D0C 8008210C 0C000741 */  jal   func_80001D04
/* 082D10 80082110 00002825 */   move  $a1, $zero
.L80082114:
/* 082D14 80082114 8E470000 */  lw    $a3, ($s2)
/* 082D18 80082118 10000019 */  b     .L80082180
/* 082D1C 8008211C 44809000 */   mtc1  $zero, $f18
.L80082120:
/* 082D20 80082120 44828000 */  mtc1  $v0, $f16
/* 082D24 80082124 44832000 */  mtc1  $v1, $f4
/* 082D28 80082128 468084A0 */  cvt.s.w $f18, $f16
/* 082D2C 8008212C 46802220 */  cvt.s.w $f8, $f4
/* 082D30 80082130 10000012 */  b     .L8008217C
/* 082D34 80082134 46089503 */   div.s $f20, $f18, $f8
.L80082138:
/* 082D38 80082138 17200007 */  bnez  $t9, .L80082158
/* 082D3C 8008213C 00000000 */   nop   
/* 082D40 80082140 8E020000 */  lw    $v0, ($s0)
/* 082D44 80082144 8EA30000 */  lw    $v1, ($s5)
/* 082D48 80082148 00000000 */  nop   
/* 082D4C 8008214C 0043082A */  slt   $at, $v0, $v1
/* 082D50 80082150 14200004 */  bnez  $at, .L80082164
/* 082D54 80082154 00000000 */   nop   
.L80082158:
/* 082D58 80082158 AE560000 */  sw    $s6, ($s2)
/* 082D5C 8008215C 10000007 */  b     .L8008217C
/* 082D60 80082160 02C03825 */   move  $a3, $s6
.L80082164:
/* 082D64 80082164 44823000 */  mtc1  $v0, $f6
/* 082D68 80082168 44838000 */  mtc1  $v1, $f16
/* 082D6C 8008216C 468032A0 */  cvt.s.w $f10, $f6
/* 082D70 80082170 46808120 */  cvt.s.w $f4, $f16
/* 082D74 80082174 00000000 */  nop   
/* 082D78 80082178 46045503 */  div.s $f20, $f10, $f4
.L8008217C:
/* 082D7C 8008217C 44809000 */  mtc1  $zero, $f18
.L80082180:
/* 082D80 80082180 00000000 */  nop   
/* 082D84 80082184 4612A03C */  c.lt.s $f20, $f18
/* 082D88 80082188 00000000 */  nop   
/* 082D8C 8008218C 45000003 */  bc1f  .L8008219C
/* 082D90 80082190 00000000 */   nop   
/* 082D94 80082194 16C7FF9F */  bne   $s6, $a3, .L80082014
/* 082D98 80082198 00000000 */   nop   
.L8008219C:
/* 082D9C 8008219C 12C70006 */  beq   $s6, $a3, .L800821B8
/* 082DA0 800821A0 3C05800E */   lui   $a1, %hi(D_800DF798) # $a1, 0x800e
/* 082DA4 800821A4 8CA5F798 */  lw    $a1, %lo(D_800DF798)($a1)
/* 082DA8 800821A8 4406A000 */  mfc1  $a2, $f20
/* 082DAC 800821AC 0C02087B */  jal   draw_menu_elements
/* 082DB0 800821B0 00E02025 */   move  $a0, $a3
/* 082DB4 800821B4 AFA00040 */  sw    $zero, 0x40($sp)
.L800821B8:
/* 082DB8 800821B8 8FBF003C */  lw    $ra, 0x3c($sp)
/* 082DBC 800821BC 8FA20040 */  lw    $v0, 0x40($sp)
/* 082DC0 800821C0 C7B50018 */  lwc1  $f21, 0x18($sp)
/* 082DC4 800821C4 C7B4001C */  lwc1  $f20, 0x1c($sp)
/* 082DC8 800821C8 8FB00020 */  lw    $s0, 0x20($sp)
/* 082DCC 800821CC 8FB10024 */  lw    $s1, 0x24($sp)
/* 082DD0 800821D0 8FB20028 */  lw    $s2, 0x28($sp)
/* 082DD4 800821D4 8FB3002C */  lw    $s3, 0x2c($sp)
/* 082DD8 800821D8 8FB40030 */  lw    $s4, 0x30($sp)
/* 082DDC 800821DC 8FB50034 */  lw    $s5, 0x34($sp)
/* 082DE0 800821E0 8FB60038 */  lw    $s6, 0x38($sp)
/* 082DE4 800821E4 03E00008 */  jr    $ra
/* 082DE8 800821E8 27BD0048 */   addiu $sp, $sp, 0x48

