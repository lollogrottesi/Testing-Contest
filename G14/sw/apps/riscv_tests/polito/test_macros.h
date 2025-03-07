// See LICENSE for license details.

#ifndef __TEST_MACROS_SCALAR_H
#define __TEST_MACROS_SCALAR_H


#-----------------------------------------------------------------------
# Helper macros
#-----------------------------------------------------------------------

# We use a macro hack to simpify code generation for various numbers
# of bubble cycles.

#define TEST_INSERT_NOPS_0
#define TEST_INSERT_NOPS_1  nop; TEST_INSERT_NOPS_0
#define TEST_INSERT_NOPS_2  nop; TEST_INSERT_NOPS_1
#define TEST_INSERT_NOPS_3  nop; TEST_INSERT_NOPS_2
#define TEST_INSERT_NOPS_4  nop; TEST_INSERT_NOPS_3
#define TEST_INSERT_NOPS_5  nop; TEST_INSERT_NOPS_4
#define TEST_INSERT_NOPS_6  nop; TEST_INSERT_NOPS_5
#define TEST_INSERT_NOPS_7  nop; TEST_INSERT_NOPS_6
#define TEST_INSERT_NOPS_8  nop; TEST_INSERT_NOPS_7
#define TEST_INSERT_NOPS_9  nop; TEST_INSERT_NOPS_8
#define TEST_INSERT_NOPS_10 nop; TEST_INSERT_NOPS_9


#-----------------------------------------------------------------------
# RV64UI MACROS
#-----------------------------------------------------------------------


#MACROS USED IN THE CODE
#define TEST_CSR_reg(inst,CSR)\
inst x1, CSR, x3;\
sw x1,0(x0);\
csrr x2,CSR;\
sw x2,0(x0);\

#define TEST_CSR_imm(inst,CSR,imm)\
inst x1, CSR, imm;\
sw x1,0(x0);\
csrr x2,CSR;\
sw x2,0(x0);\

#define TEST_REG_OP4(reg1,imm1) \
      p.lw reg1,imm1(reg1!);\
	  nop;\
	  nop;\
	  nop;\
	p.sw reg1, reg1(reg1); \

#define MACplus_march1( reg1) \
	sw reg1,0(reg1); \
	nop; \
	nop; \
	nop; \
	li reg1,0xFFFFFFFF; \


#define MACplus_march2( reg1) \
	sw reg1,0(reg1); \
	nop; \
	nop; \
	nop; \
	li reg1,0; 




#define TEST_ALUimm(imm1, imm2) \
li x4, imm1;\
addi x1,x4,imm2;\
sw  x1, 0(x31);\
andi x1,x4,imm2;\
sw  x1, 0(x31);\
ori x1,x4,imm2;\
sw  x1, 0(x31);\
xori x1,x4,imm2;\
sw  x1, 0(x31);\
slti x1,x4,imm2;\
sw  x1, 0(x31);\
sltiu x1,x4,imm2;\
sw  x1, 0(x31);\


