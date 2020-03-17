glabel EnBomChu_Update
/* 00DA0 809C65D0 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00DA4 809C65D4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00DA8 809C65D8 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00DAC 809C65DC AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00DB0 809C65E0 908E007D */  lbu     $t6, 0x007D($a0)           ## 0000007D
/* 00DB4 809C65E4 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00DB8 809C65E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DBC 809C65EC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00DC0 809C65F0 11C10037 */  beq     $t6, $at, .L809C66D0       
/* 00DC4 809C65F4 AFAE0030 */  sw      $t6, 0x0030($sp)           
/* 00DC8 809C65F8 848700B6 */  lh      $a3, 0x00B6($a0)           ## 000000B6
/* 00DCC 809C65FC 24A407C0 */  addiu   $a0, $a1, 0x07C0           ## $a0 = 000007C0
/* 00DD0 809C6600 01C02825 */  or      $a1, $t6, $zero            ## $a1 = 00000000
/* 00DD4 809C6604 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00DD8 809C6608 0C010CE9 */  jal     func_800433A4              
/* 00DDC 809C660C A7A7006E */  sh      $a3, 0x006E($sp)           
/* 00DE0 809C6610 87A7006E */  lh      $a3, 0x006E($sp)           
/* 00DE4 809C6614 860300B6 */  lh      $v1, 0x00B6($s0)           ## 000000B6
/* 00DE8 809C6618 10E3002D */  beq     $a3, $v1, .L809C66D0       
/* 00DEC 809C661C 00673823 */  subu    $a3, $v1, $a3              
/* 00DF0 809C6620 00073C00 */  sll     $a3, $a3, 16               
/* 00DF4 809C6624 00073C03 */  sra     $a3, $a3, 16               
/* 00DF8 809C6628 00072400 */  sll     $a0, $a3, 16               
/* 00DFC 809C662C 00042403 */  sra     $a0, $a0, 16               
/* 00E00 809C6630 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00E04 809C6634 A7A7006E */  sh      $a3, 0x006E($sp)           
/* 00E08 809C6638 87A7006E */  lh      $a3, 0x006E($sp)           
/* 00E0C 809C663C E7A00068 */  swc1    $f0, 0x0068($sp)           
/* 00E10 809C6640 00072400 */  sll     $a0, $a3, 16               
/* 00E14 809C6644 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00E18 809C6648 00042403 */  sra     $a0, $a0, 16               
/* 00E1C 809C664C C7AC0068 */  lwc1    $f12, 0x0068($sp)          
/* 00E20 809C6650 C60E015C */  lwc1    $f14, 0x015C($s0)          ## 0000015C
/* 00E24 809C6654 C6020154 */  lwc1    $f2, 0x0154($s0)           ## 00000154
/* 00E28 809C6658 C6100168 */  lwc1    $f16, 0x0168($s0)          ## 00000168
/* 00E2C 809C665C 460C7102 */  mul.s   $f4, $f14, $f12            
/* 00E30 809C6660 00000000 */  nop
/* 00E34 809C6664 46020182 */  mul.s   $f6, $f0, $f2              
/* 00E38 809C6668 00000000 */  nop
/* 00E3C 809C666C 46007282 */  mul.s   $f10, $f14, $f0            
/* 00E40 809C6670 C60E0174 */  lwc1    $f14, 0x0174($s0)          ## 00000174
/* 00E44 809C6674 46026482 */  mul.s   $f18, $f12, $f2            
/* 00E48 809C6678 C6020160 */  lwc1    $f2, 0x0160($s0)           ## 00000160
/* 00E4C 809C667C 46062200 */  add.s   $f8, $f4, $f6              
/* 00E50 809C6680 460C8182 */  mul.s   $f6, $f16, $f12            
/* 00E54 809C6684 E6080154 */  swc1    $f8, 0x0154($s0)           ## 00000154
/* 00E58 809C6688 46020202 */  mul.s   $f8, $f0, $f2              
/* 00E5C 809C668C 46125101 */  sub.s   $f4, $f10, $f18            
/* 00E60 809C6690 46008482 */  mul.s   $f18, $f16, $f0            
/* 00E64 809C6694 E604015C */  swc1    $f4, 0x015C($s0)           ## 0000015C
/* 00E68 809C6698 46026102 */  mul.s   $f4, $f12, $f2             
/* 00E6C 809C669C C602016C */  lwc1    $f2, 0x016C($s0)           ## 0000016C
/* 00E70 809C66A0 46083280 */  add.s   $f10, $f6, $f8             
/* 00E74 809C66A4 460C7202 */  mul.s   $f8, $f14, $f12            
/* 00E78 809C66A8 E60A0160 */  swc1    $f10, 0x0160($s0)          ## 00000160
/* 00E7C 809C66AC 46020282 */  mul.s   $f10, $f0, $f2             
/* 00E80 809C66B0 46049181 */  sub.s   $f6, $f18, $f4             
/* 00E84 809C66B4 46007102 */  mul.s   $f4, $f14, $f0             
/* 00E88 809C66B8 E6060168 */  swc1    $f6, 0x0168($s0)           ## 00000168
/* 00E8C 809C66BC 46026182 */  mul.s   $f6, $f12, $f2             
/* 00E90 809C66C0 460A4480 */  add.s   $f18, $f8, $f10            
/* 00E94 809C66C4 E612016C */  swc1    $f18, 0x016C($s0)          ## 0000016C
/* 00E98 809C66C8 46062201 */  sub.s   $f8, $f4, $f6              
/* 00E9C 809C66CC E6080174 */  swc1    $f8, 0x0174($s0)           ## 00000174
.L809C66D0:
/* 00EA0 809C66D0 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00EA4 809C66D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EA8 809C66D8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00EAC 809C66DC 0320F809 */  jalr    $ra, $t9                   
/* 00EB0 809C66E0 00000000 */  nop
/* 00EB4 809C66E4 0C00B65F */  jal     func_8002D97C              
/* 00EB8 809C66E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EBC 809C66EC C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 00EC0 809C66F0 8E0901A0 */  lw      $t1, 0x01A0($s0)           ## 000001A0
/* 00EC4 809C66F4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00EC8 809C66F8 4600548D */  trunc.w.s $f18, $f10                 
/* 00ECC 809C66FC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00ED0 809C6700 02212821 */  addu    $a1, $s1, $at              
/* 00ED4 809C6704 26060184 */  addiu   $a2, $s0, 0x0184           ## $a2 = 00000184
/* 00ED8 809C6708 44089000 */  mfc1    $t0, $f18                  
/* 00EDC 809C670C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00EE0 809C6710 A5280030 */  sh      $t0, 0x0030($t1)           ## 00000030
/* 00EE4 809C6714 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00EE8 809C6718 8E0C01A0 */  lw      $t4, 0x01A0($s0)           ## 000001A0
/* 00EEC 809C671C 4600218D */  trunc.w.s $f6, $f4                   
/* 00EF0 809C6720 440B3000 */  mfc1    $t3, $f6                   
/* 00EF4 809C6724 00000000 */  nop
/* 00EF8 809C6728 A58B0032 */  sh      $t3, 0x0032($t4)           ## 00000032
/* 00EFC 809C672C C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00F00 809C6730 8E0F01A0 */  lw      $t7, 0x01A0($s0)           ## 000001A0
/* 00F04 809C6734 4600428D */  trunc.w.s $f10, $f8                  
/* 00F08 809C6738 440E5000 */  mfc1    $t6, $f10                  
/* 00F0C 809C673C 00000000 */  nop
/* 00F10 809C6740 A5EE0034 */  sh      $t6, 0x0034($t7)           ## 00000034
/* 00F14 809C6744 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00F18 809C6748 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00F1C 809C674C AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00F20 809C6750 8E18014C */  lw      $t8, 0x014C($s0)           ## 0000014C
/* 00F24 809C6754 3C19809C */  lui     $t9, %hi(func_809C5DDC)    ## $t9 = 809C0000
/* 00F28 809C6758 27395DDC */  addiu   $t9, $t9, %lo(func_809C5DDC) ## $t9 = 809C5DDC
/* 00F2C 809C675C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00F30 809C6760 13380003 */  beq     $t9, $t8, .L809C6770       
/* 00F34 809C6764 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00F38 809C6768 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00F3C 809C676C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L809C6770:
/* 00F40 809C6770 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F44 809C6774 0C00B56E */  jal     Actor_SetHeight
              
