#---------------
#functions to be included
# - FORWARDING_STALL_JUMPS()
# - TEST_REG_FILE_DEEP()
# - TEST_MUL()
# - TEST_HWLOOP()
# - TEST_ALU_DEEP()
# - TEST_CSR()
# - EXCEPTIONS()
# - TEST_LOAD_STORE()
# - CALL_INVALID()
# - TEST_COMPRESSED()
#---------------
# - REMOVE_CYCLES()

#define TEST_COMPRESSED()\
  li x11, 0x00100100;\
  li x14, 3;\
  li x9, 0xFFFFFFFF;\
  li x13, 0xFFFFFFFF;\
  li x15, 0xCCCCCCCCC;\
  li x12, 0;\
  sw x0, 4(x11);\
  .option rvc;\
  c.li x10, 1;\
  c.add x10, x9;\
  c.sw x10, 0(x11);\
  c.addi x10, 1;\
  c.sw x10, 0(x11);\
  c.addi16sp sp, 0x20;\
  c.nop;\
  c.nop;\
 .option norvc;\
  sw sp, 0(x11);\
 .option rvc;\
  c.addi4spn x10, sp, 0x20;\
  c.sw x10, 0(x11);\
  c.mv x12, x10;\
  c.sw x12, 0(x11);\
  c.sub x10, x9;\
  c.sw x10, 0(x11);\
  c.andi x9, 15;\
  c.sw x9, 0(x11);\
  c.li x9, 1;\
  c.xor x9, x13;\
  c.sw x9, 0(x11);\
  c.or x9, x13;\
  c.sw x9, 0(x11);\
  c.and x9, x13;\
  c.sw x9, 0(x11);\
  c.srai x15, 5;\
  c.sw x15, 0(x11);\
  c.slli x15, 7;\
  c.sw x15, 0(x11);\
  c.beqz x15, neveer2;\
  c.addi x8, 1;\
  neveer2:;\
  c.sw x8, 0(x11);\
  c.lw x12, 4(x11);\
  c.sw x12, 0(x11);\
  c.bnez x12, neveer2;\
  c.lwsp x2, 0(sp);\
  c.swsp x12, 0(sp);\
  c.lwsp x12, 0(sp);\
  c.swsp x2, 0(sp);\
  c.ebreak;\
 .option norvc;\
  TEST_J(c.j, 1);\
  TEST_J(c.jal, 0);\
  TEST_JR(c.jr, 1);\
  TEST_JR(c.jalr, 0);\
addi x1, x1, 1;\
helper_error:;\
sw x1, 0x(x11);\

#define TEST_J(rvc_instr, should_be_zero) \
  .data; \
