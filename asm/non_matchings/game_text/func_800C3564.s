glabel func_800C3564
/* 0C4164 800C3564 27BDFF78 */  addiu $sp, $sp, -0x88
/* 0C4168 800C3568 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C416C 800C356C 240E000A */  li    $t6, 10
/* 0C4170 800C3570 240F000F */  li    $t7, 15
/* 0C4174 800C3574 241800B4 */  li    $t8, 180
/* 0C4178 800C3578 2419007D */  li    $t9, 125
/* 0C417C 800C357C 24080004 */  li    $t0, 4
/* 0C4180 800C3580 24090005 */  li    $t1, 5
/* 0C4184 800C3584 240A000A */  li    $t2, 10
/* 0C4188 800C3588 240B000F */  li    $t3, 15
/* 0C418C 800C358C 240C007D */  li    $t4, 125
/* 0C4190 800C3590 AFB30028 */  sw    $s3, 0x28($sp)
/* 0C4194 800C3594 AFB20024 */  sw    $s2, 0x24($sp)
/* 0C4198 800C3598 AFB10020 */  sw    $s1, 0x20($sp)
/* 0C419C 800C359C AFB0001C */  sw    $s0, 0x1c($sp)
/* 0C41A0 800C35A0 AFA00040 */  sw    $zero, 0x40($sp)
/* 0C41A4 800C35A4 AFB90050 */  sw    $t9, 0x50($sp)
/* 0C41A8 800C35A8 AFB8004C */  sw    $t8, 0x4c($sp)
/* 0C41AC 800C35AC AFAF0048 */  sw    $t7, 0x48($sp)
/* 0C41B0 800C35B0 AFAE0044 */  sw    $t6, 0x44($sp)
/* 0C41B4 800C35B4 AFA80064 */  sw    $t0, 0x64($sp)
/* 0C41B8 800C35B8 AFA00054 */  sw    $zero, 0x54($sp)
/* 0C41BC 800C35BC AFA00058 */  sw    $zero, 0x58($sp)
/* 0C41C0 800C35C0 AFA0005C */  sw    $zero, 0x5c($sp)
/* 0C41C4 800C35C4 AFA00060 */  sw    $zero, 0x60($sp)
/* 0C41C8 800C35C8 AFAB0070 */  sw    $t3, 0x70($sp)
/* 0C41CC 800C35CC AFAA006C */  sw    $t2, 0x6c($sp)
/* 0C41D0 800C35D0 AFA90068 */  sw    $t1, 0x68($sp)
/* 0C41D4 800C35D4 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0C41D8 800C35D8 24040001 */  li    $a0, 1
/* 0C41DC 800C35DC 2405000A */  li    $a1, 10
/* 0C41E0 800C35E0 2406000F */  li    $a2, 15
/* 0C41E4 800C35E4 0C0313B7 */  jal   set_current_dialogue_box_coords
/* 0C41E8 800C35E8 240700B4 */   li    $a3, 180
/* 0C41EC 800C35EC 8FA50040 */  lw    $a1, 0x40($sp)
/* 0C41F0 800C35F0 0C0313DF */  jal   set_dialogue_font
/* 0C41F4 800C35F4 24040001 */   li    $a0, 1
/* 0C41F8 800C35F8 240D0080 */  li    $t5, 128
/* 0C41FC 800C35FC AFAD0010 */  sw    $t5, 0x10($sp)
/* 0C4200 800C3600 24040001 */  li    $a0, 1
/* 0C4204 800C3604 00002825 */  move  $a1, $zero
/* 0C4208 800C3608 24060010 */  li    $a2, 16
/* 0C420C 800C360C 0C0313EF */  jal   set_current_dialogue_background_colour
/* 0C4210 800C3610 24070010 */   li    $a3, 16
/* 0C4214 800C3614 8FAE0060 */  lw    $t6, 0x60($sp)
/* 0C4218 800C3618 8FA50054 */  lw    $a1, 0x54($sp)
/* 0C421C 800C361C 8FA60058 */  lw    $a2, 0x58($sp)
/* 0C4220 800C3620 8FA7005C */  lw    $a3, 0x5c($sp)
/* 0C4224 800C3624 240F00FF */  li    $t7, 255
/* 0C4228 800C3628 AFAF0014 */  sw    $t7, 0x14($sp)
/* 0C422C 800C362C 24040001 */  li    $a0, 1
/* 0C4230 800C3630 0C031400 */  jal   set_current_text_colour
/* 0C4234 800C3634 AFAE0010 */   sw    $t6, 0x10($sp)
/* 0C4238 800C3638 3C048013 */  lui   $a0, %hi(D_8012A78E) # $a0, 0x8013
/* 0C423C 800C363C 8484A78E */  lh    $a0, %lo(D_8012A78E)($a0)
/* 0C4240 800C3640 00008825 */  move  $s1, $zero
/* 0C4244 800C3644 10800023 */  beqz  $a0, .L800C36D4
/* 0C4248 800C3648 00003025 */   move  $a2, $zero
/* 0C424C 800C364C 3C028013 */  lui   $v0, %hi(D_8012A7A0) # $v0, 0x8013
/* 0C4250 800C3650 8C42A7A0 */  lw    $v0, %lo(D_8012A7A0)($v0)
/* 0C4254 800C3654 24120002 */  li    $s2, 2
/* 0C4258 800C3658 90580000 */  lbu   $t8, ($v0)
/* 0C425C 800C365C 00408021 */  addu  $s0, $v0, $zero
/* 0C4260 800C3660 1258001C */  beq   $s2, $t8, .L800C36D4
/* 0C4264 800C3664 330300FF */   andi  $v1, $t8, 0xff
/* 0C4268 800C3668 27B30040 */  addiu $s3, $sp, 0x40
/* 0C426C 800C366C 28610003 */  slti  $at, $v1, 3
.L800C3670:
/* 0C4270 800C3670 1420000E */  bnez  $at, .L800C36AC
/* 0C4274 800C3674 2861000D */   slti  $at, $v1, 0xd
/* 0C4278 800C3678 1020000C */  beqz  $at, .L800C36AC
/* 0C427C 800C367C 02602825 */   move  $a1, $s3
/* 0C4280 800C3680 02202025 */  move  $a0, $s1
/* 0C4284 800C3684 0C030E2D */  jal   func_800C38B4
/* 0C4288 800C3688 AFA6007C */   sw    $a2, 0x7c($sp)
/* 0C428C 800C368C 3C198013 */  lui   $t9, %hi(D_8012A7A0) # $t9, 0x8013
/* 0C4290 800C3690 8F39A7A0 */  lw    $t9, %lo(D_8012A7A0)($t9)
/* 0C4294 800C3694 3C048013 */  lui   $a0, %hi(D_8012A78E) # $a0, 0x8013
/* 0C4298 800C3698 03228021 */  addu  $s0, $t9, $v0
/* 0C429C 800C369C 92030000 */  lbu   $v1, ($s0)
/* 0C42A0 800C36A0 8484A78E */  lh    $a0, %lo(D_8012A78E)($a0)
/* 0C42A4 800C36A4 8FA6007C */  lw    $a2, 0x7c($sp)
/* 0C42A8 800C36A8 00408825 */  move  $s1, $v0
.L800C36AC:
/* 0C42AC 800C36AC 24010001 */  li    $at, 1
/* 0C42B0 800C36B0 14610002 */  bne   $v1, $at, .L800C36BC
/* 0C42B4 800C36B4 26310001 */   addiu $s1, $s1, 1
/* 0C42B8 800C36B8 24C60001 */  addiu $a2, $a2, 1
.L800C36BC:
/* 0C42BC 800C36BC 10C40005 */  beq   $a2, $a0, .L800C36D4
/* 0C42C0 800C36C0 26100001 */   addiu $s0, $s0, 1
/* 0C42C4 800C36C4 92030000 */  lbu   $v1, ($s0)
/* 0C42C8 800C36C8 00000000 */  nop   
/* 0C42CC 800C36CC 1643FFE8 */  bne   $s2, $v1, .L800C3670
/* 0C42D0 800C36D0 28610003 */   slti  $at, $v1, 3
.L800C36D4:
/* 0C42D4 800C36D4 3C088013 */  lui   $t0, %hi(D_8012A7A0) # $t0, 0x8013
/* 0C42D8 800C36D8 8D08A7A0 */  lw    $t0, %lo(D_8012A7A0)($t0)
/* 0C42DC 800C36DC 27B30040 */  addiu $s3, $sp, 0x40
/* 0C42E0 800C36E0 01114821 */  addu  $t1, $t0, $s1
/* 0C42E4 800C36E4 91230000 */  lbu   $v1, ($t1)
/* 0C42E8 800C36E8 00000000 */  nop   
/* 0C42EC 800C36EC 28610003 */  slti  $at, $v1, 3
/* 0C42F0 800C36F0 14200006 */  bnez  $at, .L800C370C
/* 0C42F4 800C36F4 2861000D */   slti  $at, $v1, 0xd
/* 0C42F8 800C36F8 10200004 */  beqz  $at, .L800C370C
/* 0C42FC 800C36FC 02202025 */   move  $a0, $s1
/* 0C4300 800C3700 0C030E2D */  jal   func_800C38B4
/* 0C4304 800C3704 02602825 */   move  $a1, $s3
/* 0C4308 800C3708 00408825 */  move  $s1, $v0
.L800C370C:
/* 0C430C 800C370C 24120001 */  li    $s2, 1
.L800C3710:
/* 0C4310 800C3710 3C0A8013 */  lui   $t2, %hi(D_8012A7A0) # $t2, 0x8013
/* 0C4314 800C3714 8D4AA7A0 */  lw    $t2, %lo(D_8012A7A0)($t2)
/* 0C4318 800C3718 8FAB0064 */  lw    $t3, 0x64($sp)
/* 0C431C 800C371C 24040001 */  li    $a0, 1
/* 0C4320 800C3720 15600004 */  bnez  $t3, .L800C3734
/* 0C4324 800C3724 01518021 */   addu  $s0, $t2, $s1
/* 0C4328 800C3728 8FA50068 */  lw    $a1, 0x68($sp)
/* 0C432C 800C372C 10000007 */  b     .L800C374C
/* 0C4330 800C3730 00000000 */   nop   
.L800C3734:
/* 0C4334 800C3734 8FAC004C */  lw    $t4, 0x4c($sp)
/* 0C4338 800C3738 8FAD0044 */  lw    $t5, 0x44($sp)
/* 0C433C 800C373C 00000000 */  nop   
/* 0C4340 800C3740 018D2823 */  subu  $a1, $t4, $t5
/* 0C4344 800C3744 00057043 */  sra   $t6, $a1, 1
/* 0C4348 800C3748 01C02825 */  move  $a1, $t6
.L800C374C:
/* 0C434C 800C374C 3C0F800E */  lui   $t7, %hi(D_800E3674) # $t7, 0x800e
/* 0C4350 800C3750 85EF3674 */  lh    $t7, %lo(D_800E3674)($t7)
/* 0C4354 800C3754 8FB80064 */  lw    $t8, 0x64($sp)
/* 0C4358 800C3758 8FA6006C */  lw    $a2, 0x6c($sp)
/* 0C435C 800C375C 02003825 */  move  $a3, $s0
/* 0C4360 800C3760 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0C4364 800C3764 0C03145A */  jal   render_dialogue_text
/* 0C4368 800C3768 AFB80014 */   sw    $t8, 0x14($sp)
/* 0C436C 800C376C 8FB9006C */  lw    $t9, 0x6c($sp)
/* 0C4370 800C3770 8FA80070 */  lw    $t0, 0x70($sp)
/* 0C4374 800C3774 3C0A8013 */  lui   $t2, %hi(D_8012A7A0) # $t2, 0x8013
/* 0C4378 800C3778 8D4AA7A0 */  lw    $t2, %lo(D_8012A7A0)($t2)
/* 0C437C 800C377C 03284821 */  addu  $t1, $t9, $t0
/* 0C4380 800C3780 AFA9006C */  sw    $t1, 0x6c($sp)
/* 0C4384 800C3784 01518021 */  addu  $s0, $t2, $s1
/* 0C4388 800C3788 92030000 */  lbu   $v1, ($s0)
/* 0C438C 800C378C 00000000 */  nop   
/* 0C4390 800C3790 18600005 */  blez  $v1, .L800C37A8
/* 0C4394 800C3794 00000000 */   nop   
.L800C3798:
/* 0C4398 800C3798 92030001 */  lbu   $v1, 1($s0)
/* 0C439C 800C379C 26310001 */  addiu $s1, $s1, 1
/* 0C43A0 800C37A0 1C60FFFD */  bgtz  $v1, .L800C3798
/* 0C43A4 800C37A4 26100001 */   addiu $s0, $s0, 1
.L800C37A8:
/* 0C43A8 800C37A8 14600006 */  bnez  $v1, .L800C37C4
/* 0C43AC 800C37AC 28610003 */   slti  $at, $v1, 3
.L800C37B0:
/* 0C43B0 800C37B0 92030001 */  lbu   $v1, 1($s0)
/* 0C43B4 800C37B4 26310001 */  addiu $s1, $s1, 1
/* 0C43B8 800C37B8 1060FFFD */  beqz  $v1, .L800C37B0
/* 0C43BC 800C37BC 26100001 */   addiu $s0, $s0, 1
/* 0C43C0 800C37C0 28610003 */  slti  $at, $v1, 3
.L800C37C4:
/* 0C43C4 800C37C4 10200003 */  beqz  $at, .L800C37D4
/* 0C43C8 800C37C8 28610003 */   slti  $at, $v1, 3
/* 0C43CC 800C37CC 00009025 */  move  $s2, $zero
/* 0C43D0 800C37D0 28610003 */  slti  $at, $v1, 3
.L800C37D4:
/* 0C43D4 800C37D4 14200006 */  bnez  $at, .L800C37F0
/* 0C43D8 800C37D8 2861000D */   slti  $at, $v1, 0xd
/* 0C43DC 800C37DC 10200004 */  beqz  $at, .L800C37F0
/* 0C43E0 800C37E0 02202025 */   move  $a0, $s1
/* 0C43E4 800C37E4 0C030E2D */  jal   func_800C38B4
/* 0C43E8 800C37E8 02602825 */   move  $a1, $s3
/* 0C43EC 800C37EC 00408825 */  move  $s1, $v0
.L800C37F0:
/* 0C43F0 800C37F0 1640FFC7 */  bnez  $s2, .L800C3710
/* 0C43F4 800C37F4 00000000 */   nop   
/* 0C43F8 800C37F8 0C01A955 */  jal   get_buttons_pressed_from_player
/* 0C43FC 800C37FC 00002025 */   move  $a0, $zero
/* 0C4400 800C3800 3C0B8013 */  lui   $t3, %hi(D_8012A787) # $t3, 0x8013
/* 0C4404 800C3804 816BA787 */  lb    $t3, %lo(D_8012A787)($t3)
/* 0C4408 800C3808 00401825 */  move  $v1, $v0
/* 0C440C 800C380C 15600002 */  bnez  $t3, .L800C3818
/* 0C4410 800C3810 3C108013 */   lui   $s0, %hi(D_8012A78A) # $s0, 0x8013
/* 0C4414 800C3814 00001825 */  move  $v1, $zero
.L800C3818:
/* 0C4418 800C3818 2610A78A */  addiu $s0, %lo(D_8012A78A) # addiu $s0, $s0, -0x5876
/* 0C441C 800C381C 920C0000 */  lbu   $t4, ($s0)
/* 0C4420 800C3820 306D8000 */  andi  $t5, $v1, 0x8000
/* 0C4424 800C3824 1580001B */  bnez  $t4, .L800C3894
/* 0C4428 800C3828 8FBF002C */   lw    $ra, 0x2c($sp)
/* 0C442C 800C382C 15A00004 */  bnez  $t5, .L800C3840
/* 0C4430 800C3830 3C0E8013 */   lui   $t6, %hi(D_8012A784) # $t6, 0x8013
/* 0C4434 800C3834 81CEA784 */  lb    $t6, %lo(D_8012A784)($t6)
/* 0C4438 800C3838 00000000 */  nop   
/* 0C443C 800C383C 11C00014 */  beqz  $t6, .L800C3890
.L800C3840:
/* 0C4440 800C3840 3C0F8013 */   lui   $t7, %hi(D_8012A7A0) # $t7, 0x8013
/* 0C4444 800C3844 8DEFA7A0 */  lw    $t7, %lo(D_8012A7A0)($t7)
/* 0C4448 800C3848 24010001 */  li    $at, 1
/* 0C444C 800C384C 01F1C021 */  addu  $t8, $t7, $s1
/* 0C4450 800C3850 93190000 */  lbu   $t9, ($t8)
/* 0C4454 800C3854 3C088013 */  lui   $t0, %hi(D_8012A78E) # $t0, 0x8013
/* 0C4458 800C3858 17210006 */  bne   $t9, $at, .L800C3874
/* 0C445C 800C385C 24040003 */   li    $a0, 3
/* 0C4460 800C3860 8508A78E */  lh    $t0, %lo(D_8012A78E)($t0)
/* 0C4464 800C3864 3C018013 */  lui   $at, %hi(D_8012A78E) # $at, 0x8013
/* 0C4468 800C3868 25090001 */  addiu $t1, $t0, 1
/* 0C446C 800C386C 10000004 */  b     .L800C3880
/* 0C4470 800C3870 A429A78E */   sh    $t1, %lo(D_8012A78E)($at)
.L800C3874:
/* 0C4474 800C3874 3C018013 */  lui   $at, %hi(D_8012A789) # $at, 0x8013
/* 0C4478 800C3878 0C0273DA */  jal   func_8009CF68
/* 0C447C 800C387C A020A789 */   sb    $zero, %lo(D_8012A789)($at)
.L800C3880:
/* 0C4480 800C3880 3C018013 */  lui   $at, %hi(D_8012A784) # $at, 0x8013
/* 0C4484 800C3884 A020A784 */  sb    $zero, %lo(D_8012A784)($at)
/* 0C4488 800C3888 3C018013 */  lui   $at, %hi(D_8012A786) # $at, 0x8013
/* 0C448C 800C388C A020A786 */  sb    $zero, %lo(D_8012A786)($at)
.L800C3890:
/* 0C4490 800C3890 8FBF002C */  lw    $ra, 0x2c($sp)
.L800C3894:
/* 0C4494 800C3894 A2000000 */  sb    $zero, ($s0)
/* 0C4498 800C3898 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0C449C 800C389C 8FB10020 */  lw    $s1, 0x20($sp)
/* 0C44A0 800C38A0 8FB20024 */  lw    $s2, 0x24($sp)
/* 0C44A4 800C38A4 8FB30028 */  lw    $s3, 0x28($sp)
/* 0C44A8 800C38A8 27BD0088 */  addiu $sp, $sp, 0x88
/* 0C44AC 800C38AC 03E00008 */  jr    $ra
/* 0C44B0 800C38B0 24020001 */   li    $v0, 1

