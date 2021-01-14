//#include "riscv_test.h"

//#include "test_macros.h"

//RVTEST_RV32U

//RVTEST_CODE_BEGIN

li x31,0x00200000


li x1,0xFFFFFFFF
li x2,0xF0F0F0F0
li x3,0x00000000
li x4,0x0F0F0F0F
li x5,0xAAAAAAAA
li x6,0x55555555

addi x30,x1,0x000
sw x30,100(x31)

//addi x30,x1,0x001
//addi x29,x1,0x2AA
addi x28,x1,0x555
addi x27,x1,0x7FF
//addi x26,x2,0x000
addi x25,x2,0x001
addi x24,x2,0x2AA
addi x23,x2,0x555
addi x22,x2,0x7FF
//addi x21,x3,0x000
addi x20,x3,0x001
addi x19,x3,0x2AA
addi x18,x3,0x555
addi x17,x3,0x7FF
//addi x16,x4,0x000
addi x15,x4,0x001
addi x14,x4,0x2AA
addi x13,x4,0x555
addi x12,x4,0x7FF
addi x11,x5,0x000
addi x10,x5,0x001
addi x9,x5,0x2AA
addi x8,x5,0x555
addi x7,x5,0x7FF
//addi x5,x6,0x000
addi x4,x6,0x001
addi x3,x6,0x2AA
addi x2,x6,0x555
addi x1,x6,0x7FF
//sw x30,104(x31)
//sw x29,108(x31)
sw x28,112(x31)
sw x27,116(x31)
//sw x26,120(x31)
sw x25,124(x31)
sw x24,128(x31)
sw x23,132(x31)
sw x22,136(x31)
//sw x21,140(x31)
sw x20,144(x31)
sw x19,148(x31)
sw x18,152(x31)
sw x17,156(x31)
//sw x16,160(x31)
sw x15,164(x31)
sw x14,168(x31)
sw x13,172(x31)
sw x12,176(x31)
sw x11,180(x31)
sw x10,184(x31)
sw x9,188(x31)
sw x8,192(x31)
sw x7,196(x31)
//sw x5,200(x31)
sw x4,204(x31)
sw x3,208(x31)
sw x2,212(x31)
sw x1,216(x31)


li x1,0xFFFFFFFF
li x2,0x0F0F0F0F
li x3,0x00000000
li x4,0xF0F0F0F0
li x5,0xAAAAAAAA
li x6,0x55555555

andi x30,x1,0x000
sw x30,100(x31)
andi x30,x1,0x001
andi x29,x1,0x2AA
andi x28,x1,0x555
andi x27,x1,0x7FF
andi x26,x2,0x000
andi x25,x2,0x001
andi x24,x2,0x2AA
andi x23,x2,0x555
andi x22,x2,0x7FF
andi x21,x3,0x000
andi x20,x3,0x001
andi x19,x3,0x2AA
andi x18,x3,0x555
andi x17,x3,0x7FF
andi x16,x4,0x000
andi x15,x4,0x001
andi x14,x4,0x2AA
andi x13,x4,0x555
andi x12,x4,0x7FF
andi x11,x5,0x000
andi x10,x5,0x001
andi x9,x5,0x2AA
andi x8,x5,0x555
andi x7,x5,0x7FF
andi x5,x6,0x000
andi x4,x6,0x001
andi x3,x6,0x2AA
andi x2,x6,0x555
andi x1,x6,0x7FF
sw x30,104(x31)
sw x29,108(x31)
sw x28,112(x31)
sw x27,116(x31)
sw x26,120(x31)
sw x25,124(x31)
sw x24,128(x31)
sw x23,132(x31)
sw x22,136(x31)
sw x21,140(x31)
sw x20,144(x31)
sw x19,148(x31)
sw x18,152(x31)
sw x17,156(x31)
sw x16,160(x31)
sw x15,164(x31)
sw x14,168(x31)
sw x13,172(x31)
sw x12,176(x31)
sw x11,180(x31)
sw x10,184(x31)
sw x9,188(x31)
sw x8,192(x31)
sw x7,196(x31)
sw x5,200(x31)
sw x4,204(x31)
sw x3,208(x31)
sw x2,212(x31)
sw x1,216(x31)

li x1,0xFFFFFFFF
li x2,0x0F0F0F0F
li x3,0x00000000
li x4,0xF0F0F0F0
li x5,0xAAAAAAAA
li x6,0x55555555

ori x30,x1,0x000
sw x30,100(x31)
//ori x30,x1,0x001
ori x29,x1,0x2AA
ori x28,x1,0x555
ori x27,x1,0x7FF
ori x26,x2,0x000
//ori x25,x2,0x001
ori x24,x2,0x2AA
ori x23,x2,0x555
ori x22,x2,0x7FF
ori x21,x3,0x000
//ori x20,x3,0x001
ori x19,x3,0x2AA
ori x18,x3,0x555
ori x17,x3,0x7FF
ori x16,x4,0x000
//ori x15,x4,0x001
ori x14,x4,0x2AA
ori x13,x4,0x555
ori x12,x4,0x7FF
ori x11,x5,0x000
//ori x10,x5,0x001
ori x9,x5,0x2AA
ori x8,x5,0x555
ori x7,x5,0x7FF
ori x5,x6,0x000
//ori x4,x6,0x001
ori x3,x6,0x2AA
ori x2,x6,0x555
ori x1,x6,0x7FF
//sw x30,104(x31)
sw x29,108(x31)
sw x28,112(x31)
sw x27,116(x31)
sw x26,120(x31)
//sw x25,124(x31)
sw x24,128(x31)
sw x23,132(x31)
sw x22,136(x31)
sw x21,140(x31)
//sw x20,144(x31)
sw x19,148(x31)
sw x18,152(x31)
sw x17,156(x31)
sw x16,160(x31)
//sw x15,164(x31)
sw x14,168(x31)
sw x13,172(x31)
sw x12,176(x31)
sw x11,180(x31)
//sw x10,184(x31)
sw x9,188(x31)
sw x8,192(x31)
sw x7,196(x31)
sw x5,200(x31)
//sw x4,204(x31)
sw x3,208(x31)
sw x2,212(x31)
sw x1,216(x31)

li x1,0xFFFFFFFF
li x2,0xF0F0F0F0
li x3,0x00000000
li x4,0x0F0F0F0F
li x5,0xAAAAAAAA
li x6,0x55555555

xori x30,x1,0x000
sw x30,100(x31)
xori x30,x1,0x001
xori x29,x1,0x2AA
xori x28,x1,0x555
xori x27,x1,0x7FF
xori x26,x2,0x000
xori x25,x2,0x001
xori x24,x2,0x2AA
xori x23,x2,0x555
xori x22,x2,0x7FF
xori x21,x3,0x000
xori x20,x3,0x001
xori x19,x3,0x2AA
xori x18,x3,0x555
xori x17,x3,0x7FF
xori x16,x4,0x000
xori x15,x4,0x001
xori x14,x4,0x2AA
xori x13,x4,0x555
xori x12,x4,0x7FF
xori x11,x5,0x000
xori x10,x5,0x001
xori x9,x5,0x2AA
xori x8,x5,0x555
xori x7,x5,0x7FF
xori x5,x6,0x000
xori x4,x6,0x001
xori x3,x6,0x2AA
xori x2,x6,0x555
xori x1,x6,0x7FF
sw x30,104(x31)
sw x29,108(x31)
sw x28,112(x31)
sw x27,116(x31)
sw x26,120(x31)
sw x25,124(x31)
sw x24,128(x31)
sw x23,132(x31)
sw x22,136(x31)
sw x21,140(x31)
sw x20,144(x31)
sw x19,148(x31)
sw x18,152(x31)
sw x17,156(x31)
sw x16,160(x31)
sw x15,164(x31)
sw x14,168(x31)
sw x13,172(x31)
sw x12,176(x31)
sw x11,180(x31)
sw x10,184(x31)
sw x9,188(x31)
sw x8,192(x31)
sw x7,196(x31)
sw x5,200(x31)
sw x4,204(x31)
sw x3,208(x31)
sw x2,212(x31)
sw x1,216(x31)

slti x30,x1,0x000
sw x30,100(x31)
slti x30,x1,0x001
slti x29,x1,0x2AA
slti x28,x1,0x555
slti x27,x1,0x7FF
slti x26,x2,0x000
slti x25,x2,0x001
slti x24,x2,0x2AA
slti x23,x2,0x555
slti x22,x2,0x7FF
slti x21,x3,0x000
slti x20,x3,0x001
slti x19,x3,0x2AA
slti x18,x3,0x555
slti x17,x3,0x7FF
slti x16,x4,0x000
slti x15,x4,0x001
slti x14,x4,0x2AA
slti x13,x4,0x555
slti x12,x4,0x7FF
slti x11,x5,0x000
slti x10,x5,0x001
slti x9,x5,0x2AA
slti x8,x5,0x555
slti x7,x5,0x7FF
slti x5,x6,0x000
slti x4,x6,0x001
slti x3,x6,0x2AA
slti x2,x6,0x555
slti x1,x6,0x7FF
sw x30,104(x31)
sw x29,108(x31)
sw x28,112(x31)
sw x27,116(x31)
sw x26,120(x31)
sw x25,124(x31)
sw x24,128(x31)
sw x23,132(x31)
sw x22,136(x31)
sw x21,140(x31)
sw x20,144(x31)
sw x19,148(x31)
sw x18,152(x31)
sw x17,156(x31)
sw x16,160(x31)
sw x15,164(x31)
sw x14,168(x31)
sw x13,172(x31)
sw x12,176(x31)
sw x11,180(x31)
sw x10,184(x31)
sw x9,188(x31)
sw x8,192(x31)
sw x7,196(x31)
sw x5,200(x31)
sw x4,204(x31)
sw x3,208(x31)
sw x2,212(x31)
sw x1,216(x31)

li x1,0xFFFFFFFF
li x2,0xFFFFF800
li x3,0x00000000
li x4,0xFFFFF100
li x5,0xAAAAAAAA
li x6,0x55555555

sltiu x30,x1,0x000
sw x30,100(x31)
sltiu x30,x1,0x001
sltiu x29,x1,0x2AA
sltiu x28,x1,0x555
sltiu x27,x1,0x7FF
sltiu x26,x2,0x000
sltiu x25,x2,0x001
sltiu x24,x2,0x2AA
sltiu x23,x2,0x555
sltiu x22,x2,0x7FF
sltiu x21,x3,0x000
sltiu x20,x3,0x001
sltiu x19,x3,0x2AA
sltiu x18,x3,0x555
sltiu x17,x3,0x7FF
sltiu x16,x4,0x000
sltiu x15,x4,0x001
sltiu x14,x4,0x2AA
sltiu x13,x4,0x555
sltiu x12,x4,0x7FF
sltiu x11,x5,0x000
sltiu x10,x5,0x001
sltiu x9,x5,0x2AA
sltiu x8,x5,0x555
sltiu x7,x5,0x7FF
sltiu x5,x6,0x000
sltiu x4,x6,0x001
sltiu x3,x6,0x2AA
sltiu x2,x6,0x555
sltiu x1,x6,0x7FF
sw x30,104(x31)
sw x29,108(x31)
sw x28,112(x31)
sw x27,116(x31)
sw x26,120(x31)
sw x25,124(x31)
sw x24,128(x31)
sw x23,132(x31)
sw x22,136(x31)
sw x21,140(x31)
sw x20,144(x31)
sw x19,148(x31)
sw x18,152(x31)
sw x17,156(x31)
sw x16,160(x31)
sw x15,164(x31)
sw x14,168(x31)
sw x13,172(x31)
sw x12,176(x31)
sw x11,180(x31)
sw x10,184(x31)
sw x9,188(x31)
sw x8,192(x31)
sw x7,196(x31)
sw x5,200(x31)
sw x4,204(x31)
sw x3,208(x31)
sw x2,212(x31)
sw x1,216(x31)

li x1,0xFFFFFFFF
li x2,0xFFFFF800
li x3,0x00000000
li x4,0xFFFFF100
li x5,0xAAAAAAAA
li x6,0x55555555

srai x30,x1,0x000
sw x30,100(x31)
srai x30,x1,0x001
srai x29,x1,0x005
srai x28,x1,0x00A
srai x27,x1,0x00F
srai x26,x2,0x000
srai x25,x2,0x001
srai x24,x2,0x005
srai x23,x2,0x00A
srai x22,x2,0x00F
srai x21,x3,0x000
srai x20,x3,0x001
srai x19,x3,0x005
srai x18,x3,0x00A
srai x17,x3,0x00F
srai x16,x4,0x000
srai x15,x4,0x001
srai x14,x4,0x005
srai x13,x4,0x00A
srai x12,x4,0x00F
srai x11,x5,0x000
srai x10,x5,0x001
srai x9,x5,0x005
srai x8,x5,0x00A
srai x7,x5,0x00F
srai x5,x6,0x000
srai x4,x6,0x001
srai x3,x6,0x005
srai x2,x6,0x00A
srai x1,x6,0x00F
sw x30,104(x31)
sw x29,108(x31)
sw x28,112(x31)
sw x27,116(x31)
sw x26,120(x31)
sw x25,124(x31)
sw x24,128(x31)
sw x23,132(x31)
sw x22,136(x31)
sw x21,140(x31)
sw x20,144(x31)
sw x19,148(x31)
sw x18,152(x31)
sw x17,156(x31)
sw x16,160(x31)
sw x15,164(x31)
sw x14,168(x31)
sw x13,172(x31)
sw x12,176(x31)
sw x11,180(x31)
sw x10,184(x31)
sw x9,188(x31)
sw x8,192(x31)
sw x7,196(x31)
sw x5,200(x31)
sw x4,204(x31)
sw x3,208(x31)
sw x2,212(x31)
sw x1,216(x31)

