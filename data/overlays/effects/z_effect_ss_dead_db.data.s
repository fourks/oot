.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.word 0x00000020
.word func_809A0AA0
glabel D_809A0F28
 .word 0x0402CFE0, 0x0402D7E0, 0x0402DFE0, 0x0402E7E0, 0x0402EFE0, 0x0402F7E0, 0x0402FFE0, 0x040307E0, 0x04030FE0, 0x040317E0

