.late_rodata
glabel D_800E6250
.double 1.2
glabel jpt_800E6258
.word L80042378, L800426B8, L80042898, L800428E8, L8004292C
glabel D_800E626C
.float 1.34
glabel D_800E6270
.float 0.05
glabel D_800E6274
.float 0.15
glabel D_800E6278
.float 0.15

.text
glabel func_800422F0
/* 042EF0 800422F0 27BDFEF0 */  addiu $sp, $sp, -0x110
/* 042EF4 800422F4 44852000 */  mtc1  $a1, $f4
/* 042EF8 800422F8 3C0E8000 */  lui   $t6, %hi(osTvType) # $t6, 0x8000
/* 042EFC 800422FC 46802020 */  cvt.s.w $f0, $f4
/* 042F00 80042300 8DCE0300 */  lw    $t6, %lo(osTvType)($t6)
/* 042F04 80042304 AFB10030 */  sw    $s1, 0x30($sp)
/* 042F08 80042308 00808825 */  move  $s1, $a0
/* 042F0C 8004230C AFBF0034 */  sw    $ra, 0x34($sp)
/* 042F10 80042310 AFB0002C */  sw    $s0, 0x2c($sp)
/* 042F14 80042314 E7B70020 */  swc1  $f23, 0x20($sp)
/* 042F18 80042318 E7B60024 */  swc1  $f22, 0x24($sp)
/* 042F1C 8004231C E7B50018 */  swc1  $f21, 0x18($sp)
/* 042F20 80042320 E7B4001C */  swc1  $f20, 0x1c($sp)
/* 042F24 80042324 15C00007 */  bnez  $t6, .L80042344
/* 042F28 80042328 46000086 */   mov.s $f2, $f0
/* 042F2C 8004232C 3C01800E */  lui   $at, %hi(D_800E6250 + 4) # $at, 0x800e
/* 042F30 80042330 C4296250 */  lwc1  $f9, %lo(D_800E6250)($at)
/* 042F34 80042334 C4286254 */  lwc1  $f8, %lo(D_800E6250 + 4)($at)
/* 042F38 80042338 460001A1 */  cvt.d.s $f6, $f0
/* 042F3C 8004233C 46283282 */  mul.d $f10, $f6, $f8
/* 042F40 80042340 462050A0 */  cvt.s.d $f2, $f10
.L80042344:
/* 042F44 80042344 8E300064 */  lw    $s0, 0x64($s1)
/* 042F48 80042348 00000000 */  nop   
/* 042F4C 8004234C 920F0014 */  lbu   $t7, 0x14($s0)
/* 042F50 80042350 00000000 */  nop   
/* 042F54 80042354 2DE10005 */  sltiu $at, $t7, 5
/* 042F58 80042358 10200186 */  beqz  $at, .L80042974
/* 042F5C 8004235C 000F7880 */   sll   $t7, $t7, 2
/* 042F60 80042360 3C01800E */  lui   $at, %hi(jpt_800E6258) # $at, 0x800e
/* 042F64 80042364 002F0821 */  addu  $at, $at, $t7
/* 042F68 80042368 8C2F6258 */  lw    $t7, %lo(jpt_800E6258)($at)
/* 042F6C 8004236C 00000000 */  nop   
/* 042F70 80042370 01E00008 */  jr    $t7
/* 042F74 80042374 00000000 */   nop   
glabel L80042378
/* 042F78 80042378 AFA00104 */  sw    $zero, 0x104($sp)
/* 042F7C 8004237C 82020019 */  lb    $v0, 0x19($s0)
/* 042F80 80042380 3C0742C0 */  lui   $a3, 0x42c0
/* 042F84 80042384 18400003 */  blez  $v0, .L80042394
/* 042F88 80042388 24190001 */   li    $t9, 1
/* 042F8C 8004238C 0045C023 */  subu  $t8, $v0, $a1
/* 042F90 80042390 A2180019 */  sb    $t8, 0x19($s0)
.L80042394:
/* 042F94 80042394 C62C000C */  lwc1  $f12, 0xc($s1)
/* 042F98 80042398 C62E0010 */  lwc1  $f14, 0x10($s1)
/* 042F9C 8004239C 8E260014 */  lw    $a2, 0x14($s1)
/* 042FA0 800423A0 27A80044 */  addiu $t0, $sp, 0x44
/* 042FA4 800423A4 AFA80014 */  sw    $t0, 0x14($sp)
/* 042FA8 800423A8 AFA50114 */  sw    $a1, 0x114($sp)
/* 042FAC 800423AC 0C005B7A */  jal   func_80016DE8
/* 042FB0 800423B0 AFB90010 */   sw    $t9, 0x10($sp)
/* 042FB4 800423B4 8FA50114 */  lw    $a1, 0x114($sp)
/* 042FB8 800423B8 1840004E */  blez  $v0, .L800424F4
/* 042FBC 800423BC 00000000 */   nop   
/* 042FC0 800423C0 8FA90044 */  lw    $t1, 0x44($sp)
/* 042FC4 800423C4 C620000C */  lwc1  $f0, 0xc($s1)
/* 042FC8 800423C8 C62C0010 */  lwc1  $f12, 0x10($s1)
/* 042FCC 800423CC C6220014 */  lwc1  $f2, 0x14($s1)
/* 042FD0 800423D0 820A0019 */  lb    $t2, 0x19($s0)
/* 042FD4 800423D4 C530000C */  lwc1  $f16, 0xc($t1)
/* 042FD8 800423D8 C5320010 */  lwc1  $f18, 0x10($t1)
/* 042FDC 800423DC C5240014 */  lwc1  $f4, 0x14($t1)
/* 042FE0 800423E0 46100501 */  sub.s $f20, $f0, $f16
/* 042FE4 800423E4 46126381 */  sub.s $f14, $f12, $f18
/* 042FE8 800423E8 1D40002E */  bgtz  $t2, .L800424A4
/* 042FEC 800423EC 46041581 */   sub.s $f22, $f2, $f4
/* 042FF0 800423F0 4614A182 */  mul.s $f6, $f20, $f20
/* 042FF4 800423F4 3C0144C8 */  li    $at, 0x44C80000 # 1600.000000
/* 042FF8 800423F8 44812000 */  mtc1  $at, $f4
/* 042FFC 800423FC 460E7202 */  mul.s $f8, $f14, $f14
/* 043000 80042400 00000000 */  nop   
/* 043004 80042404 4616B402 */  mul.s $f16, $f22, $f22
/* 043008 80042408 46083280 */  add.s $f10, $f6, $f8
/* 04300C 8004240C 46105480 */  add.s $f18, $f10, $f16
/* 043010 80042410 4604903C */  c.lt.s $f18, $f4
/* 043014 80042414 00000000 */  nop   
/* 043018 80042418 45000022 */  bc1f  .L800424A4
/* 04301C 8004241C 00000000 */   nop   
/* 043020 80042420 920B0015 */  lbu   $t3, 0x15($s0)
/* 043024 80042424 240D0002 */  li    $t5, 2
/* 043028 80042428 11600014 */  beqz  $t3, .L8004247C
/* 04302C 8004242C 2404013F */   li    $a0, 319
/* 043030 80042430 44050000 */  mfc1  $a1, $f0
/* 043034 80042434 44066000 */  mfc1  $a2, $f12
/* 043038 80042438 44071000 */  mfc1  $a3, $f2
/* 04303C 8004243C 240C0004 */  li    $t4, 4
/* 043040 80042440 AFAC0010 */  sw    $t4, 0x10($sp)
/* 043044 80042444 24040174 */  li    $a0, 372
/* 043048 80042448 0C002556 */  jal   func_80009558
/* 04304C 8004244C AFA00014 */   sw    $zero, 0x14($sp)
/* 043050 80042450 24040000 */  li    $a0, 0
/* 043054 80042454 0C027A9E */  jal   func_8009EA78
/* 043058 80042458 24050002 */   li    $a1, 2
/* 04305C 8004245C 0C0270B8 */  jal   set_magic_code_flags
/* 043060 80042460 24040002 */   li    $a0, 2
/* 043064 80042464 0C01B629 */  jal   func_8006D8A4
/* 043068 80042468 00000000 */   nop   
/* 04306C 8004246C 0C003FEE */  jal   gParticlePtrList_addObject
/* 043070 80042470 02202025 */   move  $a0, $s1
/* 043074 80042474 10000140 */  b     .L80042978
/* 043078 80042478 8FBF0034 */   lw    $ra, 0x34($sp)
.L8004247C:
/* 04307C 8004247C A20D0014 */  sb    $t5, 0x14($s0)
/* 043080 80042480 8E270014 */  lw    $a3, 0x14($s1)
/* 043084 80042484 8E260010 */  lw    $a2, 0x10($s1)
/* 043088 80042488 8E25000C */  lw    $a1, 0xc($s1)
/* 04308C 8004248C 240E0004 */  li    $t6, 4
/* 043090 80042490 AFAE0010 */  sw    $t6, 0x10($sp)
/* 043094 80042494 0C002556 */  jal   func_80009558
/* 043098 80042498 AFA00014 */   sw    $zero, 0x14($sp)
/* 04309C 8004249C 1000002A */  b     .L80042548
/* 0430A0 800424A0 8FAE0104 */   lw    $t6, 0x104($sp)
.L800424A4:
/* 0430A4 800424A4 3C014290 */  li    $at, 0x42900000 # 72.000000
/* 0430A8 800424A8 44813000 */  mtc1  $at, $f6
/* 0430AC 800424AC 920F0015 */  lbu   $t7, 0x15($s0)
/* 0430B0 800424B0 4600A307 */  neg.s $f12, $f20
/* 0430B4 800424B4 11E00007 */  beqz  $t7, .L800424D4
/* 0430B8 800424B8 E606001C */   swc1  $f6, 0x1c($s0)
/* 0430BC 800424BC 3C01800E */  lui   $at, %hi(D_800E626C) # $at, 0x800e
/* 0430C0 800424C0 C42A626C */  lwc1  $f10, %lo(D_800E626C)($at)
/* 0430C4 800424C4 C608001C */  lwc1  $f8, 0x1c($s0)
/* 0430C8 800424C8 00000000 */  nop   
/* 0430CC 800424CC 460A4402 */  mul.s $f16, $f8, $f10
/* 0430D0 800424D0 E610001C */  swc1  $f16, 0x1c($s0)
.L800424D4:
/* 0430D4 800424D4 0C01C1D4 */  jal   func_80070750
/* 0430D8 800424D8 4600B387 */   neg.s $f14, $f22
/* 0430DC 800424DC 34018000 */  li    $at, 32768
/* 0430E0 800424E0 0041C021 */  addu  $t8, $v0, $at
/* 0430E4 800424E4 A618001A */  sh    $t8, 0x1a($s0)
/* 0430E8 800424E8 24190001 */  li    $t9, 1
/* 0430EC 800424EC 10000015 */  b     .L80042544
/* 0430F0 800424F0 AFB90104 */   sw    $t9, 0x104($sp)
.L800424F4:
/* 0430F4 800424F4 86080016 */  lh    $t0, 0x16($s0)
/* 0430F8 800424F8 240B0001 */  li    $t3, 1
/* 0430FC 800424FC 01054823 */  subu  $t1, $t0, $a1
/* 043100 80042500 A6090016 */  sh    $t1, 0x16($s0)
/* 043104 80042504 860A0016 */  lh    $t2, 0x16($s0)
/* 043108 80042508 24050048 */  li    $a1, 72
/* 04310C 8004250C 0541000D */  bgez  $t2, .L80042544
/* 043110 80042510 24040028 */   li    $a0, 40
/* 043114 80042514 0C01BE53 */  jal   get_random_number_from_range
/* 043118 80042518 AFAB0104 */   sw    $t3, 0x104($sp)
/* 04311C 8004251C 44829000 */  mtc1  $v0, $f18
/* 043120 80042520 2404C000 */  li    $a0, -16384
/* 043124 80042524 46809120 */  cvt.s.w $f4, $f18
/* 043128 80042528 24054000 */  li    $a1, 16384
/* 04312C 8004252C 0C01BE53 */  jal   get_random_number_from_range
/* 043130 80042530 E604001C */   swc1  $f4, 0x1c($s0)
/* 043134 80042534 862C0000 */  lh    $t4, ($s1)
/* 043138 80042538 00000000 */  nop   
/* 04313C 8004253C 004C6821 */  addu  $t5, $v0, $t4
/* 043140 80042540 A60D001A */  sh    $t5, 0x1a($s0)
.L80042544:
/* 043144 80042544 8FAE0104 */  lw    $t6, 0x104($sp)
.L80042548:
/* 043148 80042548 00001025 */  move  $v0, $zero
/* 04314C 8004254C 11C00109 */  beqz  $t6, .L80042974
/* 043150 80042550 00001825 */   move  $v1, $zero
.L80042554:
/* 043154 80042554 8604001A */  lh    $a0, 0x1a($s0)
/* 043158 80042558 AFA30100 */  sw    $v1, 0x100($sp)
/* 04315C 8004255C 0C01C1F1 */  jal   func_800707C4
/* 043160 80042560 AFA20108 */   sw    $v0, 0x108($sp)
/* 043164 80042564 C606001C */  lwc1  $f6, 0x1c($s0)
/* 043168 80042568 8604001A */  lh    $a0, 0x1a($s0)
/* 04316C 8004256C 46060202 */  mul.s $f8, $f0, $f6
/* 043170 80042570 0C01C1FE */  jal   func_800707F8
/* 043174 80042574 E6080028 */   swc1  $f8, 0x28($s0)
/* 043178 80042578 C60A001C */  lwc1  $f10, 0x1c($s0)
/* 04317C 8004257C 8FA20108 */  lw    $v0, 0x108($sp)
/* 043180 80042580 46005407 */  neg.s $f16, $f10
/* 043184 80042584 46100082 */  mul.s $f2, $f0, $f16
/* 043188 80042588 8FA30100 */  lw    $v1, 0x100($sp)
/* 04318C 8004258C C6040028 */  lwc1  $f4, 0x28($s0)
/* 043190 80042590 C6080000 */  lwc1  $f8, ($s0)
/* 043194 80042594 E602002C */  swc1  $f2, 0x2c($s0)
/* 043198 80042598 C632000C */  lwc1  $f18, 0xc($s1)
/* 04319C 8004259C C62A0014 */  lwc1  $f10, 0x14($s1)
/* 0431A0 800425A0 46049180 */  add.s $f6, $f18, $f4
/* 0431A4 800425A4 C6120008 */  lwc1  $f18, 8($s0)
/* 0431A8 800425A8 46083501 */  sub.s $f20, $f6, $f8
/* 0431AC 800425AC 24420001 */  addiu $v0, $v0, 1
/* 0431B0 800425B0 46025400 */  add.s $f16, $f10, $f2
/* 0431B4 800425B4 C60A0010 */  lwc1  $f10, 0x10($s0)
/* 0431B8 800425B8 4614A102 */  mul.s $f4, $f20, $f20
/* 0431BC 800425BC 46128581 */  sub.s $f22, $f16, $f18
/* 0431C0 800425C0 28410004 */  slti  $at, $v0, 4
/* 0431C4 800425C4 4616B182 */  mul.s $f6, $f22, $f22
/* 0431C8 800425C8 46062200 */  add.s $f8, $f4, $f6
/* 0431CC 800425CC 460A403C */  c.lt.s $f8, $f10
/* 0431D0 800425D0 00000000 */  nop   
/* 0431D4 800425D4 45000003 */  bc1f  .L800425E4
/* 0431D8 800425D8 00000000 */   nop   
/* 0431DC 800425DC 10000005 */  b     .L800425F4
/* 0431E0 800425E0 24030001 */   li    $v1, 1
.L800425E4:
/* 0431E4 800425E4 860F001A */  lh    $t7, 0x1a($s0)
/* 0431E8 800425E8 00000000 */  nop   
/* 0431EC 800425EC 25F84000 */  addiu $t8, $t7, 0x4000
/* 0431F0 800425F0 A618001A */  sh    $t8, 0x1a($s0)
.L800425F4:
/* 0431F4 800425F4 10200003 */  beqz  $at, .L80042604
/* 0431F8 800425F8 00000000 */   nop   
/* 0431FC 800425FC 1060FFD5 */  beqz  $v1, .L80042554
/* 043200 80042600 00000000 */   nop   
.L80042604:
/* 043204 80042604 C620000C */  lwc1  $f0, 0xc($s1)
/* 043208 80042608 C6220014 */  lwc1  $f2, 0x14($s1)
/* 04320C 8004260C 1460000A */  bnez  $v1, .L80042638
/* 043210 80042610 00000000 */   nop   
/* 043214 80042614 C6100000 */  lwc1  $f16, ($s0)
/* 043218 80042618 C6120008 */  lwc1  $f18, 8($s0)
/* 04321C 8004261C 46008301 */  sub.s $f12, $f16, $f0
/* 043220 80042620 0C01C1D4 */  jal   func_80070750
/* 043224 80042624 46029381 */   sub.s $f14, $f18, $f2
/* 043228 80042628 A602001A */  sh    $v0, 0x1a($s0)
/* 04322C 8004262C C6220014 */  lwc1  $f2, 0x14($s1)
/* 043230 80042630 C620000C */  lwc1  $f0, 0xc($s1)
/* 043234 80042634 00000000 */  nop   
.L80042638:
/* 043238 80042638 92190015 */  lbu   $t9, 0x15($s0)
/* 04323C 8004263C 2404002B */  li    $a0, 43
/* 043240 80042640 1320000B */  beqz  $t9, .L80042670
/* 043244 80042644 24090004 */   li    $t1, 4
/* 043248 80042648 8E260010 */  lw    $a2, 0x10($s1)
/* 04324C 8004264C 44050000 */  mfc1  $a1, $f0
/* 043250 80042650 44071000 */  mfc1  $a3, $f2
/* 043254 80042654 24080004 */  li    $t0, 4
/* 043258 80042658 AFA80010 */  sw    $t0, 0x10($sp)
/* 04325C 8004265C AFA00014 */  sw    $zero, 0x14($sp)
/* 043260 80042660 0C002556 */  jal   func_80009558
/* 043264 80042664 240401A4 */   li    $a0, 420
/* 043268 80042668 10000008 */  b     .L8004268C
/* 04326C 8004266C 240A0001 */   li    $t2, 1
.L80042670:
/* 043270 80042670 8E260010 */  lw    $a2, 0x10($s1)
/* 043274 80042674 44050000 */  mfc1  $a1, $f0
/* 043278 80042678 44071000 */  mfc1  $a3, $f2
/* 04327C 8004267C AFA00014 */  sw    $zero, 0x14($sp)
/* 043280 80042680 0C002556 */  jal   func_80009558
/* 043284 80042684 AFA90010 */   sw    $t1, 0x10($sp)
/* 043288 80042688 240A0001 */  li    $t2, 1
.L8004268C:
/* 04328C 8004268C A20A0014 */  sb    $t2, 0x14($s0)
/* 043290 80042690 C624000C */  lwc1  $f4, 0xc($s1)
/* 043294 80042694 860C001A */  lh    $t4, 0x1a($s0)
/* 043298 80042698 E6040020 */  swc1  $f4, 0x20($s0)
/* 04329C 8004269C C6260014 */  lwc1  $f6, 0x14($s1)
/* 0432A0 800426A0 240B0020 */  li    $t3, 32
/* 0432A4 800426A4 A20B0018 */  sb    $t3, 0x18($s0)
/* 0432A8 800426A8 000C6823 */  negu  $t5, $t4
/* 0432AC 800426AC E6060024 */  swc1  $f6, 0x24($s0)
/* 0432B0 800426B0 100000B0 */  b     .L80042974
/* 0432B4 800426B4 A62D0000 */   sh    $t5, ($s1)
glabel L800426B8
/* 0432B8 800426B8 820E0018 */  lb    $t6, 0x18($s0)
/* 0432BC 800426BC 82020019 */  lb    $v0, 0x19($s0)
/* 0432C0 800426C0 01C57823 */  subu  $t7, $t6, $a1
/* 0432C4 800426C4 18400003 */  blez  $v0, .L800426D4
/* 0432C8 800426C8 A20F0018 */   sb    $t7, 0x18($s0)
/* 0432CC 800426CC 0045C023 */  subu  $t8, $v0, $a1
/* 0432D0 800426D0 A2180019 */  sb    $t8, 0x19($s0)
.L800426D4:
/* 0432D4 800426D4 82030018 */  lb    $v1, 0x18($s0)
/* 0432D8 800426D8 00002025 */  move  $a0, $zero
/* 0432DC 800426DC 04610006 */  bgez  $v1, .L800426F8
/* 0432E0 800426E0 2405012C */   li    $a1, 300
/* 0432E4 800426E4 0C01BE53 */  jal   get_random_number_from_range
/* 0432E8 800426E8 A2000014 */   sb    $zero, 0x14($s0)
/* 0432EC 800426EC A2000018 */  sb    $zero, 0x18($s0)
/* 0432F0 800426F0 82030018 */  lb    $v1, 0x18($s0)
/* 0432F4 800426F4 A6020016 */  sh    $v0, 0x16($s0)
.L800426F8:
/* 0432F8 800426F8 24190020 */  li    $t9, 32
/* 0432FC 800426FC 03234023 */  subu  $t0, $t9, $v1
/* 043300 80042700 000848C0 */  sll   $t1, $t0, 3
/* 043304 80042704 24010003 */  li    $at, 3
/* 043308 80042708 0121001A */  div   $zero, $t1, $at
/* 04330C 8004270C 00005012 */  mflo  $t2
/* 043310 80042710 A62A0018 */  sh    $t2, 0x18($s1)
/* 043314 80042714 820B0018 */  lb    $t3, 0x18($s0)
/* 043318 80042718 00000000 */  nop   
/* 04331C 8004271C 000B6680 */  sll   $t4, $t3, 0x1a
/* 043320 80042720 0C01C1FE */  jal   func_800707F8
/* 043324 80042724 000C2403 */   sra   $a0, $t4, 0x10
/* 043328 80042728 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 04332C 8004272C 44816000 */  mtc1  $at, $f12
/* 043330 80042730 C6080020 */  lwc1  $f8, 0x20($s0)
/* 043334 80042734 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 043338 80042738 44819000 */  mtc1  $at, $f18
/* 04333C 8004273C 460C0400 */  add.s $f16, $f0, $f12
/* 043340 80042740 E628000C */  swc1  $f8, 0xc($s1)
/* 043344 80042744 C60A0024 */  lwc1  $f10, 0x24($s0)
/* 043348 80042748 46128082 */  mul.s $f2, $f16, $f18
/* 04334C 8004274C E62A0014 */  swc1  $f10, 0x14($s1)
/* 043350 80042750 C6040028 */  lwc1  $f4, 0x28($s0)
/* 043354 80042754 00000000 */  nop   
/* 043358 80042758 46022182 */  mul.s $f6, $f4, $f2
/* 04335C 8004275C E626001C */  swc1  $f6, 0x1c($s1)
/* 043360 80042760 C608002C */  lwc1  $f8, 0x2c($s0)
/* 043364 80042764 00000000 */  nop   
/* 043368 80042768 46024282 */  mul.s $f10, $f8, $f2
/* 04336C 8004276C 0C004558 */  jal   func_80011560
/* 043370 80042770 E62A0024 */   swc1  $f10, 0x24($s1)
/* 043374 80042774 4480A000 */  mtc1  $zero, $f20
/* 043378 80042778 8E25001C */  lw    $a1, 0x1c($s1)
/* 04337C 8004277C 8E270024 */  lw    $a3, 0x24($s1)
/* 043380 80042780 4406A000 */  mfc1  $a2, $f20
/* 043384 80042784 0C00455C */  jal   func_80011570
/* 043388 80042788 02202025 */   move  $a0, $s1
/* 04338C 8004278C 8624002E */  lh    $a0, 0x2e($s1)
/* 043390 80042790 8E25000C */  lw    $a1, 0xc($s1)
/* 043394 80042794 8E260014 */  lw    $a2, 0x14($s1)
/* 043398 80042798 0C00AEAC */  jal   func_8002BAB0
/* 04339C 8004279C 27A7006C */   addiu $a3, $sp, 0x6c
/* 0433A0 800427A0 10400008 */  beqz  $v0, .L800427C4
/* 0433A4 800427A4 00000000 */   nop   
/* 0433A8 800427A8 0C004558 */  jal   func_80011560
/* 0433AC 800427AC E6340010 */   swc1  $f20, 0x10($s1)
/* 0433B0 800427B0 4405A000 */  mfc1  $a1, $f20
/* 0433B4 800427B4 8FA6006C */  lw    $a2, 0x6c($sp)
/* 0433B8 800427B8 4407A000 */  mfc1  $a3, $f20
/* 0433BC 800427BC 0C00455C */  jal   func_80011570
/* 0433C0 800427C0 02202025 */   move  $a0, $s1
.L800427C4:
/* 0433C4 800427C4 820E0019 */  lb    $t6, 0x19($s0)
/* 0433C8 800427C8 00000000 */  nop   
/* 0433CC 800427CC 1DC0006A */  bgtz  $t6, .L80042978
/* 0433D0 800427D0 8FBF0034 */   lw    $ra, 0x34($sp)
/* 0433D4 800427D4 82030018 */  lb    $v1, 0x18($s0)
/* 0433D8 800427D8 3C074220 */  lui   $a3, 0x4220
/* 0433DC 800427DC 28610006 */  slti  $at, $v1, 6
/* 0433E0 800427E0 14200004 */  bnez  $at, .L800427F4
/* 0433E4 800427E4 27AF0044 */   addiu $t7, $sp, 0x44
/* 0433E8 800427E8 2861001B */  slti  $at, $v1, 0x1b
/* 0433EC 800427EC 14200062 */  bnez  $at, .L80042978
/* 0433F0 800427F0 8FBF0034 */   lw    $ra, 0x34($sp)
.L800427F4:
/* 0433F4 800427F4 C62C000C */  lwc1  $f12, 0xc($s1)
/* 0433F8 800427F8 C62E0010 */  lwc1  $f14, 0x10($s1)
/* 0433FC 800427FC 8E260014 */  lw    $a2, 0x14($s1)
/* 043400 80042800 AFAF0014 */  sw    $t7, 0x14($sp)
/* 043404 80042804 0C005B7A */  jal   func_80016DE8
/* 043408 80042808 AFA00010 */   sw    $zero, 0x10($sp)
/* 04340C 8004280C 1040005A */  beqz  $v0, .L80042978
/* 043410 80042810 8FBF0034 */   lw    $ra, 0x34($sp)
/* 043414 80042814 92180015 */  lbu   $t8, 0x15($s0)
/* 043418 80042818 24080002 */  li    $t0, 2
/* 04341C 8004281C 13000014 */  beqz  $t8, .L80042870
/* 043420 80042820 2404013F */   li    $a0, 319
/* 043424 80042824 8E25000C */  lw    $a1, 0xc($s1)
/* 043428 80042828 8E260010 */  lw    $a2, 0x10($s1)
/* 04342C 8004282C 8E270014 */  lw    $a3, 0x14($s1)
/* 043430 80042830 24190004 */  li    $t9, 4
/* 043434 80042834 AFB90010 */  sw    $t9, 0x10($sp)
/* 043438 80042838 AFA00014 */  sw    $zero, 0x14($sp)
/* 04343C 8004283C 0C002556 */  jal   func_80009558
/* 043440 80042840 24040174 */   li    $a0, 372
/* 043444 80042844 24040000 */  li    $a0, 0
/* 043448 80042848 0C027A9E */  jal   func_8009EA78
/* 04344C 8004284C 24050002 */   li    $a1, 2
/* 043450 80042850 0C0270B8 */  jal   set_magic_code_flags
/* 043454 80042854 24040002 */   li    $a0, 2
/* 043458 80042858 0C01B629 */  jal   func_8006D8A4
/* 04345C 8004285C 00000000 */   nop   
/* 043460 80042860 0C003FEE */  jal   gParticlePtrList_addObject
/* 043464 80042864 02202025 */   move  $a0, $s1
/* 043468 80042868 10000043 */  b     .L80042978
/* 04346C 8004286C 8FBF0034 */   lw    $ra, 0x34($sp)
.L80042870:
/* 043470 80042870 A2080014 */  sb    $t0, 0x14($s0)
/* 043474 80042874 8E270014 */  lw    $a3, 0x14($s1)
/* 043478 80042878 8E260010 */  lw    $a2, 0x10($s1)
/* 04347C 8004287C 8E25000C */  lw    $a1, 0xc($s1)
/* 043480 80042880 24090004 */  li    $t1, 4
/* 043484 80042884 AFA90010 */  sw    $t1, 0x10($sp)
/* 043488 80042888 0C002556 */  jal   func_80009558
/* 04348C 8004288C AFA00014 */   sw    $zero, 0x14($sp)
/* 043490 80042890 10000039 */  b     .L80042978
/* 043494 80042894 8FBF0034 */   lw    $ra, 0x34($sp)
glabel L80042898
/* 043498 80042898 3C01800E */  lui   $at, %hi(D_800E6270) # $at, 0x800e
/* 04349C 8004289C C4206270 */  lwc1  $f0, %lo(D_800E6270)($at)
/* 0434A0 800428A0 3C01800E */  lui   $at, %hi(D_800E6274) # $at, 0x800e
/* 0434A4 800428A4 C4326274 */  lwc1  $f18, %lo(D_800E6274)($at)
/* 0434A8 800428A8 C6100030 */  lwc1  $f16, 0x30($s0)
/* 0434AC 800428AC 46029102 */  mul.s $f4, $f18, $f2
/* 0434B0 800428B0 240A0003 */  li    $t2, 3
/* 0434B4 800428B4 240B0028 */  li    $t3, 40
/* 0434B8 800428B8 46048181 */  sub.s $f6, $f16, $f4
/* 0434BC 800428BC E6060030 */  swc1  $f6, 0x30($s0)
/* 0434C0 800428C0 C6080030 */  lwc1  $f8, 0x30($s0)
/* 0434C4 800428C4 00000000 */  nop   
/* 0434C8 800428C8 4600403C */  c.lt.s $f8, $f0
/* 0434CC 800428CC 00000000 */  nop   
/* 0434D0 800428D0 45000029 */  bc1f  .L80042978
/* 0434D4 800428D4 8FBF0034 */   lw    $ra, 0x34($sp)
/* 0434D8 800428D8 E6000030 */  swc1  $f0, 0x30($s0)
/* 0434DC 800428DC A20A0014 */  sb    $t2, 0x14($s0)
/* 0434E0 800428E0 10000024 */  b     .L80042974
/* 0434E4 800428E4 A60B0016 */   sh    $t3, 0x16($s0)
glabel L800428E8
/* 0434E8 800428E8 860C0016 */  lh    $t4, 0x16($s0)
/* 0434EC 800428EC 240F0004 */  li    $t7, 4
/* 0434F0 800428F0 01856823 */  subu  $t5, $t4, $a1
/* 0434F4 800428F4 A60D0016 */  sh    $t5, 0x16($s0)
/* 0434F8 800428F8 860E0016 */  lh    $t6, 0x16($s0)
/* 0434FC 800428FC 24040140 */  li    $a0, 320
/* 043500 80042900 05C1001C */  bgez  $t6, .L80042974
/* 043504 80042904 24180004 */   li    $t8, 4
/* 043508 80042908 A20F0014 */  sb    $t7, 0x14($s0)
/* 04350C 8004290C 8E270014 */  lw    $a3, 0x14($s1)
/* 043510 80042910 8E260010 */  lw    $a2, 0x10($s1)
/* 043514 80042914 8E25000C */  lw    $a1, 0xc($s1)
/* 043518 80042918 AFA00014 */  sw    $zero, 0x14($sp)
/* 04351C 8004291C 0C002556 */  jal   func_80009558
/* 043520 80042920 AFB80010 */   sw    $t8, 0x10($sp)
/* 043524 80042924 10000014 */  b     .L80042978
/* 043528 80042928 8FBF0034 */   lw    $ra, 0x34($sp)
glabel L8004292C
/* 04352C 8004292C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 043530 80042930 44816000 */  mtc1  $at, $f12
/* 043534 80042934 C6000030 */  lwc1  $f0, 0x30($s0)
/* 043538 80042938 2419003C */  li    $t9, 60
/* 04353C 8004293C 4600603C */  c.lt.s $f12, $f0
/* 043540 80042940 3C01800E */  lui   $at, %hi(D_800E6278) # $at, 0x800e
/* 043544 80042944 45000006 */  bc1f  .L80042960
/* 043548 80042948 00000000 */   nop   
/* 04354C 8004294C E60C0030 */  swc1  $f12, 0x30($s0)
/* 043550 80042950 A2000014 */  sb    $zero, 0x14($s0)
/* 043554 80042954 A6000016 */  sh    $zero, 0x16($s0)
/* 043558 80042958 10000006 */  b     .L80042974
/* 04355C 8004295C A2190019 */   sb    $t9, 0x19($s0)
.L80042960:
/* 043560 80042960 C42A6278 */  lwc1  $f10, %lo(D_800E6278)($at)
/* 043564 80042964 00000000 */  nop   
/* 043568 80042968 46025482 */  mul.s $f18, $f10, $f2
/* 04356C 8004296C 46120400 */  add.s $f16, $f0, $f18
/* 043570 80042970 E6100030 */  swc1  $f16, 0x30($s0)
.L80042974:
/* 043574 80042974 8FBF0034 */  lw    $ra, 0x34($sp)
.L80042978:
/* 043578 80042978 C7B50018 */  lwc1  $f21, 0x18($sp)
/* 04357C 8004297C C7B4001C */  lwc1  $f20, 0x1c($sp)
/* 043580 80042980 C7B70020 */  lwc1  $f23, 0x20($sp)
/* 043584 80042984 C7B60024 */  lwc1  $f22, 0x24($sp)
/* 043588 80042988 8FB0002C */  lw    $s0, 0x2c($sp)
/* 04358C 8004298C 8FB10030 */  lw    $s1, 0x30($sp)
/* 043590 80042990 03E00008 */  jr    $ra
/* 043594 80042994 27BD0110 */   addiu $sp, $sp, 0x110