#define TEST_genericALU() \
li x31, 0x00100000;\
add x1,x2,x3;\
sw x1,0(x31);\
sub x1,x2,x3;\
sw x1,0(x31);\
and x1,x2,x3;\
sw x1,0(x31);\
xor x1,x2,x3;\
sw  x1, 0(x31);\
or x1,x2,x3;\
sw  x1, 0(x31);\
sw  x1, 0(x31);\
srl x1, x2, x3;\
sw  x1, 0(x31);\
sll x1, x2, x3;\
sw  x1, 0(x31);\
sra x1, x2, x3;\
sw  x1, 0(x31);\
slt x1,x2,x3;\
sw  x1, 0(x31);\
sltu x1,x2,x3;\
sw  x1, 0(x31);\
p.addN x1, x2, x3, 0;\
sw  x1, 0(x31);\
p.adduN x1, x2, x3, 0;\
sw  x1, 0(x31);\
p.addRN x1, x2, x3, 0;\
sw  x1, 0(x31);\
p.adduRN x1, x2, x3, 0;\
sw  x1, 0(x31);\
p.subN x1, x2, x3, 0;\
sw  x1, 0(x31);\
p.subuN x1, x2, x3, 0;\
sw  x1, 0(x31);\
p.subRN x1, x2, x3, 0;\
sw  x1, 0(x31);\
p.subuRN x1, x2, x3, 0;\
sw  x1, 0(x31);\
p.addNr x1, x2, x3;\
sw  x1, 0(x31);\
p.adduNr x1, x2, x3;\
sw  x1, 0(x31);\
p.addRNr x1, x2, x3;\
sw  x1, 0(x31);\
p.adduRNr x1, x2, x3;\
sw  x1, 0(x31);\
p.subNr x1, x2, x3;\
sw  x1, 0(x31);\
p.subuNr x1, x2, x3;\
sw  x1, 0(x31);\
p.subRNr x1, x2, x3;\
sw  x1, 0(x31);\
p.subuRNr x1, x2, x3;\
sw  x1, 0(x31);\
p.abs x1, x2;\
sw  x1, 0(x31);\
p.slet x1, x2, x3;\
sw  x1, 0(x31);\
p.sletu x1, x2, x3;\
sw  x1, 0(x31);\
p.ff1 x1, x2;\
sw  x1, 0(x31);\
p.fl1 x1, x2;\
sw  x1, 0(x31);\
p.min x1, x2, x3;\
sw  x1, 0(x31);\
p.minu x1, x2, x3;\
sw  x1, 0(x31);\
p.max x1, x2, x3;\
sw  x1, 0(x31);\
p.maxu x1, x2, x3;\
sw  x1, 0(x31);\
p.extractu x1, x2, 31, 0;\
sw  x1, 0(x31);\
p.extractr x1, x2, x3;\
sw  x1, 0(x31);\
p.extractur x1, x2, x3;\
sw  x1, 0(x31);\
p.insertr x1, x2, x3;\
sw  x1, 0(x31);\
p.bclrr x1, x2, x3;\
sw  x1, 0(x31);\
p.bsetr x1, x2, x3;\
sw  x1, 0(x31);\
p.exths x1, x2;\
sw  x1, 0(x31);\
p.exthz x1, x2;\
sw  x1, 0(x31);\
p.extbs x1, x2;\
sw  x1, 0(x31);\
p.extbz x1, x2;\
sw  x1, 0(x31);\
p.clip x1, x2, 1;\
sw  x1, 0(x31);\
p.clipu x1, x2, 2;\
sw  x1, 0(x31);\
p.clipr x1, x2, x3;\
sw  x1, 0(x31);\
p.clipur x1, x2, x3;\
sw  x1, 0(x31);\
pv.add.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.add.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.add.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.add.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.sub.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.sub.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.sub.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.sub.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.avg.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.avg.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.avg.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.avg.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.avgu.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.avgu.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.avgu.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.avgu.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.min.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.min.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.min.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.min.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.minu.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.minu.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.minu.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.minu.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.max.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.max.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.max.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.max.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.maxu.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.maxu.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.maxu.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.maxu.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.srl.sci.h x1, x2, 31;\
sw  x1, 0(x31);\
pv.srl.sci.b x1, x2, 31;\
sw  x1, 0(x31);\
pv.sra.sci.h x1, x2, 31;\
sw  x1, 0(x31);\
pv.sra.sci.b x1, x2, 31;\
sw  x1, 0(x31);\
pv.sll.sci.h x1, x2, 31;\
sw  x1, 0(x31);\
pv.sll.sci.b x1, x2, 31;\
sw  x1, 0(x31);\
pv.or.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.or.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.or.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.or.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.xor.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.xor.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.xor.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.xor.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.and.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.and.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.and.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.and.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.abs.h x1, x2;\
sw  x1, 0(x31);\
pv.abs.b x1, x2;\
sw  x1, 0(x31);\
pv.shuffle.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.shuffle.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.extract.h x1, x2, 0;\
sw  x1, 0(x31);\
pv.extract.b x1, x2, 1;\
sw  x1, 0(x31);\
pv.extractu.h x1, x2, 1;\
sw  x1, 0(x31);\
pv.extractu.b x1, x2, 2;\
sw  x1, 0(x31);\
pv.shuffle.sci.h x1, x2, 31;\
sw  x1, 0(x31);\
pv.shuffleI0.sci.b x1, x2, 31;\
sw  x1, 0(x31);\
pv.shuffleI1.sci.b x1, x2, 31;\
sw  x1, 0(x31);\
pv.shuffleI2.sci.b x1, x2, 31;\
sw  x1, 0(x31);\
pv.shuffleI3.sci.b x1, x2, 31;\
sw  x1, 0(x31);\
pv.shuffle2.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.shuffle2.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpeq.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpeq.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpeq.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpeq.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpne.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpne.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpne.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpne.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpgt.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpgt.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpgt.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpgt.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpge.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpge.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpge.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpge.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmplt.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmplt.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmplt.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmplt.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmple.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmple.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmple.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmple.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpgtu.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpgtu.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpgtu.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpgtu.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpgeu.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpgeu.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpgeu.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpgeu.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpltu.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpltu.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpltu.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpltu.sc.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpleu.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpleu.sc.h x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpleu.b x1, x2, x3;\
sw  x1, 0(x31);\
pv.cmpleu.sc.b x1, x2, x3;\
sw  x1, 0(x31);\





 
#END OF THE MACROS USED IN THE CODE
#-----------------------------------------------------------------------
# Tests for instructions with immediate operand
#-----------------------------------------------------------------------

