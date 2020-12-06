# See LICENSE for license details.

#*****************************************************************************
# simple_hwl.S
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


li x30,1
lp.setup x1,x30, setuphl1
addi x30,x30,7
nop
setuphl1: sw x30,0(x0)

lp.setup x1,x30, setuphl2
addi x30,x30,7
nop
setuphl2: sw x30,0(x0)

lp.setup x1,x30, setuphl3
addi x30,x30,7
nop
setuphl3: sw x30,0(x0)

lp.setup x1,x30, setuphl4
addi x30,x30,7
nop
setuphl4: sw x30,0(x0)
csrr x7,0x7B0
csrr x8,0x7B1
csrr x4,0x7B2
csrr x17,0x7B4
csrr x18,0x7B5
csrr x14,0x7B6
sw x7,0(x0);
sw x8,0(x0);
sw x4,0(x0);
sw x17,0(x0);
sw x18,0(x0);
sw x14,0(x0);
csrrwi x7,0x7B0,1
csrrwi x8,0x7B1,1
csrrwi x4,0x7B2,1
csrrwi x17,0x7B4,1
csrrwi x18,0x7B5,1
csrrwi x14,0x7B6,1
csrr x7,0x7B0
csrr x8,0x7B1
csrr x4,0x7B2
csrr x17,0x7B4
csrr x18,0x7B5
csrr x14,0x7B6
sw x7,0(x0);
sw x8,0(x0);
sw x4,0(x0);
sw x17,0(x0);
sw x18,0(x0);
sw x14,0(x0);
csrrwi x7,0x7B0,0
csrrwi x8,0x7B1,0
csrrwi x4,0x7B2,0
csrrwi x17,0x7B4,0
csrrwi x18,0x7B5,0
csrrwi x14,0x7B6,0
csrr x7,0x7B0
csrr x8,0x7B1
csrr x4,0x7B2
csrr x17,0x7B4
csrr x18,0x7B5
csrr x14,0x7B6
sw x7,0(x0);
sw x8,0(x0);
sw x4,0(x0);
sw x17,0(x0);
sw x18,0(x0);
sw x14,0(x0);
csrrwi x7,0x7B0,31
csrrwi x8,0x7B1,31
csrrwi x4,0x7B2,31
csrrwi x17,0x7B4,31
csrrwi x18,0x7B5,31
csrrwi x14,0x7B6,31
csrr x7,0x7B0
csrr x8,0x7B1
csrr x4,0x7B2
csrr x17,0x7B4
csrr x18,0x7B5
csrr x14,0x7B6
sw x7,0(x0);
sw x8,0(x0);
sw x4,0(x0);
sw x17,0(x0);
sw x18,0(x0);
sw x14,0(x0);
csrrwi x7,0x7B0,7
csrrwi x8,0x7B1,7
csrrwi x4,0x7B2,7
csrrwi x17,0x7B4,7
csrrwi x18,0x7B5,7
csrrwi x14,0x7B6,7
csrr x7,0x7B0
csrr x8,0x7B1
csrr x4,0x7B2
csrr x17,0x7B4
csrr x18,0x7B5
csrr x14,0x7B6
sw x7,0(x0);
sw x8,0(x0);
sw x4,0(x0);
sw x17,0(x0);
sw x18,0(x0);
sw x14,0(x0);
csrrwi x7,0x7B0,15
csrrwi x8,0x7B1,15
csrrwi x4,0x7B2,15
csrrwi x17,0x7B4,15
csrrwi x18,0x7B5,15
csrrwi x14,0x7B6,15
csrr x7,0x7B0
csrr x8,0x7B1
csrr x4,0x7B2
csrr x17,0x7B4
csrr x18,0x7B5
csrr x14,0x7B6
sw x7,0(x0);
sw x8,0(x0);
sw x4,0(x0);
sw x17,0(x0);
sw x18,0(x0);
sw x14,0(x0);

lp.starti x0, hwl1
lp.endi x0, endhwl1
lp.counti x0, 0xF
csrr x7,0x7B0
csrr x8,0x7B1;
nop
sw x7,0(x4);
sw x8,0(x0);
hwl1: add x10,x2,x3
sw x10,0(x0)
csrr x4, 0x7B2;
nop
sw x4,0(x0)
endhwl1:

li x31,0xF;
lp.starti x1, hwl2;
lp.endi x1, endhwl2;
lp.count x1, x31;
csrr x7,0x7B0
csrr x8,0x7B1;
nop
sw x7,0(x4);
sw x8,0(x0);
hwl2: add x10,x2,x3
sw x10,0(x0)
csrr x4, 0x7B6;
nop
sw x4,0(x0)
endhwl2:

lp.setup x0,x31,hwlsetup1;
csrr x7,0x7B0
csrr x8,0x7B1;
nop
sw x7,0(x4);
sw x8,0(x0);
add x10,x2,x3
sw x10,0(x0)
csrr x4, 0x7B2;
nop
sw x4,0(x0)
hwlsetup1:

lp.setup x1,x31,hwlsetup11;
csrr x7,0x7B0
csrr x8,0x7B1;
nop
sw x7,0(x4);
sw x8,0(x0);
add x10,x2,x3
sw x10,0(x0)
csrr x4, 0x7B6;
nop
sw x4,0(x0)
hwlsetup11:

lp.setupi x0,0xF,hwlsetup;

add x10,x2,x3
sw x10,0(x0)
add x10,x2,x3
sw x10,0(x0)
csrr x4, 0x7B2;
nop
sw x4,0(x0)
hwlsetup:

lp.setupi x1,0xF,hwlsetup21;

sw x8,0(x4);
add x10,x2,x3
sw x10,0(x0)
csrr x4, 0x7B6;
nop
sw x4,0(x0)
hwlsetup21:
.data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
