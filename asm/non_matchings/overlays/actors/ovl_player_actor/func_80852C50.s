glabel func_80852C50
/* 20A40 80852C50 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 20A44 80852C54 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 20A48 80852C58 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 20A4C 80852C5C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 20A50 80852C60 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 20A54 80852C64 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 20A58 80852C68 8C8F1D88 */  lw      $t7, 0x1D88($a0)           ## 00001D88
/* 20A5C 80852C6C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 20A60 80852C70 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 20A64 80852C74 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 20A68 80852C78 90981D6C */  lbu     $t8, 0x1D6C($a0)           ## 00001D6C
/* 20A6C 80852C7C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 20A70 80852C80 8FB9002C */  lw      $t9, 0x002C($sp)           
/* 20A74 80852C84 14D80008 */  bne     $a2, $t8, .L80852CA8       
/* 20A78 80852C88 00000000 */  nop
/* 20A7C 80852C8C 0C00B7D5 */  jal     func_8002DF54              
/* 20A80 80852C90 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 20A84 80852C94 A2200446 */  sb      $zero, 0x0446($s1)         ## 00000446
/* 20A88 80852C98 0C20C884 */  jal     func_80832210              
/* 20A8C 80852C9C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 20A90 80852CA0 10000058 */  beq     $zero, $zero, .L80852E04   
/* 20A94 80852CA4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80852CA8:
/* 20A98 80852CA8 17200006 */  bne     $t9, $zero, .L80852CC4     
/* 20A9C 80852CAC 8FAA002C */  lw      $t2, 0x002C($sp)           
/* 20AA0 80852CB0 8E280004 */  lw      $t0, 0x0004($s1)           ## 00000004
/* 20AA4 80852CB4 2401FFBF */  addiu   $at, $zero, 0xFFBF         ## $at = FFFFFFBF
/* 20AA8 80852CB8 01014824 */  and     $t1, $t0, $at              
/* 20AAC 80852CBC 10000050 */  beq     $zero, $zero, .L80852E00   
/* 20AB0 80852CC0 AE290004 */  sw      $t1, 0x0004($s1)           ## 00000004
.L80852CC4:
/* 20AB4 80852CC4 95430000 */  lhu     $v1, 0x0000($t2)           ## 00000000
/* 20AB8 80852CC8 92220446 */  lbu     $v0, 0x0446($s1)           ## 00000446
/* 20ABC 80852CCC 3C078085 */  lui     $a3, %hi(D_808547C4)       ## $a3 = 80850000
/* 20AC0 80852CD0 00E33821 */  addu    $a3, $a3, $v1              
/* 20AC4 80852CD4 1062003B */  beq     $v1, $v0, .L80852DC4       
/* 20AC8 80852CD8 00000000 */  nop
/* 20ACC 80852CDC 80E747C4 */  lb      $a3, %lo(D_808547C4)($a3)  
/* 20AD0 80852CE0 04E20012 */  bltzl   $a3, .L80852D2C            
/* 20AD4 80852CE4 922B01E9 */  lbu     $t3, 0x01E9($s1)           ## 000001E9
/* 20AD8 80852CE8 10E60003 */  beq     $a3, $a2, .L80852CF8       
/* 20ADC 80852CEC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 20AE0 80852CF0 14E10008 */  bne     $a3, $at, .L80852D14       
/* 20AE4 80852CF4 8FA40030 */  lw      $a0, 0x0030($sp)           
.L80852CF8:
/* 20AE8 80852CF8 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 20AEC 80852CFC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 20AF0 80852D00 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 20AF4 80852D04 0C214A95 */  jal     func_80852A54              
/* 20AF8 80852D08 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 20AFC 80852D0C 10000006 */  beq     $zero, $zero, .L80852D28   
/* 20B00 80852D10 8FA70024 */  lw      $a3, 0x0024($sp)           
.L80852D14:
/* 20B04 80852D14 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 20B08 80852D18 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 20B0C 80852D1C 0C214A74 */  jal     func_808529D0              
/* 20B10 80852D20 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 20B14 80852D24 8FA70024 */  lw      $a3, 0x0024($sp)           
.L80852D28:
/* 20B18 80852D28 922B01E9 */  lbu     $t3, 0x01E9($s1)           ## 000001E9
.L80852D2C:
/* 20B1C 80852D2C 3C018086 */  lui     $at, %hi(D_80858AA0)       ## $at = 80860000
/* 20B20 80852D30 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 20B24 80852D34 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 20B28 80852D38 0C20CB6F */  jal     func_80832DBC              
/* 20B2C 80852D3C AC2B8AA0 */  sw      $t3, %lo(D_80858AA0)($at)  
/* 20B30 80852D40 3C048085 */  lui     $a0, %hi(D_8085532C)       ## $a0 = 80850000
/* 20B34 80852D44 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 20B38 80852D48 0C00084C */  jal     osSyncPrintf
              