#define SEXT_IMM(x) ((x) | (-(((x) >> 11) & 1) << 11))

#define TEST_IMM_OP( testnum, inst, result, val1, imm ) \
    TEST_CASE( testnum, x3, result, \
      li  x1, val1; \
      inst x3, x1, SEXT_IMM(imm); \
    )

#define TEST_IMM_SRC1_EQ_DEST( testnum, inst, result, val1, imm ) \
    TEST_CASE( testnum, x1, result, \
      li  x1, val1; \
      inst x1, x1, SEXT_IMM(imm); \
    )

#define TEST_IMM_DEST_BYPASS( testnum, nop_cycles, inst, result, val1, imm ) \
    TEST_CASE( testnum, x6, result, \
      li  x4, 0; \
1:    li  x1, val1; \
      inst x3, x1, SEXT_IMM(imm); \
      TEST_INSERT_NOPS_ ## nop_cycles \
      addi  x6, x3, 0; \
      addi  x4, x4, 1; \
      li  x5, 2; \
      bne x4, x5, 1b \
    )

#define TEST_IMM_SRC1_BYPASS( testnum, nop_cycles, inst, result, val1, imm ) \
    TEST_CASE( testnum, x3, result, \
      li  x4, 0; \
1:    li  x1, val1; \
      TEST_INSERT_NOPS_ ## nop_cycles \
      inst x3, x1, SEXT_IMM(imm); \
      addi  x4, x4, 1; \
      li  x5, 2; \
      bne x4, x5, 1b \
    )

#define TEST_IMM_ZEROSRC1( testnum, inst, result, imm ) \
    TEST_CASE( testnum, x1, result, \
      inst x1, x0, SEXT_IMM(imm); \
    )

#define TEST_IMM_ZERODEST( testnum, inst, val1, imm ) \
    TEST_CASE( testnum, x0, 0, \
      li  x1, val1; \
      inst x0, x1, SEXT_IMM(imm); \
    )



#-----------------------------------------------------------------------
# Tests for vector config instructions
#-----------------------------------------------------------------------

#define TEST_VSETCFGIVL( testnum, nxpr, nfpr, bank, vl, result ) \
    TEST_CASE( testnum, x1, result, \
      li x1, (bank << 12); \
      vsetcfg x1,nxpr,nfpr; \
      li x1, vl; \
      vsetvl x1,x1; \
    )

#define TEST_VVCFG( testnum, nxpr, nfpr, bank, vl, result ) \
    TEST_CASE( testnum, x1, result, \
      li x1, (bank << 12) | (nfpr << 6) | nxpr; \
      vsetcfg x1; \
      li x1, vl; \
      vsetvl x1,x1; \
    )

#define TEST_VSETVL( testnum, nxpr, nfpr, bank, vl, result ) \
    TEST_CASE( testnum, x1, result, \
      li x1, (bank << 12); \
      vsetcfg x1,nxpr,nfpr; \
      li x1, vl; \
      vsetvl x1, x1; \
    )

#-----------------------------------------------------------------------
# Tests for an instruction with register operands
#-----------------------------------------------------------------------

#define TEST_R_OP( testnum, inst, result, val1 ) \
    TEST_CASE( testnum, x3, result, \
      li  x1, val1; \
      inst x3, x1; \
    )

#define TEST_R_SRC1_EQ_DEST( testnum, inst, result, val1 ) \
    TEST_CASE( testnum, x1, result, \
      li  x1, val1; \
      inst x1, x1; \
    )

#define TEST_R_DEST_BYPASS( testnum, nop_cycles, inst, result, val1 ) \
    TEST_CASE( testnum, x6, result, \
      li  x4, 0; \
1:    li  x1, val1; \
      inst x3, x1; \
      TEST_INSERT_NOPS_ ## nop_cycles \
      addi  x6, x3, 0; \
      addi  x4, x4, 1; \
      li  x5, 2; \
      bne x4, x5, 1b \
    )

#-----------------------------------------------------------------------
# Tests for an instruction with register-register operands
#-----------------------------------------------------------------------

#define TEST_RR_OP( testnum, inst, result, val1, val2 ) \
    TEST_CASE( testnum, x3, result, \
      li  x1, val1; \
      li  x2, val2; \
      inst x3, x1, x2; \
    )

