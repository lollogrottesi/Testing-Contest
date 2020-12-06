# See LICENSE for license details.

#*****************************************************************************
# simple_register_file.S
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

p.lw x4,0(x4)
nop
nop
nop
p.sw x4, x4(x4)
lh x5,0(x5)
nop
nop
nop
sw x5, 0(x0)
lhu x6,0(x6)
nop
nop
nop
sh x6, 0(x0)
lh x7,0(x7)
nop
nop
nop
sh x7, 0(x0)
lbu x8,0(x8)
nop
nop
nop
sb x8, 0(x0)
lb x10,0(x10)
nop
nop
nop
sb x10, 0(x0)
lhu x11,0(x11)
nop
nop
nop
sb x12, 0(x0)
p.lw x13,0(x13)
nop
nop
nop
p.sw x13, x13(x13)
p.lw x14,0(x14)
nop
nop
nop
p.sw x14, x14(x14)
p.lw x15,0(x15)
nop
nop
nop
p.sw x15, x15(x15)
p.lw x16,0(x16)
nop
nop
nop
p.sw x16, x16(x16)
p.lw x17,0(x17)
nop
nop
nop
p.sw x17, x17(x17)
p.lw x18,0(x18)
nop
nop
nop
p.sw x18, x18(x18)
p.lw x19,0(x19)
nop
nop
nop
p.sw x19, x19(x19)
p.lw x20,0(x20)
nop
nop
nop
p.sw x20, x20(x20)
p.lw x21,0(x21)
nop
nop
nop
p.sw x21, x21(x21)
p.lw x22,0(x22)
nop
nop
nop
p.sw x22, x22(x22)
p.lw x23,0(x23)
nop
nop
nop
p.sw x23, x23(x23)
p.lw x23,0(x23)
nop
nop
nop
p.sw x23, x23(x23)
p.lw x24,0(x24)
nop
nop
nop
p.sw x24, x24(x24)
p.lw x25,0(x25)
nop
nop
nop
p.sw x25, x25(x25)
p.lw x26,0(x26)
nop
nop
nop
p.sw x26, x26(x26)
p.lw x27,0(x27)
nop
nop
nop
p.sw x27, x27(x27)
p.lw x28,0(x28)
nop
nop
nop
p.sw x28, x28(x28)
p.lw x29,0(x29)
nop
nop
nop
p.sw x29, x29(x29)
p.lw x30,0(x30)
nop
nop
nop
p.sw x30, x30(x30)
p.lb x1,0(x1!)
nop
nop
nop
p.sb x1,0(x1!)
p.lbu x2,0(x2!)
nop
nop
nop
p.sb x2,0(x2!)
p.lh x3,0(x3!)
nop
nop
nop
p.sh x3,0(x3!)
p.lhu x4,0(x4!)
nop
nop
nop
p.sh x4,0(x4!)
p.lb x5,x5(x5)
nop
nop
nop
p.sb x5,x5(x5)
p.lbu x6,x6(x6)
nop
nop
nop
p.sb x6,x6(x6)
p.lh x7,x7(x7)
nop
nop
nop
p.sh x7,x7(x7)
p.lhu x8,x8(x8)
nop
nop
nop
p.sh x8,x8(x8)



li x1,0
li x2,0
li x3,0
li x4,0
li x5,0
li x6,0
li x7,0
li x8,0
li x9,0
li x10,0
li x11,0
li x12,0
li x13,0
li x14,0
li x15,0
li x16,0
li x17,0
li x18,0
li x19,0
li x20,0
li x21,0
li x22,0
li x23,0
li x24,0
li x25,0
li x26,0
li x27,0
li x28,0
li x29,0
li x30,0
li x31,0


MACplus_march1(x1);
MACplus_march1(x2);
MACplus_march1(x3);
MACplus_march1(x4);
MACplus_march1(x5);
MACplus_march1(x6);
MACplus_march1(x7);
MACplus_march1(x8);
MACplus_march1(x9);
MACplus_march1(x10);
MACplus_march1(x11);
MACplus_march1(x12);
MACplus_march1(x13);
MACplus_march1(x14);
MACplus_march1(x15);
MACplus_march1(x16);
MACplus_march1(x17);
MACplus_march1(x18);
MACplus_march1(x19);
MACplus_march1(x20);
MACplus_march1(x21);
MACplus_march1(x22);
MACplus_march1(x23);
MACplus_march1(x24);
MACplus_march1(x25);
MACplus_march1(x26);
MACplus_march1(x27);
MACplus_march1(x28);
MACplus_march1(x29);
MACplus_march1(x30);
MACplus_march1(x31);


