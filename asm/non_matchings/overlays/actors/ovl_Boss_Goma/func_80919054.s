glabel func_80919054
/* 03644 80919054 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 03648 80919058 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 0364C 8091905C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03650 80919060 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 03654 80919064 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03658 80919068 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0365C 8091906C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 03660 80919070 AFA4003C */  sw      $a0, 0x003C($sp)           
/* 03664 80919074 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 03668 80919078 0C0295B2 */  jal     func_800A56C8              
/* 0366C 8091907C 8E05021C */  lw      $a1, 0x021C($s0)           ## 0000021C
/* 03670 80919080 50400009 */  beql    $v0, $zero, .L809190A8     
/* 03674 80919084 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 03678 80919088 0C24599A */  jal     func_80916668              
/* 0367C 8091908C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03680 80919090 240E005C */  addiu   $t6, $zero, 0x005C         ## $t6 = 0000005C
/* 03684 80919094 240F0096 */  addiu   $t7, $zero, 0x0096         ## $t7 = 00000096
/* 03688 80919098 A60E01D6 */  sh      $t6, 0x01D6($s0)           ## 000001D6
/* 0368C 8091909C A6000196 */  sh      $zero, 0x0196($s0)         ## 00000196
/* 03690 809190A0 A60F01D2 */  sh      $t7, 0x01D2($s0)           ## 000001D2
/* 03694 809190A4 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
.L809190A8:
/* 03698 809190A8 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 0369C 809190AC 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 036A0 809190B0 241901F4 */  addiu   $t9, $zero, 0x01F4         ## $t9 = 000001F4
/* 036A4 809190B4 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 036A8 809190B8 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 036AC 809190BC AFA90020 */  sw      $t1, 0x0020($sp)           
/* 036B0 809190C0 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 036B4 809190C4 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 036B8 809190C8 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 036BC 809190CC 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 036C0 809190D0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 036C4 809190D4 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 036C8 809190D8 3C07425C */  lui     $a3, 0x425C                ## $a3 = 425C0000
/* 036CC 809190DC 0C00CC98 */  jal     func_80033260              
/* 036D0 809190E0 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 036D4 809190E4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 036D8 809190E8 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 036DC 809190EC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 036E0 809190F0 03E00008 */  jr      $ra                        
/* 036E4 809190F4 00000000 */  nop
