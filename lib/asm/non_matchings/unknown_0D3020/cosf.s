glabel cosf
/* 0D56B0 800D4AB0 E7AC0000 */  swc1  $f12, ($sp)
/* 0D56B4 800D4AB4 8FA20000 */  lw    $v0, ($sp)
/* 0D56B8 800D4AB8 C7A60000 */  lwc1  $f6, ($sp)
/* 0D56BC 800D4ABC C7AA0000 */  lwc1  $f10, ($sp)
/* 0D56C0 800D4AC0 00027583 */  sra   $t6, $v0, 0x16
/* 0D56C4 800D4AC4 31CF01FF */  andi  $t7, $t6, 0x1ff
/* 0D56C8 800D4AC8 29E10136 */  slti  $at, $t7, 0x136
/* 0D56CC 800D4ACC 50200049 */  beql  $at, $zero, .L800D4BF4
/* 0D56D0 800D4AD0 460A5032 */   c.eq.s $f10, $f10
/* 0D56D4 800D4AD4 44802000 */  mtc1  $zero, $f4
/* 0D56D8 800D4AD8 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 0D56DC 800D4ADC 44819800 */  mtc1  $at, $f19
/* 0D56E0 800D4AE0 4606203C */  c.lt.s $f4, $f6
/* 0D56E4 800D4AE4 C7A00000 */  lwc1  $f0, ($sp)
/* 0D56E8 800D4AE8 3C01800F */  lui   $at, %hi(rpi_cosf) # $at, 0x800f
/* 0D56EC 800D4AEC 45020004 */  bc1fl .L800D4B00
/* 0D56F0 800D4AF0 46000007 */   neg.s $f0, $f0
/* 0D56F4 800D4AF4 10000002 */  b     .L800D4B00
/* 0D56F8 800D4AF8 46003006 */   mov.s $f0, $f6
/* 0D56FC 800D4AFC 46000007 */  neg.s $f0, $f0
.L800D4B00:
/* 0D5700 800D4B00 D42897E8 */  ldc1  $f8, %lo(rpi_cosf)($at)
/* 0D5704 800D4B04 46000321 */  cvt.d.s $f12, $f0
/* 0D5708 800D4B08 44809000 */  mtc1  $zero, $f18
/* 0D570C 800D4B0C 46286282 */  mul.d $f10, $f12, $f8
/* 0D5710 800D4B10 44802800 */  mtc1  $zero, $f5
/* 0D5714 800D4B14 44802000 */  mtc1  $zero, $f4
/* 0D5718 800D4B18 46325380 */  add.d $f14, $f10, $f18
/* 0D571C 800D4B1C 462E203E */  c.le.d $f4, $f14
/* 0D5720 800D4B20 00000000 */  nop   
/* 0D5724 800D4B24 45020007 */  bc1fl .L800D4B44
/* 0D5728 800D4B28 46327281 */   sub.d $f10, $f14, $f18
/* 0D572C 800D4B2C 46327180 */  add.d $f6, $f14, $f18
/* 0D5730 800D4B30 4620320D */  trunc.w.d $f8, $f6
/* 0D5734 800D4B34 44024000 */  mfc1  $v0, $f8
/* 0D5738 800D4B38 10000006 */  b     .L800D4B54
/* 0D573C 800D4B3C 44823000 */   mtc1  $v0, $f6
/* 0D5740 800D4B40 46327281 */  sub.d $f10, $f14, $f18
.L800D4B44:
/* 0D5744 800D4B44 4620510D */  trunc.w.d $f4, $f10
/* 0D5748 800D4B48 44022000 */  mfc1  $v0, $f4
/* 0D574C 800D4B4C 00000000 */  nop   
/* 0D5750 800D4B50 44823000 */  mtc1  $v0, $f6
.L800D4B54:
/* 0D5754 800D4B54 3C01800F */  lui   $at, %hi(pihi_cosf) # $at, 0x800f
/* 0D5758 800D4B58 D42A97F0 */  ldc1  $f10, %lo(pihi_cosf)($at)
/* 0D575C 800D4B5C 46803221 */  cvt.d.w $f8, $f6
/* 0D5760 800D4B60 3C01800F */  lui   $at, %hi(pilo_cosf) # $at, 0x800f
/* 0D5764 800D4B64 D42697F8 */  ldc1  $f6, %lo(pilo_cosf)($at)
/* 0D5768 800D4B68 3C03800F */  lui   $v1, %hi(P_cosf) # $v1, 0x800f
/* 0D576C 800D4B6C 246397C0 */  addiu $v1, %lo(P_cosf) # addiu $v1, $v1, -0x6840
/* 0D5770 800D4B70 46324001 */  sub.d $f0, $f8, $f18
/* 0D5774 800D4B74 30480001 */  andi  $t0, $v0, 1
/* 0D5778 800D4B78 462A0102 */  mul.d $f4, $f0, $f10
/* 0D577C 800D4B7C D46A0020 */  ldc1  $f10, 0x20($v1)
/* 0D5780 800D4B80 46260202 */  mul.d $f8, $f0, $f6
/* 0D5784 800D4B84 D4660018 */  ldc1  $f6, 0x18($v1)
/* 0D5788 800D4B88 46246081 */  sub.d $f2, $f12, $f4
/* 0D578C 800D4B8C 46281081 */  sub.d $f2, $f2, $f8
/* 0D5790 800D4B90 46221382 */  mul.d $f14, $f2, $f2
/* 0D5794 800D4B94 00000000 */  nop   
/* 0D5798 800D4B98 462E5102 */  mul.d $f4, $f10, $f14
/* 0D579C 800D4B9C 46262200 */  add.d $f8, $f4, $f6
/* 0D57A0 800D4BA0 D4640010 */  ldc1  $f4, 0x10($v1)
/* 0D57A4 800D4BA4 462E4282 */  mul.d $f10, $f8, $f14
/* 0D57A8 800D4BA8 46245180 */  add.d $f6, $f10, $f4
/* 0D57AC 800D4BAC D46A0008 */  ldc1  $f10, 8($v1)
/* 0D57B0 800D4BB0 462E3202 */  mul.d $f8, $f6, $f14
/* 0D57B4 800D4BB4 15000007 */  bnez  $t0, .L800D4BD4
/* 0D57B8 800D4BB8 46285400 */   add.d $f16, $f10, $f8
/* 0D57BC 800D4BBC 462E1102 */  mul.d $f4, $f2, $f14
/* 0D57C0 800D4BC0 00000000 */  nop   
/* 0D57C4 800D4BC4 46302182 */  mul.d $f6, $f4, $f16
/* 0D57C8 800D4BC8 46223280 */  add.d $f10, $f6, $f2
/* 0D57CC 800D4BCC 03E00008 */  jr    $ra
/* 0D57D0 800D4BD0 46205020 */   cvt.s.d $f0, $f10