MACplus_march2(x31);
MACplus_march2(x30);
MACplus_march2(x29);
MACplus_march2(x28);
MACplus_march2(x27);
MACplus_march2(x26);
MACplus_march2(x25);
MACplus_march2(x24);
MACplus_march2(x23);
MACplus_march2(x22);
MACplus_march2(x21);
MACplus_march2(x20);
MACplus_march2(x19);
MACplus_march2(x18);
MACplus_march2(x17);
MACplus_march2(x16);
MACplus_march2(x15);
MACplus_march2(x14);
MACplus_march2(x13);
MACplus_march2(x12);
MACplus_march2(x11);
MACplus_march2(x10);
MACplus_march2(x9);
MACplus_march2(x8);
MACplus_march2(x7);
MACplus_march2(x6);
MACplus_march2(x5);
MACplus_march2(x4);
MACplus_march2(x3);
MACplus_march2( x2);
MACplus_march2( x1);



  
TEST_REG_OP4(  x1,0xFFFFFFFF );
TEST_REG_OP4(  x2,0xFFFFFFFF);
TEST_REG_OP4(  x3,0xFFFFFFFF);
TEST_REG_OP4(  x4,0xFFFFFFFF);
TEST_REG_OP4(  x5,0xFFFFFFFF);
TEST_REG_OP4(  x6,0xFFFFFFFF);
TEST_REG_OP4(  x7,0xFFFFFFFF);
TEST_REG_OP4(  x8,0xFFFFFFFF);
TEST_REG_OP4(  x9,0xFFFFFFFF);
TEST_REG_OP4(  x10,0xFFFFFFFF  );
TEST_REG_OP4(  x11,0xFFFFFFFF);
TEST_REG_OP4(  x12,0xFFFFFFFF);
TEST_REG_OP4(  x13,0xFFFFFFFF);
TEST_REG_OP4(  x14,0xFFFFFFFF);
TEST_REG_OP4(  x15,0xFFFFFFFF);
TEST_REG_OP4(  x16,0xFFFFFFFF);
TEST_REG_OP4(  x17,0xFFFFFFFF);
TEST_REG_OP4(  x18,0xFFFFFFFF);
TEST_REG_OP4(  x19,0xFFFFFFFF);
TEST_REG_OP4(  x20,0xFFFFFFFF);
TEST_REG_OP4(  x21,0xFFFFFFFF);
TEST_REG_OP4(  x22,0xFFFFFFFF);
TEST_REG_OP4(  x23,0xFFFFFFFF);
TEST_REG_OP4(  x24,0xFFFFFFFF);
TEST_REG_OP4(  x25,0xFFFFFFFF);
TEST_REG_OP4(  x26,0xFFFFFFFF);
TEST_REG_OP4(  x27,0xFFFFFFFF);
TEST_REG_OP4(  x28,0xFFFFFFFF);
TEST_REG_OP4(  x29,0xFFFFFFFF);
TEST_REG_OP4(  x30,0xFFFFFFFF);
TEST_REG_OP4(  x31,0xFFFFFFFF);


	  
TEST_REG_OP4(  x1,0 );
TEST_REG_OP4(  x2,0);
TEST_REG_OP4(  x3,0);
TEST_REG_OP4(  x4,0);
TEST_REG_OP4(  x5,0);
TEST_REG_OP4(  x6,0);
TEST_REG_OP4(  x7,0);
TEST_REG_OP4(  x8,0);
TEST_REG_OP4(  x9,0);
TEST_REG_OP4(  x10,0);
TEST_REG_OP4(  x11,0);
TEST_REG_OP4(  x12,0);
TEST_REG_OP4(  x13,0);
TEST_REG_OP4(  x14,0);
TEST_REG_OP4(  x15,0);
TEST_REG_OP4(  x16,0);
TEST_REG_OP4(  x17,0);
TEST_REG_OP4(  x18,0);
TEST_REG_OP4(  x19,0);
TEST_REG_OP4(  x20,0);
TEST_REG_OP4(  x21,0);
TEST_REG_OP4(  x22,0);
TEST_REG_OP4(  x23,0);
TEST_REG_OP4(  x24,0);
TEST_REG_OP4(  x25,0);
TEST_REG_OP4(  x26,0);
TEST_REG_OP4(  x27,0);
TEST_REG_OP4(  x28,0);
TEST_REG_OP4(  x29,0);
TEST_REG_OP4(  x30,0);
TEST_REG_OP4(  x31,0);	  



  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
