.late_rodata
glabel D_800E796C
.float 468750.0

.text
glabel __scHandleRSP
/* 07A744 80079B44 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 07A748 80079B48 AFBF001C */  sw    $ra, 0x1c($sp)
/* 07A74C 80079B4C AFB00018 */  sw    $s0, 0x18($sp)
/* 07A750 80079B50 AFA00030 */  sw    $zero, 0x30($sp)
/* 07A754 80079B54 AFA0002C */  sw    $zero, 0x2c($sp)
/* 07A758 80079B58 8C850274 */  lw    $a1, 0x274($a0)
/* 07A75C 80079B5C AC800274 */  sw    $zero, 0x274($a0)
/* 07A760 80079B60 8CAE0010 */  lw    $t6, 0x10($a1)
/* 07A764 80079B64 24010002 */  li    $at, 2
/* 07A768 80079B68 15C10039 */  bne   $t6, $at, .L80079C50
/* 07A76C 80079B6C 00808025 */   move  $s0, $a0
/* 07A770 80079B70 0C031E34 */  jal   osGetCount
/* 07A774 80079B74 AFA50034 */   sw    $a1, 0x34($sp)
/* 07A778 80079B78 3C038012 */  lui   $v1, %hi(gRSPAudTaskCount) # $v1, 0x8012
/* 07A77C 80079B7C 24636124 */  addiu $v1, %lo(gRSPAudTaskCount) # addiu $v1, $v1, 0x6124
/* 07A780 80079B80 AC620000 */  sw    $v0, ($v1)
/* 07A784 80079B84 3C188012 */  lui   $t8, %hi(D_80126120) # $t8, 0x8012
/* 07A788 80079B88 8F186120 */  lw    $t8, %lo(D_80126120)($t8)
/* 07A78C 80079B8C 3C04800E */  lui   $a0, %hi(D_800DE74C) # $a0, 0x800e
/* 07A790 80079B90 0058C823 */  subu  $t9, $v0, $t8
/* 07A794 80079B94 44992000 */  mtc1  $t9, $f4
/* 07A798 80079B98 8FA50034 */  lw    $a1, 0x34($sp)
/* 07A79C 80079B9C 3C06800E */  lui   $a2, %hi(D_800DE744) # $a2, 0x800e
/* 07A7A0 80079BA0 3C07800E */  lui   $a3, %hi(D_800DE740) # $a3, 0x800e
/* 07A7A4 80079BA4 24E7E740 */  addiu $a3, %lo(D_800DE740) # addiu $a3, $a3, -0x18c0
/* 07A7A8 80079BA8 24C6E744 */  addiu $a2, %lo(D_800DE744) # addiu $a2, $a2, -0x18bc
/* 07A7AC 80079BAC 2484E74C */  addiu $a0, %lo(D_800DE74C) # addiu $a0, $a0, -0x18b4
/* 07A7B0 80079BB0 07210005 */  bgez  $t9, .L80079BC8
/* 07A7B4 80079BB4 468021A0 */   cvt.s.w $f6, $f4
/* 07A7B8 80079BB8 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 07A7BC 80079BBC 44814000 */  mtc1  $at, $f8
/* 07A7C0 80079BC0 00000000 */  nop   
/* 07A7C4 80079BC4 46083180 */  add.s $f6, $f6, $f8
.L80079BC8:
/* 07A7C8 80079BC8 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 07A7CC 80079BCC 44815000 */  mtc1  $at, $f10
/* 07A7D0 80079BD0 3C01800E */  lui   $at, %hi(D_800E796C) # $at, 0x800e
/* 07A7D4 80079BD4 460A3402 */  mul.s $f16, $f6, $f10
/* 07A7D8 80079BD8 C432796C */  lwc1  $f18, %lo(D_800E796C)($at)
/* 07A7DC 80079BDC C4EA0000 */  lwc1  $f10, ($a3)
/* 07A7E0 80079BE0 C4C80000 */  lwc1  $f8, ($a2)
/* 07A7E4 80079BE4 46128103 */  div.s $f4, $f16, $f18
/* 07A7E8 80079BE8 3C02800E */  lui   $v0, %hi(gRetraceCounter32) # $v0, 0x800e
/* 07A7EC 80079BEC E4840000 */  swc1  $f4, ($a0)
/* 07A7F0 80079BF0 C4800000 */  lwc1  $f0, ($a0)
/* 07A7F4 80079BF4 00000000 */  nop   
/* 07A7F8 80079BF8 4600503C */  c.lt.s $f10, $f0
/* 07A7FC 80079BFC 46004180 */  add.s $f6, $f8, $f0
/* 07A800 80079C00 45000002 */  bc1f  .L80079C0C
/* 07A804 80079C04 E4C60000 */   swc1  $f6, ($a2)
/* 07A808 80079C08 E4E00000 */  swc1  $f0, ($a3)
.L80079C0C:
/* 07A80C 80079C0C 8C42E750 */  lw    $v0, %lo(gRetraceCounter32)($v0)
/* 07A810 80079C10 240103E8 */  li    $at, 1000
/* 07A814 80079C14 0041001A */  div   $zero, $v0, $at
/* 07A818 80079C18 24010001 */  li    $at, 1
/* 07A81C 80079C1C 00004010 */  mfhi  $t0
/* 07A820 80079C20 11010002 */  beq   $t0, $at, .L80079C2C
/* 07A824 80079C24 24010002 */   li    $at, 2
/* 07A828 80079C28 15010009 */  bne   $t0, $at, .L80079C50
.L80079C2C:
/* 07A82C 80079C2C 3C0143FA */   li    $at, 0x43FA0000 # 500.000000
/* 07A830 80079C30 44819000 */  mtc1  $at, $f18
/* 07A834 80079C34 C4D00000 */  lwc1  $f16, ($a2)
/* 07A838 80079C38 44800000 */  mtc1  $zero, $f0
/* 07A83C 80079C3C 46128103 */  div.s $f4, $f16, $f18
/* 07A840 80079C40 3C01800E */  lui   $at, %hi(D_800DE748) # $at, 0x800e
/* 07A844 80079C44 E424E748 */  swc1  $f4, %lo(D_800DE748)($at)
/* 07A848 80079C48 E4C00000 */  swc1  $f0, ($a2)
/* 07A84C 80079C4C E4E00000 */  swc1  $f0, ($a3)
.L80079C50:
/* 07A850 80079C50 8CA20004 */  lw    $v0, 4($a1)
/* 07A854 80079C54 2401FFFD */  li    $at, -3
/* 07A858 80079C58 30490010 */  andi  $t1, $v0, 0x10
/* 07A85C 80079C5C 11200026 */  beqz  $t1, .L80079CF8
/* 07A860 80079C60 00415024 */   and   $t2, $v0, $at
/* 07A864 80079C64 24A40010 */  addiu $a0, $a1, 0x10
/* 07A868 80079C68 0C03477C */  jal   osSpTaskYielded
/* 07A86C 80079C6C AFA50034 */   sw    $a1, 0x34($sp)
/* 07A870 80079C70 8FA50034 */  lw    $a1, 0x34($sp)
/* 07A874 80079C74 10400015 */  beqz  $v0, .L80079CCC
/* 07A878 80079C78 2401FFFD */   li    $at, -3
/* 07A87C 80079C7C 8CAA0004 */  lw    $t2, 4($a1)
/* 07A880 80079C80 8CAC0008 */  lw    $t4, 8($a1)
/* 07A884 80079C84 24010003 */  li    $at, 3
/* 07A888 80079C88 354B0020 */  ori   $t3, $t2, 0x20
/* 07A88C 80079C8C 318D0007 */  andi  $t5, $t4, 7
/* 07A890 80079C90 15A10009 */  bne   $t5, $at, .L80079CB8
/* 07A894 80079C94 ACAB0004 */   sw    $t3, 4($a1)
/* 07A898 80079C98 8E0E0268 */  lw    $t6, 0x268($s0)
/* 07A89C 80079C9C 00000000 */  nop   
/* 07A8A0 80079CA0 ACAE0000 */  sw    $t6, ($a1)
/* 07A8A4 80079CA4 8E0F0270 */  lw    $t7, 0x270($s0)
/* 07A8A8 80079CA8 AE050268 */  sw    $a1, 0x268($s0)
/* 07A8AC 80079CAC 15E00002 */  bnez  $t7, .L80079CB8
/* 07A8B0 80079CB0 00000000 */   nop   
/* 07A8B4 80079CB4 AE050270 */  sw    $a1, 0x270($s0)
.L80079CB8:
/* 07A8B8 80079CB8 8CA20008 */  lw    $v0, 8($a1)
/* 07A8BC 80079CBC 00000000 */  nop   
/* 07A8C0 80079CC0 30580007 */  andi  $t8, $v0, 7
/* 07A8C4 80079CC4 10000007 */  b     .L80079CE4
/* 07A8C8 80079CC8 03001025 */   move  $v0, $t8
.L80079CCC:
/* 07A8CC 80079CCC 8CB90004 */  lw    $t9, 4($a1)
/* 07A8D0 80079CD0 8CA20008 */  lw    $v0, 8($a1)
/* 07A8D4 80079CD4 03214024 */  and   $t0, $t9, $at
/* 07A8D8 80079CD8 30490007 */  andi  $t1, $v0, 7
/* 07A8DC 80079CDC ACA80004 */  sw    $t0, 4($a1)
/* 07A8E0 80079CE0 01201025 */  move  $v0, $t1
.L80079CE4:
/* 07A8E4 80079CE4 24010003 */  li    $at, 3
/* 07A8E8 80079CE8 10410006 */  beq   $v0, $at, .L80079D04
/* 07A8EC 80079CEC 00000000 */   nop   
/* 07A8F0 80079CF0 10000005 */  b     .L80079D08
/* 07A8F4 80079CF4 8E0B0274 */   lw    $t3, 0x274($s0)
.L80079CF8:
/* 07A8F8 80079CF8 ACAA0004 */  sw    $t2, 4($a1)
/* 07A8FC 80079CFC 0C01E790 */  jal   __scTaskComplete
/* 07A900 80079D00 02002025 */   move  $a0, $s0
.L80079D04:
/* 07A904 80079D04 8E0B0274 */  lw    $t3, 0x274($s0)
.L80079D08:
/* 07A908 80079D08 8E0E0278 */  lw    $t6, 0x278($s0)
/* 07A90C 80079D0C 2D6C0001 */  sltiu $t4, $t3, 1
/* 07A910 80079D10 000C6840 */  sll   $t5, $t4, 1
/* 07A914 80079D14 2DCF0001 */  sltiu $t7, $t6, 1
/* 07A918 80079D18 01AF3825 */  or    $a3, $t5, $t7
/* 07A91C 80079D1C AFA70028 */  sw    $a3, 0x28($sp)
/* 07A920 80079D20 02002025 */  move  $a0, $s0
/* 07A924 80079D24 27A50030 */  addiu $a1, $sp, 0x30
/* 07A928 80079D28 0C01E835 */  jal   __scSchedule
/* 07A92C 80079D2C 27A6002C */   addiu $a2, $sp, 0x2c
/* 07A930 80079D30 8FA70028 */  lw    $a3, 0x28($sp)
/* 07A934 80079D34 8FA50030 */  lw    $a1, 0x30($sp)
/* 07A938 80079D38 10470005 */  beq   $v0, $a3, .L80079D50
/* 07A93C 80079D3C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 07A940 80079D40 8FA6002C */  lw    $a2, 0x2c($sp)
/* 07A944 80079D44 0C01E7EA */  jal   __scExec
/* 07A948 80079D48 02002025 */   move  $a0, $s0
/* 07A94C 80079D4C 8FBF001C */  lw    $ra, 0x1c($sp)
.L80079D50:
/* 07A950 80079D50 8FB00018 */  lw    $s0, 0x18($sp)
/* 07A954 80079D54 03E00008 */  jr    $ra
/* 07A958 80079D58 27BD0038 */   addiu $sp, $sp, 0x38
