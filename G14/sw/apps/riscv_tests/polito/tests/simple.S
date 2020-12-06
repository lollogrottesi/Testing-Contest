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


li x31, 0x00100000
li x1,0
add x30,x31,100
loop_remove:
sw x1,0(x31)
add x31,x31,1
beq x31,x30, end_remove
j loop_remove
end_remove:



#------------------------- CODE TO TEST THE MULTIPLIER ------------------------------------
li x2,0x00000000
li x3,0x00000000
mulh x4,x2,x3
sw x4,0(x0)
mul x5,x2,x3
sw x5,0(x0)
p.mac x6,x2,x3
sw x6,0(x0)
p.macsN x1,x2,x3,3
sw x1,0(x0)
p.machhsN x7,x2,x3,4
sw x7,0(x0)
p.machhsRN x8,x2,x3,3
sw x8,0(x0)
p.macuN x9,x2,x3,4
sw x9,0(x0)
p.machhuN x10,x2,x3,3
sw x10,0(x0)
p.macuRN x11,x2,x3,4
sw x11,0(x0)
p.machhuRN x12,x2,x3,3
sw x12,0(x0)
p.mulhhuRN x13,x2,x3,4
sw x13,0(x0)
p.msu x14,x2,x3
sw x14,0(x0)
p.muls x15,x2,x3
sw x15,0(x0)
p.mulhhs x16,x2,x3
sw x16,0(x0)
p.mulsN x17,x2,x3,3
sw x17,0(x0)
p.mulhhsN x18,x2,x3,3
sw x18,0(x0)
p.mulsRN x19,x2,x3,3
sw x19,0(x0)
p.mulhhsRN x20,x2,x3,3
sw x20,0(x0)
p.mulu x21,x2,x3
sw x21,0(x0)
p.mulhhu x22,x2,x3
sw x22,0(x0)
p.muluN x23,x2,x3,3
sw x23,0(x0)
p.mulhhu x24,x2,x3
sw x24,0(x0)
p.muluN x25,x2,x3,3
sw x25,0(x0)
p.mulhhuN x26,x2,x3,3
sw x26,0(x0)
p.muluRN x27,x2,x3,3
sw x27,0(x0)
pv.dotusp.h x1,x2,x3
sw x1,0(x0)
pv.dotusp.b x4,x2,x3
sw x4,0(x0)
pv.dotsp.h x5,x2,x3
sw x5,0(x0)
pv.dotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotup.h x5,x2,x3
sw x5,0(x0)
pv.sdotup.b x6,x2,x3
sw x6,0(x0)
pv.sdotusp.h x5,x2,x3
nop
sw x5,0(x0)
pv.sdotusp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.h x5,x2,x3
sw x5,0(x0)
pv.sdotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.sci.h x10,x2,31
sw x10,0(x0)



li x2,0x00000000
li x3,0xFFFFFFFF
mulh x4,x2,x3
sw x4,0(x0)
mul x5,x2,x3
sw x5,0(x0)
p.mac x6,x2,x3
sw x6,0(x0)
p.macsN x1,x2,x3,3
sw x1,0(x0)
p.machhsN x7,x2,x3,4
sw x7,0(x0)
p.machhsRN x8,x2,x3,3
sw x8,0(x0)
p.macuN x9,x2,x3,4
sw x9,0(x0)
p.machhuN x10,x2,x3,3
sw x10,0(x0)
p.macuRN x11,x2,x3,4
sw x11,0(x0)
p.machhuRN x12,x2,x3,3
sw x12,0(x0)
p.mulhhuRN x13,x2,x3,4
sw x13,0(x0)
p.msu x14,x2,x3
sw x14,0(x0)
p.muls x15,x2,x3
sw x15,0(x0)
p.mulhhs x16,x2,x3
sw x16,0(x0)
p.mulsN x17,x2,x3,3
sw x17,0(x0)
p.mulhhsN x18,x2,x3,3
sw x18,0(x0)
p.mulsRN x19,x2,x3,3
sw x19,0(x0)
p.mulhhsRN x20,x2,x3,3
sw x20,0(x0)
p.mulu x21,x2,x3
sw x21,0(x0)
p.mulhhu x22,x2,x3
sw x22,0(x0)
p.muluN x23,x2,x3,3
sw x23,0(x0)
p.mulhhu x24,x2,x3
sw x24,0(x0)
p.muluN x25,x2,x3,3
sw x25,0(x0)
p.mulhhuN x26,x2,x3,3
sw x26,0(x0)
p.muluRN x27,x2,x3,3
sw x27,0(x0)
pv.dotusp.h x1,x2,x3
sw x1,0(x0)
pv.dotusp.b x4,x2,x3
sw x4,0(x0)
pv.dotsp.h x5,x2,x3
sw x5,0(x0)
pv.dotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotup.h x5,x2,x3
sw x5,0(x0)
pv.sdotup.b x6,x2,x3
sw x6,0(x0)
pv.sdotusp.h x5,x2,x3
sw x5,0(x0)
pv.sdotusp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.h x5,x2,x3
sw x5,0(x0)
pv.sdotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.sci.h x10,x2,31
sw x10,0(x0)