#define TEST_RR_SRC1_EQ_DEST( testnum, inst, result, val1, val2 ) \
    TEST_CASE( testnum, x1, result, \
      li  x1, val1; \
      li  x2, val2; \
      inst x1, x1, x2; \
    )

#define TEST_RR_SRC2_EQ_DEST( testnum, inst, result, val1, val2 ) \
    TEST_CASE( testnum, x2, result, \
      li  x1, val1; \
      li  x2, val2; \
      inst x2, x1, x2; \
    )

#define TEST_RR_SRC12_EQ_DEST( testnum, inst, result, val1 ) \
    TEST_CASE( testnum, x1, result, \
      li  x1, val1; \
      inst x1, x1, x1; \
    )

#define TEST_RR_DEST_BYPASS( testnum, nop_cycles, inst, result, val1, val2 ) \
    TEST_CASE( testnum, x6, result, \
      li  x4, 0; \
1:    li  x1, val1; \
      li  x2, val2; \
      inst x3, x1, x2; \
      TEST_INSERT_NOPS_ ## nop_cycles \
      addi  x6, x3, 0; \
      addi  x4, x4, 1; \
      li  x5, 2; \
      bne x4, x5, 1b \
    )

#define TEST_RR_SRC12_BYPASS( testnum, src1_nops, src2_nops, inst, result, val1, val2 ) \
    TEST_CASE( testnum, x3, result, \
      li  x4, 0; \
1:    li  x1, val1; \
      TEST_INSERT_NOPS_ ## src1_nops \
      li  x2, val2; \
      TEST_INSERT_NOPS_ ## src2_nops \
      inst x3, x1, x2; \
      addi  x4, x4, 1; \
      li  x5, 2; \
      bne x4, x5, 1b \
    )

#define TEST_RR_SRC21_BYPASS( testnum, src1_nops, src2_nops, inst, result, val1, val2 ) \
    TEST_CASE( testnum, x3, result, \
      li  x4, 0; \
1:    li  x2, val2; \
      TEST_INSERT_NOPS_ ## src1_nops \
      li  x1, val1; \
      TEST_INSERT_NOPS_ ## src2_nops \
      inst x3, x1, x2; \
      addi  x4, x4, 1; \
      li  x5, 2; \
      bne x4, x5, 1b \
    )

#define TEST_RR_ZEROSRC1( testnum, inst, result, val ) \
    TEST_CASE( testnum, x2, result, \
      li x1, val; \
      inst x2, x0, x1; \
    )

#define TEST_RR_ZEROSRC2( testnum, inst, result, val ) \
    TEST_CASE( testnum, x2, result, \
      li x1, val; \
      inst x2, x1, x0; \
    )

#define TEST_RR_ZEROSRC12( testnum, inst, result ) \
    TEST_CASE( testnum, x1, result, \
      inst x1, x0, x0; \
    )

#define TEST_RR_ZERODEST( testnum, inst, val1, val2 ) \
    TEST_CASE( testnum, x0, 0, \
      li x1, val1; \
      li x2, val2; \
      inst x0, x1, x2; \
    )

#-----------------------------------------------------------------------
# Test memory instructions
#-----------------------------------------------------------------------

#define TEST_LD_OP( testnum, inst, result, offset, base ) \
    TEST_CASE( testnum, x3, result, \
      la  x1, base; \
      inst x3, offset(x1); \
    )

#define TEST_ST_OP( testnum, load_inst, store_inst, result, offset, base ) \
    TEST_CASE( testnum, x3, result, \
      la  x1, base; \
      li  x2, result; \
      store_inst x2, offset(x1); \
      load_inst x3, offset(x1); \
    )

#define TEST_LD_DEST_BYPASS( testnum, nop_cycles, inst, result, offset, base ) \
    TEST_LABEL(testnum, TESTSUITE): \
    li  TESTNUM, testnum; \
    li  x4, 0; \
1:  la  x1, base; \
    inst x3, offset(x1); \
    TEST_INSERT_NOPS_ ## nop_cycles \
    addi  x6, x3, 0; \
    li  x29, result; \
    bne x6, x29, PASSFAIL_LABEL(fail, TESTSUITE); \
    addi  x4, x4, 1; \
    li  x5, 2; \
    bne x4, x5, 1b; \

#define TEST_LD_SRC1_BYPASS( testnum, nop_cycles, inst, result, offset, base ) \
    TEST_LABEL(testnum, TESTSUITE): \
    li  TESTNUM, testnum; \
    li  x4, 0; \