li x1,0xFFFFFFFF
li x2,0xFFFFF800
li x3,0x00000000
li x4,0xFFFFF100
li x5,0xAAAAAAAA
li x6,0x55555555

srli x30,x1,0x000
sw x30,100(x31)
srli x30,x1,0x001
srli x29,x1,0x005
srli x28,x1,0x00A
srli x27,x1,0x00F
srli x26,x2,0x000
srli x25,x2,0x001
srli x24,x2,0x005
srli x23,x2,0x00A
srli x22,x2,0x00F
srli x21,x3,0x000
srli x20,x3,0x001
srli x19,x3,0x005
srli x18,x3,0x00A
srli x17,x3,0x00F
srli x16,x4,0x000
srli x15,x4,0x001
srli x14,x4,0x005
srli x13,x4,0x00A
srli x12,x4,0x00F
srli x11,x5,0x000
srli x10,x5,0x001
srli x9,x5,0x005
srli x8,x5,0x00A
srli x7,x5,0x00F
srli x5,x6,0x000
srli x4,x6,0x001
srli x3,x6,0x005
srli x2,x6,0x00A
srli x1,x6,0x00F
sw x30,104(x31)
sw x29,108(x31)
sw x28,112(x31)
sw x27,116(x31)
sw x26,120(x31)
sw x25,124(x31)
sw x24,128(x31)
sw x23,132(x31)
sw x22,136(x31)
sw x21,140(x31)
sw x20,144(x31)
sw x19,148(x31)
sw x18,152(x31)
sw x17,156(x31)
sw x16,160(x31)
sw x15,164(x31)
sw x14,168(x31)
sw x13,172(x31)
sw x12,176(x31)
sw x11,180(x31)
sw x10,184(x31)
sw x9,188(x31)
sw x8,192(x31)
sw x7,196(x31)
sw x5,200(x31)
sw x4,204(x31)
sw x3,208(x31)
sw x2,212(x31)
sw x1,216(x31)

li x1,0xFFFFFFFF
li x2,0xFFFFF800
li x3,0x00000000
li x4,0xFFFFF100
li x5,0xAAAAAAAA
li x6,0x55555555

slli x30,x1,0x000
sw x30,100(x31)
slli x30,x1,0x001
slli x29,x1,0x005
slli x28,x1,0x00A
slli x27,x1,0x00F
slli x26,x2,0x000
slli x25,x2,0x001
slli x24,x2,0x005
slli x23,x2,0x00A
slli x22,x2,0x00F
slli x21,x3,0x000
slli x20,x3,0x001
slli x19,x3,0x005
slli x18,x3,0x00A
slli x17,x3,0x00F
slli x16,x4,0x000
slli x15,x4,0x001
slli x14,x4,0x005
slli x13,x4,0x00A
slli x12,x4,0x00F
slli x11,x5,0x000
slli x10,x5,0x001
slli x9,x5,0x005
slli x8,x5,0x00A
slli x7,x5,0x00F
slli x5,x6,0x000
slli x4,x6,0x001
slli x3,x6,0x005
slli x2,x6,0x00A
slli x1,x6,0x00F
sw x30,104(x31)
sw x29,108(x31)
sw x28,112(x31)
sw x27,116(x31)
sw x26,120(x31)
sw x25,124(x31)
sw x24,128(x31)
sw x23,132(x31)
sw x22,136(x31)
sw x21,140(x31)
sw x20,144(x31)
sw x19,148(x31)
sw x18,152(x31)
sw x17,156(x31)
sw x16,160(x31)
sw x15,164(x31)
sw x14,168(x31)
sw x13,172(x31)
sw x12,176(x31)
sw x11,180(x31)
sw x10,184(x31)
sw x9,188(x31)
sw x8,192(x31)
sw x7,196(x31)
sw x5,200(x31)
sw x4,204(x31)
sw x3,208(x31)
sw x2,212(x31)
sw x1,216(x31)


li x1,0xFFFFFFFF
li x2,0xFFFFF800
li x3,0x00000000
li x4,0xFFFFF100
li x5,0xAAAAAAAA
li x6,0x55555555

lui x30,0x00000
sw x30,100(x31)
lui x30,0x0F0F0
lui x29,0x00FF0
lui x28,0x0F00F
lui x27,0x7FFFF
lui x26,0x10101
lui x25,0x01010
lui x24,0x000FF
lui x23,0x3AFAC
lui x22,0x36472
lui x21,0x5DDDD
lui x20,0x1AAAA
lui x19,0x00001
lui x18,0x00CC0
lui x17,0x0DADA
lui x16,0x07654
lui x15,0x54321
lui x14,0x55555
lui x13,0x5AAAA
lui x12,0x11111
lui x11,0x12323
lui x10,0x33333
lui x9,0x11111
lui x8,0x444DD
lui x7,0x70000
lui x5,0x22222
lui x4,0x2CE89
lui x3,0x2AAAA
lui x2,0x20123
lui x1,0x3C7D1
sw x30,104(x31)
sw x29,108(x31)
sw x28,112(x31)
sw x27,116(x31)
sw x26,120(x31)
sw x25,124(x31)
sw x24,128(x31)
sw x23,132(x31)
sw x22,136(x31)
sw x21,140(x31)
sw x20,144(x31)
sw x19,148(x31)
sw x18,152(x31)
sw x17,156(x31)
sw x16,160(x31)
sw x15,164(x31)
sw x14,168(x31)
sw x13,172(x31)
sw x12,176(x31)
sw x11,180(x31)
sw x10,184(x31)
sw x9,188(x31)
sw x8,192(x31)
sw x7,196(x31)
sw x5,200(x31)
sw x4,204(x31)
sw x3,208(x31)
sw x2,212(x31)
sw x1,216(x31)


auipc x30,0x00000
sw x30,100(x31)
auipc x30,0x0F0F0
auipc x29,0x00FF0
auipc x28,0x0F00F
auipc x27,0x7FFFF
auipc x26,0x10101
auipc x25,0x01010
auipc x24,0x000FF
auipc x23,0x3AFAC
auipc x22,0x36472
auipc x21,0x5DDDD
auipc x20,0x1AAAA
auipc x19,0x00001
auipc x18,0x00CC0
auipc x17,0x0DADA
auipc x16,0x07654
auipc x15,0x54321
auipc x14,0x55555
auipc x13,0x5AAAA
auipc x12,0x11111
auipc x11,0x12323
auipc x10,0x33333
auipc x9,0x11111
auipc x8,0x444DD
auipc x7,0x70000
auipc x5,0x22222
auipc x4,0x2CE89
auipc x3,0x2AAAA
auipc x2,0x20123
auipc x1,0x3C7D1
sw x30,104(x31)
sw x29,108(x31)
sw x28,112(x31)
sw x27,116(x31)
sw x26,120(x31)
sw x25,124(x31)
sw x24,128(x31)
sw x23,132(x31)
sw x22,136(x31)
sw x21,140(x31)
sw x20,144(x31)
sw x19,148(x31)
sw x18,152(x31)
sw x17,156(x31)
sw x16,160(x31)
sw x15,164(x31)
sw x14,168(x31)
sw x13,172(x31)
sw x12,176(x31)
sw x11,180(x31)
sw x10,184(x31)
sw x9,188(x31)
sw x8,192(x31)
sw x7,196(x31)
sw x5,200(x31)
sw x4,204(x31)
sw x3,208(x31)
sw x2,212(x31)
sw x1,216(x31)


li x1,0x00000000
li x2,0x0F0F0F0F
li x3,0xF0F0F0F0
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


and x10,x1,x1
sw x10,0(x31)

and x11,x2,x2
sw x11,4(x31)
and x12,x3,x3
sw x12,8(x31)
and x13,x4,x4
sw x13,12(x31)
and x15,x5,x5
sw x15,16(x31)
and x16,x6,x6
sw x16,20(x31)

and x17,x7,x7
sw x17,24(x31)

and x18,x8,x8
sw x18,28(x31)

and x19,x9,x9
sw x19,32(x31)

and x20,x1,x2
sw x20,36(x31)

and x21,x2,x1
sw x21,40(x31)

and x22,x3,x1
sw x22,44(x31)

and x23,x1,x3
sw x23,48(x31)

and x24,x4,x1
sw x24,52(x31)

and x25,x1,x4
sw x25,56(x31)

and x26,x5,x1
sw x26,60(x31)

and x27,x1,x5
sw x27,64(x31)

and x28,x6,x1
sw x28,68(x31)

and x29,x1,x6
sw x29,72(x31)

and x30,x7,x1
sw x30,76(x31)

and x10,x8,x1
sw x10,84(x31)

and x11,x1,x8
sw x11,88(x31)

and x12,x9,x1
sw x12,92(x31)

and x13,x1,x9
sw x13,96(x31)

and x14,x2,x2
sw x14,100(x31)

and x15,x2,x3
sw x15,104(x31)

and x16,x3,x2
sw x16,108(x31)

and x17,x2,x4
sw x17,112(x31)

and x18,x4,x2
sw x18,116(x31)

and x19,x2,x5
sw x19,120(x31)

and x20,x5,x2
sw x20,124(x31)

and x21,x2,x6
sw x21,128(x31)

and x21,x6,x2
sw x21,132(x31)

and x22,x2,x7
sw x22,136(x31)

and x23,x7,x2
sw x23,140(x31)

and x24,x2,x8
sw x24,144(x31)

and x25,x8,x2
sw x25,148(x31)

and x26,x2,x9
sw x26,152(x31)

and x27,x9,x2
sw x27,156(x31)

and x28,x3,x4
sw x28,160(x31)

and x28,x4,x3
sw x28,164(x31)

and x29,x3,x5
sw x29,168(x31)

and x30,x5,x3
sw x30,172(x31)

and x10,x6,x3
sw x10,180(x31)

and x11,x3,x7
sw x11,184(x31)

and x12,x7,x3
sw x12,188(x31)

and x13,x3,x8
sw x13,192(x31)

and x14,x8,x3
sw x14,196(x31)

and x15,x3,x9
sw x15,200(x31)

and x16,x9,x3
sw x16,204(x31)

and x17,x4,x5
sw x17,208(x31)

and x18,x5,x4
sw x18,212(x31)

and x19,x4,x6
sw x19,216(x31)

and x20,x6,x4
sw x20,220(x31)

and x21,x4,x7
sw x21,224(x31)

and x22,x7,x4
sw x22,228(x31)

and x23,x4,x8
sw x23,232(x31)

and x24,x8,x4
sw x24,236(x31)

and x25,x4,x9
sw x25,240(x31)

and x26,x9,x4
sw x26,244(x31)

and x27,x5,x6
sw x27,248(x31)

and x28,x6,x5
sw x28,252(x31)

and x29,x5,x7
sw x29,256(x31)

and x30,x7,x5
sw x30,260(x31)

and x10,x8,x5
sw x10,268(x31)

and x11,x5,x9
sw x11,272(x31)

and x1,x9,x5
sw x1,276(x31)

and x2,x6,x7
sw x2,280(x31)

and x3,x7,x6
sw x3,284(x31)

and x4,x6,x8
sw x4,288(x31)

and x5,x8,x6
sw x5,292(x31)

and x1,x6,x9
sw x1,296(x31)

and x2,x9,x6
sw x2,300(x31)

and x3,x7,x8
sw x3,304(x31)

and x4,x8,x7
sw x4,308(x31)

and x5,x7,x9
sw x5,312(x31)

and x6,x9,x7
sw x6,316(x31)

and x7,x8,x9
sw x7,320(x31)

and x8,x9,x8
sw x8,324(x31)

and x1,x1,x1
//sw x1,328(x31)

and x2,x2,x2
sw x2,332(x31)

and x3,x3,x3
sw x3,336(x31)

and x4,x4,x4
sw x4,340(x31)

and x5,x5,x5
sw x5,344(x31)

and x6,x6,x6
sw x6,348(x31)

and x7,x7,x7
sw x7,352(x31)

and x8,x8,x8
sw x8,356(x31)

and x9,x9,x9
sw x9,360(x31)

and x10,x10,x10
sw x10,364(x31)

and x11,x11,x11
sw x11,368(x31)

and x12,x12,x12
sw x12,372(x31)

and x13,x13,x13
sw x13,376(x31)

and x14,x14,x14
sw x14,380(x31)

and x15,x15,x15
sw x15,384(x31)

and x16,x16,x16
sw x16,388(x31)

and x17,x17,x17
sw x17,392(x31)

and x18,x18,x18
sw x18,396(x31)

and x19,x19,x19
sw x19,400(x31)

and x20,x20,x20
sw x20,404(x31)

and x21,x21,x21
sw x21,408(x31)

and x22,x22,x22
sw x22,412(x31)

and x23,x23,x23
sw x23,416(x31)

and x24,x24,x24
sw x24,420(x31)

and x25,x25,x25
sw x25,424(x31)

and x26,x26,x26
sw x26,428(x31)

and x27,x27,x27
sw x27,432(x31)

and x28,x28,x28
sw x28,436(x31)

and x29,x29,x29
sw x29,440(x31)

and x30,x30,x30
sw x30,444(x31)

and x30,x1,x7
sw x30,80(x31)

