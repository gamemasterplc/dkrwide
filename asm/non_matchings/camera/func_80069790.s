glabel func_80069790
/* 06A390 80069790 27BDFF00 */  addiu $sp, $sp, -0x100
/* 06A394 80069794 AFBF0024 */  sw    $ra, 0x24($sp)
/* 06A398 80069798 E7B70018 */  swc1  $f23, 0x18($sp)
/* 06A39C 8006979C E7B6001C */  swc1  $f22, 0x1c($sp)
/* 06A3A0 800697A0 E7B50010 */  swc1  $f21, 0x10($sp)
/* 06A3A4 800697A4 E7B40014 */  swc1  $f20, 0x14($sp)
/* 06A3A8 800697A8 AFA40100 */  sw    $a0, 0x100($sp)
/* 06A3AC 800697AC AFA50104 */  sw    $a1, 0x104($sp)
/* 06A3B0 800697B0 AFA7010C */  sw    $a3, 0x10c($sp)
/* 06A3B4 800697B4 84D90016 */  lh    $t9, 0x16($a2)
/* 06A3B8 800697B8 00000000 */  nop   
/* 06A3BC 800697BC 44992000 */  mtc1  $t9, $f4
/* 06A3C0 800697C0 00000000 */  nop   
/* 06A3C4 800697C4 468021A0 */  cvt.s.w $f6, $f4
/* 06A3C8 800697C8 E7A600F4 */  swc1  $f6, 0xf4($sp)
/* 06A3CC 800697CC 84C80018 */  lh    $t0, 0x18($a2)
/* 06A3D0 800697D0 00000000 */  nop   
/* 06A3D4 800697D4 44884000 */  mtc1  $t0, $f8
/* 06A3D8 800697D8 00000000 */  nop   
/* 06A3DC 800697DC 468042A0 */  cvt.s.w $f10, $f8
/* 06A3E0 800697E0 E7AA00F0 */  swc1  $f10, 0xf0($sp)
/* 06A3E4 800697E4 84C9001A */  lh    $t1, 0x1a($a2)
/* 06A3E8 800697E8 00000000 */  nop   
/* 06A3EC 800697EC 44892000 */  mtc1  $t1, $f4
/* 06A3F0 800697F0 00000000 */  nop   
/* 06A3F4 800697F4 468021A0 */  cvt.s.w $f6, $f4
/* 06A3F8 800697F8 E7A600EC */  swc1  $f6, 0xec($sp)
/* 06A3FC 800697FC 84C4001C */  lh    $a0, 0x1c($a2)
/* 06A400 80069800 0C01C1FE */  jal   func_800707F8
/* 06A404 80069804 AFA60108 */   sw    $a2, 0x108($sp)
/* 06A408 80069808 8FA60108 */  lw    $a2, 0x108($sp)
/* 06A40C 8006980C 46000506 */  mov.s $f20, $f0
/* 06A410 80069810 84C4001C */  lh    $a0, 0x1c($a2)
/* 06A414 80069814 0C01C1F1 */  jal   func_800707C4
/* 06A418 80069818 00000000 */   nop   
/* 06A41C 8006981C 87A4010E */  lh    $a0, 0x10e($sp)
/* 06A420 80069820 0C01C1FE */  jal   func_800707F8
/* 06A424 80069824 E7A000E4 */   swc1  $f0, 0xe4($sp)
/* 06A428 80069828 87A4010E */  lh    $a0, 0x10e($sp)
/* 06A42C 8006982C 0C01C1F1 */  jal   func_800707C4
/* 06A430 80069830 46000586 */   mov.s $f22, $f0
/* 06A434 80069834 4614B482 */  mul.s $f18, $f22, $f20
/* 06A438 80069838 C7B000E4 */  lwc1  $f16, 0xe4($sp)
/* 06A43C 8006983C C7AE00F4 */  lwc1  $f14, 0xf4($sp)
/* 06A440 80069840 C7AC00F0 */  lwc1  $f12, 0xf0($sp)
/* 06A444 80069844 4610B282 */  mul.s $f10, $f22, $f16
/* 06A448 80069848 46000207 */  neg.s $f8, $f0
/* 06A44C 8006984C C7A600EC */  lwc1  $f6, 0xec($sp)
/* 06A450 80069850 E7A000F8 */  swc1  $f0, 0xf8($sp)
/* 06A454 80069854 46140102 */  mul.s $f4, $f0, $f20
/* 06A458 80069858 44801000 */  mtc1  $zero, $f2
/* 06A45C 8006985C E7AE0028 */  swc1  $f14, 0x28($sp)
/* 06A460 80069860 E7A60030 */  swc1  $f6, 0x30($sp)
/* 06A464 80069864 46007387 */  neg.s $f14, $f14
/* 06A468 80069868 E7AE002C */  swc1  $f14, 0x2c($sp)
/* 06A46C 8006986C 46003187 */  neg.s $f6, $f6
/* 06A470 80069870 E7A60054 */  swc1  $f6, 0x54($sp)
/* 06A474 80069874 46100182 */  mul.s $f6, $f0, $f16
/* 06A478 80069878 46008407 */  neg.s $f16, $f16
/* 06A47C 8006987C E7A8006C */  swc1  $f8, 0x6c($sp)
/* 06A480 80069880 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 06A484 80069884 E7AC002C */  swc1  $f12, 0x2c($sp)
/* 06A488 80069888 46006307 */  neg.s $f12, $f12
/* 06A48C 8006988C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 06A490 80069890 E7A20070 */  swc1  $f2, 0x70($sp)
/* 06A494 80069894 46124082 */  mul.s $f2, $f8, $f18
/* 06A498 80069898 E7B20064 */  swc1  $f18, 0x64($sp)
/* 06A49C 8006989C 44809000 */  mtc1  $zero, $f18
/* 06A4A0 800698A0 E7AA0068 */  swc1  $f10, 0x68($sp)
/* 06A4A4 800698A4 E7B2007C */  swc1  $f18, 0x7c($sp)
/* 06A4A8 800698A8 46106482 */  mul.s $f18, $f12, $f16
/* 06A4AC 800698AC E7B00074 */  swc1  $f16, 0x74($sp)
/* 06A4B0 800698B0 44808000 */  mtc1  $zero, $f16
/* 06A4B4 800698B4 E7B40078 */  swc1  $f20, 0x78($sp)
/* 06A4B8 800698B8 46121480 */  add.s $f18, $f2, $f18
/* 06A4BC 800698BC C7A20054 */  lwc1  $f2, 0x54($sp)
/* 06A4C0 800698C0 E7B00080 */  swc1  $f16, 0x80($sp)
/* 06A4C4 800698C4 46041082 */  mul.s $f2, $f2, $f4
/* 06A4C8 800698C8 44808000 */  mtc1  $zero, $f16
/* 06A4CC 800698CC E7A40084 */  swc1  $f4, 0x84($sp)
/* 06A4D0 800698D0 C7A40028 */  lwc1  $f4, 0x28($sp)
/* 06A4D4 800698D4 460A4282 */  mul.s $f10, $f8, $f10
/* 06A4D8 800698D8 46029080 */  add.s $f2, $f18, $f2
/* 06A4DC 800698DC C7B20054 */  lwc1  $f18, 0x54($sp)
/* 06A4E0 800698E0 3C058012 */  lui   $a1, %hi(D_801210A0) # $a1, 0x8012
/* 06A4E4 800698E4 46041100 */  add.s $f4, $f2, $f4
/* 06A4E8 800698E8 C7A2002C */  lwc1  $f2, 0x2c($sp)
/* 06A4EC 800698EC E7B00090 */  swc1  $f16, 0x90($sp)
/* 06A4F0 800698F0 46146402 */  mul.s $f16, $f12, $f20
/* 06A4F4 800698F4 E7AE0058 */  swc1  $f14, 0x58($sp)
/* 06A4F8 800698F8 C7AE00F8 */  lwc1  $f14, 0xf8($sp)
/* 06A4FC 800698FC E7AC003C */  swc1  $f12, 0x3c($sp)
/* 06A500 80069900 46069482 */  mul.s $f18, $f18, $f6
/* 06A504 80069904 46105400 */  add.s $f16, $f10, $f16
/* 06A508 80069908 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 06A50C 8006990C 44816000 */  mtc1  $at, $f12
/* 06A510 80069910 46165282 */  mul.s $f10, $f10, $f22
/* 06A514 80069914 46128480 */  add.s $f18, $f16, $f18
/* 06A518 80069918 C7B00030 */  lwc1  $f16, 0x30($sp)
/* 06A51C 8006991C E7A60088 */  swc1  $f6, 0x88($sp)
/* 06A520 80069920 46029080 */  add.s $f2, $f18, $f2
/* 06A524 80069924 E7B6008C */  swc1  $f22, 0x8c($sp)
/* 06A528 80069928 46007387 */  neg.s $f14, $f14
/* 06A52C 8006992C 460E4382 */  mul.s $f14, $f8, $f14
/* 06A530 80069930 E7A40094 */  swc1  $f4, 0x94($sp)
/* 06A534 80069934 E7A20098 */  swc1  $f2, 0x98($sp)
/* 06A538 80069938 E7AC00A0 */  swc1  $f12, 0xa0($sp)
/* 06A53C 8006993C 460A7280 */  add.s $f10, $f14, $f10
/* 06A540 80069940 27A40064 */  addiu $a0, $sp, 0x64
/* 06A544 80069944 46105400 */  add.s $f16, $f10, $f16
/* 06A548 80069948 24A510A0 */  addiu $a1, %lo(D_801210A0) # addiu $a1, $a1, 0x10a0
/* 06A54C 8006994C E7B0009C */  swc1  $f16, 0x9c($sp)
/* 06A550 80069950 0C01BDDA */  jal   func_8006F768
/* 06A554 80069954 27A600A4 */   addiu $a2, $sp, 0xa4
/* 06A558 80069958 8FAA0104 */  lw    $t2, 0x104($sp)
/* 06A55C 8006995C 27A400A4 */  addiu $a0, $sp, 0xa4
/* 06A560 80069960 8D450000 */  lw    $a1, ($t2)
/* 06A564 80069964 0C01BE1C */  jal   func_8006F870
/* 06A568 80069968 00000000 */   nop   
/* 06A56C 8006996C 8FA50100 */  lw    $a1, 0x100($sp)
/* 06A570 80069970 8FA60104 */  lw    $a2, 0x104($sp)
/* 06A574 80069974 8CA20000 */  lw    $v0, ($a1)
/* 06A578 80069978 3C0C0180 */  lui   $t4, (0x01800040 >> 16) # lui $t4, 0x180
/* 06A57C 8006997C 244B0008 */  addiu $t3, $v0, 8
/* 06A580 80069980 358C0040 */  ori   $t4, (0x01800040 & 0xFFFF) # ori $t4, $t4, 0x40
/* 06A584 80069984 ACAB0000 */  sw    $t3, ($a1)
/* 06A588 80069988 AC4C0000 */  sw    $t4, ($v0)
/* 06A58C 8006998C 8CCD0000 */  lw    $t5, ($a2)
/* 06A590 80069990 3C018000 */  lui   $at, 0x8000
/* 06A594 80069994 01A17021 */  addu  $t6, $t5, $at
/* 06A598 80069998 AC4E0004 */  sw    $t6, 4($v0)
/* 06A59C 8006999C 8CCF0000 */  lw    $t7, ($a2)
/* 06A5A0 800699A0 3C08BC00 */  lui   $t0, (0xBC00000A >> 16) # lui $t0, 0xbc00
/* 06A5A4 800699A4 25F80040 */  addiu $t8, $t7, 0x40
/* 06A5A8 800699A8 ACD80000 */  sw    $t8, ($a2)
/* 06A5AC 800699AC 8CA20000 */  lw    $v0, ($a1)
/* 06A5B0 800699B0 3508000A */  ori   $t0, (0xBC00000A & 0xFFFF) # ori $t0, $t0, 0xa
/* 06A5B4 800699B4 24590008 */  addiu $t9, $v0, 8
/* 06A5B8 800699B8 ACB90000 */  sw    $t9, ($a1)
/* 06A5BC 800699BC 24090040 */  li    $t1, 64
/* 06A5C0 800699C0 AC490004 */  sw    $t1, 4($v0)
/* 06A5C4 800699C4 AC480000 */  sw    $t0, ($v0)
/* 06A5C8 800699C8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 06A5CC 800699CC C7B6001C */  lwc1  $f22, 0x1c($sp)
/* 06A5D0 800699D0 C7B70018 */  lwc1  $f23, 0x18($sp)
/* 06A5D4 800699D4 C7B40014 */  lwc1  $f20, 0x14($sp)
/* 06A5D8 800699D8 C7B50010 */  lwc1  $f21, 0x10($sp)
/* 06A5DC 800699DC 03E00008 */  jr    $ra
/* 06A5E0 800699E0 27BD0100 */   addiu $sp, $sp, 0x100

