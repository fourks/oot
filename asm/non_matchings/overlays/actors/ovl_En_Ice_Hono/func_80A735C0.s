.late_rodata
glabel D_80A74134
 .word 0x3ADED289
glabel D_80A74138
 .word 0x455AC000

.text
glabel func_80A735C0
/* 005D0 80A735C0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 005D4 80A735C4 F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 005D8 80A735C8 3C0180A7 */  lui     $at, %hi(D_80A74134)       ## $at = 80A70000
/* 005DC 80A735CC C4344134 */  lwc1    $f20, %lo(D_80A74134)($at) 
/* 005E0 80A735D0 AFB40048 */  sw      $s4, 0x0048($sp)           
/* 005E4 80A735D4 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 005E8 80A735D8 AFB30044 */  sw      $s3, 0x0044($sp)           
/* 005EC 80A735DC AFB20040 */  sw      $s2, 0x0040($sp)           
/* 005F0 80A735E0 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 005F4 80A735E4 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 005F8 80A735E8 94900088 */  lhu     $s0, 0x0088($a0)           ## 00000088
/* 005FC 80A735EC 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 00600 80A735F0 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00604 80A735F4 3C0638A7 */  lui     $a2, 0x38A7                ## $a2 = 38A70000
/* 00608 80A735F8 4405A000 */  mfc1    $a1, $f20                  
/* 0060C 80A735FC 34C6C5AC */  ori     $a2, $a2, 0xC5AC           ## $a2 = 38A7C5AC
/* 00610 80A73600 24840050 */  addiu   $a0, $a0, 0x0050           ## $a0 = 00000050
/* 00614 80A73604 0C01DE80 */  jal     Math_ApproxF
              
/* 00618 80A73608 32100001 */  andi    $s0, $s0, 0x0001           ## $s0 = 00000000
/* 0061C 80A7360C C6240050 */  lwc1    $f4, 0x0050($s1)           ## 00000050
/* 00620 80A73610 4405A000 */  mfc1    $a1, $f20                  
/* 00624 80A73614 3C0638A7 */  lui     $a2, 0x38A7                ## $a2 = 38A70000
/* 00628 80A73618 34C6C5AC */  ori     $a2, $a2, 0xC5AC           ## $a2 = 38A7C5AC
/* 0062C 80A7361C 26240054 */  addiu   $a0, $s1, 0x0054           ## $a0 = 00000054
/* 00630 80A73620 0C01DE80 */  jal     Math_ApproxF
              
/* 00634 80A73624 E6240058 */  swc1    $f4, 0x0058($s1)           ## 00000058
/* 00638 80A73628 1200001F */  beq     $s0, $zero, .L80A736A8     
/* 0063C 80A7362C 26921C24 */  addiu   $s2, $s4, 0x1C24           ## $s2 = 00001C24
/* 00640 80A73630 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00644 80A73634 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1000.00
/* 00648 80A73638 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 0064C 80A7363C 3C130001 */  lui     $s3, 0x0001                ## $s3 = 00010000
.L80A73640:
/* 00650 80A73640 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00654 80A73644 00000000 */  nop
/* 00658 80A73648 46140282 */  mul.s   $f10, $f0, $f20            
/* 0065C 80A7364C C6260028 */  lwc1    $f6, 0x0028($s1)           ## 00000028
/* 00660 80A73650 8E270024 */  lw      $a3, 0x0024($s1)           ## 00000024
/* 00664 80A73654 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00668 80A73658 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 0066C 80A7365C C628002C */  lwc1    $f8, 0x002C($s1)           ## 0000002C
/* 00670 80A73660 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00674 80A73664 4600540D */  trunc.w.s $f16, $f10                 
/* 00678 80A73668 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0067C 80A7366C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00680 80A73670 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00001C24
/* 00684 80A73674 440F8000 */  mfc1    $t7, $f16                  
/* 00688 80A73678 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 0068C 80A7367C 240600F0 */  addiu   $a2, $zero, 0x00F0         ## $a2 = 000000F0
/* 00690 80A73680 01F0C021 */  addu    $t8, $t7, $s0              
/* 00694 80A73684 2719FE0C */  addiu   $t9, $t8, 0xFE0C           ## $t9 = FFFFFE0C
/* 00698 80A73688 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 0069C 80A7368C 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 006A0 80A73690 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 006A4 80A73694 26102000 */  addiu   $s0, $s0, 0x2000           ## $s0 = 00002000
/* 006A8 80A73698 1613FFE9 */  bne     $s0, $s3, .L80A73640       
/* 006AC 80A7369C 00000000 */  nop
/* 006B0 80A736A0 0C29CDE0 */  jal     func_80A73780              
/* 006B4 80A736A4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80A736A8:
/* 006B8 80A736A8 0C00B638 */  jal     Actor_MoveForward
              