li x2,0xFFFFFFFF
li x3,0x00000000
mulh x4,x2,x3
sw x4,0(x0)
mul x5,x2,x3
sw x5,0(x0)
p.mac x6,x2,x3
sw x6,0(x0)
p.macsN x1,x2,x3,3
sw x1,0(x0)
p.machhsN x7,x2,x3,4
sw x7,0(x0)
p.machhsRN x8,x2,x3,3
sw x8,0(x0)
p.macuN x9,x2,x3,4
sw x9,0(x0)
p.machhuN x10,x2,x3,3
sw x10,0(x0)
p.macuRN x11,x2,x3,4
sw x11,0(x0)
p.machhuRN x12,x2,x3,3
sw x12,0(x0)
p.mulhhuRN x13,x2,x3,4
sw x13,0(x0)
p.msu x14,x2,x3
sw x14,0(x0)
p.muls x15,x2,x3
sw x15,0(x0)
p.mulhhs x16,x2,x3
sw x16,0(x0)
p.mulsN x17,x2,x3,3
sw x17,0(x0)
p.mulhhsN x18,x2,x3,3
sw x18,0(x0)
p.mulsRN x19,x2,x3,3
sw x19,0(x0)
p.mulhhsRN x20,x2,x3,3
sw x20,0(x0)
p.mulu x21,x2,x3
sw x21,0(x0)
p.mulhhu x22,x2,x3
sw x22,0(x0)
p.muluN x23,x2,x3,3
sw x23,0(x0)
p.mulhhu x24,x2,x3
sw x24,0(x0)
p.muluN x25,x2,x3,3
sw x25,0(x0)
p.mulhhuN x26,x2,x3,3
sw x26,0(x0)
p.muluRN x27,x2,x3,3
sw x27,0(x0)
pv.dotusp.h x1,x2,x3
sw x1,0(x0)
pv.dotusp.b x4,x2,x3
sw x4,0(x0)
pv.dotsp.h x5,x2,x3
sw x5,0(x0)
pv.dotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotup.h x5,x2,x3
sw x5,0(x0)
pv.sdotup.b x6,x2,x3
sw x6,0(x0)
pv.sdotusp.h x5,x2,x3
sw x5,0(x0)
pv.sdotusp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.h x5,x2,x3
sw x5,0(x0)
pv.sdotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.sci.h x10,x2,31
sw x10,0(x0)