/* 00F48 809C6778 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00F4C 809C677C 8E09014C */  lw      $t1, 0x014C($s0)           ## 0000014C
/* 00F50 809C6780 3C08809C */  lui     $t0, %hi(func_809C5F48)    ## $t0 = 809C0000
/* 00F54 809C6784 25085F48 */  addiu   $t0, $t0, %lo(func_809C5F48) ## $t0 = 809C5F48
/* 00F58 809C6788 1509007D */  bne     $t0, $t1, .L809C6980       
/* 00F5C 809C678C 262A07C0 */  addiu   $t2, $s1, 0x07C0           ## $t2 = 000007C0
/* 00F60 809C6790 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00F64 809C6794 AFAA0030 */  sw      $t2, 0x0030($sp)           
/* 00F68 809C6798 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00F6C 809C679C E7A00038 */  swc1    $f0, 0x0038($sp)           
/* 00F70 809C67A0 3C014400 */  lui     $at, 0x4400                ## $at = 44000000
/* 00F74 809C67A4 44819000 */  mtc1    $at, $f18                  ## $f18 = 512.00
/* 00F78 809C67A8 860B0150 */  lh      $t3, 0x0150($s0)           ## 00000150
/* 00F7C 809C67AC 3C014640 */  lui     $at, 0x4640                ## $at = 46400000
/* 00F80 809C67B0 46120102 */  mul.s   $f4, $f0, $f18             
/* 00F84 809C67B4 448B5000 */  mtc1    $t3, $f10                  ## $f10 = 0.00
/* 00F88 809C67B8 44813000 */  mtc1    $at, $f6                   ## $f6 = 12288.00
/* 00F8C 809C67BC 468054A0 */  cvt.s.w $f18, $f10                 
/* 00F90 809C67C0 46062200 */  add.s   $f8, $f4, $f6              
/* 00F94 809C67C4 46124102 */  mul.s   $f4, $f8, $f18             
/* 00F98 809C67C8 4600218D */  trunc.w.s $f6, $f4                   
/* 00F9C 809C67CC 44043000 */  mfc1    $a0, $f6                   
/* 00FA0 809C67D0 00000000 */  nop
/* 00FA4 809C67D4 00042400 */  sll     $a0, $a0, 16               
/* 00FA8 809C67D8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00FAC 809C67DC 00042403 */  sra     $a0, $a0, 16               
/* 00FB0 809C67E0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00FB4 809C67E4 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 00FB8 809C67E8 C7AA0038 */  lwc1    $f10, 0x0038($sp)          
/* 00FBC 809C67EC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00FC0 809C67F0 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 00FC4 809C67F4 46085482 */  mul.s   $f18, $f10, $f8            
/* 00FC8 809C67F8 3C05809C */  lui     $a1, %hi(D_809C6D7C)       ## $a1 = 809C0000
/* 00FCC 809C67FC 24A56D7C */  addiu   $a1, $a1, %lo(D_809C6D7C)  ## $a1 = 809C6D7C
/* 00FD0 809C6800 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FD4 809C6804 27A60054 */  addiu   $a2, $sp, 0x0054           ## $a2 = FFFFFFDC
/* 00FD8 809C6808 46122180 */  add.s   $f6, $f4, $f18             
/* 00FDC 809C680C 46060282 */  mul.s   $f10, $f0, $f6             
/* 00FE0 809C6810 0C271927 */  jal     func_809C649C              
/* 00FE4 809C6814 E60A0178 */  swc1    $f10, 0x0178($s0)          ## 00000178
/* 00FE8 809C6818 3C05809C */  lui     $a1, %hi(D_809C6D88)       ## $a1 = 809C0000
/* 00FEC 809C681C 24A56D88 */  addiu   $a1, $a1, %lo(D_809C6D88)  ## $a1 = 809C6D88
/* 00FF0 809C6820 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FF4 809C6824 0C271927 */  jal     func_809C649C              
/* 00FF8 809C6828 27A60048 */  addiu   $a2, $sp, 0x0048           ## $a2 = FFFFFFD0
/* 00FFC 809C682C 0C009AC3 */  jal     func_80026B0C              
/* 01000 809C6830 8E04017C */  lw      $a0, 0x017C($s0)           ## 0000017C
/* 01004 809C6834 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 01008 809C6838 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFDC
/* 0100C 809C683C 0C007F7C */  jal     func_8001FDF0              
/* 01010 809C6840 27A60048 */  addiu   $a2, $sp, 0x0048           ## $a2 = FFFFFFD0
/* 01014 809C6844 3C05809C */  lui     $a1, %hi(D_809C6D94)       ## $a1 = 809C0000
/* 01018 809C6848 24A56D94 */  addiu   $a1, $a1, %lo(D_809C6D94)  ## $a1 = 809C6D94
/* 0101C 809C684C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01020 809C6850 0C271927 */  jal     func_809C649C              
/* 01024 809C6854 27A60048 */  addiu   $a2, $sp, 0x0048           ## $a2 = FFFFFFD0
/* 01028 809C6858 0C009AC3 */  jal     func_80026B0C              
/* 0102C 809C685C 8E040180 */  lw      $a0, 0x0180($s0)           ## 00000180
/* 01030 809C6860 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 01034 809C6864 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFDC
/* 01038 809C6868 0C007F7C */  jal     func_8001FDF0              
/* 0103C 809C686C 27A60048 */  addiu   $a2, $sp, 0x0048           ## $a2 = FFFFFFD0
/* 01040 809C6870 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01044 809C6874 27AD0040 */  addiu   $t5, $sp, 0x0040           ## $t5 = FFFFFFC8
/* 01048 809C6878 27AE0044 */  addiu   $t6, $sp, 0x0044           ## $t6 = FFFFFFCC
/* 0104C 809C687C E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 01050 809C6880 8E07002C */  lw      $a3, 0x002C($s0)           ## 0000002C
/* 01054 809C6884 8E060024 */  lw      $a2, 0x0024($s0)           ## 00000024
/* 01058 809C6888 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0105C 809C688C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 01060 809C6890 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01064 809C6894 0C01084F */  jal     func_8004213C              
/* 01068 809C6898 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 0106C 809C689C 10400032 */  beq     $v0, $zero, .L809C6968     
/* 01070 809C68A0 C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 01074 809C68A4 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 01078 809C68A8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0107C 809C68AC 46122181 */  sub.s   $f6, $f4, $f18             
/* 01080 809C68B0 E6060084 */  swc1    $f6, 0x0084($s0)           ## 00000084
/* 01084 809C68B4 C60A0084 */  lwc1    $f10, 0x0084($s0)          ## 00000084
/* 01088 809C68B8 4600503C */  c.lt.s  $f10, $f0                  
/* 0108C 809C68BC 00000000 */  nop
/* 01090 809C68C0 4502000E */  bc1fl   .L809C68FC                 
/* 01094 809C68C4 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 01098 809C68C8 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 0109C 809C68CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010A0 809C68D0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 010A4 809C68D4 304F0020 */  andi    $t7, $v0, 0x0020           ## $t7 = 00000000
/* 010A8 809C68D8 51E00005 */  beql    $t7, $zero, .L809C68F0     
/* 010AC 809C68DC 3059FFDF */  andi    $t9, $v0, 0xFFDF           ## $t9 = 00000000
/* 010B0 809C68E0 0C271952 */  jal     func_809C6548              
/* 010B4 809C68E4 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 010B8 809C68E8 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 010BC 809C68EC 3059FFDF */  andi    $t9, $v0, 0xFFDF           ## $t9 = 00000000
.L809C68F0:
/* 010C0 809C68F0 10000023 */  beq     $zero, $zero, .L809C6980   
/* 010C4 809C68F4 A6190088 */  sh      $t9, 0x0088($s0)           ## 00000088
/* 010C8 809C68F8 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
.L809C68FC:
/* 010CC 809C68FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 010D0 809C6900 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 010D4 809C6904 33080020 */  andi    $t0, $t8, 0x0020           ## $t0 = 00000000
/* 010D8 809C6908 1500000B */  bne     $t0, $zero, .L809C6938     
/* 010DC 809C690C 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 010E0 809C6910 86090150 */  lh      $t1, 0x0150($s0)           ## 00000150
/* 010E4 809C6914 24010078 */  addiu   $at, $zero, 0x0078         ## $at = 00000078
/* 010E8 809C6918 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 010EC 809C691C 51210007 */  beql    $t1, $at, .L809C693C       
/* 010F0 809C6920 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 010F4 809C6924 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010F8 809C6928 0C271952 */  jal     func_809C6548              
/* 010FC 809C692C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01100 809C6930 1000000A */  beq     $zero, $zero, .L809C695C   
/* 01104 809C6934 960A0088 */  lhu     $t2, 0x0088($s0)           ## 00000088
.L809C6938:
/* 01108 809C6938 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
.L809C693C:
/* 0110C 809C693C 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 01110 809C6940 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 01114 809C6944 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.25
/* 01118 809C6948 44060000 */  mfc1    $a2, $f0                   
/* 0111C 809C694C E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 01120 809C6950 0C00A4F9 */  jal     func_800293E4              
/* 01124 809C6954 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 01128 809C6958 960A0088 */  lhu     $t2, 0x0088($s0)           ## 00000088
.L809C695C:
/* 0112C 809C695C 354B0020 */  ori     $t3, $t2, 0x0020           ## $t3 = 00000020
/* 01130 809C6960 10000007 */  beq     $zero, $zero, .L809C6980   
/* 01134 809C6964 A60B0088 */  sh      $t3, 0x0088($s0)           ## 00000088
.L809C6968:
/* 01138 809C6968 960C0088 */  lhu     $t4, 0x0088($s0)           ## 00000088
/* 0113C 809C696C 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 01140 809C6970 44819000 */  mtc1    $at, $f18                  ## $f18 = -32000.00
/* 01144 809C6974 318DFFDF */  andi    $t5, $t4, 0xFFDF           ## $t5 = 00000000
/* 01148 809C6978 A60D0088 */  sh      $t5, 0x0088($s0)           ## 00000088
/* 0114C 809C697C E6120084 */  swc1    $f18, 0x0084($s0)          ## 00000084
.L809C6980:
/* 01150 809C6980 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01154 809C6984 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 01158 809C6988 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 0115C 809C698C 03E00008 */  jr      $ra                        
/* 01160 809C6990 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000