1:  la  x1, base; \
    TEST_INSERT_NOPS_ ## nop_cycles \
    inst x3, offset(x1); \
    li  x29, result; \
    bne x3, x29, PASSFAIL_LABEL(fail, TESTSUITE); \
    addi  x4, x4, 1; \
    li  x5, 2; \
    bne x4, x5, 1b \

#define TEST_ST_SRC12_BYPASS( testnum, src1_nops, src2_nops, load_inst, store_inst, result, offset, base ) \
    TEST_LABEL(testnum, TESTSUITE): \
    li  TESTNUM, testnum; \
    li  x4, 0; \
1:  la  x1, result; \
    TEST_INSERT_NOPS_ ## src1_nops \
    la  x2, base; \
    TEST_INSERT_NOPS_ ## src2_nops \
    store_inst x1, offset(x2); \
    load_inst x3, offset(x2); \
    li  x29, result; \
    bne x3, x29, PASSFAIL_LABEL(fail, TESTSUITE); \
    addi  x4, x4, 1; \
    li  x5, 2; \
    bne x4, x5, 1b \

#define TEST_ST_SRC21_BYPASS( testnum, src1_nops, src2_nops, load_inst, store_inst, result, offset, base ) \
    TEST_LABEL(testnum, TESTSUITE): \
    li  TESTNUM, testnum; \
    li  x4, 0; \
1:  la  x2, base; \
    TEST_INSERT_NOPS_ ## src1_nops \
    la  x1, result; \
    TEST_INSERT_NOPS_ ## src2_nops \
    store_inst x1, offset(x2); \
    load_inst x3, offset(x2); \
    li  x29, result; \
    bne x3, x29, PASSFAIL_LABEL(fail, TESTSUITE); \
    addi  x4, x4, 1; \
    li  x5, 2; \
    bne x4, x5, 1b \

#-----------------------------------------------------------------------
# Test branch instructions
#-----------------------------------------------------------------------

#define TEST_BR1_OP_TAKEN( testnum, inst, val1 ) \
    TEST_LABEL(testnum, TESTSUITE): \
    li  TESTNUM, testnum; \
    li  x1, val1; \
    inst x1, 2f; \
    bne x0, TESTNUM, PASSFAIL_LABEL(fail, TESTSUITE); \
1:  bne x0, TESTNUM, 3f; \
2:  inst x1, 1b; \
    bne x0, TESTNUM, PASSFAIL_LABEL(fail, TESTSUITE); \
3:

#define TEST_BR1_OP_NOTTAKEN( testnum, inst, val1 ) \
    TEST_LABEL(testnum, TESTSUITE): \
    li  TESTNUM, testnum; \
    li  x1, val1; \
    inst x1, 1f; \
    bne x0, TESTNUM, 2f; \
1:  bne x0, TESTNUM, PASSFAIL_LABEL(fail, TESTSUITE); \
2:  inst x1, 1b; \
3:

#define TEST_BR1_SRC1_BYPASS( testnum, nop_cycles, inst, val1 ) \
    TEST_LABEL(testnum, TESTSUITE): \
    li  TESTNUM, testnum; \
    li  x4, 0; \
1:  li  x1, val1; \
    TEST_INSERT_NOPS_ ## nop_cycles \
    inst x1, PASSFAIL_LABEL(fail, TESTSUITE); \
    addi  x4, x4, 1; \
    li  x5, 2; \
    bne x4, x5, 1b \

#define TEST_BR2_OP_TAKEN( testnum, inst, val1, val2 ) \
    TEST_LABEL(testnum, TESTSUITE): \
    li  TESTNUM, testnum; \
    li  x1, val1; \
    li  x2, val2; \
    inst x1, x2, 2f; \
    bne x0, TESTNUM, PASSFAIL_LABEL(fail, TESTSUITE); \
1:  bne x0, TESTNUM, 3f; \
2:  inst x1, x2, 1b; \
    bne x0, TESTNUM, PASSFAIL_LABEL(fail, TESTSUITE); \
3:

#define TEST_BR2_OP_NOTTAKEN( testnum, inst, val1, val2 ) \
    TEST_LABEL(testnum, TESTSUITE): \
    li  TESTNUM, testnum; \
    li  x1, val1; \
    li  x2, val2; \
    inst x1, x2, 1f; \
    bne x0, TESTNUM, 2f; \
1:  bne x0, TESTNUM, PASSFAIL_LABEL(fail, TESTSUITE); \
2:  inst x1, x2, 1b; \
3:

#define TEST_BR2_SRC12_BYPASS( testnum, src1_nops, src2_nops, inst, val1, val2 ) \
    TEST_LABEL(testnum, TESTSUITE): \
    li  TESTNUM, testnum; \
    li  x4, 0; \