li x2,0xFFFFFFFF
li x3,0xFFFFFFFF
mulh x4,x2,x3
sw x4,0(x0)
mul x5,x2,x3
sw x5,0(x0)
p.mac x6,x2,x3
sw x6,0(x0)
p.macsN x1,x2,x3,3
sw x1,0(x0)
p.machhsN x7,x2,x3,4
sw x7,0(x0)
p.machhsRN x8,x2,x3,3
sw x8,0(x0)
p.macuN x9,x2,x3,4
sw x9,0(x0)
p.machhuN x10,x2,x3,3
sw x10,0(x0)
p.macuRN x11,x2,x3,4
sw x11,0(x0)
p.machhuRN x12,x2,x3,3
sw x12,0(x0)
p.mulhhuRN x13,x2,x3,4
sw x13,0(x0)
p.msu x14,x2,x3
sw x14,0(x0)
p.muls x15,x2,x3
sw x15,0(x0)
p.mulhhs x16,x2,x3
sw x16,0(x0)
p.mulsN x17,x2,x3,3
sw x17,0(x0)
p.mulhhsN x18,x2,x3,3
sw x18,0(x0)
p.mulsRN x19,x2,x3,3
sw x19,0(x0)
p.mulhhsRN x20,x2,x3,3
sw x20,0(x0)
p.mulu x21,x2,x3
sw x21,0(x0)
p.mulhhu x22,x2,x3
sw x22,0(x0)
p.muluN x23,x2,x3,3
sw x23,0(x0)
p.mulhhu x24,x2,x3
sw x24,0(x0)
p.muluN x25,x2,x3,3
sw x25,0(x0)
p.mulhhuN x26,x2,x3,3
sw x26,0(x0)
p.muluRN x27,x2,x3,3
sw x27,0(x0)
pv.dotusp.h x1,x2,x3
sw x1,0(x0)
pv.dotusp.b x4,x2,x3
sw x4,0(x0)
pv.dotsp.h x5,x2,x3
sw x5,0(x0)
pv.dotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotup.h x5,x2,x3
sw x5,0(x0)
pv.sdotup.b x6,x2,x3
sw x6,0(x0)
pv.sdotusp.h x5,x2,x3
sw x5,0(x0)
pv.sdotusp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.h x5,x2,x3
sw x5,0(x0)
pv.sdotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.sci.h x10,x2,3
sw x10,0(x0)


li x2,0x0000FFFF
li x3,0x0000FFFF
mulh x4,x2,x3
sw x4,0(x0)
mul x5,x2,x3
sw x5,0(x0)
p.mac x6,x2,x3
sw x6,0(x0)
p.macsN x1,x2,x3,3
sw x1,0(x0)
p.machhsN x7,x2,x3,4
sw x7,0(x0)
p.machhsRN x8,x2,x3,3
sw x8,0(x0)
p.macuN x9,x2,x3,4
sw x9,0(x0)
p.machhuN x10,x2,x3,3
sw x10,0(x0)
p.macuRN x11,x2,x3,4
sw x11,0(x0)
p.machhuRN x12,x2,x3,3
sw x12,0(x0)
p.mulhhuRN x13,x2,x3,4
sw x13,0(x0)
p.msu x14,x2,x3
sw x14,0(x0)
p.muls x15,x2,x3
sw x15,0(x0)
p.mulhhs x16,x2,x3
sw x16,0(x0)
p.mulsN x17,x2,x3,3
sw x17,0(x0)
p.mulhhsN x18,x2,x3,3
sw x18,0(x0)
p.mulsRN x19,x2,x3,3
sw x19,0(x0)
p.mulhhsRN x20,x2,x3,3
sw x20,0(x0)
p.mulu x21,x2,x3
sw x21,0(x0)
p.mulhhu x22,x2,x3
sw x22,0(x0)
p.muluN x23,x2,x3,3
sw x23,0(x0)
p.mulhhu x24,x2,x3
sw x24,0(x0)
p.muluN x25,x2,x3,3
sw x25,0(x0)
p.mulhhuN x26,x2,x3,3
sw x26,0(x0)
p.muluRN x27,x2,x3,3
sw x27,0(x0)
pv.dotusp.h x1,x2,x3
sw x1,0(x0)
pv.dotusp.b x4,x2,x3
sw x4,0(x0)
pv.dotsp.h x5,x2,x3
sw x5,0(x0)
pv.dotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotup.h x5,x2,x3
sw x5,0(x0)
pv.sdotup.b x6,x2,x3
sw x6,0(x0)
pv.sdotusp.h x5,x2,x3
sw x5,0(x0)
pv.sdotusp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.h x5,x2,x3
sw x5,0(x0)
pv.sdotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.sci.h x10,x2,3
sw x10,0(x0)