/* 006BC 80A736AC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006C0 80A736B0 3C0180A7 */  lui     $at, %hi(D_80A74138)       ## $at = 80A70000
/* 006C4 80A736B4 C4244138 */  lwc1    $f4, %lo(D_80A74138)($at)  
/* 006C8 80A736B8 C6320050 */  lwc1    $f18, 0x0050($s1)          ## 00000050
/* 006CC 80A736BC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 006D0 80A736C0 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 006D4 80A736C4 46049182 */  mul.s   $f6, $f18, $f4             
/* 006D8 80A736C8 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 006DC 80A736CC 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 006E0 80A736D0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 006E4 80A736D4 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 006E8 80A736D8 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 006EC 80A736DC 44073000 */  mfc1    $a3, $f6                   
/* 006F0 80A736E0 0C00B92D */  jal     func_8002E4B4              
/* 006F4 80A736E4 00000000 */  nop
/* 006F8 80A736E8 2630015C */  addiu   $s0, $s1, 0x015C           ## $s0 = 0000015C
/* 006FC 80A736EC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000015C
/* 00700 80A736F0 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00704 80A736F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00708 80A736F8 3C01457A */  lui     $at, 0x457A                ## $at = 457A0000
/* 0070C 80A736FC 44818000 */  mtc1    $at, $f16                  ## $f16 = 4000.00
/* 00710 80A73700 C62A0050 */  lwc1    $f10, 0x0050($s1)          ## 00000050
/* 00714 80A73704 3C0145FA */  lui     $at, 0x45FA                ## $at = 45FA0000
/* 00718 80A73708 44814000 */  mtc1    $at, $f8                   ## $f8 = 8000.00
/* 0071C 80A7370C 46105482 */  mul.s   $f18, $f10, $f16           
/* 00720 80A73710 C6260054 */  lwc1    $f6, 0x0054($s1)           ## 00000054
/* 00724 80A73714 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00728 80A73718 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0072C 80A7371C 46083282 */  mul.s   $f10, $f6, $f8             
/* 00730 80A73720 02812821 */  addu    $a1, $s4, $at              
/* 00734 80A73724 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00738 80A73728 02003025 */  or      $a2, $s0, $zero            ## $a2 = 0000015C
/* 0073C 80A7372C 4600910D */  trunc.w.s $f4, $f18                  
/* 00740 80A73730 4600540D */  trunc.w.s $f16, $f10                 
/* 00744 80A73734 440B2000 */  mfc1    $t3, $f4                   
/* 00748 80A73738 440D8000 */  mfc1    $t5, $f16                  
/* 0074C 80A7373C A62B019C */  sh      $t3, 0x019C($s1)           ## 0000019C
/* 00750 80A73740 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00754 80A73744 A62D019E */  sh      $t5, 0x019E($s1)           ## 0000019E
/* 00758 80A73748 862E0152 */  lh      $t6, 0x0152($s1)           ## 00000152
/* 0075C 80A7374C 5DC00004 */  bgtzl   $t6, .L80A73760            
/* 00760 80A73750 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00764 80A73754 0C00B55C */  jal     Actor_Kill
              
/* 00768 80A73758 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0076C 80A7375C 8FBF004C */  lw      $ra, 0x004C($sp)           
.L80A73760:
/* 00770 80A73760 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 00774 80A73764 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00778 80A73768 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 0077C 80A7376C 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 00780 80A73770 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 00784 80A73774 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 00788 80A73778 03E00008 */  jr      $ra                        
/* 0078C 80A7377C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