/* 06A5E4 800699E4 3C028012 */  lui   $v0, %hi(D_80120D20) # $v0, 0x8012
/* 06A5E8 800699E8 24420D20 */  addiu $v0, %lo(D_80120D20) # addiu $v0, $v0, 0xd20
/* 06A5EC 800699EC 8C4E0000 */  lw    $t6, ($v0)
/* 06A5F0 800699F0 3C018012 */  lui   $at, %hi(D_80120D28) # $at, 0x8012
/* 06A5F4 800699F4 000E7880 */  sll   $t7, $t6, 2
/* 06A5F8 800699F8 002F0821 */  addu  $at, $at, $t7
/* 06A5FC 800699FC C4240D28 */  lwc1  $f4, %lo(D_80120D28)($at)
/* 06A600 80069A00 3C018012 */  lui   $at, %hi(D_80120D40) # $at, 0x8012
/* 06A604 80069A04 E4840000 */  swc1  $f4, ($a0)
/* 06A608 80069A08 8C580000 */  lw    $t8, ($v0)
/* 06A60C 80069A0C 00000000 */  nop   
/* 06A610 80069A10 0018C880 */  sll   $t9, $t8, 2
/* 06A614 80069A14 00390821 */  addu  $at, $at, $t9
/* 06A618 80069A18 C4260D40 */  lwc1  $f6, %lo(D_80120D40)($at)
/* 06A61C 80069A1C 3C018012 */  lui   $at, %hi(perspNorm) # $at, 0x8012
/* 06A620 80069A20 E4A60000 */  swc1  $f6, ($a1)
/* 06A624 80069A24 8C480000 */  lw    $t0, ($v0)
/* 06A628 80069A28 00000000 */  nop   
/* 06A62C 80069A2C 00084880 */  sll   $t1, $t0, 2
/* 06A630 80069A30 00290821 */  addu  $at, $at, $t1
/* 06A634 80069A34 C4280D58 */  lwc1  $f8, %lo(perspNorm)($at)
/* 06A638 80069A38 03E00008 */  jr    $ra
/* 06A63C 80069A3C E4C80000 */   swc1  $f8, ($a2)