/* 20B3C 80852D4C 2484532C */  addiu   $a0, $a0, %lo(D_8085532C)  ## $a0 = 8085532C
/* 20B40 80852D50 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 20B44 80852D54 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 20B48 80852D58 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 20B4C 80852D5C 04E00003 */  bltz    $a3, .L80852D6C            
/* 20B50 80852D60 00078023 */  subu    $s0, $zero, $a3            
/* 20B54 80852D64 10000001 */  beq     $zero, $zero, .L80852D6C   
/* 20B58 80852D68 00E08025 */  or      $s0, $a3, $zero            ## $s0 = 00000000
.L80852D6C:
/* 20B5C 80852D6C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 20B60 80852D70 0C214B03 */  jal     func_80852C0C              
/* 20B64 80852D74 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 20B68 80852D78 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 20B6C 80852D7C 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 20B70 80852D80 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 20B74 80852D84 04E00003 */  bltz    $a3, .L80852D94            
/* 20B78 80852D88 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 20B7C 80852D8C 10000002 */  beq     $zero, $zero, .L80852D98   
/* 20B80 80852D90 00E08025 */  or      $s0, $a3, $zero            ## $s0 = 00000000
.L80852D94:
/* 20B84 80852D94 00078023 */  subu    $s0, $zero, $a3            
.L80852D98:
/* 20B88 80852D98 3C0D8085 */  lui     $t5, %hi(D_80854B18)       ## $t5 = 80850000
/* 20B8C 80852D9C 25AD4B18 */  addiu   $t5, $t5, %lo(D_80854B18)  ## $t5 = 80854B18
/* 20B90 80852DA0 001060C0 */  sll     $t4, $s0,  3               
/* 20B94 80852DA4 0C214AD3 */  jal     func_80852B4C              
/* 20B98 80852DA8 018D3821 */  addu    $a3, $t4, $t5              
/* 20B9C 80852DAC A6200850 */  sh      $zero, 0x0850($s1)         ## 00000850
/* 20BA0 80852DB0 A220084F */  sb      $zero, 0x084F($s1)         ## 0000084F
/* 20BA4 80852DB4 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 20BA8 80852DB8 95F80000 */  lhu     $t8, 0x0000($t7)           ## 00000000
/* 20BAC 80852DBC A2380446 */  sb      $t8, 0x0446($s1)           ## 00000446
/* 20BB0 80852DC0 330200FF */  andi    $v0, $t8, 0x00FF           ## $v0 = 00000000
.L80852DC4:
/* 20BB4 80852DC4 3C078085 */  lui     $a3, %hi(D_808547C4)       ## $a3 = 80850000
/* 20BB8 80852DC8 00E23821 */  addu    $a3, $a3, $v0              
/* 20BBC 80852DCC 80E747C4 */  lb      $a3, %lo(D_808547C4)($a3)  
/* 20BC0 80852DD0 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 20BC4 80852DD4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 20BC8 80852DD8 04E00003 */  bltz    $a3, .L80852DE8            
/* 20BCC 80852DDC 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 20BD0 80852DE0 10000002 */  beq     $zero, $zero, .L80852DEC   
/* 20BD4 80852DE4 00E08025 */  or      $s0, $a3, $zero            ## $s0 = 80850000
.L80852DE8:
/* 20BD8 80852DE8 00078023 */  subu    $s0, $zero, $a3            
.L80852DEC:
/* 20BDC 80852DEC 3C198085 */  lui     $t9, %hi(D_80854E50)       ## $t9 = 80850000
/* 20BE0 80852DF0 27394E50 */  addiu   $t9, $t9, %lo(D_80854E50)  ## $t9 = 80854E50
/* 20BE4 80852DF4 001070C0 */  sll     $t6, $s0,  3               
/* 20BE8 80852DF8 0C214AD3 */  jal     func_80852B4C              
/* 20BEC 80852DFC 01D93821 */  addu    $a3, $t6, $t9              
.L80852E00:
/* 20BF0 80852E00 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80852E04:
/* 20BF4 80852E04 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 20BF8 80852E08 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 20BFC 80852E0C 03E00008 */  jr      $ra                        
/* 20C00 80852E10 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000

