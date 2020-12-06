# See LICENSE for license details.

#*****************************************************************************
# simple.S
#-----------------------------------------------------------------------------
#
# This is the most basic self checking test. If your simulator does not
# pass thiss then there is little chance that it will pass any of the
# more complicated self checking tests.
#

#include "riscv_test.h"
#include "test_macros.h"


RVTEST_RV32U
RVTEST_CODE_BEGIN




li x1,0;
li x2,0;
li x0,0;
nop
nop
nop
TEST_CSR_reg(csrrw,0x300);
TEST_CSR_reg(csrrw,0x305);
TEST_CSR_reg(csrrw,0x341);
TEST_CSR_reg(csrrw,0x342);
TEST_CSR_reg(csrrw,0xC10);
TEST_CSR_reg(csrrw,0xF14);
TEST_CSR_reg(csrrw,0x014);
TEST_CSR_reg(csrrw,0x342);
TEST_CSR_reg(csrrw,0x780);
TEST_CSR_reg(csrrw,0x781);
TEST_CSR_reg(csrrw,0x782);
TEST_CSR_reg(csrrw,0x783);
TEST_CSR_reg(csrrw,0x784);
TEST_CSR_reg(csrrw,0x785);
TEST_CSR_reg(csrrw,0x786);
TEST_CSR_reg(csrrw,0x787);
TEST_CSR_reg(csrrw,0x788);
TEST_CSR_reg(csrrw,0x789);
TEST_CSR_reg(csrrw,0x78A);
TEST_CSR_reg(csrrw,0x78B);
TEST_CSR_reg(csrrw,0x78C);
TEST_CSR_reg(csrrw,0x78D);
TEST_CSR_reg(csrrw,0x78E);
TEST_CSR_reg(csrrw,0x78F);
TEST_CSR_reg(csrrw,0x790);
TEST_CSR_reg(csrrw,0x791);
TEST_CSR_reg(csrrw,0x792);
TEST_CSR_reg(csrrw,0x793);
TEST_CSR_reg(csrrw,0x794);
TEST_CSR_reg(csrrw,0x795);
TEST_CSR_reg(csrrw,0x796);
TEST_CSR_reg(csrrw,0x797);
TEST_CSR_reg(csrrw,0x798);
TEST_CSR_reg(csrrw,0x799);
TEST_CSR_reg(csrrw,0x79A);
TEST_CSR_reg(csrrw,0x79B);
TEST_CSR_reg(csrrw,0x79C);
TEST_CSR_reg(csrrw,0x79D);
TEST_CSR_reg(csrrw,0x79E);
TEST_CSR_reg(csrrw,0x79F);
TEST_CSR_reg(csrrw,0x7A0);
TEST_CSR_reg(csrrw,0x7A1);
TEST_CSR_reg(csrrw,0x7B0);
TEST_CSR_reg(csrrw,0x7B1);
TEST_CSR_reg(csrrw,0x7B2);
TEST_CSR_reg(csrrw,0x7B3);
TEST_CSR_reg(csrrw,0x7B4);
TEST_CSR_reg(csrrw,0x7B5);
TEST_CSR_reg(csrrw,0x7B6);
TEST_CSR_reg(csrrw,0x7B7);
TEST_CSR_reg(csrrs,0x300);
TEST_CSR_reg(csrrs,0x305);
TEST_CSR_reg(csrrs,0x341);
TEST_CSR_reg(csrrs,0x342);
TEST_CSR_reg(csrrs,0xC10);
TEST_CSR_reg(csrrs,0xF14);
TEST_CSR_reg(csrrs,0x014);
TEST_CSR_reg(csrrs,0x7A1);
TEST_CSR_reg(csrrs,0x780);
TEST_CSR_reg(csrrs,0x781);
TEST_CSR_reg(csrrs,0x782);
TEST_CSR_reg(csrrs,0x783);
TEST_CSR_reg(csrrs,0x784);
TEST_CSR_reg(csrrs,0x785);
TEST_CSR_reg(csrrs,0x786);
TEST_CSR_reg(csrrs,0x787);
TEST_CSR_reg(csrrs,0x788);
TEST_CSR_reg(csrrs,0x789);
TEST_CSR_reg(csrrs,0x78A);
TEST_CSR_reg(csrrs,0x78B);
TEST_CSR_reg(csrrs,0x78C);
TEST_CSR_reg(csrrs,0x78D);
TEST_CSR_reg(csrrs,0x78E);
TEST_CSR_reg(csrrs,0x78F);
TEST_CSR_reg(csrrs,0x790);
TEST_CSR_reg(csrrs,0x791);
TEST_CSR_reg(csrrs,0x792);
TEST_CSR_reg(csrrs,0x793);
TEST_CSR_reg(csrrs,0x794);
TEST_CSR_reg(csrrs,0x795);
TEST_CSR_reg(csrrs,0x796);
TEST_CSR_reg(csrrs,0x797);
TEST_CSR_reg(csrrs,0x798);
TEST_CSR_reg(csrrs,0x799);
TEST_CSR_reg(csrrs,0x79A);
TEST_CSR_reg(csrrs,0x79B);
TEST_CSR_reg(csrrs,0x79C);
TEST_CSR_reg(csrrs,0x79D);
TEST_CSR_reg(csrrs,0x79E);
TEST_CSR_reg(csrrs,0x79F);
TEST_CSR_reg(csrrs,0x7A0);
TEST_CSR_reg(csrrs,0x7B0);
TEST_CSR_reg(csrrs,0x7B1);
TEST_CSR_reg(csrrs,0x7B2);
TEST_CSR_reg(csrrs,0x7B3);
TEST_CSR_reg(csrrs,0x7B4);
TEST_CSR_reg(csrrs,0x7B5);
TEST_CSR_reg(csrrs,0x7B6);
TEST_CSR_reg(csrrs,0x7B7);
TEST_CSR_reg(csrrc,0x300);
TEST_CSR_reg(csrrc,0x305);
TEST_CSR_reg(csrrc,0x341);
TEST_CSR_reg(csrrc,0x342);
TEST_CSR_reg(csrrc,0xC10);
TEST_CSR_reg(csrrc,0xF14);
TEST_CSR_reg(csrrc,0x014);
TEST_CSR_reg(csrrc,0x7A1);
TEST_CSR_reg(csrrc,0x780);
TEST_CSR_reg(csrrc,0x781);
TEST_CSR_reg(csrrc,0x782);
TEST_CSR_reg(csrrc,0x783);
TEST_CSR_reg(csrrc,0x784);
TEST_CSR_reg(csrrc,0x785);
TEST_CSR_reg(csrrc,0x786);
TEST_CSR_reg(csrrc,0x787);
TEST_CSR_reg(csrrc,0x788);
TEST_CSR_reg(csrrc,0x789);
TEST_CSR_reg(csrrc,0x78A);
TEST_CSR_reg(csrrc,0x78B);
TEST_CSR_reg(csrrc,0x78C);
TEST_CSR_reg(csrrc,0x78D);
TEST_CSR_reg(csrrc,0x78E);
TEST_CSR_reg(csrrc,0x78F);
TEST_CSR_reg(csrrc,0x790);
TEST_CSR_reg(csrrc,0x791);
TEST_CSR_reg(csrrc,0x792);
TEST_CSR_reg(csrrc,0x793);
TEST_CSR_reg(csrrc,0x794);
TEST_CSR_reg(csrrc,0x795);
TEST_CSR_reg(csrrc,0x796);
TEST_CSR_reg(csrrc,0x79F);
TEST_CSR_reg(csrrc,0x7A0);
TEST_CSR_reg(csrrc,0x7B0);
TEST_CSR_reg(csrrc,0x7B1);
TEST_CSR_reg(csrrc,0x7B2);
TEST_CSR_reg(csrrc,0x7B3);
TEST_CSR_reg(csrrc,0x7B4);
TEST_CSR_reg(csrrc,0x7B5);
TEST_CSR_reg(csrrc,0x7B6);
TEST_CSR_reg(csrrc,0x7B7);
TEST_CSR_imm(csrrwi,0x300,1);
TEST_CSR_imm(csrrwi,0x305,3);
TEST_CSR_imm(csrrwi,0x341,7);
TEST_CSR_imm(csrrwi,0x342,10);
TEST_CSR_imm(csrrwi,0xC10,21);
TEST_CSR_imm(csrrwi,0xF14,1);
TEST_CSR_imm(csrrwi,0x014,3);
TEST_CSR_imm(csrrwi,0x7A1,7);
TEST_CSR_imm(csrrwi,0x780,10);
TEST_CSR_imm(csrrwi,0x79F,21);
TEST_CSR_imm(csrrwi,0x7A0,1);
TEST_CSR_imm(csrrwi,0x7B0,3);
TEST_CSR_imm(csrrwi,0x7B7,7);
TEST_CSR_imm(csrrsi,0x300,28);
TEST_CSR_imm(csrrsi,0x305,30);
TEST_CSR_imm(csrrsi,0x341,31);
TEST_CSR_imm(csrrsi,0x342,4);
TEST_CSR_imm(csrrsi,0xC10,16);
TEST_CSR_imm(csrrsi,0xF14,28);
TEST_CSR_imm(csrrsi,0x014,30);
TEST_CSR_imm(csrrsi,0x7A1,31);
TEST_CSR_imm(csrrsi,0x780,4);
TEST_CSR_imm(csrrsi,0x79F,16);
TEST_CSR_imm(csrrsi,0x7A0,28);
TEST_CSR_imm(csrrsi,0x7B0,30);
TEST_CSR_imm(csrrsi,0x7B7,31);
TEST_CSR_imm(csrrci,0x300,18);
TEST_CSR_imm(csrrci,0x305,20);
TEST_CSR_imm(csrrci,0x341,0);
TEST_CSR_imm(csrrci,0x342,5);
TEST_CSR_imm(csrrci,0xC10,8);
TEST_CSR_imm(csrrci,0xF14,18);
TEST_CSR_imm(csrrci,0x014,20);
TEST_CSR_imm(csrrci,0x7A1,0);
TEST_CSR_imm(csrrci,0x780,5);
TEST_CSR_imm(csrrci,0x79F,8);
TEST_CSR_imm(csrrci,0x7A0,18);
TEST_CSR_imm(csrrci,0x7B0,20);
TEST_CSR_imm(csrrci,0x7B7,0);




.data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
