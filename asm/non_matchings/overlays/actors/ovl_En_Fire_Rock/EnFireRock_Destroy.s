.rdata
glabel D_80A12D90
    .asciz "\n\n"
    .balign 4

glabel D_80A12D94
    .asciz "[32m☆☆☆☆☆ 発生数回復 ☆☆☆☆☆%d\n[m"
    .balign 4

glabel D_80A12DC0
    .asciz "\n\n"
    .balign 4

.text
glabel EnFireRock_Destroy
/* 00410 80A12030 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00414 80A12034 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00418 80A12038 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0041C 80A1203C 8C830118 */  lw      $v1, 0x0118($a0)           ## 00000118
/* 00420 80A12040 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00424 80A12044 5060001B */  beql    $v1, $zero, .L80A120B4     
/* 00428 80A12048 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0042C 80A1204C 8C8E0190 */  lw      $t6, 0x0190($a0)           ## 00000190
/* 00430 80A12050 55C30018 */  bnel    $t6, $v1, .L80A120B4       
/* 00434 80A12054 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00438 80A12058 8C6F0130 */  lw      $t7, 0x0130($v1)           ## 00000130
/* 0043C 80A1205C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00440 80A12060 51E00014 */  beql    $t7, $zero, .L80A120B4     
/* 00444 80A12064 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00448 80A12068 84630158 */  lh      $v1, 0x0158($v1)           ## 00000158
/* 0044C 80A1206C 3C0480A1 */  lui     $a0, %hi(D_80A12D90)       ## $a0 = 80A10000
/* 00450 80A12070 24842D90 */  addiu   $a0, $a0, %lo(D_80A12D90)  ## $a0 = 80A12D90
/* 00454 80A12074 1860000E */  blez    $v1, .L80A120B0            
/* 00458 80A12078 2478FFFF */  addiu   $t8, $v1, 0xFFFF           ## $t8 = FFFFFFFF
/* 0045C 80A1207C A4580158 */  sh      $t8, 0x0158($v0)           ## 00000158
/* 00460 80A12080 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00464 80A12084 0C00084C */  jal     osSyncPrintf
              
/* 00468 80A12088 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 0046C 80A1208C 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00470 80A12090 3C0480A1 */  lui     $a0, %hi(D_80A12D94)       ## $a0 = 80A10000
/* 00474 80A12094 24842D94 */  addiu   $a0, $a0, %lo(D_80A12D94)  ## $a0 = 80A12D94
/* 00478 80A12098 0C00084C */  jal     osSyncPrintf
              
/* 0047C 80A1209C 84450158 */  lh      $a1, 0x0158($v0)           ## 00000158
/* 00480 80A120A0 3C0480A1 */  lui     $a0, %hi(D_80A12DC0)       ## $a0 = 80A10000
/* 00484 80A120A4 0C00084C */  jal     osSyncPrintf
              
/* 00488 80A120A8 24842DC0 */  addiu   $a0, $a0, %lo(D_80A12DC0)  ## $a0 = 80A12DC0
/* 0048C 80A120AC 8FA60020 */  lw      $a2, 0x0020($sp)           
.L80A120B0:
/* 00490 80A120B0 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80A120B4:
/* 00494 80A120B4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00498 80A120B8 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 0049C 80A120BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004A0 80A120C0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 004A4 80A120C4 03E00008 */  jr      $ra                        
/* 004A8 80A120C8 00000000 */  nop