and x30,x3,x6
sw x30,176(x31)

and x30,x5,x8
sw x30,264(x31)

and x30,x30,x30
sw x30,448(x31)

/*
li x1,0x00000000
li x2,0x0F0F0F0F
li x3,0xF0F0F0F0
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


add x10,x1,x1
sw x10,0(x31)

add x11,x2,x2
sw x11,4(x31)

add x12,x3,x3
sw x12,8(x31)

add x13,x4,x4
sw x13,12(x31)

add x15,x5,x5
sw x15,16(x31)

add x16,x6,x6
sw x16,20(x31)

add x17,x7,x7
sw x17,24(x31)

add x18,x8,x8
sw x18,28(x31)

add x19,x9,x9
sw x19,32(x31)

add x20,x1,x2
sw x20,36(x31)

add x21,x2,x1
sw x21,40(x31)

add x22,x3,x1
sw x22,44(x31)

add x23,x1,x3
sw x23,48(x31)

add x24,x4,x1
sw x24,52(x31)

add x25,x1,x4
sw x25,56(x31)

add x26,x5,x1
sw x26,60(x31)

add x27,x1,x5
sw x27,64(x31)

add x28,x6,x1
sw x28,68(x31)

add x29,x1,x6
sw x29,72(x31)

add x30,x7,x1
sw x30,76(x31)

add x10,x8,x1
sw x10,84(x31)

add x11,x1,x8
sw x11,88(x31)

add x12,x9,x1
sw x12,92(x31)

add x13,x1,x9
sw x13,96(x31)

add x14,x2,x2
sw x14,100(x31)

add x15,x2,x3
sw x15,104(x31)

add x16,x3,x2
sw x16,108(x31)

add x17,x2,x4
sw x17,112(x31)

add x18,x4,x2
sw x18,116(x31)

add x19,x2,x5
sw x19,120(x31)

add x20,x5,x2
sw x20,124(x31)

add x21,x2,x6
sw x21,128(x31)

add x21,x6,x2
sw x21,132(x31)

add x22,x2,x7
sw x22,136(x31)

add x23,x7,x2
sw x23,140(x31)

add x24,x2,x8
sw x24,144(x31)

add x25,x8,x2
sw x25,148(x31)

add x26,x2,x9
sw x26,152(x31)

add x27,x9,x2
sw x27,156(x31)

add x28,x3,x4
sw x28,160(x31)

add x28,x4,x3
sw x28,164(x31)

add x29,x3,x5
sw x29,168(x31)

add x30,x5,x3
sw x30,172(x31)

add x10,x6,x3
sw x10,180(x31)

add x11,x3,x7
sw x11,184(x31)

add x12,x7,x3
sw x12,188(x31)

add x13,x3,x8
sw x13,192(x31)

add x14,x8,x3
sw x14,196(x31)

add x15,x3,x9
sw x15,200(x31)

add x16,x9,x3
sw x16,204(x31)

add x17,x4,x5
sw x17,208(x31)

add x18,x5,x4
sw x18,212(x31)

add x19,x4,x6
sw x19,216(x31)

add x20,x6,x4
sw x20,220(x31)

add x21,x4,x7
sw x21,224(x31)

add x22,x7,x4
sw x22,228(x31)

add x23,x4,x8
sw x23,232(x31)

add x24,x8,x4
sw x24,236(x31)

add x25,x4,x9
sw x25,240(x31)

add x26,x9,x4
sw x26,244(x31)

add x27,x5,x6
sw x27,248(x31)

add x28,x6,x5
sw x28,252(x31)

add x29,x5,x7
sw x29,256(x31)

add x30,x7,x5
sw x30,260(x31)

add x10,x8,x5
sw x10,268(x31)

add x11,x5,x9
sw x11,272(x31)

add x1,x9,x5
sw x1,276(x31)

add x2,x6,x7
sw x2,280(x31)

add x3,x7,x6
sw x3,284(x31)

add x4,x6,x8
sw x4,288(x31)

add x5,x8,x6
sw x5,292(x31)

add x1,x6,x9
sw x1,296(x31)

add x2,x9,x6
sw x2,300(x31)

add x3,x7,x8
sw x3,304(x31)

add x4,x8,x7
sw x4,308(x31)

add x5,x7,x9
sw x5,312(x31)

add x6,x9,x7
sw x6,316(x31)

add x7,x8,x9
sw x7,320(x31)

add x8,x9,x8
sw x8,324(x31)

add x1,x1,x1
sw x1,324(x31)

add x2,x2,x2
sw x2,332(x31)

add x3,x3,x3
sw x3,336(x31)

add x4,x4,x4
sw x4,340(x31)

add x5,x5,x5
sw x5,344(x31)

add x6,x6,x6
sw x6,348(x31)

add x7,x7,x7
sw x7,352(x31)

add x8,x8,x8
sw x8,356(x31)

add x9,x9,x9
sw x9,360(x31)

add x10,x10,x10
sw x10,364(x31)

add x11,x11,x11
sw x11,368(x31)

add x12,x12,x12
sw x12,372(x31)

add x13,x13,x13
sw x13,376(x31)

add x14,x14,x14
sw x14,380(x31)

add x15,x15,x15
sw x15,384(x31)

add x16,x16,x16
sw x16,388(x31)

add x17,x17,x17
sw x17,392(x31)

add x18,x18,x18
sw x18,396(x31)

add x19,x19,x19
sw x19,400(x31)

add x20,x20,x20
sw x20,404(x31)

add x21,x21,x21
sw x21,408(x31)

add x22,x22,x22
sw x22,412(x31)

add x23,x23,x23
sw x23,416(x31)

add x24,x24,x24
sw x24,420(x31)

add x25,x25,x25
sw x25,424(x31)

add x26,x26,x26
sw x26,428(x31)

add x27,x27,x27
sw x27,432(x31)

add x28,x28,x28
sw x28,436(x31)

add x29,x29,x29
sw x29,440(x31)

add x30,x30,x30
sw x30,444(x31)

add x30,x1,x7
sw x30,80(x31)

add x30,x3,x6
sw x30,176(x31)

add x30,x5,x8
sw x30,264(x31)

add x30,x30,x30
sw x30,448(x31)





li x1,0x00000000
li x2,0xF0F0F0F0
li x3,0x0F0F0F0F
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


or x10,x1,x1
sw x10,0(x31)

or x11,x2,x2
sw x11,4(x31)

or x12,x3,x3
sw x12,8(x31)

or x13,x4,x4
sw x13,12(x31)

or x15,x5,x5
sw x15,16(x31)

or x16,x6,x6
sw x16,20(x31)

or x17,x7,x7
sw x17,24(x31)

or x18,x8,x8
sw x18,28(x31)

or x19,x9,x9
sw x19,32(x31)

or x20,x1,x2
sw x20,36(x31)

or x21,x2,x1
sw x21,40(x31)

or x22,x3,x1
sw x22,44(x31)

or x23,x1,x3
sw x23,48(x31)

or x24,x4,x1
sw x24,52(x31)

or x25,x1,x4
sw x25,56(x31)

or x26,x5,x1
sw x26,60(x31)

or x27,x1,x5
sw x27,64(x31)

or x28,x6,x1
sw x28,68(x31)

or x29,x1,x6
sw x29,72(x31)

or x30,x7,x1
sw x30,76(x31)

or x10,x8,x1
sw x10,84(x31)

or x11,x1,x8
sw x11,88(x31)

or x12,x9,x1
sw x12,92(x31)

or x13,x1,x9
sw x13,96(x31)

or x14,x2,x2
sw x14,100(x31)

or x15,x2,x3
sw x15,104(x31)

or x16,x3,x2
sw x16,108(x31)

or x17,x2,x4
sw x17,112(x31)

or x18,x4,x2
sw x18,116(x31)

or x19,x2,x5
sw x19,120(x31)

or x20,x5,x2
sw x20,124(x31)

or x21,x2,x6
sw x21,128(x31)

or x21,x6,x2
sw x21,132(x31)

or x22,x2,x7
sw x22,136(x31)

or x23,x7,x2
sw x23,140(x31)

or x24,x2,x8
sw x24,144(x31)

or x25,x8,x2
sw x25,148(x31)

or x26,x2,x9
sw x26,152(x31)

or x27,x9,x2
sw x27,156(x31)

or x28,x3,x4
sw x28,160(x31)

or x28,x4,x3
sw x28,164(x31)

or x29,x3,x5
sw x29,168(x31)

or x30,x5,x3
sw x30,172(x31)


or x10,x6,x3
sw x10,180(x31)

or x11,x3,x7
sw x11,184(x31)

or x12,x7,x3
sw x12,188(x31)

or x13,x3,x8
sw x13,192(x31)

or x14,x8,x3
sw x14,196(x31)

or x15,x3,x9
sw x15,200(x31)

or x16,x9,x3
sw x16,204(x31)

or x17,x4,x5
sw x17,208(x31)

or x18,x5,x4
sw x18,212(x31)

or x19,x4,x6
sw x19,216(x31)

or x20,x6,x4
sw x20,220(x31)

or x21,x4,x7
sw x21,224(x31)

or x22,x7,x4
sw x22,228(x31)

or x23,x4,x8
sw x23,232(x31)

or x24,x8,x4
sw x24,236(x31)

or x25,x4,x9
sw x25,240(x31)

or x26,x9,x4
sw x26,244(x31)

or x27,x5,x6
sw x27,248(x31)

or x28,x6,x5
sw x28,252(x31)

or x29,x5,x7
sw x29,256(x31)

or x30,x7,x5
sw x30,260(x31)

or x10,x8,x5
sw x10,268(x31)

or x11,x5,x9
sw x11,272(x31)

or x1,x9,x5
sw x1,276(x31)

or x2,x6,x7
sw x2,280(x31)

or x3,x7,x6
sw x3,284(x31)

or x4,x6,x8
sw x4,288(x31)

or x5,x8,x6
sw x5,292(x31)

or x1,x6,x9
sw x1,296(x31)

or x2,x9,x6
sw x2,300(x31)

or x3,x7,x8
sw x3,304(x31)

or x4,x8,x7
sw x4,308(x31)

or x5,x7,x9
sw x5,312(x31)

or x6,x9,x7
sw x6,316(x31)

or x7,x8,x9
sw x7,320(x31)

or x8,x9,x8
sw x8,324(x31)

or x1,x1,x1
sw x1,328(x31)

or x2,x2,x2
sw x2,332(x31)

or x3,x3,x3
sw x3,336(x31)

or x4,x4,x4
sw x4,340(x31)

or x5,x5,x5
sw x5,344(x31)

or x6,x6,x6
sw x6,348(x31)

or x7,x7,x7
sw x7,352(x31)

or x8,x8,x8
sw x8,356(x31)

or x9,x9,x9
sw x9,360(x31)

or x10,x10,x10
sw x10,364(x31)

or x11,x11,x11
sw x11,368(x31)

or x12,x12,x12
sw x12,372(x31)

or x13,x13,x13
sw x13,376(x31)

or x14,x14,x14
sw x14,380(x31)

or x15,x15,x15
sw x15,384(x31)

or x16,x16,x16
sw x16,388(x31)

or x17,x17,x17
sw x17,392(x31)

or x18,x18,x18
sw x18,396(x31)

or x19,x19,x19
sw x19,400(x31)

or x20,x20,x20
sw x20,404(x31)

or x21,x21,x21
sw x21,408(x31)

or x22,x22,x22
sw x22,412(x31)

or x23,x23,x23
sw x23,416(x31)

or x24,x24,x24
sw x24,420(x31)

or x25,x25,x25
sw x25,424(x31)

or x26,x26,x26
sw x26,428(x31)

or x27,x27,x27
sw x27,432(x31)

or x28,x28,x28
sw x28,436(x31)

or x29,x29,x29
sw x29,440(x31)

or x30,x30,x30
sw x30,444(x31)

or x30,x1,x7
sw x30,80(x31)

or x30,x3,x6
sw x30,176(x31)

or x30,x5,x8
sw x30,264(x31)

or x30,x30,x30
sw x30,448(x31)








li x1,0x00000000
li x2,0xF0F0F0F0
li x3,0x0F0F0F0F
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


sll x10,x1,x1
sw x10,0(x31)

sll x11,x2,x2
sw x11,4(x31)

sll x12,x3,x3
sw x12,8(x31)

sll x13,x4,x4
sw x13,12(x31)

sll x15,x5,x5
sw x15,16(x31)

sll x16,x6,x6
sw x16,20(x31)

sll x17,x7,x7
sw x17,24(x31)

sll x18,x8,x8
sw x18,28(x31)

sll x19,x9,x9
sw x19,32(x31)

sll x20,x1,x2
sw x20,36(x31)

sll x21,x2,x1
sw x21,40(x31)

sll x22,x3,x1
sw x22,44(x31)

sll x23,x1,x3
sw x23,48(x31)

sll x24,x4,x1
sw x24,52(x31)

sll x25,x1,x4
sw x25,56(x31)

sll x26,x5,x1
sw x26,60(x31)

sll x27,x1,x5
sw x27,64(x31)

sll x28,x6,x1
sw x28,68(x31)

sll x29,x1,x6
sw x29,72(x31)

sll x30,x7,x1
sw x30,76(x31)

sll x10,x8,x1
sw x10,84(x31)

sll x11,x1,x8
sw x11,88(x31)

sll x12,x9,x1
sw x12,92(x31)

sll x13,x1,x9
sw x13,96(x31)

sll x14,x2,x2
sw x14,100(x31)

sll x15,x2,x3
sw x15,104(x31)

sll x16,x3,x2
sw x16,108(x31)

sll x17,x2,x4
sw x17,112(x31)

sll x18,x4,x2
sw x18,116(x31)

sll x19,x2,x5
sw x19,120(x31)

sll x20,x5,x2
sw x20,124(x31)

sll x21,x2,x6
sw x21,128(x31)

sll x21,x6,x2
sw x21,132(x31)

sll x22,x2,x7
sw x22,136(x31)

sll x23,x7,x2
sw x23,140(x31)

sll x24,x2,x8
sw x24,144(x31)

sll x25,x8,x2
sw x25,148(x31)

sll x26,x2,x9
sw x26,152(x31)

sll x27,x9,x2
sw x27,156(x31)

sll x28,x3,x4
sw x28,160(x31)

sll x28,x4,x3
sw x28,164(x31)

sll x29,x3,x5
sw x29,168(x31)

sll x30,x5,x3
sw x30,172(x31)

sll x10,x6,x3
sw x10,180(x31)

sll x11,x3,x7
sw x11,184(x31)

sll x12,x7,x3
sw x12,188(x31)

sll x13,x3,x8
sw x13,192(x31)

sll x14,x8,x3
sw x14,196(x31)

sll x15,x3,x9
sw x15,200(x31)

sll x16,x9,x3
sw x16,204(x31)

sll x17,x4,x5
sw x17,208(x31)

sll x18,x5,x4
sw x18,212(x31)

sll x19,x4,x6
sw x19,216(x31)

sll x20,x6,x4
sw x20,220(x31)

sll x21,x4,x7
sw x21,224(x31)

sll x22,x7,x4
sw x22,228(x31)

sll x23,x4,x8
sw x23,232(x31)

sll x24,x8,x4
sw x24,236(x31)

sll x25,x4,x9
sw x25,240(x31)

sll x26,x9,x4
sw x26,244(x31)

sll x27,x5,x6
sw x27,248(x31)

sll x28,x6,x5
sw x28,252(x31)

sll x29,x5,x7
sw x29,256(x31)

sll x30,x7,x5
sw x30,260(x31)

sll x10,x8,x5
sw x10,268(x31)

sll x11,x5,x9
sw x11,272(x31)

sll x1,x9,x5
sw x1,276(x31)

sll x2,x6,x7
sw x2,280(x31)

sll x3,x7,x6
sw x3,284(x31)

sll x4,x6,x8
sw x4,288(x31)

sll x5,x8,x6
sw x5,292(x31)

sll x1,x6,x9
sw x1,296(x31)

sll x2,x9,x6
sw x2,300(x31)

sll x3,x7,x8
sw x3,304(x31)

sll x4,x8,x7
sw x4,308(x31)

sll x5,x7,x9
sw x5,312(x31)

sll x6,x9,x7
sw x6,316(x31)

sll x7,x8,x9
sw x7,320(x31)

sll x8,x9,x8
sw x8,324(x31)

sll x1,x1,x1
sw x1,328(x31)

sll x2,x2,x2
sw x2,332(x31)

sll x3,x3,x3
sw x3,336(x31)

sll x4,x4,x4
sw x4,340(x31)

sll x5,x5,x5
sw x5,344(x31)

sll x6,x6,x6
sw x6,348(x31)

sll x7,x7,x7
sw x7,352(x31)

sll x8,x8,x8
sw x8,356(x31)

sll x9,x9,x9
sw x9,360(x31)

sll x10,x10,x10
sw x10,364(x31)

sll x11,x11,x11
sw x11,368(x31)

sll x12,x12,x12
sw x12,372(x31)

sll x13,x13,x13
sw x13,376(x31)

sll x14,x14,x14
sw x14,380(x31)

sll x15,x15,x15
sw x15,384(x31)

sll x16,x16,x16
sw x16,388(x31)

sll x17,x17,x17
sw x17,392(x31)

sll x18,x18,x18
sw x18,396(x31)

sll x19,x19,x19
sw x19,400(x31)

sll x20,x20,x20
sw x20,404(x31)

sll x21,x21,x21
sw x21,408(x31)

sll x22,x22,x22
sw x22,412(x31)

sll x23,x23,x23
sw x23,416(x31)

sll x24,x24,x24
sw x24,420(x31)

sll x25,x25,x25
sw x25,424(x31)

sll x26,x26,x26
sw x26,428(x31)

sll x27,x27,x27
sw x27,432(x31)

sll x28,x28,x28
sw x28,436(x31)

sll x29,x29,x29
sw x29,440(x31)

sll x30,x30,x30
sw x30,444(x31)

sll x30,x1,x7
sw x30,80(x31)

sll x30,x3,x6
sw x30,176(x31)

sll x30,x5,x8
sw x30,264(x31)

sll x30,x30,x30
sw x30,448(x31)






li x1,0x00000000
li x2,0xF0F0F0F0
li x3,0x0F0F0F0F
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


slt x10,x1,x1
sw x10,0(x31)

slt x11,x2,x2
sw x11,4(x31)

slt x12,x3,x3
sw x12,8(x31)

slt x13,x4,x4
sw x13,12(x31)

slt x15,x5,x5
sw x15,16(x31)

slt x16,x6,x6
sw x16,20(x31)

slt x17,x7,x7
sw x17,24(x31)

slt x18,x8,x8
sw x18,28(x31)

slt x19,x9,x9
sw x19,32(x31)

slt x20,x1,x2
sw x20,36(x31)

slt x21,x2,x1
sw x21,40(x31)

slt x22,x3,x1
sw x22,44(x31)

slt x23,x1,x3
sw x23,48(x31)

slt x24,x4,x1
sw x24,52(x31)

slt x25,x1,x4
sw x25,56(x31)

slt x26,x5,x1
sw x26,60(x31)

slt x27,x1,x5
sw x27,64(x31)

slt x28,x6,x1
sw x28,68(x31)

slt x29,x1,x6
sw x29,72(x31)

slt x30,x7,x1
sw x30,76(x31)

slt x10,x8,x1
sw x10,84(x31)

slt x11,x1,x8
sw x11,88(x31)

slt x12,x9,x1
sw x12,92(x31)

slt x13,x1,x9
sw x13,96(x31)

slt x14,x2,x2
sw x14,100(x31)

slt x15,x2,x3
sw x15,104(x31)

slt x16,x3,x2
sw x16,108(x31)

slt x17,x2,x4
sw x17,112(x31)

slt x18,x4,x2
sw x18,116(x31)

slt x19,x2,x5
sw x19,120(x31)

slt x20,x5,x2
sw x20,124(x31)

slt x21,x2,x6
sw x21,128(x31)

slt x21,x6,x2
sw x21,132(x31)

slt x22,x2,x7
sw x22,136(x31)

slt x23,x7,x2
sw x23,140(x31)

slt x24,x2,x8
sw x24,144(x31)

slt x25,x8,x2
sw x25,148(x31)

slt x26,x2,x9
sw x26,152(x31)

slt x27,x9,x2
sw x27,156(x31)

slt x28,x3,x4
sw x28,160(x31)

slt x28,x4,x3
sw x28,164(x31)

slt x29,x3,x5
sw x29,168(x31)

slt x30,x5,x3
sw x30,172(x31)



slt x10,x6,x3
sw x10,180(x31)

slt x11,x3,x7
sw x11,184(x31)

slt x12,x7,x3
sw x12,188(x31)

slt x13,x3,x8
sw x13,192(x31)

slt x14,x8,x3
sw x14,196(x31)

slt x15,x3,x9
sw x15,200(x31)

slt x16,x9,x3
sw x16,204(x31)

slt x17,x4,x5
sw x17,208(x31)

slt x18,x5,x4
sw x18,212(x31)

slt x19,x4,x6
sw x19,216(x31)

slt x20,x6,x4
sw x20,220(x31)

slt x21,x4,x7
sw x21,224(x31)

slt x22,x7,x4
sw x22,228(x31)

slt x23,x4,x8
sw x23,232(x31)

slt x24,x8,x4
sw x24,236(x31)

slt x25,x4,x9
sw x25,240(x31)

slt x26,x9,x4
sw x26,244(x31)

slt x27,x5,x6
sw x27,248(x31)

slt x28,x6,x5
sw x28,252(x31)

slt x29,x5,x7
sw x29,256(x31)

slt x30,x7,x5
sw x30,260(x31)


slt x10,x8,x5
sw x10,268(x31)

slt x11,x5,x9
sw x11,272(x31)

slt x1,x9,x5
sw x1,276(x31)

slt x2,x6,x7
sw x2,280(x31)

slt x3,x7,x6
sw x3,284(x31)

slt x4,x6,x8
sw x4,288(x31)

slt x5,x8,x6
sw x5,292(x31)

slt x1,x6,x9
sw x1,296(x31)

slt x2,x9,x6
sw x2,300(x31)

slt x3,x7,x8
sw x3,304(x31)

slt x4,x8,x7
sw x4,308(x31)

slt x5,x7,x9
sw x5,312(x31)

slt x6,x9,x7
sw x6,316(x31)

slt x7,x8,x9
sw x7,320(x31)

slt x8,x9,x8
sw x8,324(x31)

slt x1,x1,x1
sw x1,328(x31)

slt x2,x2,x2
sw x2,332(x31)

slt x3,x3,x3
sw x3,336(x31)

slt x4,x4,x4
sw x4,340(x31)

slt x5,x5,x5
sw x5,344(x31)

slt x6,x6,x6
sw x6,348(x31)

slt x7,x7,x7
sw x7,352(x31)

slt x8,x8,x8
sw x8,356(x31)

slt x9,x9,x9
sw x9,360(x31)

slt x10,x10,x10
sw x10,364(x31)

slt x11,x11,x11
sw x11,368(x31)

slt x12,x12,x12
sw x12,372(x31)

slt x13,x13,x13
sw x13,376(x31)

slt x14,x14,x14
sw x14,380(x31)

slt x15,x15,x15
sw x15,384(x31)

slt x16,x16,x16
sw x16,388(x31)

slt x17,x17,x17
sw x17,392(x31)

slt x18,x18,x18
sw x18,396(x31)

slt x19,x19,x19
sw x19,400(x31)

slt x20,x20,x20
sw x20,404(x31)

slt x21,x21,x21
sw x21,408(x31)

slt x22,x22,x22
sw x22,412(x31)

slt x23,x23,x23
sw x23,416(x31)

slt x24,x24,x24
sw x24,420(x31)

slt x25,x25,x25
sw x25,424(x31)

slt x26,x26,x26
sw x26,428(x31)

slt x27,x27,x27
sw x27,432(x31)

slt x28,x28,x28
sw x28,436(x31)

slt x29,x29,x29
sw x29,440(x31)

slt x30,x30,x30
sw x30,444(x31)

slt x30,x1,x7
sw x30,80(x31)

slt x30,x3,x6
sw x30,176(x31)

slt x30,x5,x8
sw x30,264(x31)

slt x30,x30,x30
sw x30,448(x31)





li x1,0x00000000
li x2,0xF0F0F0F0
li x3,0x0F0F0F0F
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


sltu x10,x1,x1
sw x10,0(x31)

sltu x11,x2,x2
sw x11,4(x31)

sltu x12,x3,x3
sw x12,8(x31)

sltu x13,x4,x4
sw x13,12(x31)

sltu x15,x5,x5
sw x15,16(x31)

sltu x16,x6,x6
sw x16,20(x31)

sltu x17,x7,x7
sw x17,24(x31)

sltu x18,x8,x8
sw x18,28(x31)

sltu x19,x9,x9
sw x19,32(x31)

sltu x20,x1,x2
sw x20,36(x31)

sltu x21,x2,x1
sw x21,40(x31)

sltu x22,x3,x1
sw x22,44(x31)

sltu x23,x1,x3
sw x23,48(x31)

sltu x24,x4,x1
sw x24,52(x31)

sltu x25,x1,x4
sw x25,56(x31)

sltu x26,x5,x1
sw x26,60(x31)

sltu x27,x1,x5
sw x27,64(x31)

sltu x28,x6,x1
sw x28,68(x31)

sltu x29,x1,x6
sw x29,72(x31)

sltu x30,x7,x1
sw x30,76(x31)

sltu x10,x8,x1
sw x10,84(x31)

sltu x11,x1,x8
sw x11,88(x31)

sltu x12,x9,x1
sw x12,92(x31)

sltu x13,x1,x9
sw x13,96(x31)

sltu x14,x2,x2
sw x14,100(x31)

sltu x15,x2,x3
sw x15,104(x31)

sltu x16,x3,x2
sw x16,108(x31)

sltu x17,x2,x4
sw x17,112(x31)

sltu x18,x4,x2
sw x18,116(x31)

sltu x19,x2,x5
sw x19,120(x31)

sltu x20,x5,x2
sw x20,124(x31)

sltu x21,x2,x6
sw x21,128(x31)

sltu x21,x6,x2
sw x21,132(x31)

sltu x22,x2,x7
sw x22,136(x31)

sltu x23,x7,x2
sw x23,140(x31)

sltu x24,x2,x8
sw x24,144(x31)

sltu x25,x8,x2
sw x25,148(x31)

sltu x26,x2,x9
sw x26,152(x31)

sltu x27,x9,x2
sw x27,156(x31)

sltu x28,x3,x4
sw x28,160(x31)

sltu x28,x4,x3
sw x28,164(x31)

sltu x29,x3,x5
sw x29,168(x31)

sltu x30,x5,x3
sw x30,172(x31)

sltu x10,x6,x3
sw x10,180(x31)

sltu x11,x3,x7
sw x11,184(x31)

sltu x12,x7,x3
sw x12,188(x31)

sltu x13,x3,x8
sw x13,192(x31)

sltu x14,x8,x3
sw x14,196(x31)

sltu x15,x3,x9
sw x15,200(x31)

sltu x16,x9,x3
sw x16,204(x31)

sltu x17,x4,x5
sw x17,208(x31)

sltu x18,x5,x4
sw x18,212(x31)

sltu x19,x4,x6
sw x19,216(x31)

sltu x20,x6,x4
sw x20,220(x31)

sltu x21,x4,x7
sw x21,224(x31)

sltu x22,x7,x4
sw x22,228(x31)

sltu x23,x4,x8
sw x23,232(x31)

sltu x24,x8,x4
sw x24,236(x31)

sltu x25,x4,x9
sw x25,240(x31)

sltu x26,x9,x4
sw x26,244(x31)

sltu x27,x5,x6
sw x27,248(x31)

sltu x28,x6,x5
sw x28,252(x31)

sltu x29,x5,x7
sw x29,256(x31)

sltu x30,x7,x5
sw x30,260(x31)

sltu x10,x8,x5
sw x10,268(x31)

sltu x11,x5,x9
sw x11,272(x31)

sltu x1,x9,x5
sw x1,276(x31)

sltu x2,x6,x7
sw x2,280(x31)

sltu x3,x7,x6
sw x3,284(x31)

sltu x4,x6,x8
sw x4,288(x31)

sltu x5,x8,x6
sw x5,292(x31)

sltu x1,x6,x9
sw x1,296(x31)

sltu x2,x9,x6
sw x2,300(x31)

sltu x3,x7,x8
sw x3,304(x31)

sltu x4,x8,x7
sw x4,308(x31)

sltu x5,x7,x9
sw x5,312(x31)

sltu x6,x9,x7
sw x6,316(x31)

sltu x7,x8,x9
sw x7,320(x31)

sltu x8,x9,x8
sw x8,324(x31)

sltu x1,x1,x1
sw x1,328(x31)

sltu x2,x2,x2
sw x2,332(x31)

sltu x3,x3,x3
sw x3,336(x31)

sltu x4,x4,x4
sw x4,340(x31)

sltu x5,x5,x5
sw x5,344(x31)

sltu x6,x6,x6
sw x6,348(x31)

sltu x7,x7,x7
sw x7,352(x31)

sltu x8,x8,x8
sw x8,356(x31)

sltu x9,x9,x9
sw x9,360(x31)

sltu x10,x10,x10
sw x10,364(x31)

sltu x11,x11,x11
sw x11,368(x31)

sltu x12,x12,x12
sw x12,372(x31)

sltu x13,x13,x13
sw x13,376(x31)

sltu x14,x14,x14
sw x14,380(x31)

sltu x15,x15,x15
sw x15,384(x31)

sltu x16,x16,x16
sw x16,388(x31)

sltu x17,x17,x17
sw x17,392(x31)

sltu x18,x18,x18
sw x18,396(x31)

sltu x19,x19,x19
sw x19,400(x31)

sltu x20,x20,x20
sw x20,404(x31)

sltu x21,x21,x21
sw x21,408(x31)

sltu x22,x22,x22
sw x22,412(x31)

sltu x23,x23,x23
sw x23,416(x31)

sltu x24,x24,x24
sw x24,420(x31)

sltu x25,x25,x25
sw x25,424(x31)

sltu x26,x26,x26
sw x26,428(x31)

sltu x27,x27,x27
sw x27,432(x31)

sltu x28,x28,x28
sw x28,436(x31)

sltu x29,x29,x29
sw x29,440(x31)

sltu x30,x30,x30
sw x30,444(x31)

sltu x30,x1,x7
sw x30,80(x31)

sltu x30,x3,x6
sw x30,176(x31)

sltu x30,x5,x8
sw x30,264(x31)

sltu x30,x30,x30
sw x30,448(x31)



li x1,0x00000000
li x2,0xF0F0F0F0
li x3,0x0F0F0F0F
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


sub x10,x1,x1
sw x10,0(x31)

sub x11,x2,x2
sw x11,4(x31)

sub x12,x3,x3
sw x12,8(x31)

sub x13,x4,x4
sw x13,12(x31)

sub x15,x5,x5
sw x15,16(x31)

sub x16,x6,x6
sw x16,20(x31)

sub x17,x7,x7
sw x17,24(x31)

sub x18,x8,x8
sw x18,28(x31)

sub x19,x9,x9
sw x19,32(x31)

sub x20,x1,x2
sw x20,36(x31)

sub x21,x2,x1
sw x21,40(x31)

sub x22,x3,x1
sw x22,44(x31)

sub x23,x1,x3
sw x23,48(x31)

sub x24,x4,x1
sw x24,52(x31)

sub x25,x1,x4
sw x25,56(x31)

sub x26,x5,x1
sw x26,60(x31)

sub x27,x1,x5
sw x27,64(x31)

sub x28,x6,x1
sw x28,68(x31)

sub x29,x1,x6
sw x29,72(x31)

sub x30,x7,x1
sw x30,76(x31)

sub x10,x8,x1
sw x10,84(x31)

sub x11,x1,x8
sw x11,88(x31)

sub x12,x9,x1
sw x12,92(x31)

sub x13,x1,x9
sw x13,96(x31)

sub x14,x2,x2
sw x14,100(x31)

sub x15,x2,x3
sw x15,104(x31)

sub x16,x3,x2
sw x16,108(x31)

sub x17,x2,x4
sw x17,112(x31)

sub x18,x4,x2
sw x18,116(x31)

sub x19,x2,x5
sw x19,120(x31)

sub x20,x5,x2
sw x20,124(x31)

sub x21,x2,x6
sw x21,128(x31)

sub x21,x6,x2
sw x21,132(x31)

sub x22,x2,x7
sw x22,136(x31)

sub x23,x7,x2
sw x23,140(x31)

sub x24,x2,x8
sw x24,144(x31)

sub x25,x8,x2
sw x25,148(x31)

sub x26,x2,x9
sw x26,152(x31)

sub x27,x9,x2
sw x27,156(x31)

sub x28,x3,x4
sw x28,160(x31)

sub x28,x4,x3
sw x28,164(x31)

sub x29,x3,x5
sw x29,168(x31)

sub x30,x5,x3
sw x30,172(x31)

sub x10,x6,x3
sw x10,180(x31)

sub x11,x3,x7
sw x11,184(x31)

sub x12,x7,x3
sw x12,188(x31)

sub x13,x3,x8
sw x13,192(x31)

sub x14,x8,x3
sw x14,196(x31)

sub x15,x3,x9
sw x15,200(x31)

sub x16,x9,x3
sw x16,204(x31)

sub x17,x4,x5
sw x17,208(x31)

sub x18,x5,x4
sw x18,212(x31)

sub x19,x4,x6
sw x19,216(x31)

sub x20,x6,x4
sw x20,220(x31)

sub x21,x4,x7
sw x21,224(x31)

sub x22,x7,x4
sw x22,228(x31)

sub x23,x4,x8
sw x23,232(x31)

sub x24,x8,x4
sw x24,236(x31)

sub x25,x4,x9
sw x25,240(x31)

sub x26,x9,x4
sw x26,244(x31)

sub x27,x5,x6
sw x27,248(x31)

sub x28,x6,x5
sw x28,252(x31)

sub x29,x5,x7
sw x29,256(x31)

sub x30,x7,x5
sw x30,260(x31)

sub x10,x8,x5
sw x10,268(x31)

sub x11,x5,x9
sw x11,272(x31)

sub x1,x9,x5
sw x1,276(x31)

sub x2,x6,x7
sw x2,280(x31)

sub x3,x7,x6
sw x3,284(x31)

sub x4,x6,x8
sw x4,288(x31)

sub x5,x8,x6
sw x5,292(x31)

sub x1,x6,x9
sw x1,296(x31)

sub x2,x9,x6
sw x2,300(x31)

sub x3,x7,x8
sw x3,304(x31)

sub x4,x8,x7
sw x4,308(x31)

sub x5,x7,x9
sw x5,312(x31)

sub x6,x9,x7
sw x6,316(x31)

sub x7,x8,x9
sw x7,320(x31)

sub x8,x9,x8
sw x8,324(x31)

sub x1,x1,x1
sw x1,328(x31)

sub x2,x2,x2
sw x2,332(x31)

sub x3,x3,x3
sw x3,336(x31)

sub x4,x4,x4
sw x4,340(x31)

sub x5,x5,x5
sw x5,344(x31)

sub x6,x6,x6
sw x6,348(x31)

sub x7,x7,x7
sw x7,352(x31)

sub x8,x8,x8
sw x8,356(x31)

sub x9,x9,x9
sw x9,360(x31)

sub x10,x10,x10
sw x10,364(x31)

sub x11,x11,x11
sw x11,368(x31)

sub x12,x12,x12
sw x12,372(x31)

sub x13,x13,x13
sw x13,376(x31)

sub x14,x14,x14
sw x14,380(x31)

sub x15,x15,x15
sw x15,384(x31)

sub x16,x16,x16
sw x16,388(x31)

sub x17,x17,x17
sw x17,392(x31)

sub x18,x18,x18
sw x18,396(x31)

sub x19,x19,x19
sw x19,400(x31)

sub x20,x20,x20
sw x20,404(x31)

sub x21,x21,x21
sw x21,408(x31)

sub x22,x22,x22
sw x22,412(x31)

sub x23,x23,x23
sw x23,416(x31)

sub x24,x24,x24
sw x24,420(x31)

sub x25,x25,x25
sw x25,424(x31)

sub x26,x26,x26
sw x26,428(x31)

sub x27,x27,x27
sw x27,432(x31)

sub x28,x28,x28
sw x28,436(x31)

sub x29,x29,x29
sw x29,440(x31)

sub x30,x30,x30
sw x30,444(x31)

sub x30,x1,x7
sw x30,80(x31)

sub x30,x3,x6
sw x30,176(x31)

sub x30,x5,x8
sw x30,264(x31)

sub x30,x30,x30
sw x30,448(x31)



li x1,0x00000000
li x2,0x0F0F0F0F
li x3,0xF0F0F0F0
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


xor x10,x1,x1
sw x10,0(x31)

xor x11,x2,x2
sw x11,4(x31)

xor x12,x3,x3
sw x12,8(x31)

xor x13,x4,x4
sw x13,12(x31)

xor x15,x5,x5
sw x15,16(x31)

xor x16,x6,x6
sw x16,20(x31)

xor x17,x7,x7
sw x17,24(x31)

xor x18,x8,x8
sw x18,28(x31)

xor x19,x9,x9
sw x19,32(x31)

xor x20,x1,x2
sw x20,36(x31)

xor x21,x2,x1
sw x21,40(x31)

xor x22,x3,x1
sw x22,44(x31)

xor x23,x1,x3
sw x23,48(x31)

xor x24,x4,x1
sw x24,52(x31)

xor x25,x1,x4
sw x25,56(x31)

xor x26,x5,x1
sw x26,60(x31)

xor x27,x1,x5
sw x27,64(x31)

xor x28,x6,x1
sw x28,68(x31)

xor x29,x1,x6
sw x29,72(x31)

xor x30,x7,x1
sw x30,76(x31)

xor x10,x8,x1
sw x10,84(x31)

xor x11,x1,x8
sw x11,88(x31)

xor x12,x9,x1
sw x12,92(x31)

xor x13,x1,x9
sw x13,96(x31)

xor x14,x2,x2
sw x14,100(x31)

xor x15,x2,x3
sw x15,104(x31)

xor x16,x3,x2
sw x16,108(x31)

xor x17,x2,x4
sw x17,112(x31)

xor x18,x4,x2
sw x18,116(x31)

xor x19,x2,x5
sw x19,120(x31)

xor x20,x5,x2
sw x20,124(x31)

xor x21,x2,x6
sw x21,128(x31)

xor x21,x6,x2
sw x21,132(x31)

xor x22,x2,x7
sw x22,136(x31)

xor x23,x7,x2
sw x23,140(x31)

xor x24,x2,x8
sw x24,144(x31)

xor x25,x8,x2
sw x25,148(x31)

xor x26,x2,x9
sw x26,152(x31)

xor x27,x9,x2
sw x27,156(x31)

xor x28,x3,x4
sw x28,160(x31)

xor x28,x4,x3
sw x28,164(x31)

xor x29,x3,x5
sw x29,168(x31)

xor x30,x5,x3
sw x30,172(x31)

xor x10,x6,x3
sw x10,180(x31)

xor x11,x3,x7
sw x11,184(x31)

xor x12,x7,x3
sw x12,188(x31)

xor x13,x3,x8
sw x13,192(x31)

xor x14,x8,x3
sw x14,196(x31)

xor x15,x3,x9
sw x15,200(x31)

xor x16,x9,x3
sw x16,204(x31)

xor x17,x4,x5
sw x17,208(x31)

xor x18,x5,x4
sw x18,212(x31)

xor x19,x4,x6
sw x19,216(x31)

xor x20,x6,x4
sw x20,220(x31)

xor x21,x4,x7
sw x21,224(x31)

xor x22,x7,x4
sw x22,228(x31)

xor x23,x4,x8
sw x23,232(x31)

xor x24,x8,x4
sw x24,236(x31)

xor x25,x4,x9
sw x25,240(x31)

xor x26,x9,x4
sw x26,244(x31)

xor x27,x5,x6
sw x27,248(x31)

xor x28,x6,x5
sw x28,252(x31)

xor x29,x5,x7
sw x29,256(x31)

xor x30,x7,x5
sw x30,260(x31)

xor x10,x8,x5
sw x10,268(x31)

xor x11,x5,x9
sw x11,272(x31)

xor x1,x9,x5
sw x1,276(x31)

xor x2,x6,x7
sw x2,280(x31)

xor x3,x7,x6
sw x3,284(x31)

xor x4,x6,x8
sw x4,288(x31)

xor x5,x8,x6
sw x5,292(x31)

xor x1,x6,x9
sw x1,296(x31)

xor x2,x9,x6
sw x2,300(x31)

xor x3,x7,x8
sw x3,304(x31)

xor x4,x8,x7
sw x4,308(x31)

xor x5,x7,x9
sw x5,312(x31)

xor x6,x9,x7
sw x6,316(x31)

xor x7,x8,x9
sw x7,320(x31)

xor x8,x9,x8
sw x8,324(x31)

xor x1,x1,x1
sw x1,328(x31)

xor x2,x2,x2
sw x2,332(x31)

xor x3,x3,x3
sw x3,336(x31)

xor x4,x4,x4
sw x4,340(x31)

xor x5,x5,x5
sw x5,344(x31)

xor x6,x6,x6
sw x6,348(x31)

xor x7,x7,x7
sw x7,352(x31)

xor x8,x8,x8
sw x8,356(x31)

xor x9,x9,x9
sw x9,360(x31)

xor x10,x10,x10
sw x10,364(x31)

xor x11,x11,x11
sw x11,368(x31)

xor x12,x12,x12
sw x12,372(x31)

xor x13,x13,x13
sw x13,376(x31)

xor x14,x14,x14
sw x14,380(x31)

xor x15,x15,x15
sw x15,384(x31)

xor x16,x16,x16
sw x16,388(x31)

xor x17,x17,x17
sw x17,392(x31)

xor x18,x18,x18
sw x18,396(x31)

xor x19,x19,x19
sw x19,400(x31)

xor x20,x20,x20
sw x20,404(x31)

xor x21,x21,x21
sw x21,408(x31)

xor x22,x22,x22
sw x22,412(x31)

xor x23,x23,x23
sw x23,416(x31)

xor x24,x24,x24
sw x24,420(x31)

xor x25,x25,x25
sw x25,424(x31)

xor x26,x26,x26
sw x26,428(x31)

xor x27,x27,x27
sw x27,432(x31)

xor x28,x28,x28
sw x28,436(x31)

xor x29,x29,x29
sw x29,440(x31)

xor x30,x30,x30
sw x30,444(x31)

xor x30,x1,x7
sw x30,80(x31)

xor x30,x3,x6
sw x30,176(x31)

xor x30,x5,x8
sw x30,264(x31)

xor x30,x30,x30
sw x30,448(x31)




li x1,0x00000000
li x2,0xFFFF0000
li x3,0x0000FFFF
li x4,0x0F0F0F0F
li x5,0xF0F0F0F0
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


sra x10,x1,x1
sw x10,0(x31)

//sra x11,x2,x2
//sw x11,4(x31)

sra x12,x3,x3
sw x12,8(x31)

sra x13,x4,x4
sw x13,12(x31)

sra x15,x5,x5
sw x15,16(x31)

sra x16,x6,x6
sw x16,20(x31)

sra x17,x7,x7
sw x17,24(x31)

sra x18,x8,x8
sw x18,28(x31)

sra x19,x9,x9
sw x19,32(x31)

sra x20,x1,x2
sw x20,36(x31)

sra x21,x2,x1
sw x21,40(x31)

sra x22,x3,x1
sw x22,44(x31)

sra x23,x1,x3
sw x23,48(x31)

sra x24,x4,x1
sw x24,52(x31)

sra x25,x1,x4
sw x25,56(x31)

sra x26,x5,x1
sw x26,60(x31)

sra x27,x1,x5
sw x27,64(x31)

sra x28,x6,x1
sw x28,68(x31)

sra x29,x1,x6
sw x29,72(x31)

sra x30,x7,x1
sw x30,76(x31)

sra x10,x8,x1
sw x10,84(x31)

sra x11,x1,x8
sw x11,88(x31)

sra x12,x9,x1
sw x12,92(x31)

sra x13,x1,x9
sw x13,96(x31)

sra x14,x2,x2
sw x14,100(x31)

sra x15,x2,x3
sw x15,104(x31)

sra x16,x3,x2
sw x16,108(x31)

sra x17,x2,x4
sw x17,112(x31)

sra x18,x4,x2
sw x18,116(x31)

sra x19,x2,x5
sw x19,120(x31)

sra x20,x5,x2
sw x20,124(x31)

sra x21,x2,x6
sw x21,128(x31)

sra x21,x6,x2
sw x21,132(x31)

sra x22,x2,x7
sw x22,136(x31)

sra x23,x7,x2
sw x23,140(x31)

sra x24,x2,x8
sw x24,144(x31)

sra x25,x8,x2
sw x25,148(x31)

sra x26,x2,x9
sw x26,152(x31)

sra x27,x9,x2
sw x27,156(x31)

sra x28,x3,x4
sw x28,160(x31)

sra x28,x4,x3
sw x28,164(x31)

sra x29,x3,x5
sw x29,168(x31)

sra x30,x5,x3
sw x30,172(x31)

sra x10,x6,x3
sw x10,180(x31)

sra x11,x3,x7
sw x11,184(x31)

sra x12,x7,x3
sw x12,188(x31)

sra x13,x3,x8
sw x13,192(x31)

sra x14,x8,x3
sw x14,196(x31)

sra x15,x3,x9
sw x15,200(x31)

sra x16,x9,x3
sw x16,204(x31)

sra x17,x4,x5
sw x17,208(x31)

sra x18,x5,x4
sw x18,212(x31)

sra x19,x4,x6
sw x19,216(x31)

sra x20,x6,x4
sw x20,220(x31)

sra x21,x4,x7
sw x21,224(x31)

sra x22,x7,x4
sw x22,228(x31)

sra x23,x4,x8
sw x23,232(x31)

sra x24,x8,x4
sw x24,236(x31)

sra x25,x4,x9
sw x25,240(x31)

sra x26,x9,x4
sw x26,244(x31)

sra x27,x5,x6
sw x27,248(x31)

sra x28,x6,x5
sw x28,252(x31)

sra x29,x5,x7
sw x29,256(x31)

sra x30,x7,x5
sw x30,260(x31)

sra x10,x8,x5
sw x10,268(x31)

sra x11,x5,x9
sw x11,272(x31)

sra x1,x9,x5
sw x1,276(x31)

sra x2,x6,x7
sw x2,280(x31)

sra x3,x7,x6
sw x3,284(x31)

sra x4,x6,x8
sw x4,288(x31)

sra x5,x8,x6
sw x5,292(x31)

sra x1,x6,x9
sw x1,296(x31)

sra x2,x9,x6
sw x2,300(x31)

sra x3,x7,x8
sw x3,304(x31)

sra x4,x8,x7
sw x4,308(x31)

sra x5,x7,x9
sw x5,312(x31)

sra x6,x9,x7
sw x6,316(x31)

sra x7,x8,x9
sw x7,320(x31)

sra x8,x9,x8
sw x8,324(x31)

sra x1,x1,x1
sw x1,328(x31)

sra x2,x2,x2
sw x2,332(x31)

sra x3,x3,x3
sw x3,336(x31)

sra x4,x4,x4
sw x4,340(x31)

sra x5,x5,x5
sw x5,344(x31)

sra x6,x6,x6
sw x6,348(x31)

sra x7,x7,x7
sw x7,352(x31)

sra x8,x8,x8
sw x8,356(x31)

sra x9,x9,x9
sw x9,360(x31)

sra x10,x10,x10
sw x10,364(x31)

sra x11,x11,x11
sw x11,368(x31)

sra x12,x12,x12
sw x12,372(x31)

sra x13,x13,x13
sw x13,376(x31)

sra x14,x14,x14
sw x14,380(x31)

sra x15,x15,x15
sw x15,384(x31)

sra x16,x16,x16
sw x16,388(x31)

sra x17,x17,x17
sw x17,392(x31)

sra x18,x18,x18
sw x18,396(x31)

sra x19,x19,x19
sw x19,400(x31)

sra x20,x20,x20
sw x20,404(x31)

sra x21,x21,x21
sw x21,408(x31)

sra x22,x22,x22
sw x22,412(x31)

sra x23,x23,x23
sw x23,416(x31)

sra x24,x24,x24
sw x24,420(x31)

sra x25,x25,x25
sw x25,424(x31)

sra x26,x26,x26
sw x26,428(x31)

sra x27,x27,x27
sw x27,432(x31)

sra x28,x28,x28
sw x28,436(x31)

sra x29,x29,x29
sw x29,440(x31)

sra x30,x30,x30
sw x30,444(x31)

sra x30,x1,x7
sw x30,80(x31)

sra x30,x3,x6
sw x30,176(x31)

sra x30,x5,x8
sw x30,264(x31)

sra x30,x30,x30
sw x30,448(x31)



li x1,0x00000000
li x2,0x00000001
li x3,0x0000FFFF
li x4,0x0F0F0F0F
li x5,0xF0F0F0F0
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


srl x10,x1,x1
sw x10,0(x31)

srl x11,x2,x2
sw x11,4(x31)

srl x12,x3,x3
sw x12,8(x31)

srl x13,x4,x4
sw x13,12(x31)

srl x15,x5,x5
sw x15,16(x31)

srl x16,x6,x6
sw x16,20(x31)

srl x17,x7,x7
sw x17,24(x31)

srl x18,x8,x8
sw x18,28(x31)

srl x19,x9,x9
sw x19,32(x31)

srl x20,x1,x2
sw x20,36(x31)

srl x21,x2,x1
sw x21,40(x31)

srl x22,x3,x1
sw x22,44(x31)

srl x23,x1,x3
sw x23,48(x31)

srl x24,x4,x1
sw x24,52(x31)

srl x25,x1,x4
sw x25,56(x31)

srl x26,x5,x1
sw x26,60(x31)

srl x27,x1,x5
sw x27,64(x31)

srl x28,x6,x1
sw x28,68(x31)

srl x29,x1,x6
sw x29,72(x31)

srl x30,x7,x1
sw x30,76(x31)

srl x10,x8,x1
sw x10,84(x31)

srl x11,x1,x8
sw x11,88(x31)

srl x12,x9,x1
sw x12,92(x31)

srl x13,x1,x9
sw x13,96(x31)

srl x14,x2,x2
sw x14,100(x31)

srl x15,x2,x3
sw x15,104(x31)

srl x16,x3,x2
sw x16,108(x31)

srl x17,x2,x4
sw x17,112(x31)

srl x18,x4,x2
sw x18,116(x31)

srl x19,x2,x5
sw x19,120(x31)

srl x20,x5,x2
sw x20,124(x31)

srl x21,x2,x6
sw x21,128(x31)

srl x21,x6,x2
sw x21,132(x31)

srl x22,x2,x7
sw x22,136(x31)

srl x23,x7,x2
sw x23,140(x31)

srl x24,x2,x8
sw x24,144(x31)

srl x25,x8,x2
sw x25,148(x31)

srl x26,x2,x9
sw x26,152(x31)

srl x27,x9,x2
sw x27,156(x31)

srl x28,x3,x4
sw x28,160(x31)

srl x28,x4,x3
sw x28,164(x31)

srl x29,x3,x5
sw x29,168(x31)

srl x30,x5,x3
sw x30,172(x31)

srl x10,x6,x3
sw x10,180(x31)

srl x11,x3,x7
sw x11,184(x31)

srl x12,x7,x3
sw x12,188(x31)

srl x13,x3,x8
sw x13,192(x31)

srl x14,x8,x3
sw x14,196(x31)

srl x15,x3,x9
sw x15,200(x31)

srl x16,x9,x3
sw x16,204(x31)

srl x17,x4,x5
sw x17,208(x31)

srl x18,x5,x4
sw x18,212(x31)

srl x19,x4,x6
sw x19,216(x31)

srl x20,x6,x4
sw x20,220(x31)

srl x21,x4,x7
sw x21,224(x31)

srl x22,x7,x4
sw x22,228(x31)

srl x23,x4,x8
sw x23,232(x31)

srl x24,x8,x4
sw x24,236(x31)

srl x25,x4,x9
sw x25,240(x31)

srl x26,x9,x4
sw x26,244(x31)

srl x27,x5,x6
sw x27,248(x31)

srl x28,x6,x5
sw x28,252(x31)

srl x29,x5,x7
sw x29,256(x31)

srl x30,x7,x5
sw x30,260(x31)

srl x10,x8,x5
sw x10,268(x31)

srl x11,x5,x9
sw x11,272(x31)

srl x1,x9,x5
sw x1,276(x31)

srl x2,x6,x7
sw x2,280(x31)

srl x3,x7,x6
sw x3,284(x31)

srl x4,x6,x8
sw x4,288(x31)

srl x5,x8,x6
sw x5,292(x31)

srl x1,x6,x9
sw x1,296(x31)

srl x2,x9,x6
sw x2,300(x31)

srl x3,x7,x8
sw x3,304(x31)

srl x4,x8,x7
sw x4,308(x31)

srl x5,x7,x9
sw x5,312(x31)

srl x6,x9,x7
sw x6,316(x31)

srl x7,x8,x9
sw x7,320(x31)

srl x8,x9,x8
sw x8,324(x31)

srl x1,x1,x1
sw x1,328(x31)

srl x2,x2,x2
sw x2,332(x31)

srl x3,x3,x3
sw x3,336(x31)

srl x4,x4,x4
sw x4,340(x31)

srl x5,x5,x5
sw x5,344(x31)

srl x6,x6,x6
sw x6,348(x31)

srl x7,x7,x7
sw x7,352(x31)

srl x8,x8,x8
sw x8,356(x31)

srl x9,x9,x9
sw x9,360(x31)

srl x10,x10,x10
sw x10,364(x31)

srl x11,x11,x11
sw x11,368(x31)

srl x12,x12,x12
sw x12,372(x31)

srl x13,x13,x13
sw x13,376(x31)

srl x14,x14,x14
sw x14,380(x31)

srl x15,x15,x15
sw x15,384(x31)

srl x16,x16,x16
sw x16,388(x31)

srl x17,x17,x17
sw x17,392(x31)

srl x18,x18,x18
sw x18,396(x31)

srl x19,x19,x19
sw x19,400(x31)

srl x20,x20,x20
sw x20,404(x31)

srl x21,x21,x21
sw x21,408(x31)

srl x22,x22,x22
sw x22,412(x31)

srl x23,x23,x23
sw x23,416(x31)

srl x24,x24,x24
sw x24,420(x31)

srl x25,x25,x25
sw x25,424(x31)

srl x26,x26,x26
sw x26,428(x31)

srl x27,x27,x27
sw x27,432(x31)

srl x28,x28,x28
sw x28,436(x31)

srl x29,x29,x29
sw x29,440(x31)

srl x30,x30,x30
sw x30,444(x31)

srl x30,x1,x7
sw x30,80(x31)

srl x30,x3,x6
sw x30,176(x31)

srl x30,x5,x8
sw x30,264(x31)

srl x30,x30,x30
sw x30,448(x31)






li x1,0x00000000
li x2,0xF0F0F0F0
li x3,0x0F0F0F0F
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


div x10,x1,x1
sw x10,0(x31)

div x11,x2,x2
sw x11,4(x31)

div x12,x3,x3
sw x12,8(x31)

div x13,x4,x4
sw x13,12(x31)

div x15,x5,x5
sw x15,16(x31)

div x16,x6,x6
sw x16,20(x31)

div x17,x7,x7
sw x17,24(x31)

div x18,x8,x8
sw x18,28(x31)

div x19,x9,x9
sw x19,32(x31)

div x20,x1,x2
sw x20,36(x31)

div x21,x2,x1
sw x21,40(x31)

div x22,x3,x1
sw x22,44(x31)

div x23,x1,x3
sw x23,48(x31)

div x24,x4,x1
sw x24,52(x31)

div x25,x1,x4
sw x25,56(x31)

div x26,x5,x1
sw x26,60(x31)

div x27,x1,x5
sw x27,64(x31)

div x28,x6,x1
sw x28,68(x31)

div x29,x1,x6
sw x29,72(x31)

div x30,x7,x1
sw x30,76(x31)

div x10,x8,x1
sw x10,84(x31)

div x11,x1,x8
sw x11,88(x31)

div x12,x9,x1
sw x12,92(x31)

div x13,x1,x9
sw x13,96(x31)

div x14,x2,x2
sw x14,100(x31)

div x15,x2,x3
sw x15,104(x31)

div x16,x3,x2
sw x16,108(x31)

div x17,x2,x4
sw x17,112(x31)

div x18,x4,x2
sw x18,116(x31)

div x19,x2,x5
sw x19,120(x31)

div x20,x5,x2
sw x20,124(x31)

div x21,x2,x6
sw x21,128(x31)

div x21,x6,x2
sw x21,132(x31)

div x22,x2,x7
sw x22,136(x31)

div x23,x7,x2
sw x23,140(x31)

div x24,x2,x8
sw x24,144(x31)

div x25,x8,x2
sw x25,148(x31)

div x26,x2,x9
sw x26,152(x31)

div x27,x9,x2
sw x27,156(x31)

div x28,x3,x4
sw x28,160(x31)

div x28,x4,x3
sw x28,164(x31)

div x29,x3,x5
sw x29,168(x31)

div x30,x5,x3
sw x30,172(x31)

div x10,x6,x3
sw x10,180(x31)

div x11,x3,x7
sw x11,184(x31)

div x12,x7,x3
sw x12,188(x31)

div x13,x3,x8
sw x13,192(x31)

div x14,x8,x3
sw x14,196(x31)

div x15,x3,x9
sw x15,200(x31)

div x16,x9,x3
sw x16,204(x31)

div x17,x4,x5
sw x17,208(x31)

div x18,x5,x4
sw x18,212(x31)

div x19,x4,x6
sw x19,216(x31)

div x20,x6,x4
sw x20,220(x31)

div x21,x4,x7
sw x21,224(x31)

div x22,x7,x4
sw x22,228(x31)

div x23,x4,x8
sw x23,232(x31)

div x24,x8,x4
sw x24,236(x31)

div x25,x4,x9
sw x25,240(x31)

div x26,x9,x4
sw x26,244(x31)

div x27,x5,x6
sw x27,248(x31)

div x28,x6,x5
sw x28,252(x31)

div x29,x5,x7
sw x29,256(x31)

div x30,x7,x5
sw x30,260(x31)

div x10,x8,x5
sw x10,268(x31)

div x11,x5,x9
sw x11,272(x31)

div x1,x9,x5
sw x1,276(x31)

div x2,x6,x7
sw x2,280(x31)

div x3,x7,x6
sw x3,284(x31)

div x4,x6,x8
sw x4,288(x31)

div x5,x8,x6
sw x5,292(x31)

div x1,x6,x9
sw x1,296(x31)

div x2,x9,x6
sw x2,300(x31)

div x3,x7,x8
sw x3,304(x31)

div x4,x8,x7
sw x4,308(x31)

div x5,x7,x9
sw x5,312(x31)

div x6,x9,x7
sw x6,316(x31)

div x7,x8,x9
sw x7,320(x31)

div x8,x9,x8
sw x8,324(x31)

div x1,x1,x1
sw x1,328(x31)

div x2,x2,x2
sw x2,332(x31)

div x3,x3,x3
sw x3,336(x31)

div x4,x4,x4
sw x4,340(x31)

div x5,x5,x5
sw x5,344(x31)

div x6,x6,x6
sw x6,348(x31)

div x7,x7,x7
sw x7,352(x31)

div x8,x8,x8
sw x8,356(x31)

div x9,x9,x9
sw x9,360(x31)

div x10,x10,x10
sw x10,364(x31)

div x11,x11,x11
sw x11,368(x31)

div x12,x12,x12
sw x12,372(x31)

div x13,x13,x13
sw x13,376(x31)

div x14,x14,x14
sw x14,380(x31)

div x15,x15,x15
sw x15,384(x31)

div x16,x16,x16
sw x16,388(x31)

div x17,x17,x17
sw x17,392(x31)

div x18,x18,x18
sw x18,396(x31)

div x19,x19,x19
sw x19,400(x31)

div x20,x20,x20
sw x20,404(x31)

div x21,x21,x21
sw x21,408(x31)

div x22,x22,x22
sw x22,412(x31)

div x23,x23,x23
sw x23,416(x31)

div x24,x24,x24
sw x24,420(x31)

div x25,x25,x25
sw x25,424(x31)

div x26,x26,x26
sw x26,428(x31)

div x27,x27,x27
sw x27,432(x31)

div x28,x28,x28
sw x28,436(x31)

div x29,x29,x29
sw x29,440(x31)

div x30,x30,x30
sw x30,444(x31)

div x30,x1,x7
sw x30,80(x31)

div x30,x3,x6
sw x30,176(x31)

div x30,x5,x8
sw x30,264(x31)

div x30,x30,x30
sw x30,448(x31)



li x1,0x00000000
li x2,0xF0F0F0F0
li x3,0x0F0F0F0F
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


divu x10,x1,x1
sw x10,0(x31)

divu x11,x2,x2
sw x11,4(x31)

divu x12,x3,x3
sw x12,8(x31)

divu x13,x4,x4
sw x13,12(x31)

divu x15,x5,x5
sw x15,16(x31)

divu x16,x6,x6
sw x16,20(x31)

divu x17,x7,x7
sw x17,24(x31)

divu x18,x8,x8
sw x18,28(x31)

divu x19,x9,x9
sw x19,32(x31)

divu x20,x1,x2
sw x20,36(x31)

divu x21,x2,x1
sw x21,40(x31)

divu x22,x3,x1
sw x22,44(x31)

divu x23,x1,x3
sw x23,48(x31)

divu x24,x4,x1
sw x24,52(x31)

divu x25,x1,x4
sw x25,56(x31)

divu x26,x5,x1
sw x26,60(x31)

divu x27,x1,x5
sw x27,64(x31)

divu x28,x6,x1
sw x28,68(x31)

divu x29,x1,x6
sw x29,72(x31)

divu x30,x7,x1
sw x30,76(x31)

divu x10,x8,x1
sw x10,84(x31)

divu x11,x1,x8
sw x11,88(x31)

divu x12,x9,x1
sw x12,92(x31)

divu x13,x1,x9
sw x13,96(x31)

divu x14,x2,x2
sw x14,100(x31)

divu x15,x2,x3
sw x15,104(x31)

divu x16,x3,x2
sw x16,108(x31)

divu x17,x2,x4
sw x17,112(x31)

divu x18,x4,x2
sw x18,116(x31)

divu x19,x2,x5
sw x19,120(x31)

divu x20,x5,x2
sw x20,124(x31)

divu x21,x2,x6
sw x21,128(x31)

divu x21,x6,x2
sw x21,132(x31)

divu x22,x2,x7
sw x22,136(x31)

divu x23,x7,x2
sw x23,140(x31)

divu x24,x2,x8
sw x24,144(x31)

divu x25,x8,x2
sw x25,148(x31)

divu x26,x2,x9
sw x26,152(x31)

divu x27,x9,x2
sw x27,156(x31)

divu x28,x3,x4
sw x28,160(x31)

divu x28,x4,x3
sw x28,164(x31)

divu x29,x3,x5
sw x29,168(x31)

divu x30,x5,x3
sw x30,172(x31)

divu x10,x6,x3
sw x10,180(x31)

divu x11,x3,x7
sw x11,184(x31)

divu x12,x7,x3
sw x12,188(x31)

divu x13,x3,x8
sw x13,192(x31)

divu x14,x8,x3
sw x14,196(x31)

divu x15,x3,x9
sw x15,200(x31)

divu x16,x9,x3
sw x16,204(x31)

divu x17,x4,x5
sw x17,208(x31)

divu x18,x5,x4
sw x18,212(x31)

divu x19,x4,x6
sw x19,216(x31)

divu x20,x6,x4
sw x20,220(x31)

divu x21,x4,x7
sw x21,224(x31)

divu x22,x7,x4
sw x22,228(x31)

divu x23,x4,x8
sw x23,232(x31)

divu x24,x8,x4
sw x24,236(x31)

divu x25,x4,x9
sw x25,240(x31)

divu x26,x9,x4
sw x26,244(x31)

divu x27,x5,x6
sw x27,248(x31)

divu x28,x6,x5
sw x28,252(x31)

divu x29,x5,x7
sw x29,256(x31)

divu x30,x7,x5
sw x30,260(x31)

divu x10,x8,x5
sw x10,268(x31)

divu x11,x5,x9
sw x11,272(x31)

divu x1,x9,x5
sw x1,276(x31)

divu x2,x6,x7
sw x2,280(x31)

divu x3,x7,x6
sw x3,284(x31)

divu x4,x6,x8
sw x4,288(x31)

divu x5,x8,x6
sw x5,292(x31)

divu x1,x6,x9
sw x1,296(x31)

divu x2,x9,x6
sw x2,300(x31)

divu x3,x7,x8
sw x3,304(x31)

divu x4,x8,x7
sw x4,308(x31)

divu x5,x7,x9
sw x5,312(x31)

divu x6,x9,x7
sw x6,316(x31)

divu x7,x8,x9
sw x7,320(x31)

divu x8,x9,x8
sw x8,324(x31)

divu x1,x1,x1
sw x1,328(x31)

divu x2,x2,x2
sw x2,332(x31)

divu x3,x3,x3
sw x3,336(x31)

divu x4,x4,x4
sw x4,340(x31)

divu x5,x5,x5
sw x5,344(x31)

divu x6,x6,x6
sw x6,348(x31)

divu x7,x7,x7
sw x7,352(x31)

divu x8,x8,x8
sw x8,356(x31)

divu x9,x9,x9
sw x9,360(x31)

divu x10,x10,x10
sw x10,364(x31)

divu x11,x11,x11
sw x11,368(x31)

divu x12,x12,x12
sw x12,372(x31)

divu x13,x13,x13
sw x13,376(x31)

divu x14,x14,x14
sw x14,380(x31)

divu x15,x15,x15
sw x15,384(x31)

divu x16,x16,x16
sw x16,388(x31)

divu x17,x17,x17
sw x17,392(x31)

divu x18,x18,x18
sw x18,396(x31)

divu x19,x19,x19
sw x19,400(x31)

divu x20,x20,x20
sw x20,404(x31)

divu x21,x21,x21
sw x21,408(x31)

divu x22,x22,x22
sw x22,412(x31)

divu x23,x23,x23
sw x23,416(x31)

divu x24,x24,x24
sw x24,420(x31)

divu x25,x25,x25
sw x25,424(x31)

divu x26,x26,x26
sw x26,428(x31)

divu x27,x27,x27
sw x27,432(x31)

divu x28,x28,x28
sw x28,436(x31)

divu x29,x29,x29
sw x29,440(x31)

divu x30,x30,x30
sw x30,444(x31)

divu x30,x1,x7
sw x30,80(x31)

divu x30,x3,x6
sw x30,176(x31)

divu x30,x5,x8
sw x30,264(x31)

divu x30,x30,x30
sw x30,448(x31)



li x1,0x00000000
li x2,0xF0F0F0F0
li x3,0x0F0F0F0F
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


rem x10,x1,x1
sw x10,0(x31)

rem x11,x2,x2
sw x11,4(x31)

rem x12,x3,x3
sw x12,8(x31)

rem x13,x4,x4
sw x13,12(x31)

rem x15,x5,x5
sw x15,16(x31)

rem x16,x6,x6
sw x16,20(x31)

rem x17,x7,x7
sw x17,24(x31)

rem x18,x8,x8
sw x18,28(x31)

rem x19,x9,x9
sw x19,32(x31)

rem x20,x1,x2
sw x20,36(x31)

rem x21,x2,x1
sw x21,40(x31)

rem x22,x3,x1
sw x22,44(x31)

rem x23,x1,x3
sw x23,48(x31)

rem x24,x4,x1
sw x24,52(x31)

rem x25,x1,x4
sw x25,56(x31)

rem x26,x5,x1
sw x26,60(x31)

rem x27,x1,x5
sw x27,64(x31)

rem x28,x6,x1
sw x28,68(x31)

rem x29,x1,x6
sw x29,72(x31)

rem x30,x7,x1
sw x30,76(x31)

rem x10,x8,x1
sw x10,84(x31)

rem x11,x1,x8
sw x11,88(x31)

rem x12,x9,x1
sw x12,92(x31)

rem x13,x1,x9
sw x13,96(x31)

rem x14,x2,x2
sw x14,100(x31)

rem x15,x2,x3
sw x15,104(x31)

rem x16,x3,x2
sw x16,108(x31)

rem x17,x2,x4
sw x17,112(x31)

rem x18,x4,x2
sw x18,116(x31)

rem x19,x2,x5
sw x19,120(x31)

rem x20,x5,x2
sw x20,124(x31)

rem x21,x2,x6
sw x21,128(x31)

rem x21,x6,x2
sw x21,132(x31)

rem x22,x2,x7
sw x22,136(x31)

rem x23,x7,x2
sw x23,140(x31)

rem x24,x2,x8
sw x24,144(x31)

rem x25,x8,x2
sw x25,148(x31)

rem x26,x2,x9
sw x26,152(x31)

rem x27,x9,x2
sw x27,156(x31)

rem x28,x3,x4
sw x28,160(x31)

rem x28,x4,x3
sw x28,164(x31)

rem x29,x3,x5
sw x29,168(x31)

rem x30,x5,x3
sw x30,172(x31)

rem x10,x6,x3
sw x10,180(x31)

rem x11,x3,x7
sw x11,184(x31)

rem x12,x7,x3
sw x12,188(x31)

rem x13,x3,x8
sw x13,192(x31)

rem x14,x8,x3
sw x14,196(x31)

rem x15,x3,x9
sw x15,200(x31)

rem x16,x9,x3
sw x16,204(x31)

rem x17,x4,x5
sw x17,208(x31)

rem x18,x5,x4
sw x18,212(x31)

rem x19,x4,x6
sw x19,216(x31)

rem x20,x6,x4
sw x20,220(x31)

rem x21,x4,x7
sw x21,224(x31)

rem x22,x7,x4
sw x22,228(x31)

rem x23,x4,x8
sw x23,232(x31)

rem x24,x8,x4
sw x24,236(x31)

rem x25,x4,x9
sw x25,240(x31)

rem x26,x9,x4
sw x26,244(x31)

rem x27,x5,x6
sw x27,248(x31)

rem x28,x6,x5
sw x28,252(x31)

rem x29,x5,x7
sw x29,256(x31)

rem x30,x7,x5
sw x30,260(x31)

rem x10,x8,x5
sw x10,268(x31)

rem x11,x5,x9
sw x11,272(x31)

rem x1,x9,x5
sw x1,276(x31)

rem x2,x6,x7
sw x2,280(x31)

rem x3,x7,x6
sw x3,284(x31)

rem x4,x6,x8
sw x4,288(x31)

rem x5,x8,x6
sw x5,292(x31)

rem x1,x6,x9
sw x1,296(x31)

rem x2,x9,x6
sw x2,300(x31)

rem x3,x7,x8
sw x3,304(x31)

rem x4,x8,x7
sw x4,308(x31)

rem x5,x7,x9
sw x5,312(x31)

rem x6,x9,x7
sw x6,316(x31)

rem x7,x8,x9
sw x7,320(x31)

rem x8,x9,x8
sw x8,324(x31)

rem x1,x1,x1
sw x1,328(x31)

rem x2,x2,x2
sw x2,332(x31)

rem x3,x3,x3
sw x3,336(x31)

rem x4,x4,x4
sw x4,340(x31)

rem x5,x5,x5
sw x5,344(x31)

rem x6,x6,x6
sw x6,348(x31)

rem x7,x7,x7
sw x7,352(x31)

rem x8,x8,x8
sw x8,356(x31)

rem x9,x9,x9
sw x9,360(x31)

rem x10,x10,x10
sw x10,364(x31)

rem x11,x11,x11
sw x11,368(x31)

rem x12,x12,x12
sw x12,372(x31)

rem x13,x13,x13
sw x13,376(x31)

rem x14,x14,x14
sw x14,380(x31)

rem x15,x15,x15
sw x15,384(x31)

rem x16,x16,x16
sw x16,388(x31)

rem x17,x17,x17
sw x17,392(x31)

rem x18,x18,x18
sw x18,396(x31)

rem x19,x19,x19
sw x19,400(x31)

rem x20,x20,x20
sw x20,404(x31)

rem x21,x21,x21
sw x21,408(x31)

rem x22,x22,x22
sw x22,412(x31)

rem x23,x23,x23
sw x23,416(x31)

rem x24,x24,x24
sw x24,420(x31)

rem x25,x25,x25
sw x25,424(x31)

rem x26,x26,x26
sw x26,428(x31)

rem x27,x27,x27
sw x27,432(x31)

rem x28,x28,x28
sw x28,436(x31)

rem x29,x29,x29
sw x29,440(x31)

rem x30,x30,x30
sw x30,444(x31)

rem x30,x1,x7
sw x30,80(x31)

rem x30,x3,x6
sw x30,176(x31)

rem x30,x5,x8
sw x30,264(x31)

rem x30,x30,x30
sw x30,448(x31)




li x1,0x00000000
li x2,0xF0F0F0F0
li x3,0x0F0F0F0F
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


remu x10,x1,x1
sw x10,0(x31)

remu x11,x2,x2
sw x11,4(x31)

remu x12,x3,x3
sw x12,8(x31)

remu x13,x4,x4
sw x13,12(x31)

remu x15,x5,x5
sw x15,16(x31)

remu x16,x6,x6
sw x16,20(x31)

remu x17,x7,x7
sw x17,24(x31)

remu x18,x8,x8
sw x18,28(x31)

remu x19,x9,x9
sw x19,32(x31)

remu x20,x1,x2
sw x20,36(x31)

remu x21,x2,x1
sw x21,40(x31)

remu x22,x3,x1
sw x22,44(x31)

remu x23,x1,x3
sw x23,48(x31)

remu x24,x4,x1
sw x24,52(x31)

remu x25,x1,x4
sw x25,56(x31)

remu x26,x5,x1
sw x26,60(x31)

remu x27,x1,x5
sw x27,64(x31)

remu x28,x6,x1
sw x28,68(x31)

remu x29,x1,x6
sw x29,72(x31)

remu x30,x7,x1
sw x30,76(x31)

remu x10,x8,x1
sw x10,84(x31)

remu x11,x1,x8
sw x11,88(x31)

remu x12,x9,x1
sw x12,92(x31)

remu x13,x1,x9
sw x13,96(x31)

remu x14,x2,x2
sw x14,100(x31)

remu x15,x2,x3
sw x15,104(x31)

remu x16,x3,x2
sw x16,108(x31)

remu x17,x2,x4
sw x17,112(x31)

remu x18,x4,x2
sw x18,116(x31)

remu x19,x2,x5
sw x19,120(x31)

remu x20,x5,x2
sw x20,124(x31)

remu x21,x2,x6
sw x21,128(x31)

remu x21,x6,x2
sw x21,132(x31)

remu x22,x2,x7
sw x22,136(x31)

remu x23,x7,x2
sw x23,140(x31)

remu x24,x2,x8
sw x24,144(x31)

remu x25,x8,x2
sw x25,148(x31)

remu x26,x2,x9
sw x26,152(x31)

remu x27,x9,x2
sw x27,156(x31)

remu x28,x3,x4
sw x28,160(x31)

remu x28,x4,x3
sw x28,164(x31)

remu x29,x3,x5
sw x29,168(x31)

remu x30,x5,x3
sw x30,172(x31)

remu x10,x6,x3
sw x10,180(x31)

remu x11,x3,x7
sw x11,184(x31)

remu x12,x7,x3
sw x12,188(x31)

remu x13,x3,x8
sw x13,192(x31)

remu x14,x8,x3
sw x14,196(x31)

remu x15,x3,x9
sw x15,200(x31)

remu x16,x9,x3
sw x16,204(x31)

remu x17,x4,x5
sw x17,208(x31)

remu x18,x5,x4
sw x18,212(x31)

remu x19,x4,x6
sw x19,216(x31)

remu x20,x6,x4
sw x20,220(x31)

remu x21,x4,x7
sw x21,224(x31)

remu x22,x7,x4
sw x22,228(x31)

remu x23,x4,x8
sw x23,232(x31)

remu x24,x8,x4
sw x24,236(x31)

remu x25,x4,x9
sw x25,240(x31)

remu x26,x9,x4
sw x26,244(x31)

remu x27,x5,x6
sw x27,248(x31)

remu x28,x6,x5
sw x28,252(x31)

remu x29,x5,x7
sw x29,256(x31)

remu x30,x7,x5
sw x30,260(x31)

remu x10,x8,x5
sw x10,268(x31)

remu x11,x5,x9
sw x11,272(x31)

remu x1,x9,x5
sw x1,276(x31)

remu x2,x6,x7
sw x2,280(x31)

remu x3,x7,x6
sw x3,284(x31)

remu x4,x6,x8
sw x4,288(x31)

remu x5,x8,x6
sw x5,292(x31)

remu x1,x6,x9
sw x1,296(x31)

remu x2,x9,x6
sw x2,300(x31)

remu x3,x7,x8
sw x3,304(x31)

remu x4,x8,x7
sw x4,308(x31)

remu x5,x7,x9
sw x5,312(x31)

remu x6,x9,x7
sw x6,316(x31)

remu x7,x8,x9
sw x7,320(x31)

remu x8,x9,x8
sw x8,324(x31)

remu x1,x1,x1
sw x1,328(x31)

remu x2,x2,x2
sw x2,332(x31)

remu x3,x3,x3
sw x3,336(x31)

remu x4,x4,x4
sw x4,340(x31)

remu x5,x5,x5
sw x5,344(x31)

remu x6,x6,x6
sw x6,348(x31)

remu x7,x7,x7
sw x7,352(x31)

remu x8,x8,x8
sw x8,356(x31)

remu x9,x9,x9
sw x9,360(x31)

remu x10,x10,x10
sw x10,364(x31)

remu x11,x11,x11
sw x11,368(x31)

remu x12,x12,x12
sw x12,372(x31)

remu x13,x13,x13
sw x13,376(x31)

remu x14,x14,x14
sw x14,380(x31)

remu x15,x15,x15
sw x15,384(x31)

remu x16,x16,x16
sw x16,388(x31)

remu x17,x17,x17
sw x17,392(x31)

remu x18,x18,x18
sw x18,396(x31)

remu x19,x19,x19
sw x19,400(x31)

remu x20,x20,x20
sw x20,404(x31)

remu x21,x21,x21
sw x21,408(x31)

remu x22,x22,x22
sw x22,412(x31)

remu x23,x23,x23
sw x23,416(x31)

remu x24,x24,x24
sw x24,420(x31)

remu x25,x25,x25
sw x25,424(x31)

remu x26,x26,x26
sw x26,428(x31)

remu x27,x27,x27
sw x27,432(x31)

remu x28,x28,x28
sw x28,436(x31)

remu x29,x29,x29
sw x29,440(x31)

remu x30,x30,x30
sw x30,444(x31)

remu x30,x1,x7
sw x30,80(x31)

remu x30,x3,x6
sw x30,176(x31)

remu x30,x5,x8
sw x30,264(x31)

remu x30,x30,x30
sw x30,448(x31)



li x1,0
li x2,0x0F0F0F0F

.option rvc
c.addi x1,10
c.slli x2,12
c.ebreak
.option norvc


sw x1,2047(x31)
sw x2,2043(x31)


*/
//RVTEST_PASS

//RVTEST_CODE_END

//.data

//RVTEST_DATA_BEGIN

//TEST_DATA

//RVTEST_DATA_END