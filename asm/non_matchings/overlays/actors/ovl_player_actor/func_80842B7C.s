glabel func_80842B7C
/* 1096C 80842B7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 10970 80842B80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 10974 80842B84 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 10978 80842B88 80AE0151 */  lb      $t6, 0x0151($a1)           ## 00000151
/* 1097C 80842B8C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 10980 80842B90 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 10984 80842B94 15C10052 */  bne     $t6, $at, .L80842CE0       
/* 10988 80842B98 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1098C 80842B9C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 10990 80842BA0 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 10994 80842BA4 904F003E */  lbu     $t7, 0x003E($v0)           ## 8015E69E
/* 10998 80842BA8 15E0004B */  bne     $t7, $zero, .L80842CD8     
/* 1099C 80842BAC 00000000 */  nop
/* 109A0 80842BB0 94580036 */  lhu     $t8, 0x0036($v0)           ## 8015E696
/* 109A4 80842BB4 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 109A8 80842BB8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 109AC 80842BBC 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 109B0 80842BC0 07010004 */  bgez    $t8, .L80842BD4            
/* 109B4 80842BC4 46802020 */  cvt.s.w $f0, $f4                   
/* 109B8 80842BC8 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 109BC 80842BCC 00000000 */  nop
/* 109C0 80842BD0 46060000 */  add.s   $f0, $f0, $f6              
.L80842BD4:
/* 109C4 80842BD4 4600103C */  c.lt.s  $f2, $f0                   
/* 109C8 80842BD8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 109CC 80842BDC 4500003E */  bc1f    .L80842CD8                 
/* 109D0 80842BE0 00000000 */  nop
/* 109D4 80842BE4 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 109D8 80842BE8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 109DC 80842BEC 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 109E0 80842BF0 46080281 */  sub.s   $f10, $f0, $f8             
/* 109E4 80842BF4 24E509BC */  addiu   $a1, $a3, 0x09BC           ## $a1 = 000009BC
/* 109E8 80842BF8 4459F800 */  cfc1    $t9, $31
/* 109EC 80842BFC 44C8F800 */  ctc1    $t0, $31
/* 109F0 80842C00 00000000 */  nop
/* 109F4 80842C04 46005424 */  cvt.w.s $f16, $f10                 
/* 109F8 80842C08 4448F800 */  cfc1    $t0, $31
/* 109FC 80842C0C 00000000 */  nop
/* 10A00 80842C10 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 10A04 80842C14 51000013 */  beql    $t0, $zero, .L80842C64     
/* 10A08 80842C18 44088000 */  mfc1    $t0, $f16                  
/* 10A0C 80842C1C 44818000 */  mtc1    $at, $f16                  ## $f16 = 2147483648.00
/* 10A10 80842C20 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 10A14 80842C24 46105401 */  sub.s   $f16, $f10, $f16           
/* 10A18 80842C28 44C8F800 */  ctc1    $t0, $31
/* 10A1C 80842C2C 00000000 */  nop
/* 10A20 80842C30 46008424 */  cvt.w.s $f16, $f16                 
/* 10A24 80842C34 4448F800 */  cfc1    $t0, $31
/* 10A28 80842C38 00000000 */  nop
/* 10A2C 80842C3C 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 10A30 80842C40 15000005 */  bne     $t0, $zero, .L80842C58     
/* 10A34 80842C44 00000000 */  nop
/* 10A38 80842C48 44088000 */  mfc1    $t0, $f16                  
/* 10A3C 80842C4C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 10A40 80842C50 10000007 */  beq     $zero, $zero, .L80842C70   
/* 10A44 80842C54 01014025 */  or      $t0, $t0, $at              ## $t0 = 80000000
.L80842C58:
/* 10A48 80842C58 10000005 */  beq     $zero, $zero, .L80842C70   
/* 10A4C 80842C5C 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 10A50 80842C60 44088000 */  mfc1    $t0, $f16                  
.L80842C64:
/* 10A54 80842C64 00000000 */  nop
/* 10A58 80842C68 0500FFFB */  bltz    $t0, .L80842C58            
/* 10A5C 80842C6C 00000000 */  nop
.L80842C70:
/* 10A60 80842C70 3109FFFF */  andi    $t1, $t0, 0xFFFF           ## $t1 = 0000FFFF
/* 10A64 80842C74 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 10A68 80842C78 44D9F800 */  ctc1    $t9, $31
/* 10A6C 80842C7C A4480036 */  sh      $t0, 0x0036($v0)           ## 8015E696
/* 10A70 80842C80 05210005 */  bgez    $t1, .L80842C98            
/* 10A74 80842C84 46809120 */  cvt.s.w $f4, $f18                  
/* 10A78 80842C88 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 10A7C 80842C8C 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 10A80 80842C90 00000000 */  nop
/* 10A84 80842C94 46062100 */  add.s   $f4, $f4, $f6              
.L80842C98:
/* 10A88 80842C98 4602203E */  c.le.s  $f4, $f2                   
/* 10A8C 80842C9C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 10A90 80842CA0 4500000D */  bc1f    .L80842CD8                 
/* 10A94 80842CA4 00000000 */  nop
/* 10A98 80842CA8 84E600B6 */  lh      $a2, 0x00B6($a3)           ## 000000B6
/* 10A9C 80842CAC 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 10AA0 80842CB0 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 10AA4 80842CB4 00C13021 */  addu    $a2, $a2, $at              
/* 10AA8 80842CB8 00063400 */  sll     $a2, $a2, 16               
/* 10AAC 80842CBC 0C00A63B */  jal     func_800298EC              
/* 10AB0 80842CC0 00063403 */  sra     $a2, $a2, 16               
/* 10AB4 80842CC4 0C02127B */  jal     func_800849EC              
/* 10AB8 80842CC8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 10ABC 80842CCC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 10AC0 80842CD0 0C00BDF7 */  jal     func_8002F7DC              
/* 10AC4 80842CD4 2405184C */  addiu   $a1, $zero, 0x184C         ## $a1 = 0000184C
.L80842CD8:
/* 10AC8 80842CD8 10000001 */  beq     $zero, $zero, .L80842CE0   
/* 10ACC 80842CDC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80842CE0:
/* 10AD0 80842CE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 10AD4 80842CE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 10AD8 80842CE8 03E00008 */  jr      $ra                        
/* 10ADC 80842CEC 00000000 */  nop

