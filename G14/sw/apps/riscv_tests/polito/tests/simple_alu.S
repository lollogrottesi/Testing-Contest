# See LICENSE for license details.

#*****************************************************************************
# simple_alu.S
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

li x30,0
li x31,0x11111111



li x1,0xFFFFFFFF
p.abs x3,x1
sw x3,0(x3)

li x1,0x0000FFFF
p.abs x3,x1
sw x3,0(x3)
li x1,0x00FF00FF
p.abs x3,x1
sw x3,0(x3)
li x1,0x0F0F0F0F
p.abs x3,x1
sw x3,0(x3)
li x1,0x00000000
p.abs x3,x1
sw x3,0(x3)


li x1,0xFFFFFFFF
p.lw x3,0x000(x1)
sw x3,0(x4)
p.lhu x4,0x00F(x1)
sw x4,0(x4)
li x2,0x00FF00FF
p.lw x3,x2(x1)

sw x3,0(x3)
p.lbu x4,x2(x1)

p.lb x3,x2(x1)

p.lw x4,x2(x1)


li x1,0xFFFFFFFF
p.sw x3,0x000(x1)

p.sh x4,0x00F(x1)

li x2,0x00FF00FF
p.sw x3,x2(x1)

p.sb x4,x2(x1)

p.sb x3,x2(x1)

p.sw x4,x2(x1)

li x2, 0x00FF00FF
li x3, 0x0000FFFF
TEST_genericALU()
li x2, 0x0000FFFF
li x3, 0xFFFF0000
TEST_genericALU()
li x2, 0x0F0F0F0F
li x3, 0x00FF00FF
TEST_genericALU()
li x2, 0x00FF00FF
li x3, 0x55555555
TEST_genericALU()
li x2, 0x33333333
li x3, 0x55555555
TEST_genericALU()

li x31, 0x00100000
TEST_ALUimm(0x00000000, 0x00000000)
TEST_ALUimm(31, 1)
slli x1,x4,31
sw x1,0(x31)
srli x1,x4,31
sw x1,0(x31)
srai x1,x4,31
sw x1,0(x31)
TEST_ALUimm(0x00000000, 0xFFFFFFFF)
TEST_ALUimm(30, 3) 
slli x1,x4,31
sw x1,0(x31)
srli x1,x4,31
sw x1,0(x31)
srai x1,x4,31
sw x1,0(x31)
TEST_ALUimm(0xFFFFFFFF, 0x00000000) 
slli x1,x4,31
sw x1,0(x31)
srli x1,x4,31
sw x1,0(x31)
srai x1,x4,31
sw x1,0(x31)
TEST_ALUimm(28, 7) 
slli x1,x4,31
sw x1,0(x31)
srli x1,x4,31
sw x1,0(x31)
srai x1,x4,31
sw x1,0(x31)
TEST_ALUimm(0xFFFFFFFF, 0xFFFFFFFF) 


li x31, 0x00100000
li  x1, 0x00000000
li  x2, 0x00000000
li x30, 0x11111111
li x27, 0xFFFFFFFF	

loopdiv:add x7,x1,x2
sw  x7,0(x31)
sub x8,x1,x2
sw  x8,0(x31)
REM x10,x1,x2
sw  x10,0(x31)
div x11, x1, x2
sw  x11,0(x31)
p.adduN x13, x1, x2, 0
sw  x13,0(x31)
pv.sub.b x17, x1, x2
sw  x17,0(x31)
divu x18, x7, x17
sw  x18,0(x31)
beq x2, x27, division1
nop
nop
nop
add x2,x2,x30
j loopdiv
division1:xor x2, x2, x2
beq x1, x27, division2
nop
nop
nop
add x1,x1,x30
j loopdiv
division2:
 



.data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
