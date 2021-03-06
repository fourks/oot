glabel ObjDekujr_Init
/* 00000 80B92420 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00004 80B92424 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00008 80B92428 8C4E0008 */  lw      $t6, 0x0008($v0)           ## 8015E668
/* 0000C 80B9242C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00010 80B92430 3401FFF0 */  ori     $at, $zero, 0xFFF0         ## $at = 0000FFF0
/* 00014 80B92434 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00018 80B92438 01C1082A */  slt     $at, $t6, $at              
/* 0001C 80B9243C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 80B92440 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00024 80B92444 1020000C */  beq     $at, $zero, .L80B92478     
/* 00028 80B92448 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0002C 80B9244C 8C4F0004 */  lw      $t7, 0x0004($v0)           ## 8015E664
/* 00030 80B92450 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00034 80B92454 51E00006 */  beql    $t7, $zero, .L80B92470     
/* 00038 80B92458 A218019C */  sb      $t8, 0x019C($s0)           ## 0000019C
/* 0003C 80B9245C 0C00B55C */  jal     Actor_Kill
              
/* 00040 80B92460 00000000 */  nop
/* 00044 80B92464 1000002D */  beq     $zero, $zero, .L80B9251C   
/* 00048 80B92468 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0004C 80B9246C A218019C */  sb      $t8, 0x019C($s0)           ## 0000019C
.L80B92470:
/* 00050 80B92470 10000004 */  beq     $zero, $zero, .L80B92484   
/* 00054 80B92474 A200019B */  sb      $zero, 0x019B($s0)         ## 0000019B
.L80B92478:
/* 00058 80B92478 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0005C 80B9247C A200019C */  sb      $zero, 0x019C($s0)         ## 0000019C
/* 00060 80B92480 A219019B */  sb      $t9, 0x019B($s0)           ## 0000019B
.L80B92484:
/* 00064 80B92484 3C088012 */  lui     $t0, %hi(gBitFlags)
/* 00068 80B92488 8D087120 */  lw      $t0, %lo(gBitFlags)($t0)
/* 0006C 80B9248C 8C4900A4 */  lw      $t1, 0x00A4($v0)           ## 000000A4
/* 00070 80B92490 01095024 */  and     $t2, $t0, $t1              
/* 00074 80B92494 55400006 */  bnel    $t2, $zero, .L80B924B0     
/* 00078 80B92498 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0007C 80B9249C 0C00B55C */  jal     Actor_Kill
              
/* 00080 80B924A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00084 80B924A4 1000001D */  beq     $zero, $zero, .L80B9251C   
/* 00088 80B924A8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0008C 80B924AC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80B924B0:
/* 00090 80B924B0 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00094 80B924B4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00098 80B924B8 44050000 */  mfc1    $a1, $f0                   
/* 0009C 80B924BC 44070000 */  mfc1    $a3, $f0                   
/* 000A0 80B924C0 0C00AC78 */  jal     ActorShape_Init
              
/* 000A4 80B924C4 00000000 */  nop
/* 000A8 80B924C8 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 000AC 80B924CC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 000B0 80B924D0 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 000B4 80B924D4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000B8 80B924D8 3C0680B9 */  lui     $a2, %hi(D_80B92A00)       ## $a2 = 80B90000
/* 000BC 80B924DC 24C62A00 */  addiu   $a2, $a2, %lo(D_80B92A00)  ## $a2 = 80B92A00
/* 000C0 80B924E0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 000C4 80B924E4 ACD00000 */  sw      $s0, 0x0000($a2)           ## 80B92A00
/* 000C8 80B924E8 0C0170FD */  jal     func_8005C3F4              
/* 000CC 80B924EC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000D0 80B924F0 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 000D4 80B924F4 A20B00AE */  sb      $t3, 0x00AE($s0)           ## 000000AE
/* 000D8 80B924F8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000DC 80B924FC 0C00DF0C */  jal     func_80037C30              
/* 000E0 80B92500 2405000F */  addiu   $a1, $zero, 0x000F         ## $a1 = 0000000F
/* 000E4 80B92504 3C053ECC */  lui     $a1, 0x3ECC                ## $a1 = 3ECC0000
/* 000E8 80B92508 A602010E */  sh      $v0, 0x010E($s0)           ## 0000010E
/* 000EC 80B9250C 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3ECCCCCD
/* 000F0 80B92510 0C00B58B */  jal     Actor_SetScale
              
/* 000F4 80B92514 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000F8 80B92518 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9251C:
/* 000FC 80B9251C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00100 80B92520 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00104 80B92524 03E00008 */  jr      $ra                        
/* 00108 80B92528 00000000 */  nop
