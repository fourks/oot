glabel func_809F48FC
/* 0163C 809F48FC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01640 809F4900 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01644 809F4904 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01648 809F4908 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0164C 809F490C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01650 809F4910 AFA50034 */  sw      $a1, 0x0034($sp)
/* 01654 809F4914 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01658 809F4918 24842E1C */  addiu   $a0, $a0, 0x2E1C           ## $a0 = 06002E1C
/* 0165C 809F491C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01660 809F4920 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01664 809F4924 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 01668 809F4928 468021A0 */  cvt.s.w $f6, $f4
/* 0166C 809F492C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01670 809F4930 24A52E1C */  addiu   $a1, $a1, 0x2E1C           ## $a1 = 06002E1C
/* 01674 809F4934 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01678 809F4938 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0167C 809F493C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01680 809F4940 4600320D */  trunc.w.s $f8, $f6
/* 01684 809F4944 440F4000 */  mfc1    $t7, $f8
/* 01688 809F4948 00000000 */  nop
/* 0168C 809F494C A60F026E */  sh      $t7, 0x026E($s0)           ## 0000026E
/* 01690 809F4950 8618026E */  lh      $t8, 0x026E($s0)           ## 0000026E
/* 01694 809F4954 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01698 809F4958 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 0169C 809F495C 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 016A0 809F4960 00000000 */  nop
/* 016A4 809F4964 46805420 */  cvt.s.w $f16, $f10
/* 016A8 809F4968 0C029468 */  jal     SkelAnime_ChangeAnim

/* 016AC 809F496C E7B00010 */  swc1    $f16, 0x0010($sp)
/* 016B0 809F4970 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 016B4 809F4974 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 016B8 809F4978 3C08809F */  lui     $t0, %hi(func_809F49A4)    ## $t0 = 809F0000
/* 016BC 809F497C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 016C0 809F4980 250849A4 */  addiu   $t0, $t0, %lo(func_809F49A4) ## $t0 = 809F49A4
/* 016C4 809F4984 A2190218 */  sb      $t9, 0x0218($s0)           ## 00000218
/* 016C8 809F4988 AE080214 */  sw      $t0, 0x0214($s0)           ## 00000214
/* 016CC 809F498C E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 016D0 809F4990 8FBF002C */  lw      $ra, 0x002C($sp)
/* 016D4 809F4994 8FB00028 */  lw      $s0, 0x0028($sp)
/* 016D8 809F4998 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 016DC 809F499C 03E00008 */  jr      $ra
/* 016E0 809F49A0 00000000 */  nop
