glabel func_8000410C
/* 004D0C 8000410C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 004D10 80004110 AFBF0014 */  sw    $ra, 0x14($sp)
/* 004D14 80004114 AFA40020 */  sw    $a0, 0x20($sp)
/* 004D18 80004118 908F003E */  lbu   $t7, 0x3e($a0)
/* 004D1C 8000411C 00807025 */  move  $t6, $a0
/* 004D20 80004120 31F80004 */  andi  $t8, $t7, 4
/* 004D24 80004124 1300000C */  beqz  $t8, .L80004158
/* 004D28 80004128 3C19800E */   lui   $t9, %hi(gAlSndPlayer) # $t9, 0x800e
/* 004D2C 8000412C 8F39C6BC */  lw    $t9, %lo(gAlSndPlayer)($t9)
/* 004D30 80004130 25C5000C */  addiu $a1, $t6, 0xc
/* 004D34 80004134 8F240038 */  lw    $a0, 0x38($t9)
/* 004D38 80004138 0C03262C */  jal   alSynStopVoice
/* 004D3C 8000413C AFA5001C */   sw    $a1, 0x1c($sp)
/* 004D40 80004140 3C08800E */  lui   $t0, %hi(gAlSndPlayer) # $t0, 0x800e
/* 004D44 80004144 8D08C6BC */  lw    $t0, %lo(gAlSndPlayer)($t0)
/* 004D48 80004148 8FA5001C */  lw    $a1, 0x1c($sp)
/* 004D4C 8000414C 8D040038 */  lw    $a0, 0x38($t0)
/* 004D50 80004150 0C03264C */  jal   alSynFreeVoice
/* 004D54 80004154 00000000 */   nop   
.L80004158:
/* 004D58 80004158 8FA40020 */  lw    $a0, 0x20($sp)
/* 004D5C 8000415C 0C001148 */  jal   func_80004520
/* 004D60 80004160 00000000 */   nop   
/* 004D64 80004164 3C04800E */  lui   $a0, %hi(gAlSndPlayer) # $a0, 0x800e
/* 004D68 80004168 8C84C6BC */  lw    $a0, %lo(gAlSndPlayer)($a0)
/* 004D6C 8000416C 8FA50020 */  lw    $a1, 0x20($sp)
/* 004D70 80004170 3406FFFF */  li    $a2, 65535
/* 004D74 80004174 0C00107F */  jal   func_800041FC
/* 004D78 80004178 24840014 */   addiu $a0, $a0, 0x14
/* 004D7C 8000417C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 004D80 80004180 27BD0020 */  addiu $sp, $sp, 0x20
/* 004D84 80004184 03E00008 */  jr    $ra
/* 004D88 80004188 00000000 */   nop   

