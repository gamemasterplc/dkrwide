glabel func_800AF52C
/* 0B012C 800AF52C 8C8E006C */  lw    $t6, 0x6c($a0)
/* 0B0130 800AF530 00057940 */  sll   $t7, $a1, 5
/* 0B0134 800AF534 01CF1021 */  addu  $v0, $t6, $t7
/* 0B0138 800AF538 84460004 */  lh    $a2, 4($v0)
/* 0B013C 800AF53C 8C430000 */  lw    $v1, ($v0)
/* 0B0140 800AF540 30D84000 */  andi  $t8, $a2, 0x4000
/* 0B0144 800AF544 1300000A */  beqz  $t8, .L800AF570
/* 0B0148 800AF548 A440000A */   sh    $zero, 0xa($v0)
/* 0B014C 800AF54C C484000C */  lwc1  $f4, 0xc($a0)
/* 0B0150 800AF550 00000000 */  nop   
/* 0B0154 800AF554 E444000C */  swc1  $f4, 0xc($v0)
/* 0B0158 800AF558 C4860010 */  lwc1  $f6, 0x10($a0)
/* 0B015C 800AF55C 00000000 */  nop   
/* 0B0160 800AF560 E4460010 */  swc1  $f6, 0x10($v0)
/* 0B0164 800AF564 C4880014 */  lwc1  $f8, 0x14($a0)
/* 0B0168 800AF568 10000051 */  b     .L800AF6B0
/* 0B016C 800AF56C E4480014 */   swc1  $f8, 0x14($v0)
.L800AF570:
/* 0B0170 800AF570 30D90400 */  andi  $t9, $a2, 0x400
/* 0B0174 800AF574 13200030 */  beqz  $t9, .L800AF638
/* 0B0178 800AF578 3C08800E */   lui   $t0, %hi(gParticlesAssetTable) # $t0, 0x800e
/* 0B017C 800AF57C 84490008 */  lh    $t1, 8($v0)
/* 0B0180 800AF580 8D082CF0 */  lw    $t0, %lo(gParticlesAssetTable)($t0)
/* 0B0184 800AF584 00095080 */  sll   $t2, $t1, 2
/* 0B0188 800AF588 010A5821 */  addu  $t3, $t0, $t2
/* 0B018C 800AF58C 8D6C0000 */  lw    $t4, ($t3)
/* 0B0190 800AF590 90450006 */  lbu   $a1, 6($v0)
/* 0B0194 800AF594 918D0017 */  lbu   $t5, 0x17($t4)
/* 0B0198 800AF598 00000000 */  nop   
/* 0B019C 800AF59C 000D7200 */  sll   $t6, $t5, 8
/* 0B01A0 800AF5A0 18A0000F */  blez  $a1, .L800AF5E0
/* 0B01A4 800AF5A4 A44E000A */   sh    $t6, 0xa($v0)
/* 0B01A8 800AF5A8 18A0000D */  blez  $a1, .L800AF5E0
/* 0B01AC 800AF5AC 00003025 */   move  $a2, $zero
/* 0B01B0 800AF5B0 00003825 */  move  $a3, $zero
.L800AF5B4:
/* 0B01B4 800AF5B4 8C4F000C */  lw    $t7, 0xc($v0)
/* 0B01B8 800AF5B8 24C60001 */  addiu $a2, $a2, 1
/* 0B01BC 800AF5BC 01E7C021 */  addu  $t8, $t7, $a3
/* 0B01C0 800AF5C0 8F050000 */  lw    $a1, ($t8)
/* 0B01C4 800AF5C4 24E70004 */  addiu $a3, $a3, 4
/* 0B01C8 800AF5C8 A4A0003A */  sh    $zero, 0x3a($a1)
/* 0B01CC 800AF5CC 90590006 */  lbu   $t9, 6($v0)
/* 0B01D0 800AF5D0 00000000 */  nop   
/* 0B01D4 800AF5D4 00D9082A */  slt   $at, $a2, $t9
/* 0B01D8 800AF5D8 1420FFF6 */  bnez  $at, .L800AF5B4
/* 0B01DC 800AF5DC 00000000 */   nop   
.L800AF5E0:
/* 0B01E0 800AF5E0 8C650000 */  lw    $a1, ($v1)
/* 0B01E4 800AF5E4 00000000 */  nop   
/* 0B01E8 800AF5E8 30A90001 */  andi  $t1, $a1, 1
/* 0B01EC 800AF5EC 1120000A */  beqz  $t1, .L800AF618
/* 0B01F0 800AF5F0 30AB0004 */   andi  $t3, $a1, 4
/* 0B01F4 800AF5F4 84680014 */  lh    $t0, 0x14($v1)
/* 0B01F8 800AF5F8 00000000 */  nop   
/* 0B01FC 800AF5FC A4480010 */  sh    $t0, 0x10($v0)
/* 0B0200 800AF600 846A0016 */  lh    $t2, 0x16($v1)
/* 0B0204 800AF604 00000000 */  nop   
/* 0B0208 800AF608 A44A0012 */  sh    $t2, 0x12($v0)
/* 0B020C 800AF60C 8C650000 */  lw    $a1, ($v1)
/* 0B0210 800AF610 00000000 */  nop   
/* 0B0214 800AF614 30AB0004 */  andi  $t3, $a1, 4
.L800AF618:
/* 0B0218 800AF618 11600025 */  beqz  $t3, .L800AF6B0
/* 0B021C 800AF61C 00000000 */   nop   
/* 0B0220 800AF620 846C0022 */  lh    $t4, 0x22($v1)
/* 0B0224 800AF624 00000000 */  nop   
/* 0B0228 800AF628 A44C0014 */  sh    $t4, 0x14($v0)
/* 0B022C 800AF62C 846D0024 */  lh    $t5, 0x24($v1)
/* 0B0230 800AF630 1000001F */  b     .L800AF6B0
/* 0B0234 800AF634 A44D0016 */   sh    $t5, 0x16($v0)
.L800AF638:
/* 0B0238 800AF638 8C650000 */  lw    $a1, ($v1)
/* 0B023C 800AF63C 00000000 */  nop   
/* 0B0240 800AF640 30AE0001 */  andi  $t6, $a1, 1
/* 0B0244 800AF644 11C0000E */  beqz  $t6, .L800AF680
/* 0B0248 800AF648 30A90004 */   andi  $t1, $a1, 4
/* 0B024C 800AF64C A0400006 */  sb    $zero, 6($v0)
/* 0B0250 800AF650 846F0014 */  lh    $t7, 0x14($v1)
/* 0B0254 800AF654 00000000 */  nop   
/* 0B0258 800AF658 A44F000C */  sh    $t7, 0xc($v0)
/* 0B025C 800AF65C 84780016 */  lh    $t8, 0x16($v1)
/* 0B0260 800AF660 00000000 */  nop   
/* 0B0264 800AF664 A458000E */  sh    $t8, 0xe($v0)
/* 0B0268 800AF668 84790018 */  lh    $t9, 0x18($v1)
/* 0B026C 800AF66C 00000000 */  nop   
/* 0B0270 800AF670 A4590010 */  sh    $t9, 0x10($v0)
/* 0B0274 800AF674 8C650000 */  lw    $a1, ($v1)
/* 0B0278 800AF678 00000000 */  nop   
/* 0B027C 800AF67C 30A90004 */  andi  $t1, $a1, 4
.L800AF680:
/* 0B0280 800AF680 1120000B */  beqz  $t1, .L800AF6B0
/* 0B0284 800AF684 00000000 */   nop   
/* 0B0288 800AF688 A0400007 */  sb    $zero, 7($v0)
/* 0B028C 800AF68C 84680022 */  lh    $t0, 0x22($v1)
/* 0B0290 800AF690 00000000 */  nop   
/* 0B0294 800AF694 A4480012 */  sh    $t0, 0x12($v0)
/* 0B0298 800AF698 846A0024 */  lh    $t2, 0x24($v1)
/* 0B029C 800AF69C 00000000 */  nop   
/* 0B02A0 800AF6A0 A44A0014 */  sh    $t2, 0x14($v0)
/* 0B02A4 800AF6A4 846B0026 */  lh    $t3, 0x26($v1)
/* 0B02A8 800AF6A8 00000000 */  nop   
/* 0B02AC 800AF6AC A44B0016 */  sh    $t3, 0x16($v0)
.L800AF6B0:
/* 0B02B0 800AF6B0 844C0004 */  lh    $t4, 4($v0)
/* 0B02B4 800AF6B4 00000000 */  nop   
/* 0B02B8 800AF6B8 318DFDFF */  andi  $t5, $t4, 0xfdff
/* 0B02BC 800AF6BC A44D0004 */  sh    $t5, 4($v0)
/* 0B02C0 800AF6C0 844E0004 */  lh    $t6, 4($v0)
/* 0B02C4 800AF6C4 00000000 */  nop   
/* 0B02C8 800AF6C8 35CFA000 */  ori   $t7, $t6, 0xa000
/* 0B02CC 800AF6CC A44F0004 */  sh    $t7, 4($v0)
/* 0B02D0 800AF6D0 8498001A */  lh    $t8, 0x1a($a0)
/* 0B02D4 800AF6D4 00000000 */  nop   
/* 0B02D8 800AF6D8 27190001 */  addiu $t9, $t8, 1
/* 0B02DC 800AF6DC 03E00008 */  jr    $ra
/* 0B02E0 800AF6E0 A499001A */   sh    $t9, 0x1a($a0)

