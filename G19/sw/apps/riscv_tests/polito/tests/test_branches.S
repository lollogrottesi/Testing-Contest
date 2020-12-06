
lui x2, 0x00104

addi x1, x0, 0x0
lui x3, 0x00FF0
ori x3, x3, 0x0FF
addi x4, x0, 0x2
addi x5, x0, 0x3
addi x6, x0, 0x6
addi x7, x0, -1
addi x8, x0, -1

cmp_1:
bne x1, x3, j_bne

cmp_2:
beq x1, x0, j_beq

cmp_3:
blt x4, x5, j_blt

cmp_4:
bge x6, x5, j_bge

cmp_5:
bltu x6, x7, j_bltu

cmp_6:
bgeu x7, x8, j_bgeu
jal x31, continue


j_bne:
jal x31, cmp_2

j_beq:
jal x31, cmp_3

j_blt:
jal x31, cmp_4

j_bge:
jal x31, cmp_5

j_bltu:
jal x31, cmp_6

j_bgeu:
addi x1, x0, 0x1
addi x3, x0, 0x1
addi x4, x0, 0x0FF
addi x5, x0, 0x3
addi x6, x0, 0x2
addi x7, x0, 0x1
addi x8, x0, 0x2
jal x31, cmp_1

continue:
nop
nop
nop
nop


