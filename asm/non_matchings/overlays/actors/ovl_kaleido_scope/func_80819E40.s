glabel func_80819E40
/* 06620 80819E40 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 06624 80819E44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 06628 80819E48 94850246 */  lhu     $a1, 0x0246($a0)           ## 00000246
/* 0662C 80819E4C 8C860158 */  lw      $a2, 0x0158($a0)           ## 00000158
/* 06630 80819E50 00052880 */  sll     $a1, $a1,  2               
/* 06634 80819E54 0C206785 */  jal     func_80819E14              
/* 06638 80819E58 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 0663C 80819E5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 06640 80819E60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 06644 80819E64 03E00008 */  jr      $ra                        
/* 06648 80819E68 00000000 */  nop