1:  li  x1, val1; \
    TEST_INSERT_NOPS_ ## src1_nops \
    li  x2, val2; \
    TEST_INSERT_NOPS_ ## src2_nops \
    inst x1, x2, PASSFAIL_LABEL(fail, TESTSUITE); \
    addi  x4, x4, 1; \
    li  x5, 2; \
    bne x4, x5, 1b \

#define TEST_BR2_SRC21_BYPASS( testnum, src1_nops, src2_nops, inst, val1, val2 ) \
    TEST_LABEL(testnum, TESTSUITE): \
    li  TESTNUM, testnum; \
    li  x4, 0; \
1:  li  x2, val2; \
    TEST_INSERT_NOPS_ ## src1_nops \
    li  x1, val1; \
    TEST_INSERT_NOPS_ ## src2_nops \
    inst x1, x2, PASSFAIL_LABEL(fail, TESTSUITE); \
    addi  x4, x4, 1; \
    li  x5, 2; \
    bne x4, x5, 1b \

#-----------------------------------------------------------------------
# Test jump instructions
#-----------------------------------------------------------------------

#define TEST_JR_SRC1_BYPASS( testnum, nop_cycles, inst ) \
    TEST_LABEL(testnum, TESTSUITE): \
    li  TESTNUM, testnum; \
    li  x4, 0; \
1:  la  x6, 2f; \
    TEST_INSERT_NOPS_ ## nop_cycles \
    inst x6; \
    bne x0, TESTNUM, PASSFAIL_LABEL(fail, TESTSUITE); \
2:  addi  x4, x4, 1; \
    li  x5, 2; \
    bne x4, x5, 1b \

#define TEST_JALR_SRC1_BYPASS( testnum, nop_cycles, inst ) \
    TEST_LABEL(testnum, TESTSUITE): \
    li  TESTNUM, testnum; \
    li  x4, 0; \
1:  la  x6, 2f; \
    TEST_INSERT_NOPS_ ## nop_cycles \
    inst x19, x6, 0; \
    bne x0, TESTNUM, PASSFAIL_LABEL(fail, TESTSUITE); \
2:  addi  x4, x4, 1; \
    li  x5, 2; \
    bne x4, x5, 1b \


#-----------------------------------------------------------------------
# RV64UF MACROS
#-----------------------------------------------------------------------

#-----------------------------------------------------------------------
# Tests floating-point instructions
#-----------------------------------------------------------------------

#define TEST_FP_OP_S_INTERNAL( testnum, flags, result, val1, val2, val3, code... ) \
  TEST_LABEL(testnum, TESTSUITE): \
  li  TESTNUM, testnum; \
  la  a0, test_ ## TESTSUITE ## _ ## testnum ## _data ;\
  flw f0, 0(a0); \
  flw f1, 4(a0); \
  flw f2, 8(a0); \
  lw  a3, 12(a0); \
  code; \
  fsflags a1, x0; \
  li a2, flags; \
  bne a0, a3, PASSFAIL_LABEL(fail, TESTSUITE); \
  bne a1, a2, PASSFAIL_LABEL(fail, TESTSUITE); \
  j 2f; \
  .align 2; \
  .data; \
  test_ ## TESTSUITE ## _ ## testnum ## _data: \
  .float val1; \
  .float val2; \
  .float val3; \
  .result; \
  .text; \
2:

#define TEST_FP_OP_D_INTERNAL( testnum, flags, result, val1, val2, val3, code... ) \
  TEST_LABEL(testnum, TESTSUITE): \
  li  TESTNUM, testnum; \
  la  a0, test_ ## TESTSUITE ## _ ## testnum ## _data ;\
  fld f0, 0(a0); \
  fld f1, 8(a0); \
  fld f2, 16(a0); \
  ld  a3, 24(a0); \
  code; \
  fsflags a1, x0; \
  li a2, flags; \
  bne a0, a3, PASSFAIL_LABEL(fail, TESTSUITE); \
  bne a1, a2, PASSFAIL_LABEL(fail, TESTSUITE); \
  j 2f; \
  .data; \
  .align 3; \
  test_ ## TESTSUITE ## _ ## testnum ## _data: \
  .double val1; \
  .double val2; \
  .double val3; \
  .result; \
  .text; \
2:

#define TEST_FCVT_S_D( testnum, result, val1 ) \
  TEST_FP_OP_D_INTERNAL( testnum, 0, double result, val1, 0.0, 0.0, \
                    fcvt.s.d f3, f0; fcvt.d.s f3, f3; fmv.x.d a0, f3)