rvc_string ##rvc_instr: \
  .string #rvc_instr; \
  .text; \
  lui a0,      %hi(rvc_string##rvc_instr); \
  addi a0, a0, %lo(rvc_string##rvc_instr); \
  \
  li ra, 0; \
  li a1, should_be_zero; \
  .option rvc; \
  rvc_instr rvc_instr##_jt; \
  .option norvc; \
  jal helper_error; \
rvc_instr##_jt:; \
  mv a2, ra; \

#define TEST_JR(rvc_instr, should_be_zero) \
  .data; \
rvc_string ##rvc_instr: \
  .string #rvc_instr; \
  .text; \
  lui a0,      %hi(rvc_string##rvc_instr); \
  addi a0, a0, %lo(rvc_string##rvc_instr); \
  \
  li ra, 0; \
  li a1, should_be_zero; \
  lui  a2,     %hi(rvc_instr##_jt); \
  addi a2, a2, %lo(rvc_instr##_jt); \
  .option rvc; \
  rvc_instr a2; \
  .option norvc; \
  jal helper_error; \
rvc_instr##_jt:; \
  mv a2, ra; \

#####################################

# define CALL_INVALID() \
li x3, 10; \
li x28, 0xFFFFFFFF; \
li x29, 0xFFFFFFFF; \
csrrw x0, 0x305, x0; \
csrr x30, 0x305; \
addi x30,x30, 0x88; \
li x20, ecall_insn_handler; \
slli x20,x20, 20; \
li x10, 0x1F00; \
slli x10,x10,7; \
add x20,x20,x10; \
add x20,x20, 0x67; \
sw x20, 0(x30); \
csrw 0x38D, x20; \
li x10, return; \
csrw 0x341, x10; \
li x1, 1; \
ecall; \
return:; \
li x28, 0; \
li x29, 0; \
nop; \
j end_call; \
li x27, 0xFFFFFFFF; \
sw x27, 0(x0); \
loop1:; \
j loop1; \
\
ecall_insn_handler:; \
sw x28, 0(x0); \
sw x29, 0(x0); \
li x30, 0xFFFFFFFF; \
add x1,x1,1; \
li x2, 4; \
beq x1,x2, return; \
mret; \
\
end_call:; \
\
li x28, 0xFFFFFFFF; \
li x29, 0xFFFFFFFF; \
\
csrrw x0, 0x305, x0; \
csrr x30, 0x305; \
addi x30,x30, 0x84; \
li x20, fault_instr_insn_handler; \
slli x20,x20, 20; \
li x10, 0x1F00; \
slli x10,x10,7; \
add x20,x20,x10; \
add x20,x20, 0x67; \
sw x20, 0(x30); \
csrw 0x38D, x20; \
.word 0xFFFFFFFF; \
sw x28, 0(x0); \
sw x29, 0(x0); \
loop2:; \
j loop2; \
\
fault_instr_insn_handler:; \
li x28, 0x0; \
li x29, 0x0; \
sw x28, 0(x0); \
sw x29, 0(x0); \
li x30, 0xFFFFFFFF; \
j finish_int; \
\
finish_int:; \


#define TEST_LOAD_STORE()\
li x31, 0xFFFFFFFF; \
sw x31, 0(x31); \
p.lb x5, 0(x31!); \
sw x5, 0(x0); \
p.lbu x5, 0(x31!); \
sw x5, 0(x0); \
p.lh x5, 0(x31!); \
sw x5, 0(x0); \
p.lhu x5, 0(x31!); \
sw x5, 0(x0); \
p.lw x5, 0(x31!); \
sw x5, 0(x0); \
p.lb x5, x0(x31!); \
sw x5, 0(x0); \
p.lbu x5, x0(x31!); \
sw x5, 0(x0); \
p.lh x5, x0(x31!); \
sw x5, 0(x0); \
p.lhu x5, x0(x31!); \
sw x5, 0(x0); \
p.lw x5, x0(x31!); \
sw x5, 0(x0); \
p.lb x5, x0(x31); \
sw x5, 0(x0); \
p.lbu x5, x0(x31); \
sw x5, 0(x0); \
p.lh x5, x0(x31); \
sw x5, 0(x0); \
p.lhu x5, x0(x31); \
sw x5, 0(x0); \
p.lw x5, x0(x31); \
sw x5, 0(x0); \
sw x0, 0(x31); \
p.lb x5, 0(x31!); \
sw x5, 0(x0); \
p.lbu x5, 0(x31!); \
sw x5, 0(x0); \
p.lh x5, 0(x31!); \
sw x5, 0(x0); \
p.lhu x5, 0(x31!); \
sw x5, 0(x0); \
p.lw x5, 0(x31!); \
sw x5, 0(x0); \
p.lb x5, x0(x31!); \
sw x5, 0(x0); \
p.lbu x5, x0(x31!); \
sw x5, 0(x0); \
p.lh x5, x0(x31!); \
sw x5, 0(x0); \
p.lhu x5, x0(x31!); \
sw x5, 0(x0); \
p.lw x5, x0(x31!); \
sw x5, 0(x0); \
p.lb x5, x0(x31); \
sw x5, 0(x0); \
p.lbu x5, x0(x31); \
sw x5, 0(x0); \
p.lh x5, x0(x31); \
sw x5, 0(x0); \
p.lhu x5, x0(x31); \
sw x5, 0(x0); \
p.lw x5, x0(x31); \
sw x5, 0(x0); \
li x28, 0xFFFFFFFF; \
li x30, 0x11111111; \
li x1, 0; \
li x2, 0; \
li x31, 0x00100100; \
loopld:; \
	p.adduN x3, x0, x1, 0; \
        p.lw x5, x2(x3!); \
	sw x5, 0(x31); \
        sw x3,  0(x31); \
	beq x2, x28, endld; \
	p.adduN x2, x2, x30, 0; \
	j loopld; \
endld:  xor x2, x2, x2; \
	beq x1, x28, endld2; \
	p.adduN x1, x1, x30, 0; \
	j loopld; \
endld2:; \
li x5, 0xFFFFFFFF; \
li x4, 4; \
li x6, 8; \
li x31, 0xFFFFFFFF; \
p.sb x5, 4(x31!); \
p.sb x0, 4(x31!); \
p.sh x5, 4(x31!); \
p.sh x0, 4(x31!); \
p.sw x5, 4(x31!); \
p.sw x0, 4(x31!); \
p.sb x5, x4(x31!); \
p.sb x0, x4(x31!); \
p.sh x5, x4(x31!); \
p.sh x0, x4(x31!); \
p.sw x5, x4(x31!); \
p.sw x0, x4(x31!); \
p.sb x5, x4(x31); \
p.sb x0, x4(x31); \
p.sh x5, x6(x31); \
p.sw x5, x0(x31); \
p.sw x0, x0(x31); \
sw x5, 0(x0); \
p.lb x4, 1(x31!); \
p.lw x4, 1(x31!); \
p.lh x4, 1(x31!); \
p.lbu x4, 2(x31!); \
p.lhu x4, 1(x31!); \
li x31, 0; \
p.sb x5, 1(x31!); \
p.sw x0, 1(x31!); \
p.sh x5, 1(x31!); \
li x31, 0; \
li x1, 1; \
li x2, 2; \
li x3, 3; \
p.sb x0, x1(x31); \
p.sh x0, x2(x31); \
p.sw x5, x3(x31); \
li x2, 0xFFFFFFFF; \
li x10, 0; \
li x15, 0xFFFFFFFF; \
p.sw x2, 1(x15!); \
sw x15,  0(x31); \
p.sw x2, 0(x15!); \
sw x15,  0(x31); \
p.sw x2, 0x3F(x15!); \
sw x15,  0(x31); \
p.sw x2, 0(x10!); \
sw x10,  0(x31); \
p.sw x2, 0x3F(x10!); \
sw x10,  0(x31); \
li x15, 0xCCCCCCCC; \
p.sw x2, 0x20(x15!); \
sh x15,  0(x31); \
p.sw x2, 0(x15!); \
sw x15,  0(x31); \
p.sw x0, 0x3F(x15!); \
sw x15,  0(x31); \
p.sb x0, 0(x10!); \
sw x10,  0(x31); \
p.sh x0, 0x3F(x10!); \
sw x10,  0(x31); \
p.sb x2, 1(x15!); \
p.sh x2, 0(x15!); \
p.sw x2, 0(x10!); \
p.sb x2, x3(x31!); \
p.sh x2, x3(x31!); \
p.sw x2, x3(x31!); \
li x3, 1; \
li x2, 0xFFFFFFFF; \
p.sb x0, x0(x31); \
p.sh x0, x4(x31); \
p.sb x2, x0(x31); \
p.sh x2, x4(x31); \
p.sw x2, x3(x2); \
p.sw x2, x2(x3); \



#define EXCEPTIONS() \
li x3, 0xFFFFFFFF; \
li x4, 0x0000FFFF; \
div x30, x3,x4; \
add x30,x30,x30; \
sub x30,x30,x30; \
mul x30, x30,x30; \
sw x30,0(x0); \
\
li x31, 0x00100100; \
li x3, 7; \
p.sw x3, x3(x3); \
p.sw x3, x3(x31!); \
p.sw x3, x3(x31!); \
p.sw x3, x3(x31!); \
sw x31, 0(x31); \
lw x2, 0(x31); \
sw x2, 0(x31); \
li x1, 1; \
beq x1, x0, mai; \
beq x1, x0, mai; \
beq x1, x0, mai; \
mai:; \
beq x0, x1, mai; \
beq x0, x1, mai; \
beq x0, x1, mai; \
p.mac x1, x2, x3; \
p.mac x1, x1, x1; \
sw x1, 0(x0); \
\
p.mac x1, x2, x3; \
nop; \
p.mac x1, x1, x1; \
nop; \
sw x1, 0(x0); \
\
p.mac x1, x2, x3; \
nop; \
nop; \
p.mac x1, x1, x1; \
nop; \
nop; \
sw x1, 0(x0); \
\
lw x3, 0x(x31);\
p.mac x1, x2, x3; \
nop; \
nop; \
nop; \
p.mac x1, x1, x1; \
nop; \
nop; \
nop; \
sw x1, 0(x0); \
\
lw x2, 0x(x31);\
p.mac x1, x2, x3; \
nop; \
nop; \
nop; \
nop; \
p.mac x1, x1, x1; \
nop; \
nop; \
nop; \
nop; \
sw x1, 0(x0); \
li x31, 0x00100100; \
LUI x1, 0xFFFFF; \
sw x1, 0(x31); \
LUI x1, 0; \
sw x1, 0(x31); \
la x13, WFI_PPC_1; \
la x14, WFI_NPC_1; \
la x15, WFI_NPC_2; \
ebreak; \
WFI_PPC_1: ; \
wfi; \
WFI_NPC_1: addi x14, x13, 1; \
WFI_NPC_2: addi x15, x13, 2; \
\
la x13,     before_ill; \
li x14,     0x84; \
la x15,     after_ill; \
nop; \
before_ill:; \
after_ill:  nop; \
wfi; \
call pippo;\
call pippo;\
addi x3, x3, 5;\
call pippo;\
j npippo;\
pippo:;\
addi x3, x3, 1;\
ret;\
ret;\
ret;\
npippo:;\
sw x3, 0(x31);\

##########################

#define FORWARDING_STALL_JUMPS() \
li x2, 0xFFFFFFFF; \
csrw 0x000, x2; \
csrr x10, 0x000; \
sw x10, 0(x0); \
csrw 0x300, x2; \
csrr x10, 0x300; \
sw x10, 0(x0); \
li x4, 20; \
sw x4, 0(x0); \
sw x4, 0(x0); \
sw x4, 0(x0); \
sw x4, 0(x0); \
lw x12, 0(x0); \
add x12, x12, x12; \
sw x12, 0(x0); \
sw x12, 0(x0); \
sw x12, 0(x0); \
sw x12, 0(x0); \
jal jump_al; \
li x7, 30; \
nop; \
jump_al: ;\
li x6, 0; \
li x8, JALR_JUMP; \
jalr x8; \
li x6,0xFFFFFFFF; \
JALR_JUMP: ;\
sw x6, 0(x0); \
li x6, 0xFFFFFFFF; \
li x9, JALR_JUMP2; \
jalr x9; \
li x6,0; \
JALR_JUMP2: ;\
sw x6, 0(x0); \
li x2, 0xFFFFFFFF; \
csrw 0x00, x2; \
csrr x10, 0x00; \
sw x10, 0(x0); \
sw x10, 0(x0); \
sw x10, 0(x0); \
li x9, 0xFF; \
mv x2, x9; \
sw x2, 0(x0); \
csrw 0x00, 0x00000000; \
csrr x10, 0x00; \
sw x10, 0(x0); \
sw x10, 0(x0); \
sw x10, 0(x0); \
li x2, 0xFFFFFFFF; \
csrw 0x04, x2; \
csrr x10, 0x04; \
sw x10, 0(x0); \
li x2, 0; \
csrw 0x04, x2; \
csrr x10, 0x04; \
sw x10, 0(x0); \
li x2, 0xFFFFFFFF; \
csrw 0x08, x2; \
csrr x10, 0x08; \
sw x10, 0(x0); \
li x2, 0; \
csrw 0x08, x2; \
csrr x10, 0x08; \
sw x10, 0(x0); \
BNEIMM_JUMP: ; \
li x4, 0xFFF; \
sw x4, 0(x0); \
li x4, 10; \
p.beqimm x4, 10, BEQIMM_JUMP; \
li x4, 0xFFF; \
BEQIMM_JUMP:; \
sw x4, 0(x0); \
p.bneimm x4, 10, BNEIMM_JUMP; \
sw x4, 0(x0); \
li x5, 20; \
li x4, 10; \
blt x4, x5, BLT_JUMP; \
li x4, 0xFFFF; \
BLT_JUMP:; \
sw x4, 0(x0); \
bge x5, x4, BGE_JUMP; \
li x4, 0xFFFF; \
BGE_JUMP:; \
sw x4, 0(x0); \
addi x1, x0, 1; \
addi x2, x1, 2;\
addi x3, x1, 11	; \
addi x4, x1, 125; \
addi x5, x1, 89; \
add  x6, x1, x1; \
add  x7, x6, x6; \
add  x8, x6, x6	; \
add  x9, x6, x6	; \
add  x10, x4, x6; \
sw x10, 4(x1); \
sw x10, 7(x1); \
sw x10, 11(x1); \
lw x11, 11(x1); \
lw x12, 11(x1)	; \
lw x13, 11(x1)	; \
sw x13, 12(x1)	; \
add  x14, x6, x6; \
lw x14, 11(x1)	; \
add  x15, x6, x14; \
add  x16, x6, x14; \
add  x16, x6, x14; \
lw x2, 4(x1); \
sw x18, 0(x31); \
sw x17, 0(x31); \
sw x6, 0(x31); \
sw x3, 0(x31); \
sw x7, 0(x31); \
sw x5, 0(x31); \
sw x15, 0(x31); \
sw x16, 0(x31); \
sw x14, 0(x31); \
\
addi x1, x0, 1; \
addi x2, x1, 2; \
addi x3, x2, 9; \
addi x4, x3, 52; \
sw x4, 4(x1)	; \
lw x2, 4(x1); \
sw x2, 20(x1) ; \
lw x2, 4(x2); \
lw x2, 4(x1)	; \
addi x5, x2, 10; \
addi x6, x2, 10; \
addi x7, x2, 10; \
sw x2, 0(x31); \
sw x3, 0(x31); \
sw x4, 0(x31); \
sw x5, 0(x31); \
sw x6, 0(x31); \
sw x7, 0(x31); \

################ALU####################


#define TEST_ALU_DEEP() \
AUIPC x1, 0xFFFFF; \
AUIPC x1, 0x00000; \
AUIPC x1, 0x00001; \
li x31, 0x00100100; \
li  x1, 0x00000000; \
li  x2, 0x00000000; \
	li x30, 0x11111111; \
	li x28, 0xFFFFFFFF; \
loopalu:p.adduN x7, x1, x2, 0; \
	p.subN x8, x1, x2, 0; \
	p.clipr x11, x1, x2; \
	div x9, x1, x2; \
	REM x10,x1,x2; \
	REMu x16,x2,x1; \
        divu x15,x2,x1; \
	pv.add.h x3, x1, x2; \
	pv.sub.b x4, x1, x2; \
	pv.shuffle.b x5, x1, x2; \
	pv.shuffle.h x6, x1, x2; \
	sw  x7, 0(x31); \
	sw  x8, 0(x31); \
	sw  x9, 0(x31); \
	sw  x10, 4(x31); \
	sw  x3, 4(x31); \
	sw  x4, 4(x31); \
	sw  x5, 4(x31); \
	sw  x6, 4(x31); \
	sw  x11, 4(x31); \
	sw  x15, 4(x31); \
	sw  x16, 4(x31); \
	beq x2, x28, end2alu; \
	p.adduN x2, x2, x30, 0; \
	j loopalu; \
end2alu:xor x2, x2, x2; \
	beq x1, x28, end3alu; \
	p.adduN x1, x1, x30, 0; \
	j loopalu; \
end3alu:; \
li  x4, 0xEFFFFFFF; \
li  x2, 0x55555555; \
li  x8, 0xCCCCCCCC; \
li  x1, 0x00000001; \
li  x13, 2;\
li  x29, 144; \
loopdiv: ; \
	div x3, x2, x1; \
	REM x10,x2,x1; \
	REMu x11,x2,x1; \
        divu x9,x2,x1; \
	div x5, x8, x1; \
	REM x6,x8,x1; \
	REMu x12,x8,x1; \
        divu x7,x8,x1; \
	addi x14, x13, 0;\
	p.adduN x13, x1, x13, 0; \
	addi x1, x14, 0;\
	beq x1, x29, end_div; \
	sw  x3, 4(x31); \
	sw  x10, 4(x31); \
	sw  x9, 0(x31); \
	sw  x5, 4(x31); \
	sw  x6, 4(x31); \
	sw  x7, 0(x31); \
	sw  x11, 4(x31); \
	sw  x12, 0(x31); \
	j loopdiv; \
end_div:;\
li x1, 0x00000000; \
li x2, 0x0000FFFF; \
li x13, 0x00000000; \
li x14, 0x0000FFFF; \
li x15, 0x00FF00FF; \
li x16, 0x33333333; \
li x17, 0x0F0F0F0F; \
li x18, 0xF0F0F0F0; \
li x19, 0x00000001; \
li x20, 0xFFFFFFFF; \
li x21, 0x765ABCDE; \
aluu:; \
	TEST_ALU(); \
	bne x1, x13, num2; \
	li x1, 0x0000FFFF; \
	li x2, 0xFFFF0000; \
	j aluu; \
num2:	bne x1, x14, num3; \
	li x1, 0x00FF00FF; \
	li x2, 0xCCCCCCCC; \
	j aluu	; \
num3:	bne x1, x15, num4; \
	li x1, 0x33333333; \
	li x2, 0x55555555; \
	j aluu	; \
num4:	bne x1, x16, num5; \
	li x1, 0x0F0F0F0F; \
	li x2, 0x0F0F0F0F; \
	j aluu; \
num5:	bne x1, x17, num6; \
	li x1, 0xF0F0F0F0; \
	li x2, 0xF0F0F0F0; \
	j aluu; \
num6:	bne x1, x18, num7; \
	li x1, 0x00000001; \
	li x2, 0xFFFFFFFF; \
	j aluu; \
num7:	bne x1, x19, num8; \
	li x1, 0xFFFFFFFF; \
	li x2, 0x00000000; \
	j aluu; \
num8:	bne x1, x20, num9; \
	li x1, 0x765ABCDE; \
	li x2, 0x43210ABC; \
	j aluu; \
num9:	; \
TEST_FF(1); \
TEST_CLB(1); \
TEST_ROR(1); \
TEST_MANIP(1); \
TEST_INSERT(1); \
TEST_COMPVI(1); \
TEST_ALU_imm(0xFFFFFFFF, 0x00000000) ; \
TEST_ALU_imm(0x00000000, 0xFFFFFFFF) ; \
TEST_ALU_imm(0xFFFFFFFF, 0xFFFFFFFF) ; \
TEST_ALU_imm(0x00000000, 0x00000000) ; \
TEST_SHF2( pv.srl.sci.h , 0x00000000); \
TEST_SHF2( pv.sra.sci.h , 0xB6DB6DB6); \
TEST_SHF2( pv.sll.sci.h , 0xFFFFFFFF); \
TEST_SHF2( srli , 0xB6DB6DB6); \
TEST_SHF2( srai , 0xCCCCCCCC); \
TEST_SHF2( slli , 0x55555555); \
TEST_SHF( p.addN, 0x55555555, 0x00000001); \
TEST_SHF( p.addN, 0xB6DB6DB6, 0x00000001); \
TEST_SHF( p.subuN, 0xB6DB6DB6, 0x00000001); \
TEST_SHF( p.subuN, 0x55555555, 0x00000001); \
TEST_SHF( p.adduRN, 0x00000001, 0xFFFFFFFF); \
TEST_SHF( p.subRN, 0x00000001, 0xFFFFFFFF); \
TEST_CLIP();\

#define TEST_CLIP()\
li x1, 0xFFFF;\
li x2, 0xEFFF;\
p.clip x3, x1, 1;\
sw x3, 0(x31);\
p.clip x3, x1, 2;\
sw x3, 0(x31);\
p.clip x3, x1, 3;\
sw x3, 0(x31);\
p.clip x3, x1, 4;\
sw x3, 0(x31);\
p.clip x3, x1, 5;\
sw x3, 0(x31);\
p.clip x3, x1, 6;\
sw x3, 0(x31);\
p.clip x3, x1, 7;\
sw x3, 0(x31);\
p.clip x3, x1, 8;\
sw x3, 0(x31);\
p.clip x3, x2, 24;\
sw x3, 0(x31);\
p.clip x3, x2, 25;\
sw x3, 0(x31);\
p.clip x3, x2, 26;\
sw x3, 0(x31);\
p.clip x3, x2, 27;\
sw x3, 0(x31);\
p.clip x3, x2, 28;\
sw x3, 0(x31);\
p.clip x3, x2, 29;\
sw x3, 0(x31);\
p.clip x3, x2, 30;\
sw x3, 0(x31);\
p.clip x3, x2, 31;\
sw x3, 0(x31);\
p.clip x3, x0, 14;\
sw x3, 0(x31);\
p.clip x3, x0, 15;\
sw x3, 0(x31);\
p.clip x3, x0, 16;\
sw x3, 0(x31);\
p.clip x3, x0, 17;\
sw x3, 0(x31);\
p.clip x3, x0, 18;\
sw x3, 0(x31);\
p.clip x3, x0, 19;\
sw x3, 0(x31);\
p.clip x3, x0, 20;\
sw x3, 0(x31);\
p.clip x3, x0, 21;\
sw x3, 0(x31);\
p.clipu x3, x0, 13;\
sw x3, 0(x31);\
p.clipu x3, x2, 12;\
sw x3, 0(x31);\
p.clipu x3, x1, 11;\
sw x3, 0(x31);\
p.clipur x3, x1, x0;\
sw x3, 0(x31);\
p.clipur x3, x2, x0;\
sw x3, 0(x31);\
p.clipur x3, x4, x1;\
sw x3, 0(x31);\


#define TEST_BRANCH()\
li x3, 0;\
li x1, 1;\
li x2, 0xFFFFFFFF;\
beqz x1, neveer;\
bnez x0, neveer;\
blez x1, neveer;\
bgez x2, neveer;\
bltz x0, neveer;\
bgtz x0, neveer;\
bgt  x2, x1, neveer;\
ble  x1, x2, neveer;\
bgtu x1, x2, neveer;\
bleu x2, x1, neveer;\
bne x2, x2, neveer;\
addi x3, x3, 1;\
neveer:;\
beqz x1, neveer;\
bnez x0, neveer;\
blez x1, neveer;\
bgez x2, neveer;\
bltz x0, neveer;\
bgtz x0, neveer;\
bgt  x2, x1, neveer;\
ble  x1, x2, neveer;\
bgtu x1, x2, neveer;\
bleu x2, x1, neveer;\
bne x2, x2, neveer;\
addi x3, x3, 1;\
beqz x0, take1;\
addi x3, x3, 1;\
take1: bnez x0, take2;\
addi x3, x3, 1;\
take2: blez x2, take3;\
addi x3, x3, 1;\
take3: blez x0, take4;\
addi x3, x3, 1;\
take4: bgez x1, take5;\
addi x3, x3, 1;\
take5: bgez x0, take6;\
addi x3, x3, 1;\
take6: bgtz x1, take7;\
addi x3, x3, 1;\
take7: bltz x2, take8;\
addi x3, x3, 1;\
take8: bgt  x1, x2, take9;\
addi x3, x3, 1;\
take9: ble  x2, x1, take10;\
addi x3, x3, 1;\
take10: ble  x2, x2, take11;\
addi x3, x3, 1;\
take11: bgtu x2, x1, take12;\
addi x3, x3, 1;\
take12: bleu x1, x2, take13;\
addi x3, x3, 1;\
take13: bleu x2, x2, take14;\
addi x3, x3, 1;\
take14: bne x2, x1, take15;\
addi x3, x3, 1;\
take15:;\
sw x3, 0(x31);\


#define REMOVE_CYCLES() \
li x31, 0x00100000; \
addi x30, x31, 100; \
li x1, 0xFFFFFFFF; \
li x0, 0x00000000; \
loop_remotion: ; \
sw x0, 0(x31); \
addi x31,x31, 1; \
beq x31, x30, end_remotion; \
j loop_remotion; \
end_remotion:; \

#define TEST_PERF();\
  li x27 , 0x00000001;\
\
  csrw  0x79F, x27;\
  csrr  x26, 0x780;\
  csrr  x25, 0x781;\
  csrr  x24, 0x782;\
  csrr  x23, 0x783;\
  csrr  x22, 0x784;\
  csrr  x21, 0x785;\
  csrr  x20, 0x786;\
  csrr  x19, 0x787;\
  sw x26, 0(x0);\
  sw x25, 0(x0);\
  sw x24, 0(x0);\
  sw x23, 0(x0);\
  sw x22, 0(x0);\
  sw x21, 0(x0);\
  sw x20, 0(x0);\
  sw x19, 0(x0);\
\
  csrr  x26, 0x788;\
  csrr  x25, 0x789;\
  csrr  x24, 0x78A;\
  csrr  x23, 0x78B;\
  csrr  x22, 0x78C;\
  csrr  x21, 0x78D;\
  csrr  x20, 0x78E;\
  csrr  x19, 0x78F;\
  sw x26, 0(x0);\
  sw x25, 0(x0);\
  sw x24, 0(x0);\
  sw x23, 0(x0);\
  sw x22, 0(x0);\
  sw x21, 0(x0);\
  sw x20, 0(x0);\
  sw x19, 0(x0);\
\
  csrr  x26, 0x790;\
  csrr  x25, 0x791;\
  csrr  x24, 0x792;\
  csrr  x23, 0x793;\
  csrr  x22, 0x794;\
  sw x26, 0(x0);\
  sw x25, 0(x0);\
  sw x24, 0(x0);\
  sw x23, 0(x0);\
  sw x22, 0(x0);\
\
  csrr  x19, 0x79F;\
  sw x19, 0(x0);\

#define TEST_CSR();\
csrr x30, 0x00;\
sw x30, 0(x0);\
csrrci x30, 0x300, 7;\
csrrci x30, 0x300, 3;\
csrrsi x30, 0x300, 7;\
sw x30, 0(x0);\
csrrsi x30, 0x300, 3;\
sw x30, 0(x0);\
csrrci x30, 0x300, 7;\
sw x30, 0(x0);\
csrrci x30, 0x300, 3;\
sw x30, 0(x0);\
csrr x30, 0x300;\
sw x30, 0(x0);\
\
li x28, 0xFFFFFFFE;\
li x1, 1;\
csrrwi x30, 0x341, 1;\
csrrw x30, 0x341, x28;\
sw x30, 0(x0);\
csrrw x30, 0x341, x1;\
sw x30, 0(x0);\
csrr x30, 0x342;\
sw x30, 0(x0);\
csrrwi x30, 0x305, 1;\
csrrw x30, 0x305, x28;\
sw x30, 0(x0);\
csrrw x30, 0x305, x1;\
sw x30, 0(x0);\
csrr x30, 0x014;\
sw x30, 0(x0);\
csrr x30, 0xF14;\
sw x30, 0(x0);\
csrrsi x30, 0x7A1, 1;\
csrrsi x30, 0x7A1, 0;\
csrrci x30, 0x7A1, 1;\
sw x30, 0(x0);\
csrrci x30, 0x7A1, 0;\
sw x30, 0(x0);\
csrrsi x30, 0x7A1, 1;\
sw x30, 0(x0);\
\
csrrsi x30, 0x7A0, 20;\
csrrsi x30, 0x7A0, 19;\
csrrsi x30, 0x7A0, 18;\
csrrsi x30, 0x7A0, 17;\
csrrsi x30, 0x7A0, 16;\
csrrsi x30, 0x7A0, 15;\
csrrsi x30, 0x7A0, 14;\
csrrsi x30, 0x7A0, 13;\
csrrsi x30, 0x7A0, 12;\
csrrsi x30, 0x7A0, 11;\
csrrsi x30, 0x7A0, 10;\
csrrsi x30, 0x7A0, 9;\
csrrsi x30, 0x7A0, 8;\
csrrsi x30, 0x7A0, 7;\
csrrsi x30, 0x7A0, 6;\
csrrsi x30, 0x7A0, 5;\
csrrsi x30, 0x7A0, 4;\
csrrsi x30, 0x7A0, 3;\
csrrsi x30, 0x7A0, 2;\
csrrsi x30, 0x7A0, 1;\
csrrsi x30, 0x7A0, 0;\
csrrci x30, 0x7A0, 20;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 19;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 18;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 17;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 16;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 15;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 14;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 13;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 12;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 11;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 10;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 9;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 8;\
sw x30, 0(x0);\
csrrsi x30, 0x7A1, 0;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 7;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 6;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 5;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 4;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 3;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 2;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 1;\
sw x30, 0(x0);\
csrrci x30, 0x7A0, 0;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 20;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 19;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 18;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 17;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 16;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 15;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 14;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 13;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 12;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 11;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 10;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 9;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 8;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 7;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 6;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 5;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 4;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 3;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 2;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 1;\
sw x30, 0(x0);\
csrrsi x30, 0x7A0, 0;\
sw x30, 0(x0);\
  csrw  0x780, x28;\
  csrw  0x781, x28;\
  csrw  0x782, x28;\
  csrw  0x783, x28;\
  csrw  0x784, x28;\
  csrw  0x785, x28;\
  csrw  0x786, x28;\
  csrw  0x787, x28;\
  csrw  0x788, x28;\
  csrw  0x789, x28;\
  csrw  0x78A, x28;\
  csrw  0x78B, x28;\
  csrw  0x78C, x28;\
  csrw  0x78D, x28;\
  csrw  0x78E, x28;\
  csrw  0x78F, x28;\
  csrw  0x790, x28;\
  csrw  0x791, x28;\
  csrw  0x792, x28;\
  csrw  0x793, x28;\
  csrw  0x794, x28;\
  csrw  0x79F, x28;\
  csrrw x26, 0x780, x27;\
  csrrw x25, 0x781, x27;\
  csrrw x24, 0x782, x27;\
  csrrw x23, 0x783, x27;\
  csrrw x22, 0x784, x27;\
  csrrw x21, 0x785, x27;\
  csrrw x20, 0x786, x27;\
  csrrw x19, 0x787, x27;\
  sw x26, 0(x0);\
  sw x25, 0(x0);\
  sw x24, 0(x0);\
  sw x23, 0(x0);\
  sw x22, 0(x0);\
  sw x21, 0(x0);\
  sw x20, 0(x0);\
  sw x19, 0(x0);\
\
  csrrw x26, 0x788, x27;\
  csrrw x25, 0x789, x27;\
  csrrw x24, 0x78A, x27;\
  csrrw x23, 0x78B, x27;\
  csrrw x22, 0x78C, x27;\
  csrrw x21, 0x78D, x27;\
  csrrw x20, 0x78E, x27;\
  csrrw x19, 0x78F, x27;\
  sw x26, 0(x0);\
  sw x25, 0(x0);\
  sw x24, 0(x0);\
  sw x23, 0(x0);\
  sw x22, 0(x0);\
  sw x21, 0(x0);\
  sw x20, 0(x0);\
  sw x19, 0(x0);\
\
  csrrw x26, 0x790, x27;\
  csrrw x25, 0x791, x27;\
  csrrw x24, 0x792, x27;\
  csrrw x23, 0x793, x27;\
  csrrw x22, 0x794, x27;\
  sw x26, 0(x0);\
  sw x25, 0(x0);\
  sw x24, 0(x0);\
  sw x23, 0(x0);\
  sw x22, 0(x0);\
\
  csrrw x19, 0x79F, x27;\
  sw x19, 0(x0);\
TEST_PERF();\
csrrw x30, 0x341, x1;\
sw x30, 0(x31);\
csrrw x30, 0x341, x28;\
sw x30, 0(x31);\
csrr x30, 0x341;\
sw x30, 0(x31);\
csrrw x30, 0x341, x0;\
sw x30, 0(x0);\
csrrw x30, 0x341, x28;\
sw x30, 0(x0);\
CSRRCI x29, 0x7B6, 0; \
sw x29, 0(x0);\
CSRRSI x29, 0x7B6, 0; \
sw x29, 0(x0);\
CSRRWI x29, 0x7B6, 0; \
sw x29, 0(x0);\
CSRRC x29, 0x7B6, x28; \
sw x29, 0(x0);\
CSRRS x29, 0x7B6, x28; \
sw x29, 0(x0);\
CSRRW x29, 0x7B6, x28; \
sw x29, 0(x0);\
RDCYCLE x5; \
sw x5, 0(x0); \
RDCYCLEH x5; \
sw x5, 0(x0); \
RDTIME x5; \
sw x5, 0(x0); \
RDTIMEH x5; \
sw x5, 0(x0); \
RDINSTRET x5; \
sw x5, 0(x0); \
RDINSTRETH x5; \
sw x5, 0(x0); \
\
csrw 0x7B2, x0;\
csrrsi x30, 0x7B2, 31;\
sw x30, 0(x31);\
csrrsi x30, 0x7B2, 30;\
sw x30, 0(x31);\
csrrsi x30, 0x7B2, 29;\
sw x30, 0(x31);\
csrrsi x30, 0x7B2, 28;\
sw x30, 0(x31);\
csrrsi x30, 0x7B2, 27;\
sw x30, 0(x31);\
csrrsi x30, 0x7B2, 26;\
sw x30, 0(x31);\
csrrsi x30, 0x7B2, 25;\
sw x30, 0(x31);\
csrrsi x30, 0x7B2, 24;\
sw x30, 0(x31);\
csrrsi x30, 0x7B2, 23;\
sw x30, 0(x31);\
csrrsi x30, 0x7B2, 22;\
sw x30, 0(x31);\
csrrsi x30, 0x7B2, 21;\
sw x30, 0(x31);\
csrrci x30, 0x7B2, 31;\
sw x30, 0(x31);\
csrrci x30, 0x7B2, 30;\
sw x30, 0(x31);\
csrrci x30, 0x7B2, 29;\
sw x30, 0(x31);\
csrrci x30, 0x7B2, 28;\
sw x30, 0(x31);\
csrrci x30, 0x7B2, 27;\
sw x30, 0(x31);\
csrrci x30, 0x7B2, 26;\
sw x30, 0(x31);\
csrrci x30, 0x7B2, 25;\
sw x30, 0(x31);\
csrrci x30, 0x7B2, 24;\
sw x30, 0(x31);\
csrrci x30, 0x7B2, 23;\
sw x30, 0(x31);\
csrrci x30, 0x7B2, 22;\
sw x30, 0(x31);\
csrrci x30, 0x7B2, 21;\
sw x30, 0(x31);\

#define TEST_HWLOOP() \
li x31, 0x00000000; \
li x25, 0xFFFFFFFF; \
li x1,1; \
csrw 0x7B0, x31; \
csrw 0x7B1, x31; \
csrw 0x7B2, x31; \
csrw 0x7B4, x31; \
csrw 0x7B5, x31; \
csrw 0x7B6, x31; \
csrrw x1, 0x7B0, x25; \
csrrw x2, 0x7B1, x25; \
csrrw x3, 0x7B2, x25; \
csrrw x4, 0x7B4, x25; \
csrrw x5, 0x7B5, x25; \
csrrw x6, 0x7B6, x25; \
sw x1, 0(x0); \
sw x2, 0(x0); \
sw x3, 0(x0); \
sw x4, 0(x0); \
sw x5, 0(x0); \
sw x6, 0(x0); \
csrr x7, 0x7B0; \
csrr x8, 0x7B1; \
csrr x9, 0x7B2; \
csrr x10, 0x7B4; \
csrr x11, 0x7B5; \
csrr x12, 0x7B6; \
sw x7, 0(x0); \
sw x8, 0(x0); \
sw x9, 0(x0); \
sw x10, 0(x0); \
sw x11, 0(x0); \
sw x12, 0(x0); \
\
lp.starti x0, HW_loopx0; \
lp.endi x0, end_HW_loopx0; \
lp.counti x0, 0xF; \
csrr x7, 0x7B0; \
csrr x8, 0x7B1; \
sw x7, 0(x0); \
sw x8, 0(x0); \
HW_loopx0: ; \
csrr x9, 0x7B2; \
end_HW_loopx0: sw x9, 0(x0); \
\
li x2, 10; \
lp.starti x1, HW_loopx1; \
lp.endi x1, end_HW_loopx1; \
lp.count x1, x2; \
csrr x7, 0x7B4; \
csrr x8, 0x7B5; \
nop; \
sw x7, 0(x0); \
sw x8, 0(x0); \
HW_loopx1:; \
csrr x9, 0x7B6; \
end_HW_loopx1: sw x9, 0(x0); \
\
li x2, 4; \
lp.setup x0, x2, end_HW_loopx0_2; \
addi x2,x2, 15; \
end_HW_loopx0_2: sw x2, 0(x0); \
\
lp.setupi x0, 31, end_HW_loopx0_3; \
addi x2,x2, 15; \
nop;\
end_HW_loopx0_3: sw x2, 0(x0); \
\
lp.setup x1, x2, end_HW_loopx0_4; \
addi x2,x2, 15; \
end_HW_loopx0_4: sw x2, 0(x0); \
\
lp.setupi x1, 31, end_HW_loopx0_5; \
addi x2,x2, 15; \
end_HW_loopx0_5: sw x2, 0(x0); \
\
li x2, 4; \
lp.setup x0, x2, end_HW_loopx0_22; \
addi x2,x2, 15; \
nop;\
end_HW_loopx0_22: sw x2, 0(x0); \
\
lp.setupi x0, 4, end_HW_loopx0_33; \
addi x2,x2, 15; \
nop;\
nop;\
end_HW_loopx0_33: sw x2, 0(x0); \
\
lp.setup x1, x2, end_HW_loopx0_44; \
addi x2,x2, 15; \
nop;\
end_HW_loopx0_44: sw x2, 0(x0); \
\
lp.setupi x1, 4, end_HW_loopx0_55; \
addi x2,x2, 15; \
nop;\
nop;\
end_HW_loopx0_55: sw x2, 0(x0); \
\
li x5, 2;\
li x3, 3;\
li x2, 0x80000000;\
lp.starti x0, HW_loopx05; \
lp.endi x0, end_HW_loopx05; \
lp.count x0, x2; \
HW_loopx05: ; \
beq x5, x3, endl1;\
add x5, x5, 1;\
csrr x9, 0x7B2; \
end_HW_loopx05: sw x9, 0(x0); \
endl1:;\
\
li x5, 2;\
lp.starti x1, HW_loopx15; \
lp.endi x1, end_HW_loopx15; \
lp.count x1, x2; \
HW_loopx15:; \
beq x5, x3, endl2;\
add x5, x5, 1;\
csrr x9, 0x7B6; \
end_HW_loopx15: sw x9, 0(x0); \
endl2:;\
\
li x5, 2;\
lp.starti x0, HW_loopx06; \
lp.endi x0, end_HW_loopx06; \
lp.counti x0, 0x800; \
HW_loopx06: ; \
beq x5, x3, endl16;\
add x5, x5, 1;\
csrr x9, 0x7B2; \
end_HW_loopx06: sw x9, 0(x0); \
endl16:;\
\
li x5, 2;\
lp.starti x1, HW_loopx16; \
lp.endi x1, end_HW_loopx16; \
lp.counti x1, 0x800; \
HW_loopx16:;\
beq x5, x3, endl26;\
add x5, x5, 1;\
csrr x9, 0x7B6;\
end_HW_loopx16: sw x9, 0(x0); \
endl26:;\
\


#define TEST_REG_FILE_ALU_FULL() \
LI_ALL_REGISTER(0x00000000); \
TEST_REG_FILE_ALU_FULL_REG(p.mac, 0xFFFFFFFF); \
TEST_REG_FILE_ALU_FULL_REG(p.mac, 0x00000000); \
TEST_REG_FILE_ALU_FULL_REG(p.mac, 0x0000FFFF); \

#define TEST_REG_FILE_ALU_FULL_REG(inst, value1) \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x1); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x2); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x3); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x4); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x5); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x6); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x7); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x8); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x9); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x10); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x11); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x12); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x13); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x14); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x15); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x16); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x17); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x18); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x19); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x20); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x21); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x22); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x23); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x24); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x25); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x26); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x27); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x28); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x29); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x30); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x31); \

#define TEST_REG_FILE_ALU_OPERATION(inst, value1, reg1)\
li reg1, value1; \
nop; \
nop; \
nop; \
nop; \
inst reg1,reg1,reg1; \
nop; \
nop; \
nop; \
nop; \
sw reg1, 0(x0); \

#define TEST_REG_FILE_LOAD_FULL(value1) \
li x0, 0; \
nop; \
nop; \
nop; \
li x1, value1; \
nop; \
nop; \
nop; \
nop; \
sw x1, 0(x0); \
nop; \
nop; \
nop; \
nop; \
TEST_REG_FILE_LOAD(x1); \
TEST_REG_FILE_LOAD(x2); \
TEST_REG_FILE_LOAD(x3); \
TEST_REG_FILE_LOAD(x4); \
TEST_REG_FILE_LOAD(x5); \
TEST_REG_FILE_LOAD(x6); \
TEST_REG_FILE_LOAD(x7); \
TEST_REG_FILE_LOAD(x8); \
TEST_REG_FILE_LOAD(x9); \
TEST_REG_FILE_LOAD(x10); \
TEST_REG_FILE_LOAD(x11); \
TEST_REG_FILE_LOAD(x12); \
TEST_REG_FILE_LOAD(x13); \
TEST_REG_FILE_LOAD(x14); \
TEST_REG_FILE_LOAD(x15); \
TEST_REG_FILE_LOAD(x16); \
TEST_REG_FILE_LOAD(x17); \
TEST_REG_FILE_LOAD(x18); \
TEST_REG_FILE_LOAD(x19); \
TEST_REG_FILE_LOAD(x20); \
TEST_REG_FILE_LOAD(x21); \
TEST_REG_FILE_LOAD(x22); \
TEST_REG_FILE_LOAD(x23); \
TEST_REG_FILE_LOAD(x24); \
TEST_REG_FILE_LOAD(x25); \
TEST_REG_FILE_LOAD(x26); \
TEST_REG_FILE_LOAD(x27); \
TEST_REG_FILE_LOAD(x28); \
TEST_REG_FILE_LOAD(x29); \
TEST_REG_FILE_LOAD(x30); \
TEST_REG_FILE_LOAD(x31); \

#define TEST_REG_FILE_LOAD_FULL_REVERSE(value1) \
li x0, 0; \
nop; \
nop; \
nop; \
li x1, value1; \
nop; \
nop; \
nop; \
nop; \
sw x1, 0(x0); \
nop; \
nop; \
nop; \
nop; \
TEST_REG_FILE_LOAD(x31); \
TEST_REG_FILE_LOAD(x30); \
TEST_REG_FILE_LOAD(x29); \
TEST_REG_FILE_LOAD(x28); \
TEST_REG_FILE_LOAD(x27); \
TEST_REG_FILE_LOAD(x26); \
TEST_REG_FILE_LOAD(x25); \
TEST_REG_FILE_LOAD(x24); \
TEST_REG_FILE_LOAD(x23); \
TEST_REG_FILE_LOAD(x22); \
TEST_REG_FILE_LOAD(x21); \
TEST_REG_FILE_LOAD(x20); \
TEST_REG_FILE_LOAD(x19); \
TEST_REG_FILE_LOAD(x18); \
TEST_REG_FILE_LOAD(x17); \
TEST_REG_FILE_LOAD(x16); \
TEST_REG_FILE_LOAD(x15); \
TEST_REG_FILE_LOAD(x14); \
TEST_REG_FILE_LOAD(x13); \
TEST_REG_FILE_LOAD(x12); \
TEST_REG_FILE_LOAD(x11); \
TEST_REG_FILE_LOAD(x10); \
TEST_REG_FILE_LOAD(x9); \
TEST_REG_FILE_LOAD(x8); \
TEST_REG_FILE_LOAD(x7); \
TEST_REG_FILE_LOAD(x6); \
TEST_REG_FILE_LOAD(x5); \
TEST_REG_FILE_LOAD(x4); \
TEST_REG_FILE_LOAD(x3); \
TEST_REG_FILE_LOAD(x2); \
TEST_REG_FILE_LOAD(x1); \


#define TEST_REG_FILE_LOAD(reg1)\
lw reg1, 0(x0); \
nop; \
nop; \
sw reg1, 4(x0); \
nop; \
nop; \
nop; \
lh reg1,0(x0); \
nop; \
sh reg1, 4(x0); \
lb reg1, 0(x0);\
nop; \
nop; \
nop; \
nop; \
sb reg1, 4(x0); \
nop; \
lhu reg1,0(x0); \
nop; \
nop; \
sh reg1, 4(x0); \
nop; \
lbu reg1, 0(x0);\
nop; \
sb reg1, 4(x0); \
li reg1, 0; \
nop; \
nop; \
p.lw reg1, reg1(reg1); \
nop; \
nop; \
p.sw reg1, reg1(reg1); \

#define TEST_REG_FILE_DEEP() \
MARCH_TEST(); \
TEST_REG_FILE_ALU_FULL(); \
LOAD_TEST(); \

#define LOAD_TEST() \
TEST_REG_FILE_LOAD_FULL(0xFFFFFFFF); \
TEST_REG_FILE_LOAD_FULL_REVERSE(0x00000000); \

#define MARCH_TEST() \
LI_ALL_REGISTER(0x00000000); \
MARCH_ELEMENT_MAP_COMPLETE(0xFFFFFFFF); \
MARCH_ELEMENT_MAP_REVERSE(0x00000000); \

#define MARCH_ELEMENT_MAP_COMPLETE(value) \
MARCH_ELEMENT_MAP(x0, value); \
MARCH_ELEMENT_MAP(x1, value); \
MARCH_ELEMENT_MAP(x2, value); \
MARCH_ELEMENT_MAP(x3, value); \
MARCH_ELEMENT_MAP(x4, value); \
MARCH_ELEMENT_MAP(x5, value); \
MARCH_ELEMENT_MAP(x6, value); \
MARCH_ELEMENT_MAP(x7, value); \
MARCH_ELEMENT_MAP(x8, value); \
MARCH_ELEMENT_MAP(x9, value); \
MARCH_ELEMENT_MAP(x10, value); \
MARCH_ELEMENT_MAP(x11, value); \
MARCH_ELEMENT_MAP(x12, value); \
MARCH_ELEMENT_MAP(x13, value); \
MARCH_ELEMENT_MAP(x14, value); \
MARCH_ELEMENT_MAP(x15, value); \
MARCH_ELEMENT_MAP(x16, value); \
MARCH_ELEMENT_MAP(x17, value); \
MARCH_ELEMENT_MAP(x18, value); \
MARCH_ELEMENT_MAP(x19, value); \
MARCH_ELEMENT_MAP(x20, value); \
MARCH_ELEMENT_MAP(x21, value); \
MARCH_ELEMENT_MAP(x22, value); \
MARCH_ELEMENT_MAP(x23, value); \
MARCH_ELEMENT_MAP(x24, value); \
MARCH_ELEMENT_MAP(x25, value); \
MARCH_ELEMENT_MAP(x26, value); \
MARCH_ELEMENT_MAP(x27, value); \
MARCH_ELEMENT_MAP(x28, value); \
MARCH_ELEMENT_MAP(x29, value); \
MARCH_ELEMENT_MAP(x30, value); \
MARCH_ELEMENT_MAP(x31, value); \

#define MARCH_ELEMENT_MAP_REVERSE(value) \
MARCH_ELEMENT_MAP(x31, value); \
MARCH_ELEMENT_MAP(x30, value); \
MARCH_ELEMENT_MAP(x29, value); \
MARCH_ELEMENT_MAP(x28, value); \
MARCH_ELEMENT_MAP(x27, value); \
MARCH_ELEMENT_MAP(x26, value); \
MARCH_ELEMENT_MAP(x25, value); \
MARCH_ELEMENT_MAP(x24, value); \
MARCH_ELEMENT_MAP(x23, value); \
MARCH_ELEMENT_MAP(x22, value); \
MARCH_ELEMENT_MAP(x21, value); \
MARCH_ELEMENT_MAP(x20, value); \
MARCH_ELEMENT_MAP(x19, value); \
MARCH_ELEMENT_MAP(x18, value); \
MARCH_ELEMENT_MAP(x17, value); \
MARCH_ELEMENT_MAP(x16, value); \
MARCH_ELEMENT_MAP(x15, value); \
MARCH_ELEMENT_MAP(x14, value); \
MARCH_ELEMENT_MAP(x13, value); \
MARCH_ELEMENT_MAP(x12, value); \
MARCH_ELEMENT_MAP(x11, value); \
MARCH_ELEMENT_MAP(x10, value); \
MARCH_ELEMENT_MAP(x9, value); \
MARCH_ELEMENT_MAP(x8, value); \
MARCH_ELEMENT_MAP(x7, value); \
MARCH_ELEMENT_MAP(x6, value); \
MARCH_ELEMENT_MAP(x5, value); \
MARCH_ELEMENT_MAP(x4, value); \
MARCH_ELEMENT_MAP(x3, value); \
MARCH_ELEMENT_MAP(x2, value); \
MARCH_ELEMENT_MAP(x1, value); \
MARCH_ELEMENT_MAP(x0, value); \

#define MARCH_ELEMENT_MAP(reg1, value) \
sw reg1, 0(x0); \
li reg1, value; \

#define LI_ALL_REGISTER(value) \
li x1, value; \
li x2, value; \
li x3, value; \
li x4, value; \
li x5, value; \
li x6, value; \
li x7, value; \
li x8, value; \
li x9, value; \
li x10, value; \
li x11, value; \
li x12, value; \
li x13, value; \
li x14, value; \
li x15, value; \
li x16, value; \
li x17, value; \
li x18, value; \
li x19, value; \
li x20, value; \
li x21, value; \
li x22, value; \
li x23, value; \
li x24, value; \
li x25, value; \
li x26, value; \
li x27, value; \
li x28, value; \
li x29, value; \
li x30, value; \
li x31, value; \

#define TEST_SHF(inst, val1, val2) \
        li  x1, val1; \
        li  x2, val2; \
      	inst x3, x1, x2, 1; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 2; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 3; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 4; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 5; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 6; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 7; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 8; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 9; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 10; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 11; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 12; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 13; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 14; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 15; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 16; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 17; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 18; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 19; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 20; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 21; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 22; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 23; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 24; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 25; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 26; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 27; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 28; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 29; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 30; \
	sw  x3, 1(x31); \
      	inst x3, x1, x2, 31; \
	sw  x3, 1(x31); \
	
#define TEST_MUL() \
li x31, 0x00100000; \
li  x1, 0x00000000; \
li  x2, 0x00000000; \
li x30, 0x11111111; \
li x28, 0xFFFFFFFF; \
loopp:	p.muls x3, x1, x2; \
	p.mulhhs x6, x1, x2; \
	p.mac x4, x1, x2; \
	p.msu x5, x1, x2; \
	sw  x3, 1(x31); \
	sw  x4, 2(x31); \
	sw  x5, 3(x31); \
	sw  x6, 4(x31); \
	p.mulu x7, x1, x2; \
	p.mulhhu x8, x1, x2; \
	p.macsRN x9, x1, x2, 0; \
	p.machhsRN x10, x1, x2, 0; \
	pv.dotusp.sc.h x11, x1, x2; \
	pv.sdotusp.sc.b x12, x1, x2; \
	sw  x7, 1(x31); \
	sw  x8, 2(x31); \
	sw  x9, 3(x31); \
	sw  x10, 4(x31); \
	sw  x11, 5(x31); \
	sw  x12, 6(x31); \
	beq x2, x28, end2; \
	p.adduN x2, x2, x30,0; \
	j loopp; \
end2:	xor x2, x2, x2; \
	beq x1, x28, end3; \
	p.adduN x1, x1, x30, 0; \
	j loopp; \
end3:; \
	p.mac x3, x1, x2; \
	sw  x3, 1(x31); \
	p.msu x3, x1, x2; \
	sw  x3, 2(x31); \
	p.muls x3, x1, x2; \
	sw  x3, 13(x31); \
	p.mulhhs x3, x1, x2; \
	sw  x3, 14(x31); \
	p.mulhhsN x3, x1, x2, 3; \
	sw  x3, 16(x31); \
	p.mulsRN x3, x1, x2, 4; \
	sw  x3, 17(x31); \
	p.mulhhsRN x3, x1, x2, 5; \
	sw  x3, 18(x31); \
	p.mulu x3, x1, x2; \
	sw  x3, 19(x31); \
	p.mulhhu x3, x1, x2; \
	sw  x3, 10(x31); \
	p.mulhhuN x3, x1, x2, 7; \
	sw  x3, 12(x31); \
	p.muluRN x3, x1, x2, 8; \
	sw  x3, 21(x31); \
	p.mulhhuRN x3, x1, x2, 9; \
	sw  x3, 31(x31); \
	p.macsN x3, x1, x2, 10; \
	sw  x3, 41(x31); \
	p.machhsN x3, x1, x2, 11; \
	sw  x3, 51(x31); \
	p.macsRN x3, x1, x2, 12; \
	sw  x3, 61(x31); \
	p.machhsRN x3, x1, x2, 13; \
	sw  x3, 71(x31); \
	p.macuN x3, x1, x2, 14; \
	sw  x3, 81(x31); \
	p.machhuN x3, x1, x2, 15; \
	sw  x3, 91(x31); \
	p.macuRN x3, x1, x2, 16; \
	sw  x3, 5(x31); \
	p.machhuRN x3, x1, x2, 17; \
	sw  x3, 6(x31); \
      	p.mulhsu x5,x1,x2; \
	p.mulh x22,x1,x2; \
	p.mulhu x23,x1,x2; \
	p.msu x28, x1, x2; \
	sw  x5, 3(x31); \
	sw  x22, 4(x31); \
	sw  x23, 5(x31); \
	sw  x28, 6(x31); \
pv.dotup.h x15, x1, x2; \
sw  x15, 1(x31); \
pv.dotup.sc.h x15, x1, x2; \
sw  x15, 1(x31); \
pv.dotup.b x15, x1, x2; \
sw  x15, 1(x31); \
pv.dotup.sc.b x15, x1, x2; \
sw  x15, 1(x31); \
pv.dotusp.h x15, x1, x2; \
sw  x15, 1(x31); \
pv.dotusp.sc.h x15, x1, x2; \
sw  x15, 1(x31); \
pv.dotusp.b x15, x1, x2; \
sw  x15, 1(x31); \
pv.dotusp.sc.b x15, x1, x2; \
sw  x15, 1(x31); \
pv.dotsp.h x15, x1, x2; \
sw  x15, 1(x31); \
pv.dotsp.sc.h x15, x1, x2; \
sw  x15, 1(x31); \
pv.dotsp.b x15, x1, x2; \
sw  x15, 1(x31); \
pv.dotsp.sc.b x15, x1, x2; \
sw  x15, 1(x31); \
pv.sdotup.h x15, x1, x2; \
sw  x15, 1(x31); \
pv.sdotup.sc.h x15, x1, x2; \
sw  x15, 1(x31); \
pv.sdotup.b x15, x1, x2; \
sw  x15, 1(x31); \
pv.sdotup.sc.b x15, x1, x2; \
sw  x15, 1(x31); \
pv.sdotusp.h x15, x1, x2; \
sw  x15, 1(x31); \
pv.sdotusp.sc.h x15, x1, x2; \
sw  x15, 1(x31); \
pv.sdotusp.b x15, x1, x2; \
sw  x15, 1(x31); \
pv.sdotusp.sc.b x15, x1, x2; \
sw  x15, 1(x31); \
pv.sdotsp.h x15, x1, x2; \
sw  x15, 1(x31); \
pv.sdotsp.sc.h x15, x1, x2; \
sw  x15, 1(x31); \
pv.sdotsp.b x15, x1, x2; \
sw  x15, 1(x31); \
pv.sdotsp.sc.b x15, x1, x2; \
sw  x15, 1(x31); \
pv.dotup.sci.b x15, x1, 63; \
sw  x15, 1(x31); \
pv.dotusp.sci.h x15, x1, 31; \
sw  x15, 1(x31); \
pv.dotusp.sci.b x15, x1, 31; \
sw  x15, 1(x31); \
pv.dotsp.sci.h x15, x1, 31; \
sw  x15, 1(x31); \
pv.dotsp.sci.b x15, x1, 31; \
sw  x15, 1(x31); \
pv.sdotup.sci.h x15, x1, 63; \
sw  x15, 1(x31); \
pv.sdotup.sci.b x15, x1, 63; \
sw  x15, 1(x31); \
pv.sdotusp.sci.h x15, x1, 31; \
sw  x15, 1(x31); \
pv.dotup.sci.h x15, x1, 63; \
sw  x15, 1(x31); \
pv.sdotusp.sci.b x15, x1, 31; \
sw  x15, 1(x31); \
pv.sdotsp.sci.h x15, x1, 31; \
sw  x15, 1(x31); \
pv.sdotsp.sci.b x15, x1, 31; \
sw  x15, 1(x31); \
pv.dotup.sci.b x15, x1, 0; \
sw  x15, 1(x31); \
pv.dotusp.sci.h x15, x1, 0; \
sw  x15, 1(x31); \
pv.dotusp.sci.b x15, x1, 0; \
sw  x15, 1(x31); \
pv.dotsp.sci.h x15, x1, 0; \
sw  x15, 1(x31); \
pv.dotsp.sci.b x15, x1, 0; \
sw  x15, 1(x31); \
pv.sdotup.sci.h x15, x1, 0; \
sw  x15, 1(x31); \
pv.sdotup.sci.b x15, x1, 0; \
sw  x15, 1(x31); \
pv.sdotusp.sci.h x15, x1, 0; \
sw  x15, 1(x31); \
pv.dotup.sci.h x15, x1, 0; \
sw  x15, 1(x31); \
pv.sdotusp.sci.b x15, x1, 0; \
sw  x15, 1(x31); \
pv.sdotsp.sci.h x15, x1, 0; \
sw  x15, 1(x31); \
pv.sdotsp.sci.b x15, x1, 0; \
sw  x15, 1(x31); \
TEST_SHF( p.muluN, 0x55555555, 0x00000001); \
TEST_SHF( p.muluN, 0xCCCCCCCC, 0x00000001); \
TEST_SHF( p.mulsN, 0x55555555, 0x00000001); \
TEST_SHF( p.mulsN, 0xCCCCCCCC, 0x00000001); \
TEST_SHF( p.mulsRN, 0x00000001, 0xFFFFFFFF); \
TEST_SHF( p.mulhhsRN, 0x00000001, 0xFFFFFFFF); \

#define TEST_SHF2(inst, val1) \
        li  x1, val1; \
      	inst x3, x1, 0; \
	sw  x3, 1(x31); \
      	inst x3, x1, 1; \
	sw  x3, 1(x31); \
      	inst x3, x1, 2; \
	sw  x3, 1(x31); \
      	inst x3, x1, 3; \
	sw  x3, 1(x31); \
      	inst x3, x1, 4; \
	sw  x3, 1(x31); \
	inst x3, x1, 5; \
	sw  x3, 1(x31); \
      	inst x3, x1, 6; \
	sw  x3, 1(x31); \
      	inst x3, x1, 7; \
	sw  x3, 1(x31); \
      	inst x3, x1, 8; \
	sw  x3, 1(x31); \
	inst x3, x1, 9; \
	sw  x3, 1(x31); \
      	inst x3, x1, 10; \
	sw  x3, 1(x31); \
      	inst x3, x1, 11; \
	sw  x3, 1(x31); \
      	inst x3, x1, 12; \
	sw  x3, 1(x31); \
	inst x3, x1, 13; \
	sw  x3, 1(x31); \
      	inst x3, x1, 14; \
	sw  x3, 1(x31); \
      	inst x3, x1, 15; \
	sw  x3, 1(x31); \
      	inst x3, x1, 16; \
	sw  x3, 1(x31); \
	inst x3, x1, 17; \
	sw  x3, 1(x31); \
      	inst x3, x1, 18; \
	sw  x3, 1(x31); \
      	inst x3, x1, 19; \
	sw  x3, 1(x31); \
      	inst x3, x1, 20; \
	sw  x3, 1(x31); \
	inst x3, x1, 21; \
	sw  x3, 1(x31); \
      	inst x3, x1, 22; \
	sw  x3, 1(x31); \
      	inst x3, x1, 23; \
	sw  x3, 1(x31); \
      	inst x3, x1, 24; \
	sw  x3, 1(x31); \
	inst x3, x1, 25; \
	sw  x3, 1(x31); \
      	inst x3, x1, 26; \
	sw  x3, 1(x31); \
      	inst x3, x1, 27; \
	sw  x3, 1(x31); \
      	inst x3, x1, 28; \
	sw  x3, 1(x31); \
	inst x3, x1, 29; \
	sw  x3, 1(x31); \
      	inst x3, x1, 30; \
	sw  x3, 1(x31); \
      	inst x3, x1, 31; \
	sw  x3, 1(x31); \


#define TEST_MANIP(val) \
xor x2, x2, x2;\
li x6, 1;\
li x1, 0xFFFFFFFF;\
li x5, 0x000003E0;\
li x7, 31;\
manip1:	p.extractr x3, x1, x2;\
	sw  x3, 0(x31);\
	p.bclrr x3, x1, x2;\
	sw  x3, 0(x31);\
	p.insertr x3, x1, x2;\
	sw  x3, 0(x31);\
	p.bsetr x3, x1, x2;\
	sw  x3, 0(x31);\
	beq x2, x7, manip2;\
	add x2, x2, 1;\
	j manip1;\
manip2: add x2, x2, 0x00000020;\
	add x7, x2, 0;\
	sub x7, x7, x6;\
	andi x2, x2, 0xFFFFFFE0;\
	beq x7, x5, end_manip;\
	j manip1;\
end_manip: ;\
	beq x1, x0, end_manip2;\
	li x1, 0;\
	li x2, 0xFFFFFFFF;\
	li x7, 31;\
	j manip1;\
end_manip2:;\

#define TEST_FF(val);\
li x1, 0x80000000;\
li x2, 0x00000000;\
cnt_bit:;\
	p.ff1 x3, x1;\
	p.fl1 x4, x1;\
	sw  x3, 0(x31);\
	sw  x4, 0(x31);\
	beq x1, x2, end_cnt;\
	srli x1, x1, 1;\
	j cnt_bit;\
end_cnt:;\

#define TEST_CLB(val);\
li x6, 1;\
li x1, 0xFFFFFFFF;\
clbb:	p.clb x3, x1;\
	p.cnt x4, x1;\
	sw  x3, 0(x31);\
	sw  x4, 0(x31);\
	sub x1, x1, x6;\
	sll x6, x6, 1;\
	beq x6, x0, end_clb;\
	j clbb;\
end_clb:;\

#define TEST_ROR(val);\
li x6, 31;\
li x2, 0;\
li x1, 0xCCCCCCCC;\
li x4, 0xB6DB6DB6;\
rorr:	p.ror x3, x1, x2;\
	p.ror x3, x4, x2;\
	sw  x3, 0(x31);\
	add x2, x2, 1;\
	beq x2, x6, end_ror;\
	j rorr;\
end_ror:;\


#define TEST_COMPVI(val)\
li x1, 9 ;\
pv.cmpeq.sci.h x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpeq.sci.b x3, x1, 0;\
sw  x3,0(x31);\
pv.cmpne.sci.h x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpne.sci.b x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpgt.sci.h x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpgt.sci.b x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpge.sci.h x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpge.sci.b x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmplt.sci.h x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmplt.sci.b x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmple.sci.h x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmple.sci.b x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpgtu.sci.h x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpgtu.sci.b x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpgeu.sci.h x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpgeu.sci.b x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpltu.sci.h x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpltu.sci.b x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpleu.sci.h x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpleu.sci.b x3, x1, 0;\
sw  x3, 0(x31);\
pv.cmpeq.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpeq.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpne.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpne.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpgt.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpgt.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpge.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpge.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmplt.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmplt.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmple.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmple.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpgtu.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpgtu.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpgeu.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpgeu.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpltu.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpltu.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpleu.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.cmpleu.sci.b x3, x1, 31;\
sw  x3, 0(x31);\

#define TEST_INSERT(val) \
li x3, 0x00000000;\
li x1, 0xFFFFFFFF;\
pv.insert.h x3, x1, 0;\
li x3, 0x00000000;\
sw  x3, 4(x31);\
pv.insert.h x3, x1, 1;\
li x3, 0x00000000;\
sw  x3, 4(x31);\
pv.insert.b x3, x1, 0;\
li x3, 0x00000000;\
sw  x3, 4(x31);\
pv.insert.b x3, x1, 1;\
li x3, 0x00000000;\
sw  x3, 4(x31);\
pv.insert.b x3, x1, 2;\
li x3, 0x00000000;\
sw  x3, 4(x31);\
pv.insert.b x3, x1, 3;\
li x3, 0xFFFFFFFF;\
li x1, 0x00000000;\
pv.insert.h x3, x1, 0;\
li x3, 0xFFFFFFFF;\
sw  x3, 4(x31);\
pv.insert.h x3, x1, 1;\
li x3, 0xFFFFFFFF;\
sw  x3, 4(x31);\
pv.insert.b x3, x1, 0;\
li x3, 0xFFFFFFFF;\
sw  x3, 4(x31);\
pv.insert.b x3, x1, 1;\
li x3, 0xFFFFFFFF;\
sw  x3, 4(x31);\
pv.insert.b x3, x1, 2;\
li x3, 0xFFFFFFFF;\
sw  x3, 4(x31);\
pv.insert.b x3, x1, 3;\
li x3, 0xFFFFFFFF;\
sw  x3, 4(x31);\

#define TEST_ALU_imm(val1, val2) \
li x1, val1;\
ADDI x3,x1,val2;\
sw  x3, 0(x31);\
SLTI x3,x1,val2;\
sw  x3, 0(x31);\
SLTIU x3,x1,val2;\
sw  x3, 0(x31);\
XORI x3,x1,val2;\
sw  x3, 0(x31);\
ORI x3,x1,val2;\
sw  x3, 0(x31);\
ANDI x3,x1,val2;\
sw  x3, 0(x31);\



#define TEST_ALU() \
p.extractu x3, x1, 31, 0;\
sw  x3, 0(x31);\
p.extractr x3, x1, x2;\
sw  x3, 0(x31);\
p.extractur x3, x1, x2;\
sw  x3, 0(x31);\
p.insertr x3, x1, x2;\
sw  x3, 0(x31);\
p.bclrr x3, x1, x2;\
sw  x3, 0(x31);\
p.bsetr x3, x1, x2;\
sw  x3, 0(x31);\
p.abs x3, x1;\
sw  x3, 0(x31);\
p.slet x3, x1, x2;\
sw  x3, 0(x31);\
p.sletu x3, x1, x2;\
sw  x3, 0(x31);\
p.min x3, x1, x2;\
sw  x3, 0(x31);\
p.minu x3, x1, x2;\
sw  x3, 0(x31);\
p.max x3, x1, x2;\
sw  x3, 0(x31);\
p.maxu x3, x1, x2;\
sw  x3, 0(x31);\
p.exths x3, x1;\
sw  x3, 0(x31);\
p.exthz x3, x1;\
sw  x3, 0(x31);\
p.extbs x3, x1;\
sw  x3, 0(x31);\
p.extbz x3, x1;\
sw  x3, 0(x31);\
p.clip x3, x1, 1;\
sw  x3, 0(x31);\
p.clipu x3, x1, 2;\
sw  x3, 0(x31);\
p.clipr x3, x1, x2;\
sw  x3, 0(x31);\
p.clipur x3, x1, x2;\
sw  x3, 0(x31);\
p.addN x3, x1, x2, 0;\
sw  x3, 0(x31);\
p.adduN x3, x1, x2, 0;\
sw  x3, 0(x31);\
p.addRN x3, x1, x2, 0;\
sw  x3, 0(x31);\
p.adduRN x3, x1, x2, 0;\
sw  x3, 0(x31);\
p.subN x3, x1, x2, 0;\
sw  x3, 0(x31);\
p.subuN x3, x1, x2, 0;\
sw  x3, 0(x31);\
p.subRN x3, x1, x2, 0;\
sw  x3, 0(x31);\
p.subuRN x3, x1, x2, 0;\
sw  x3, 0(x31);\
p.addNr x3, x1, x2;\
sw  x3, 0(x31);\
p.adduNr x3, x1, x2;\
sw  x3, 0(x31);\
p.addRNr x3, x1, x2;\
sw  x3, 0(x31);\
p.adduRNr x3, x1, x2;\
sw  x3, 0(x31);\
p.subNr x3, x1, x2;\
sw  x3, 0(x31);\
p.subuNr x3, x1, x2;\
sw  x3, 0(x31);\
p.subRNr x3, x1, x2;\
sw  x3, 0(x31);\
p.subuRNr x3, x1, x2;\
sw  x3, 0(x31);\
pv.add.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.add.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.add.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.add.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.sub.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.sub.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.sub.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.sub.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.avg.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.avg.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.avg.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.avg.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.avgu.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.avgu.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.avgu.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.avgu.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.min.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.min.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.min.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.min.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.minu.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.minu.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.minu.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.minu.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.max.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.max.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.max.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.max.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.maxu.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.maxu.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.maxu.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.maxu.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.srl.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.srl.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.sra.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.sra.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.sll.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.sll.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.or.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.or.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.or.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.or.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.xor.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.xor.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.xor.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.xor.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.and.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.and.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.and.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.and.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.abs.h x3, x1;\
sw  x3, 0(x31);\
pv.abs.b x3, x1;\
sw  x3, 0(x31);\
pv.shuffle.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.shuffle.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.extract.h x3, x1, 0;\
sw  x3, 0(x31);\
pv.extract.b x3, x1, 1;\
sw  x3, 0(x31);\
pv.extractu.h x3, x1, 1;\
sw  x3, 0(x31);\
pv.extractu.b x3, x1, 2;\
sw  x3, 0(x31);\
pv.shuffle.sci.h x3, x1, 31;\
sw  x3, 0(x31);\
pv.shuffleI0.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.shuffleI1.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.shuffleI2.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.shuffleI3.sci.b x3, x1, 31;\
sw  x3, 0(x31);\
pv.shuffle2.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.shuffle2.b x3, x1, x2;\
sw  x3, 0(x31);\
\
pv.shuffle.h x3, x1, x3;\
pv.shuffle.b x3, x3, x2;\
pv.shuffle.sci.h x3, x3, 1;\
sw  x3, 0(x31);\
pv.shuffle.sci.h x3, x3, 2;\
sw  x3, 0(x31);\
pv.shuffle.sci.h x3, x3, 3;\
sw  x3, 0(x31);\
pv.shuffleI0.sci.b x3, x3, 21;\
sw  x3, 0(x31);\
pv.shuffleI1.sci.b x3, x3, 10;\
sw  x3, 0(x31);\
pv.shuffleI2.sci.b x3, x3, 21;\
sw  x3, 0(x31);\
pv.shuffleI3.sci.b x3, x3, 10;\
sw  x3, 0(x31);\
pv.shuffle2.h x3, x3, x2;\
sw  x3, 0(x31);\
pv.shuffle2.b x3, x1, x3;\
sw  x3, 0(x31);\
pv.extract.h x3, x3, 0;\
sw  x3, 0(x31);\
pv.extract.b x3, x3, 1;\
sw  x3, 0(x31);\
pv.extractu.h x3, x3, 1;\
sw  x3, 0(x31);\
pv.extractu.b x3, x3, 2;\
sw  x3, 0(x31);\
pv.pack.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.packhi.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.packlo.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpeq.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpeq.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpeq.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpeq.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpne.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpne.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpne.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpne.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpgt.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpgt.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpgt.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpgt.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpge.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpge.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpge.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpge.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmplt.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmplt.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmplt.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmplt.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmple.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmple.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmple.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmple.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpgtu.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpgtu.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpgtu.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpgtu.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpgeu.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpgeu.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpgeu.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpgeu.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpltu.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpltu.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpltu.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpltu.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpleu.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpleu.sc.h x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpleu.b x3, x1, x2;\
sw  x3, 0(x31);\
pv.cmpleu.sc.b x3, x1, x2;\
sw  x3, 0(x31);\
divu x3, x1, x2;\
sw  x3, 0(x31);\
p.adduN x3, x1, x2, 0;\
sw  x3, 0(x31);\
p.subN x3, x1, x2, 0;\
sw  x3, 0(x31);\
div x3, x1, x2;\
sw  x3, 0(x31);\
REM x3,x1,x2;\
sw  x3, 0(x31);\
REMU x3,x1,x2;\
sw  x3, 0(x31);\
srl x3, x1, x2;\
sw  x3, 0(x31);\
sll x3, x1, x2;\
sw  x3, 0(x31);\
sra x3, x1, x2;\
sw  x3, 0(x31);\
SLT x3,x1,x2;\
sw  x3, 0(x31);\
SLTU x3,x1,x2;\
sw  x3, 0(x31);\
XOR x3,x1,x2;\
sw  x3, 0(x31);\
OR x3,x1,x2;\
sw  x3, 0(x31);\
AND x3,x1,x2;\
sw  x3, 0(x31);\

