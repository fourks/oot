glabel func_80A45E48
/* 03118 80A45E48 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0311C 80A45E4C AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 03120 80A45E50 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 03124 80A45E54 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 03128 80A45E58 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0312C 80A45E5C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 03130 80A45E60 3042001F */  andi    $v0, $v0, 0x001F           ## $v0 = 00000000
/* 03134 80A45E64 50400015 */  beql    $v0, $zero, .L80A45EBC     
/* 03138 80A45E68 A20001EA */  sb      $zero, 0x01EA($s0)         ## 000001EA
/* 0313C 80A45E6C 10410012 */  beq     $v0, $at, .L80A45EB8       
/* 03140 80A45E70 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 03144 80A45E74 14410011 */  bne     $v0, $at, .L80A45EBC       
/* 03148 80A45E78 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 0314C 80A45E7C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 03150 80A45E80 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 03154 80A45E84 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 03158 80A45E88 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0315C 80A45E8C C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 03160 80A45E90 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 03164 80A45E94 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 03168 80A45E98 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0316C 80A45E9C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 03170 80A45EA0 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 03174 80A45EA4 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 03178 80A45EA8 50400005 */  beql    $v0, $zero, .L80A45EC0     
/* 0317C 80A45EAC 8A0F0030 */  lwl     $t7, 0x0030($s0)           ## 00000030
/* 03180 80A45EB0 10000002 */  beq     $zero, $zero, .L80A45EBC   
/* 03184 80A45EB4 A44001F8 */  sh      $zero, 0x01F8($v0)         ## 000001F8
.L80A45EB8:
/* 03188 80A45EB8 A20001EA */  sb      $zero, 0x01EA($s0)         ## 000001EA
.L80A45EBC:
/* 0318C 80A45EBC 8A0F0030 */  lwl     $t7, 0x0030($s0)           ## 00000030
.L80A45EC0:
/* 03190 80A45EC0 9A0F0033 */  lwr     $t7, 0x0033($s0)           ## 00000033
/* 03194 80A45EC4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 03198 80A45EC8 3C1880A4 */  lui     $t8, %hi(func_80A46F88)    ## $t8 = 80A40000
/* 0319C 80A45ECC AA0F00B4 */  swl     $t7, 0x00B4($s0)           ## 000000B4
/* 031A0 80A45ED0 BA0F00B7 */  swr     $t7, 0x00B7($s0)           ## 000000B7
/* 031A4 80A45ED4 960F0034 */  lhu     $t7, 0x0034($s0)           ## 00000034
/* 031A8 80A45ED8 27186F88 */  addiu   $t8, $t8, %lo(func_80A46F88) ## $t8 = 80A46F88
/* 031AC 80A45EDC A600059C */  sh      $zero, 0x059C($s0)         ## 0000059C
/* 031B0 80A45EE0 A6000590 */  sh      $zero, 0x0590($s0)         ## 00000590
/* 031B4 80A45EE4 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
/* 031B8 80A45EE8 E60000BC */  swc1    $f0, 0x00BC($s0)           ## 000000BC
/* 031BC 80A45EEC E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 031C0 80A45EF0 A60F00B8 */  sh      $t7, 0x00B8($s0)           ## 000000B8
/* 031C4 80A45EF4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 031C8 80A45EF8 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 031CC 80A45EFC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 031D0 80A45F00 03E00008 */  jr      $ra                        
/* 031D4 80A45F04 00000000 */  nop