li x2,0xFFFF0000
li x3,0xFFFF0000
mulh x4,x2,x3
sw x4,0(x0)
mul x5,x2,x3
sw x5,0(x0)
p.mac x6,x2,x3
sw x6,0(x0)
p.macsN x1,x2,x3,3
sw x1,0(x0)
p.machhsN x7,x2,x3,4
sw x7,0(x0)
p.machhsRN x8,x2,x3,3
sw x8,0(x0)
p.macuN x9,x2,x3,4
sw x9,0(x0)
p.machhuN x10,x2,x3,3
sw x10,0(x0)
p.macuRN x11,x2,x3,4
sw x11,0(x0)
p.machhuRN x12,x2,x3,3
sw x12,0(x0)
p.mulhhuRN x13,x2,x3,4
sw x13,0(x0)
p.msu x14,x2,x3
sw x14,0(x0)
p.muls x15,x2,x3
sw x15,0(x0)
p.mulhhs x16,x2,x3
sw x16,0(x0)
p.mulsN x17,x2,x3,3
sw x17,0(x0)
p.mulhhsN x18,x2,x3,3
sw x18,0(x0)
p.mulsRN x19,x2,x3,3
sw x19,0(x0)
p.mulhhsRN x20,x2,x3,3
sw x20,0(x0)
p.mulu x21,x2,x3
sw x21,0(x0)
p.mulhhu x22,x2,x3
sw x22,0(x0)
p.muluN x23,x2,x3,3
sw x23,0(x0)
p.mulhhu x24,x2,x3
sw x24,0(x0)
p.muluN x25,x2,x3,3
sw x25,0(x0)
p.mulhhuN x26,x2,x3,3
sw x26,0(x0)
p.muluRN x27,x2,x3,3
sw x27,0(x0)
pv.dotusp.h x1,x2,x3
sw x1,0(x0)
pv.dotusp.b x4,x2,x3
sw x4,0(x0)
pv.dotsp.h x5,x2,x3
sw x5,0(x0)
pv.dotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotup.h x5,x2,x3
sw x5,0(x0)
pv.sdotup.b x6,x2,x3
sw x6,0(x0)
pv.sdotusp.h x5,x2,x3
sw x5,0(x0)
pv.sdotusp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.h x5,x2,x3
sw x5,0(x0)
pv.sdotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.sci.h x10,x2,3
sw x10,0(x0)


li x2,0x00FF00FF
li x3,0x00FF00FF
mulh x4,x2,x3
sw x4,0(x0)
mul x5,x2,x3
sw x5,0(x0)
p.mac x6,x2,x3
sw x6,0(x0)
p.macsN x1,x2,x3,3
sw x1,0(x0)
p.machhsN x7,x2,x3,4
sw x7,0(x0)
p.machhsRN x8,x2,x3,3
sw x8,0(x0)
p.macuN x9,x2,x3,4
sw x9,0(x0)
p.machhuN x10,x2,x3,3
sw x10,0(x0)
p.macuRN x11,x2,x3,4
sw x11,0(x0)
p.machhuRN x12,x2,x3,3
sw x12,0(x0)
p.mulhhuRN x13,x2,x3,4
sw x13,0(x0)
p.msu x14,x2,x3
sw x14,0(x0)
p.muls x15,x2,x3
sw x15,0(x0)
p.mulhhs x16,x2,x3
sw x16,0(x0)
p.mulsN x17,x2,x3,3
sw x17,0(x0)
p.mulhhsN x18,x2,x3,3
sw x18,0(x0)
p.mulsRN x19,x2,x3,3
sw x19,0(x0)
p.mulhhsRN x20,x2,x3,3
sw x20,0(x0)
p.mulu x21,x2,x3
sw x21,0(x0)
p.mulhhu x22,x2,x3
sw x22,0(x0)
p.muluN x23,x2,x3,3
sw x23,0(x0)
p.mulhhu x24,x2,x3
sw x24,0(x0)
p.muluN x25,x2,x3,3
sw x25,0(x0)
p.mulhhuN x26,x2,x3,3
sw x26,0(x0)
p.muluRN x27,x2,x3,3
sw x27,0(x0)
pv.dotusp.h x1,x2,x3
sw x1,0(x0)
pv.dotusp.b x4,x2,x3
sw x4,0(x0)
pv.dotsp.h x5,x2,x3
sw x5,0(x0)
pv.dotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotup.h x5,x2,x3
sw x5,0(x0)
pv.sdotup.b x6,x2,x3
sw x6,0(x0)
pv.sdotusp.h x5,x2,x3
sw x5,0(x0)
pv.sdotusp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.h x5,x2,x3
sw x5,0(x0)
pv.sdotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.sci.h x10,x2,3
sw x10,0(x0)