.L800D4BD4:
/* 0D57D4 800D4BD4 462E1202 */  mul.d $f8, $f2, $f14
/* 0D57D8 800D4BD8 00000000 */  nop   
/* 0D57DC 800D4BDC 46304102 */  mul.d $f4, $f8, $f16
/* 0D57E0 800D4BE0 46222180 */  add.d $f6, $f4, $f2
/* 0D57E4 800D4BE4 46203020 */  cvt.s.d $f0, $f6
/* 0D57E8 800D4BE8 03E00008 */  jr    $ra
/* 0D57EC 800D4BEC 46000007 */   neg.s $f0, $f0

/* 0D57F0 800D4BF0 460A5032 */  c.eq.s $f10, $f10
.L800D4BF4:
/* 0D57F4 800D4BF4 3C01800F */  lui   $at, %hi(zero_cosf) # $at, 0x800f
/* 0D57F8 800D4BF8 45010004 */  bc1t  .L800D4C0C
/* 0D57FC 800D4BFC 00000000 */   nop   
/* 0D5800 800D4C00 3C01800F */  lui   $at, %hi(__libm_qnan_f) # $at, 0x800f
/* 0D5804 800D4C04 03E00008 */  jr    $ra
/* 0D5808 800D4C08 C42098C0 */   lwc1  $f0, %lo(__libm_qnan_f)($at)

.L800D4C0C:
/* 0D580C 800D4C0C C4209800 */  lwc1  $f0, %lo(zero_cosf)($at)
/* 0D5810 800D4C10 03E00008 */  jr    $ra
/* 0D5814 800D4C14 00000000 */   nop   

/* 0D5818 800D4C18 00000000 */  nop   
/* 0D581C 800D4C1C 00000000 */  nop   
