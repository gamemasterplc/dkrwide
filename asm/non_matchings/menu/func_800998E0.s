glabel func_800998E0
/* 09A4E0 800998E0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09A4E4 800998E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 09A4E8 800998E8 AFB00018 */  sw    $s0, 0x18($sp)
/* 09A4EC 800998EC 00803025 */  move  $a2, $a0
/* 09A4F0 800998F0 04800055 */  bltz  $a0, .L80099A48
/* 09A4F4 800998F4 00005025 */   move  $t2, $zero
/* 09A4F8 800998F8 3C038012 */  lui   $v1, %hi(D_801264D4) # $v1, 0x8012
/* 09A4FC 800998FC 246364D4 */  addiu $v1, %lo(D_801264D4) # addiu $v1, $v1, 0x64d4
/* 09A500 80099900 8C6E0000 */  lw    $t6, ($v1)
/* 09A504 80099904 00002825 */  move  $a1, $zero
/* 09A508 80099908 008E082A */  slt   $at, $a0, $t6
/* 09A50C 8009990C 1020004E */  beqz  $at, .L80099A48
/* 09A510 80099910 240400EF */   li    $a0, 239
/* 09A514 80099914 0C000741 */  jal   func_80001D04
/* 09A518 80099918 AFA60020 */   sw    $a2, 0x20($sp)
/* 09A51C 8009991C 8FA60020 */  lw    $a2, 0x20($sp)
/* 09A520 80099920 3C108012 */  lui   $s0, %hi(D_80126540) # $s0, 0x8012
/* 09A524 80099924 02068021 */  addu  $s0, $s0, $a2
/* 09A528 80099928 92106540 */  lbu   $s0, %lo(D_80126540)($s0)
/* 09A52C 8009992C 3C048012 */  lui   $a0, %hi(D_801264D0) # $a0, 0x8012
/* 09A530 80099930 8C8464D0 */  lw    $a0, %lo(D_801264D0)($a0)
/* 09A534 80099934 0C01D4F6 */  jal   func_800753D8
/* 09A538 80099938 02002825 */   move  $a1, $s0
/* 09A53C 8009993C 3C038012 */  lui   $v1, %hi(D_801264D4) # $v1, 0x8012
/* 09A540 80099940 8FA60020 */  lw    $a2, 0x20($sp)
/* 09A544 80099944 246364D4 */  addiu $v1, %lo(D_801264D4) # addiu $v1, $v1, 0x64d4
/* 09A548 80099948 1440003F */  bnez  $v0, .L80099A48
/* 09A54C 8009994C 00405025 */   move  $t2, $v0
/* 09A550 80099950 3C018012 */  lui   $at, %hi(D_801264DC) # $at, 0x8012
/* 09A554 80099954 00300821 */  addu  $at, $at, $s0
/* 09A558 80099958 240F00FF */  li    $t7, 255
/* 09A55C 8009995C A02F64DC */  sb    $t7, %lo(D_801264DC)($at)
/* 09A560 80099960 8C780000 */  lw    $t8, ($v1)
/* 09A564 80099964 00C04025 */  move  $t0, $a2
/* 09A568 80099968 2719FFFF */  addiu $t9, $t8, -1
/* 09A56C 8009996C 00D9082A */  slt   $at, $a2, $t9
/* 09A570 80099970 AC790000 */  sw    $t9, ($v1)
/* 09A574 80099974 10200026 */  beqz  $at, .L80099A10
/* 09A578 80099978 03204825 */   move  $t1, $t9
/* 09A57C 8009997C 3C0B8012 */  lui   $t3, %hi(D_80126540) # $t3, 0x8012
/* 09A580 80099980 256B6540 */  addiu $t3, %lo(D_80126540) # addiu $t3, $t3, 0x6540
/* 09A584 80099984 00CB1021 */  addu  $v0, $a2, $t3
/* 09A588 80099988 3C0C8012 */  lui   $t4, %hi(D_80126508) # $t4, 0x8012
/* 09A58C 8009998C 3C0D8012 */  lui   $t5, %hi(D_80126510) # $t5, 0x8012
/* 09A590 80099990 25AD6510 */  addiu $t5, %lo(D_80126510) # addiu $t5, $t5, 0x6510
/* 09A594 80099994 258C6508 */  addiu $t4, %lo(D_80126508) # addiu $t4, $t4, 0x6508
/* 09A598 80099998 3C0B8012 */  lui   $t3, %hi(D_80126520) # $t3, 0x8012
/* 09A59C 8009999C 3C0E8012 */  lui   $t6, %hi(D_80126518) # $t6, 0x8012
/* 09A5A0 800999A0 3C188012 */  lui   $t8, %hi(D_80126520) # $t8, 0x8012
/* 09A5A4 800999A4 27186520 */  addiu $t8, %lo(D_80126520) # addiu $t8, $t8, 0x6520
/* 09A5A8 800999A8 25CE6518 */  addiu $t6, %lo(D_80126518) # addiu $t6, $t6, 0x6518
/* 09A5AC 800999AC 256B6520 */  addiu $t3, %lo(D_80126520) # addiu $t3, $t3, 0x6520
/* 09A5B0 800999B0 00CC2021 */  addu  $a0, $a2, $t4
/* 09A5B4 800999B4 00CD2821 */  addu  $a1, $a2, $t5
/* 09A5B8 800999B8 00087840 */  sll   $t7, $t0, 1
/* 09A5BC 800999BC 0019C840 */  sll   $t9, $t9, 1
/* 09A5C0 800999C0 032B3821 */  addu  $a3, $t9, $t3
/* 09A5C4 800999C4 01F81821 */  addu  $v1, $t7, $t8
/* 09A5C8 800999C8 00CE3021 */  addu  $a2, $a2, $t6
.L800999CC:
/* 09A5CC 800999CC 904C0001 */  lbu   $t4, 1($v0)
/* 09A5D0 800999D0 908D0001 */  lbu   $t5, 1($a0)
/* 09A5D4 800999D4 90AE0001 */  lbu   $t6, 1($a1)
/* 09A5D8 800999D8 90CF0001 */  lbu   $t7, 1($a2)
/* 09A5DC 800999DC 94780002 */  lhu   $t8, 2($v1)
/* 09A5E0 800999E0 24630002 */  addiu $v1, $v1, 2
/* 09A5E4 800999E4 0067082B */  sltu  $at, $v1, $a3
/* 09A5E8 800999E8 24420001 */  addiu $v0, $v0, 1
/* 09A5EC 800999EC 24840001 */  addiu $a0, $a0, 1
/* 09A5F0 800999F0 24A50001 */  addiu $a1, $a1, 1
/* 09A5F4 800999F4 24C60001 */  addiu $a2, $a2, 1
/* 09A5F8 800999F8 A04CFFFF */  sb    $t4, -1($v0)
/* 09A5FC 800999FC A08DFFFF */  sb    $t5, -1($a0)
/* 09A600 80099A00 A0AEFFFF */  sb    $t6, -1($a1)
/* 09A604 80099A04 A0CFFFFF */  sb    $t7, -1($a2)
/* 09A608 80099A08 1420FFF0 */  bnez  $at, .L800999CC
/* 09A60C 80099A0C A478FFFE */   sh    $t8, -2($v1)
.L80099A10:
/* 09A610 80099A10 1920000D */  blez  $t1, .L80099A48
/* 09A614 80099A14 3C198012 */   lui   $t9, %hi(D_80126540) # $t9, 0x8012
/* 09A618 80099A18 27226540 */  addiu $v0, $t9, %lo(D_80126540)
/* 09A61C 80099A1C 01222021 */  addu  $a0, $t1, $v0
.L80099A20:
/* 09A620 80099A20 90430000 */  lbu   $v1, ($v0)
/* 09A624 80099A24 00000000 */  nop   
/* 09A628 80099A28 0203082A */  slt   $at, $s0, $v1
/* 09A62C 80099A2C 10200002 */  beqz  $at, .L80099A38
/* 09A630 80099A30 246BFFFF */   addiu $t3, $v1, -1
/* 09A634 80099A34 A04B0000 */  sb    $t3, ($v0)
.L80099A38:
/* 09A638 80099A38 24420001 */  addiu $v0, $v0, 1
/* 09A63C 80099A3C 0044082B */  sltu  $at, $v0, $a0
/* 09A640 80099A40 1420FFF7 */  bnez  $at, .L80099A20
/* 09A644 80099A44 00000000 */   nop   
.L80099A48:
/* 09A648 80099A48 8FBF001C */  lw    $ra, 0x1c($sp)
/* 09A64C 80099A4C 8FB00018 */  lw    $s0, 0x18($sp)
/* 09A650 80099A50 27BD0020 */  addiu $sp, $sp, 0x20
/* 09A654 80099A54 03E00008 */  jr    $ra
/* 09A658 80099A58 01401025 */   move  $v0, $t2