li x2,0xFFFF0000
li x3,0x0000FFFF
mulh x4,x2,x3
sw x4,0(x0)
mul x5,x2,x3
sw x5,0(x0)
p.mac x6,x2,x3
sw x6,0(x0)
p.macsN x1,x2,x3,3
sw x1,0(x0)
p.machhsN x7,x2,x3,4
sw x7,0(x0)
p.machhsRN x8,x2,x3,3
sw x8,0(x0)
p.macuN x9,x2,x3,4
sw x9,0(x0)
p.machhuN x10,x2,x3,3
sw x10,0(x0)
p.macuRN x11,x2,x3,4
sw x11,0(x0)
p.machhuRN x12,x2,x3,3
sw x12,0(x0)
p.mulhhuRN x13,x2,x3,4
sw x13,0(x0)
p.msu x14,x2,x3
sw x14,0(x0)
p.muls x15,x2,x3
sw x15,0(x0)
p.mulhhs x16,x2,x3
sw x16,0(x0)
p.mulsN x17,x2,x3,3
sw x17,0(x0)
p.mulhhsN x18,x2,x3,3
sw x18,0(x0)
p.mulsRN x19,x2,x3,3
sw x19,0(x0)
p.mulhhsRN x20,x2,x3,3
sw x20,0(x0)
p.mulu x21,x2,x3
sw x21,0(x0)
p.mulhhu x22,x2,x3
sw x22,0(x0)
p.muluN x23,x2,x3,3
sw x23,0(x0)
p.mulhhu x24,x2,x3
sw x24,0(x0)
p.muluN x25,x2,x3,3
sw x25,0(x0)
p.mulhhuN x26,x2,x3,3
sw x26,0(x0)
p.muluRN x27,x2,x3,3
sw x27,0(x0)
pv.dotusp.h x1,x2,x3
sw x1,0(x0)
pv.dotusp.b x4,x2,x3
sw x4,0(x0)
pv.dotsp.h x5,x2,x3
sw x5,0(x0)
pv.dotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotup.h x5,x2,x3
sw x5,0(x0)
pv.sdotup.b x6,x2,x3
sw x6,0(x0)
pv.sdotusp.h x5,x2,x3
sw x5,0(x0)
pv.sdotusp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.h x5,x2,x3
sw x5,0(x0)
pv.sdotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.sci.h x10,x2,3
sw x10,0(x0)
pv.shuffle.h x11,x2,x3
sw x11,0(x0)
pv.shuffle.b x12,x2,x3
sw x12,0(x0)

li x30,0

li x2,0xFFFFFFFF
loopmul1:

li x3,0xFFFFFFFF
li x31, 0x11111111

mulh x4,x2,x3
sw x4,0(x0)
mul x5,x2,x3
sw x5,0(x0)
p.mac x6,x2,x3
sw x6,0(x0)
p.macsN x1,x2,x3,3
sw x1,0(x0)
p.machhsN x7,x2,x3,4
sw x7,0(x0)
p.machhsRN x8,x2,x3,3
sw x8,0(x0)
p.macuN x9,x2,x3,4
sw x9,0(x0)
p.machhuN x10,x2,x3,3
sw x10,0(x0)
p.macuRN x11,x2,x3,4
sw x11,0(x0)
p.machhuRN x12,x2,x3,3
sw x12,0(x0)
p.mulhhuRN x13,x2,x3,4
sw x13,0(x0)
p.msu x14,x2,x3
sw x14,0(x0)
p.muls x15,x2,x3
sw x15,0(x0)
p.mulhhs x16,x2,x3
sw x16,0(x0)
p.mulsN x17,x2,x3,3
sw x17,0(x0)
p.mulhhsN x18,x2,x3,3
sw x18,0(x0)
p.mulsRN x19,x2,x3,3
sw x19,0(x0)
p.mulhhsRN x20,x2,x3,3
sw x20,0(x0)
p.mulu x21,x2,x3
sw x21,0(x0)
p.mulhhu x22,x2,x3
sw x22,0(x0)
p.muluN x23,x2,x3,4
sw x23,0(x0)
p.mulhhu x24,x2,x3
sw x24,0(x0)
p.muluN x25,x2,x3,3
sw x25,0(x0)
p.mulhhuN x26,x2,x3,3
sw x26,0(x0)
p.muluRN x27,x2,x3,3
sw x27,0(x0)
pv.dotusp.h x1,x2,x3
sw x1,0(x0)
pv.dotusp.b x4,x2,x3
sw x4,0(x0)
pv.dotsp.h x5,x2,x3
sw x5,0(x0)
pv.dotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotup.h x5,x2,x3
sw x5,0(x0)
pv.sdotup.b x6,x2,x3
sw x6,0(x0)
pv.sdotusp.h x5,x2,x3
sw x5,0(x0)
pv.sdotusp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.h x5,x2,x3
sw x5,0(x0)
pv.sdotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.sci.h x10,x2,3
sw x10,0(x0)

