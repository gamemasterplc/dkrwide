glabel decrypt_magic_codes
/* 00CED8 8000C2D8 00053083 */  sra   $a2, $a1, 2
/* 00CEDC 8000C2DC 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 00CEE0 8000C2E0 00801025 */  move  $v0, $a0
/* 00CEE4 8000C2E4 18C0005C */  blez  $a2, .L8000C458
/* 00CEE8 8000C2E8 00001825 */   move  $v1, $zero
.L8000C2EC:
/* 00CEEC 8000C2EC 904E0003 */  lbu   $t6, 3($v0)
/* 00CEF0 8000C2F0 90590000 */  lbu   $t9, ($v0)
/* 00CEF4 8000C2F4 31CF00C0 */  andi  $t7, $t6, 0xc0
/* 00CEF8 8000C2F8 904B0001 */  lbu   $t3, 1($v0)
/* 00CEFC 8000C2FC 000FC183 */  sra   $t8, $t7, 6
/* 00CF00 8000C300 904F0002 */  lbu   $t7, 2($v0)
/* 00CF04 8000C304 332900C0 */  andi  $t1, $t9, 0xc0
/* 00CF08 8000C308 03095025 */  or    $t2, $t8, $t1
/* 00CF0C 8000C30C 316C00C0 */  andi  $t4, $t3, 0xc0
/* 00CF10 8000C310 000C6883 */  sra   $t5, $t4, 2
/* 00CF14 8000C314 31F900C0 */  andi  $t9, $t7, 0xc0
/* 00CF18 8000C318 0019C103 */  sra   $t8, $t9, 4
/* 00CF1C 8000C31C 014D7025 */  or    $t6, $t2, $t5
/* 00CF20 8000C320 01D84825 */  or    $t1, $t6, $t8
/* 00CF24 8000C324 A3A90000 */  sb    $t1, ($sp)
/* 00CF28 8000C328 904B0003 */  lbu   $t3, 3($v0)
/* 00CF2C 8000C32C 904D0000 */  lbu   $t5, ($v0)
/* 00CF30 8000C330 316C0030 */  andi  $t4, $t3, 0x30
/* 00CF34 8000C334 000C5103 */  sra   $t2, $t4, 4
/* 00CF38 8000C338 904C0002 */  lbu   $t4, 2($v0)
/* 00CF3C 8000C33C 90580001 */  lbu   $t8, 1($v0)
/* 00CF40 8000C340 31AF0030 */  andi  $t7, $t5, 0x30
/* 00CF44 8000C344 000FC880 */  sll   $t9, $t7, 2
/* 00CF48 8000C348 01597025 */  or    $t6, $t2, $t9
/* 00CF4C 8000C34C 318D0030 */  andi  $t5, $t4, 0x30
/* 00CF50 8000C350 33090030 */  andi  $t1, $t8, 0x30
/* 00CF54 8000C354 01C95825 */  or    $t3, $t6, $t1
/* 00CF58 8000C358 000D7883 */  sra   $t7, $t5, 2
/* 00CF5C 8000C35C 016F5025 */  or    $t2, $t3, $t7
/* 00CF60 8000C360 A3AA0001 */  sb    $t2, 1($sp)
/* 00CF64 8000C364 90490000 */  lbu   $t1, ($v0)
/* 00CF68 8000C368 90590003 */  lbu   $t9, 3($v0)
/* 00CF6C 8000C36C 904F0001 */  lbu   $t7, 1($v0)
/* 00CF70 8000C370 312C000C */  andi  $t4, $t1, 0xc
/* 00CF74 8000C374 3338000C */  andi  $t8, $t9, 0xc
/* 00CF78 8000C378 90490002 */  lbu   $t1, 2($v0)
/* 00CF7C 8000C37C 00187083 */  sra   $t6, $t8, 2
/* 00CF80 8000C380 000C6900 */  sll   $t5, $t4, 4
/* 00CF84 8000C384 31EA000C */  andi  $t2, $t7, 0xc
/* 00CF88 8000C388 000AC880 */  sll   $t9, $t2, 2
/* 00CF8C 8000C38C 01CD5825 */  or    $t3, $t6, $t5
/* 00CF90 8000C390 0179C025 */  or    $t8, $t3, $t9
/* 00CF94 8000C394 312C000C */  andi  $t4, $t1, 0xc
/* 00CF98 8000C398 030C7025 */  or    $t6, $t8, $t4
/* 00CF9C 8000C39C A3AE0002 */  sb    $t6, 2($sp)
/* 00CFA0 8000C3A0 904D0003 */  lbu   $t5, 3($v0)
/* 00CFA4 8000C3A4 90580001 */  lbu   $t8, 1($v0)
/* 00CFA8 8000C3A8 904B0000 */  lbu   $t3, ($v0)
/* 00CFAC 8000C3AC 31AF0003 */  andi  $t7, $t5, 3
/* 00CFB0 8000C3B0 330C0003 */  andi  $t4, $t8, 3
/* 00CFB4 8000C3B4 000BC980 */  sll   $t9, $t3, 6
/* 00CFB8 8000C3B8 904A0002 */  lbu   $t2, 2($v0)
/* 00CFBC 8000C3BC 93A40000 */  lbu   $a0, ($sp)
/* 00CFC0 8000C3C0 01F94825 */  or    $t1, $t7, $t9
/* 00CFC4 8000C3C4 000C7100 */  sll   $t6, $t4, 4
/* 00CFC8 8000C3C8 012E6825 */  or    $t5, $t1, $t6
/* 00CFCC 8000C3CC 314B0003 */  andi  $t3, $t2, 3
/* 00CFD0 8000C3D0 000B7880 */  sll   $t7, $t3, 2
/* 00CFD4 8000C3D4 308900AA */  andi  $t1, $a0, 0xaa
/* 00CFD8 8000C3D8 30980055 */  andi  $t8, $a0, 0x55
/* 00CFDC 8000C3DC 01AFC825 */  or    $t9, $t5, $t7
/* 00CFE0 8000C3E0 00186040 */  sll   $t4, $t8, 1
/* 00CFE4 8000C3E4 00097043 */  sra   $t6, $t1, 1
/* 00CFE8 8000C3E8 A3B90003 */  sb    $t9, 3($sp)
/* 00CFEC 8000C3EC 018E5025 */  or    $t2, $t4, $t6
/* 00CFF0 8000C3F0 A04A0000 */  sb    $t2, ($v0)
/* 00CFF4 8000C3F4 93A50001 */  lbu   $a1, 1($sp)
/* 00CFF8 8000C3F8 24630001 */  addiu $v1, $v1, 1
/* 00CFFC 8000C3FC 30AB0055 */  andi  $t3, $a1, 0x55
/* 00D000 8000C400 30AF00AA */  andi  $t7, $a1, 0xaa
/* 00D004 8000C404 000FC843 */  sra   $t9, $t7, 1
/* 00D008 8000C408 000B6840 */  sll   $t5, $t3, 1
/* 00D00C 8000C40C 01B9C025 */  or    $t8, $t5, $t9
/* 00D010 8000C410 A0580001 */  sb    $t8, 1($v0)
/* 00D014 8000C414 93A70002 */  lbu   $a3, 2($sp)
/* 00D018 8000C418 24420004 */  addiu $v0, $v0, 4
/* 00D01C 8000C41C 30E90055 */  andi  $t1, $a3, 0x55
/* 00D020 8000C420 30EE00AA */  andi  $t6, $a3, 0xaa
/* 00D024 8000C424 000E5043 */  sra   $t2, $t6, 1
/* 00D028 8000C428 00096040 */  sll   $t4, $t1, 1
/* 00D02C 8000C42C 018A5825 */  or    $t3, $t4, $t2
/* 00D030 8000C430 A04BFFFE */  sb    $t3, -2($v0)
/* 00D034 8000C434 93A80003 */  lbu   $t0, 3($sp)
/* 00D038 8000C438 00000000 */  nop   
/* 00D03C 8000C43C 310F0055 */  andi  $t7, $t0, 0x55
/* 00D040 8000C440 311900AA */  andi  $t9, $t0, 0xaa
/* 00D044 8000C444 0019C043 */  sra   $t8, $t9, 1
/* 00D048 8000C448 000F6840 */  sll   $t5, $t7, 1
/* 00D04C 8000C44C 01B84825 */  or    $t1, $t5, $t8
/* 00D050 8000C450 1466FFA6 */  bne   $v1, $a2, .L8000C2EC
/* 00D054 8000C454 A049FFFF */   sb    $t1, -1($v0)
.L8000C458:
/* 00D058 8000C458 03E00008 */  jr    $ra
/* 00D05C 8000C45C 27BD0010 */   addiu $sp, $sp, 0x10

