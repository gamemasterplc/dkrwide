glabel func_80022CFC
/* 0238FC 80022CFC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 023900 80022D00 44856000 */  mtc1  $a1, $f12
/* 023904 80022D04 44867000 */  mtc1  $a2, $f14
/* 023908 80022D08 E7B4001C */  swc1  $f20, 0x1c($sp)
/* 02390C 80022D0C 4487A000 */  mtc1  $a3, $f20
/* 023910 80022D10 AFBF0024 */  sw    $ra, 0x24($sp)
/* 023914 80022D14 AFB00020 */  sw    $s0, 0x20($sp)
/* 023918 80022D18 00808025 */  move  $s0, $a0
/* 02391C 80022D1C E7B50018 */  swc1  $f21, 0x18($sp)
/* 023920 80022D20 E7AC002C */  swc1  $f12, 0x2c($sp)
/* 023924 80022D24 0C01BAA4 */  jal   get_settings
/* 023928 80022D28 E7AE0030 */   swc1  $f14, 0x30($sp)
/* 02392C 80022D2C 3C088012 */  lui   $t0, %hi(objCount) # $t0, 0x8012
/* 023930 80022D30 8D08AE5C */  lw    $t0, %lo(objCount)($t0)
/* 023934 80022D34 C7AC002C */  lwc1  $f12, 0x2c($sp)
/* 023938 80022D38 C7AE0030 */  lwc1  $f14, 0x30($sp)
/* 02393C 80022D3C 19000030 */  blez  $t0, .L80022E00
/* 023940 80022D40 00003025 */   move  $a2, $zero
/* 023944 80022D44 3C014024 */  li    $at, 0x40240000 # 2.562500
/* 023948 80022D48 3C098012 */  lui   $t1, %hi(gObjPtrList) # $t1, 0x8012
/* 02394C 80022D4C 44810800 */  mtc1  $at, $f1
/* 023950 80022D50 44800000 */  mtc1  $zero, $f0
/* 023954 80022D54 2529AE58 */  addiu $t1, %lo(gObjPtrList) # addiu $t1, $t1, -0x51a8
/* 023958 80022D58 00003825 */  move  $a3, $zero
/* 02395C 80022D5C 240A004D */  li    $t2, 77
.L80022D60:
/* 023960 80022D60 8D2E0000 */  lw    $t6, ($t1)
/* 023964 80022D64 24C60001 */  addiu $a2, $a2, 1
/* 023968 80022D68 01C77821 */  addu  $t7, $t6, $a3
/* 02396C 80022D6C 8DE30000 */  lw    $v1, ($t7)
/* 023970 80022D70 00000000 */  nop   
/* 023974 80022D74 84780048 */  lh    $t8, 0x48($v1)
/* 023978 80022D78 00000000 */  nop   
/* 02397C 80022D7C 1558001E */  bne   $t2, $t8, .L80022DF8
/* 023980 80022D80 00C8082A */   slt   $at, $a2, $t0
/* 023984 80022D84 8C64003C */  lw    $a0, 0x3c($v1)
/* 023988 80022D88 00000000 */  nop   
/* 02398C 80022D8C 1080001A */  beqz  $a0, .L80022DF8
/* 023990 80022D90 00C8082A */   slt   $at, $a2, $t0
/* 023994 80022D94 8085000A */  lb    $a1, 0xa($a0)
/* 023998 80022D98 00000000 */  nop   
/* 02399C 80022D9C 18A00016 */  blez  $a1, .L80022DF8
/* 0239A0 80022DA0 00C8082A */   slt   $at, $a2, $t0
/* 0239A4 80022DA4 94440014 */  lhu   $a0, 0x14($v0)
/* 0239A8 80022DA8 24B90002 */  addiu $t9, $a1, 2
/* 0239AC 80022DAC 10800011 */  beqz  $a0, .L80022DF4
/* 0239B0 80022DB0 240B0001 */   li    $t3, 1
/* 0239B4 80022DB4 032B6004 */  sllv  $t4, $t3, $t9
/* 0239B8 80022DB8 008C6824 */  and   $t5, $a0, $t4
/* 0239BC 80022DBC 11A0000E */  beqz  $t5, .L80022DF8
/* 0239C0 80022DC0 00C8082A */   slt   $at, $a2, $t0
/* 0239C4 80022DC4 46007121 */  cvt.d.s $f4, $f14
/* 0239C8 80022DC8 46202180 */  add.d $f6, $f4, $f0
/* 0239CC 80022DCC E46C000C */  swc1  $f12, 0xc($v1)
/* 0239D0 80022DD0 46203220 */  cvt.s.d $f8, $f6
/* 0239D4 80022DD4 E4740014 */  swc1  $f20, 0x14($v1)
/* 0239D8 80022DD8 E4680010 */  swc1  $f8, 0x10($v1)
/* 0239DC 80022DDC A470002E */  sh    $s0, 0x2e($v1)
/* 0239E0 80022DE0 AC600078 */  sw    $zero, 0x78($v1)
/* 0239E4 80022DE4 A0600039 */  sb    $zero, 0x39($v1)
/* 0239E8 80022DE8 3C088012 */  lui   $t0, %hi(objCount) # $t0, 0x8012
/* 0239EC 80022DEC 8D08AE5C */  lw    $t0, %lo(objCount)($t0)
/* 0239F0 80022DF0 00000000 */  nop   
.L80022DF4:
/* 0239F4 80022DF4 00C8082A */  slt   $at, $a2, $t0
.L80022DF8:
/* 0239F8 80022DF8 1420FFD9 */  bnez  $at, .L80022D60
/* 0239FC 80022DFC 24E70004 */   addiu $a3, $a3, 4
.L80022E00:
/* 023A00 80022E00 8FBF0024 */  lw    $ra, 0x24($sp)
/* 023A04 80022E04 C7B50018 */  lwc1  $f21, 0x18($sp)
/* 023A08 80022E08 C7B4001C */  lwc1  $f20, 0x1c($sp)
/* 023A0C 80022E0C 8FB00020 */  lw    $s0, 0x20($sp)
/* 023A10 80022E10 03E00008 */  jr    $ra
/* 023A14 80022E14 27BD0028 */   addiu $sp, $sp, 0x28