#define TEST_FCVT_D_S( testnum, result, val1 ) \
  TEST_FP_OP_S_INTERNAL( testnum, 0, float result, val1, 0.0, 0.0, \
                    fcvt.d.s f3, f0; fcvt.s.d f3, f3; fmv.x.s a0, f3)

#define TEST_FP_OP1_S( testnum, inst, flags, result, val1 ) \
  TEST_FP_OP_S_INTERNAL( testnum, flags, float result, val1, 0.0, 0.0, \
                    inst f3, f0; fmv.x.s a0, f3)

#define TEST_FP_OP1_D( testnum, inst, flags, result, val1 ) \
  TEST_FP_OP_D_INTERNAL( testnum, flags, double result, val1, 0.0, 0.0, \
                    inst f3, f0; fmv.x.d a0, f3)

#define TEST_FP_OP2_S( testnum, inst, flags, result, val1, val2 ) \
  TEST_FP_OP_S_INTERNAL( testnum, flags, float result, val1, val2, 0.0, \
                    inst f3, f0, f1; fmv.x.s a0, f3)

#define TEST_FP_OP2_D( testnum, inst, flags, result, val1, val2 ) \
  TEST_FP_OP_D_INTERNAL( testnum, flags, double result, val1, val2, 0.0, \
                    inst f3, f0, f1; fmv.x.d a0, f3)

#define TEST_FP_OP3_S( testnum, inst, flags, result, val1, val2, val3 ) \
  TEST_FP_OP_S_INTERNAL( testnum, flags, float result, val1, val2, val3, \
                    inst f3, f0, f1, f2; fmv.x.s a0, f3)

#define TEST_FP_OP3_D( testnum, inst, flags, result, val1, val2, val3 ) \
  TEST_FP_OP_D_INTERNAL( testnum, flags, double result, val1, val2, val3, \
                    inst f3, f0, f1, f2; fmv.x.d a0, f3)

#define TEST_FP_INT_OP_S( testnum, inst, flags, result, val1, rm ) \
  TEST_FP_OP_S_INTERNAL( testnum, flags, word result, val1, 0.0, 0.0, \
                    inst a0, f0, rm)

#define TEST_FP_INT_OP_D( testnum, inst, flags, result, val1, rm ) \
  TEST_FP_OP_D_INTERNAL( testnum, flags, dword result, val1, 0.0, 0.0, \
                    inst a0, f0, rm)

#define TEST_FP_CMP_OP_S( testnum, inst, result, val1, val2 ) \
  TEST_FP_OP_S_INTERNAL( testnum, 0, word result, val1, val2, 0.0, \
                    inst a0, f0, f1)

#define TEST_FP_CMP_OP_D( testnum, inst, result, val1, val2 ) \
  TEST_FP_OP_D_INTERNAL( testnum, 0, dword result, val1, val2, 0.0, \
                    inst a0, f0, f1)

#define TEST_INT_FP_OP_S( testnum, inst, result, val1 ) \
  TEST_LABEL(testnum, TESTSUITE): \
  li  TESTNUM, testnum; \
  la  a0, test_ ## TESTSUITE ## _ ## testnum ## _data ;\
  lw  a3, 0(a0); \
  li  a0, val1; \
  inst f0, a0; \
  fsflags x0; \
  fmv.x.s a0, f0; \
  bne a0, a3, PASSFAIL_LABEL(fail, TESTSUITE); \
  j 1f; \
  .align 2; \
  test_ ## TESTSUITE ## _ ## testnum ## _data: \
  .float result; \
1:

#define TEST_INT_FP_OP_D( testnum, inst, result, val1 ) \
  TEST_LABEL(testnum, TESTSUITE): \
  li  TESTNUM, testnum; \
  la  a0, test_ ## TESTSUITE ## _ ## testnum ## _data ;\
  ld  a3, 0(a0); \
  li  a0, val1; \
  inst f0, a0; \
  fsflags x0; \
  fmv.x.d a0, f0; \
  bne a0, a3, PASSFAIL_LABEL(fail, TESTSUITE); \
  j 1f; \
  .align 3; \
  test_ ## TESTSUITE ## _ ## testnum ## _data: \
  .double result; \
1:


#-----------------------------------------------------------------------
# RV64SV MACROS
#-----------------------------------------------------------------------

