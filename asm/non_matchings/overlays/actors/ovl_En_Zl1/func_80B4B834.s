glabel func_80B4B834
/* 00CF4 80B4B834 8C8E0018 */  lw      $t6, 0x0018($a0)           ## 00000018
/* 00CF8 80B4B838 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00CFC 80B4B83C 00000000 */  nop
/* 00D00 80B4B840 468021A0 */  cvt.s.w $f6, $f4                   
/* 00D04 80B4B844 E4A60000 */  swc1    $f6, 0x0000($a1)           ## 00000000
/* 00D08 80B4B848 8C8F001C */  lw      $t7, 0x001C($a0)           ## 0000001C
/* 00D0C 80B4B84C 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 00D10 80B4B850 00000000 */  nop
/* 00D14 80B4B854 468042A0 */  cvt.s.w $f10, $f8                  
/* 00D18 80B4B858 E4AA0004 */  swc1    $f10, 0x0004($a1)          ## 00000004
/* 00D1C 80B4B85C 8C980020 */  lw      $t8, 0x0020($a0)           ## 00000020
/* 00D20 80B4B860 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 00D24 80B4B864 00000000 */  nop
/* 00D28 80B4B868 468084A0 */  cvt.s.w $f18, $f16                 
/* 00D2C 80B4B86C 03E00008 */  jr      $ra                        
/* 00D30 80B4B870 E4B20008 */  swc1    $f18, 0x0008($a1)          ## 00000008