sub x2,x2,x31
nop
nop
nop
bne x2,x30,loopmul1
nop
nop
nop
li x30,0
li x3,0xFFFFFFFF
loopmul2:
li x2,0xFFFFFFFF

li x31, 0x11111111

mulh x4,x2,x3
sw x4,0(x0)
mul x5,x2,x3
sw x5,0(x0)
p.mac x6,x2,x3
sw x6,0(x0)
p.macsN x5,x2,x3,3
sw x1,0(x0)
p.machhsN x7,x2,x3,4
sw x7,0(x0)
p.machhsRN x8,x2,x3,3
sw x8,0(x0)
p.macuN x9,x2,x3,4
sw x9,0(x0)
p.machhuN x10,x2,x3,3
sw x10,0(x0)
p.macuRN x11,x2,x3,4
sw x11,0(x0)
p.machhuRN x12,x2,x3,3
sw x12,0(x0)
p.mulhhuRN x13,x2,x3,4
sw x13,0(x0)
p.msu x14,x2,x3
sw x14,0(x0)
p.muls x15,x2,x3
sw x15,0(x0)
p.mulhhs x16,x2,x3
sw x16,0(x0)
p.mulsN x17,x2,x3,3
sw x17,0(x0)
p.mulhhsN x18,x2,x3,3
sw x18,0(x0)
p.mulsRN x19,x2,x3,3
sw x19,0(x0)
p.mulhhsRN x20,x2,x3,3
sw x20,0(x0)
p.mulu x21,x2,x3
sw x21,0(x0)
p.mulhhu x22,x2,x3
sw x22,0(x0)
p.muluN x23,x2,x3,3
sw x23,0(x0)
p.mulhhu x24,x2,x3
sw x24,0(x0)
p.muluN x25,x2,x3,3
sw x25,0(x0)
p.mulhhuN x26,x2,x3,3
sw x26,0(x0)
p.muluRN x27,x2,x3,3
sw x27,0(x0)
pv.dotusp.h x4,x2,x3
sw x1,0(x0)
pv.dotusp.b x4,x2,x3
sw x4,0(x0)
pv.dotsp.h x5,x2,x3
sw x5,0(x0)
pv.dotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotup.h x5,x2,x3
sw x5,0(x0)
pv.sdotup.b x6,x2,x3
sw x6,0(x0)
pv.sdotusp.h x5,x2,x3
sw x5,0(x0)
pv.sdotusp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.h x5,x2,x3
sw x5,0(x0)
pv.sdotsp.b x6,x2,x3
sw x6,0(x0)
pv.sdotsp.sci.h x10,x2,3
sw x10,0(x0)

sub x3,x3,x31
nop
nop
nop
bne x3,x30,loopmul2
nop
nop

#-----------------------------------END OF THE CODE TO TEST THE MULTIPLIER----------
#---------------------------------- CODE TO TEST THE ALU ---------------------------

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
rem x10,x1,x2
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
 




#---------------------------------------------END OF THE CODE TO TEST THE ALU------------------------------
#---------------------------------------------FIRST PART OF THE CODE TO TEST THE REGISTER FILE UNIT--------
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


#-------------------------------END OF THE FIRST PART OF THE CODE TO TEST THE REGISTER FILE UNIT-----------------------------
#-------------------------------FIRST PART OF THE CODE TO TEST THE HARDWARE LOOP REGISTERS-----------------------------------
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


#-------------------------------END FIRST PART OF THE CODE TO TEST THE HARDWARE LOOP REGISTERS-----------------------------------
#-------------------------------CODE TO TEST CSR---------------------------------------------------------------------------------
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

#-------------------------------END OF THECODE TO TEST CSR---------------------------------------------------------------------------------
#-------------------------------SECOND PART OF THE CODE TO TEST THE REGISTER FILE UNIT-----------------------------------------------------
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

#-------------------------------END OF THE SECOND PART OF THE CODE TO TEST THE REGISTER FILE UNIT-----------------------------------------------------
#-------------------------------SECOND PART OF THE CODE TO TEST THE HARDWARE LOOP REGISTERS-----------------------------------------------------

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

.data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