#define TEST_ILLEGAL_TVEC_REGID( testnum, nxreg, nfreg, inst, reg1, reg2) \
  la a0, handler ## testnum; \
  csrw stvec, a0; \
  vsetcfg nxreg, nfreg; \
  li a0, 4; \
  vsetvl a0, a0; \
  la a0, src1; \
  la a1, src2; \
  vld vx2, a0; \
  vld vx3, a1; \
  lui a0,%hi(vtcode1 ## testnum); \
  vf %lo(vtcode1 ## testnum)(a0); \
  la reg2, dest; \
illegal ## testnum: \
  inst reg1, reg2; \
  la a3, dest; \
  vsd vx2, a3; \
  fence; \
vtcode1 ## testnum: \
  add x2, x2, x3; \
  stop; \
vtcode2 ## testnum: \
  add x2, x2, x3; \
  stop; \
handler ## testnum: \
  vxcptkill; \
  li TESTNUM,2; \
  csrr a0, scause; \
  li a1,HWACHA_CAUSE_TVEC_ILLEGAL_REGID; \
  bne a0,a1,PASSFAIL_LABEL(fail, TESTSUITE); \
  csrr a0, sbadaddr; \
  la a1, illegal ## testnum; \
  lw a2, 0(a1); \
  bne a0, a2, PASSFAIL_LABEL(fail, TESTSUITE); \
  vsetcfg 32,0; \
  li a0,4; \
  vsetvl a0,a0; \
  la a0,src1; \
  la a1,src2; \
  vld vx2,a0; \
  vld vx3,a1; \
  lui a0,%hi(vtcode2 ## testnum); \
  vf %lo(vtcode2 ## testnum)(a0); \
  la a3,dest; \
  vsd vx2,a3; \
  fence; \
  ld a1,0(a3); \
  li a2,5; \
  li TESTNUM,2; \
  bne a1,a2,PASSFAIL_LABEL(fail, TESTSUITE); \
  ld a1,8(a3); \
  li TESTNUM,3; \
  bne a1,a2,PASSFAIL_LABEL(fail, TESTSUITE); \
  ld a1,16(a3); \
  li TESTNUM,4; \
  bne a1,a2,PASSFAIL_LABEL(fail, TESTSUITE); \
  ld a1,24(a3); \
  li TESTNUM,5; \
  bne a1,a2,PASSFAIL_LABEL(fail, TESTSUITE); \

#define TEST_ILLEGAL_VT_REGID( testnum, nxreg, nfreg, inst, reg1, reg2, reg3) \
  la a0, handler ## testnum; \
  csrw stvec, a0; \
  vsetcfg nxreg, nfreg; \
  li a0, 4; \
  vsetvl a0, a0; \
  la a0, src1; \
  la a1, src2; \
  vld vx2, a0; \
  vld vx3, a1; \
  lui a0,%hi(vtcode1 ## testnum); \
  vf %lo(vtcode1 ## testnum)(a0); \
  la a3, dest; \
  vsd vx2, a3; \
  fence; \
vtcode1 ## testnum: \
  add x2, x2, x3; \
illegal ## testnum: \
  inst reg1, reg2, reg3; \
  stop; \
vtcode2 ## testnum: \
  add x2, x2, x3; \
  stop; \
handler ## testnum: \
  vxcptkill; \
  li TESTNUM,2; \
  csrr a0, scause; \
  li a1,HWACHA_CAUSE_VF_ILLEGAL_REGID; \
  bne a0,a1,PASSFAIL_LABEL(fail, TESTSUITE); \
  csrr a0, sbadaddr; \
  la a1,illegal ## testnum; \
  bne a0,a1,PASSFAIL_LABEL(fail, TESTSUITE); \
  vsetcfg 32,0; \
  li a0,4; \
  vsetvl a0,a0; \
  la a0,src1; \
  la a1,src2; \
  vld vx2,a0; \
  vld vx3,a1; \
  lui a0,%hi(vtcode2 ## testnum); \
  vf %lo(vtcode2 ## testnum)(a0); \
  la a3,dest; \
  vsd vx2,a3; \
  fence; \
  ld a1,0(a3); \
  li a2,5; \
  li TESTNUM,2; \
  bne a1,a2,PASSFAIL_LABEL(fail, TESTSUITE); \
  ld a1,8(a3); \
  li TESTNUM,3; \
  bne a1,a2,PASSFAIL_LABEL(fail, TESTSUITE); \
  ld a1,16(a3); \
  li TESTNUM,4; \
  bne a1,a2,PASSFAIL_LABEL(fail, TESTSUITE); \
  ld a1,24(a3); \
  li TESTNUM,5; \
  bne a1,a2,PASSFAIL_LABEL(fail, TESTSUITE); \



#-----------------------------------------------------------------------
# Test data section
#-----------------------------------------------------------------------

#define TEST_DATA

#endif
