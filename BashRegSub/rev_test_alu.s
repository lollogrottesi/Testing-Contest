#include "riscv_test.h"

#include "test_macros.h"

RVTEST_RV32U

RVTEST_CODE_BEGIN


li x1,0xFFFFFFFF
li x2,0xF0F0F0F0
li x3,0x00000000
li x4,0x0F0F0F0F
li x5,0xAAAAAAAA
li x6,0x55555555

addi x31,x1,0x000
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
To be corrected
//sw x30,104(x3)
//sw x29,108(x3)
To be corrected
To be corrected
//sw x26,120(x3)
To be corrected
To be corrected
To be corrected
To be corrected
//sw x21,140(x3)
To be corrected
To be corrected
To be corrected
To be corrected
//sw x16,160(x3)
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
//sw x5,200(x3)
To be corrected
To be corrected
To be corrected
To be corrected


li x1,0xFFFFFFFF
li x2,0x0F0F0F0F
li x3,0x00000000
li x4,0xF0F0F0F0
li x5,0xAAAAAAAA
li x6,0x55555555

andi x31,x1,0x000
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
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected

li x1,0xFFFFFFFF
li x2,0x0F0F0F0F
li x3,0x00000000
li x4,0xF0F0F0F0
li x5,0xAAAAAAAA
li x6,0x55555555

ori x31,x1,0x000
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
To be corrected
//sw x30,104(x0)
To be corrected
To be corrected
To be corrected
To be corrected
//sw x25,124(x0)
To be corrected
To be corrected
To be corrected
To be corrected
//sw x20,144(x0)
To be corrected
To be corrected
To be corrected
To be corrected
//sw x15,164(x0)
To be corrected
To be corrected
To be corrected
To be corrected
//sw x10,184(x0)
To be corrected
To be corrected
To be corrected
To be corrected
//sw x4,204(x0)
To be corrected
To be corrected
To be corrected

li x1,0xFFFFFFFF
li x2,0xF0F0F0F0
li x3,0x00000000
li x4,0x0F0F0F0F
li x5,0xAAAAAAAA
li x6,0x55555555

xori x31,x1,0x000
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
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected

slti x31,x1,0x000
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
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected

li x1,0xFFFFFFFF
li x2,0xFFFFF800
li x3,0x00000000
li x4,0xFFFFF100
li x5,0xAAAAAAAA
li x6,0x55555555

sltiu x31,x1,0x000
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
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected

li x1,0xFFFFFFFF
li x2,0xFFFFF800
li x3,0x00000000
li x4,0xFFFFF100
li x5,0xAAAAAAAA
li x6,0x55555555

srai x31,x1,0x000
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
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected

li x1,0xFFFFFFFF
li x2,0xFFFFF800
li x3,0x00000000
li x4,0xFFFFF100
li x5,0xAAAAAAAA
li x6,0x55555555

srli x31,x1,0x000
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
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected

li x1,0xFFFFFFFF
li x2,0xFFFFF800
li x3,0x00000000
li x4,0xFFFFF100
li x5,0xAAAAAAAA
li x6,0x55555555

slli x31,x1,0x000
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
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected


li x1,0xFFFFFFFF
li x2,0xFFFFF800
li x3,0x00000000
li x4,0xFFFFF100
li x5,0xAAAAAAAA
li x6,0x55555555

lui x31,0x00000
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
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected


auipc x31,0x00000
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
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected
To be corrected


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
To be corrected

and x11,x2,x2
To be corrected
and x12,x3,x3
To be corrected
and x13,x4,x4
To be corrected
and x15,x5,x5
To be corrected
and x16,x6,x6
To be corrected

and x17,x7,x7
To be corrected

and x18,x8,x8
To be corrected

and x19,x9,x9
To be corrected

and x20,x1,x2
To be corrected

and x21,x2,x1
To be corrected

and x22,x3,x1
To be corrected

and x23,x1,x3
To be corrected

and x24,x4,x1
To be corrected

and x25,x1,x4
To be corrected

and x26,x5,x1
To be corrected

and x27,x1,x5
To be corrected

and x28,x6,x1
To be corrected

and x29,x1,x6
To be corrected

and x30,x7,x1
To be corrected

and x31,x1,x7
To be corrected

and x10,x8,x1
To be corrected

and x11,x1,x8
To be corrected

and x12,x9,x1
To be corrected

and x13,x1,x9
To be corrected

and x14,x2,x2
To be corrected

and x15,x2,x3
To be corrected

and x16,x3,x2
To be corrected

and x17,x2,x4
To be corrected

and x18,x4,x2
To be corrected

and x19,x2,x5
To be corrected

and x20,x5,x2
To be corrected

and x21,x2,x6
To be corrected

and x21,x6,x2
To be corrected

and x22,x2,x7
To be corrected

and x23,x7,x2
To be corrected

and x24,x2,x8
To be corrected

and x25,x8,x2
To be corrected

and x26,x2,x9
To be corrected

and x27,x9,x2
To be corrected

and x28,x3,x4
To be corrected

and x28,x4,x3
To be corrected

and x29,x3,x5
To be corrected

and x30,x5,x3
To be corrected

and x31,x3,x6
To be corrected

and x10,x6,x3
To be corrected

and x11,x3,x7
To be corrected

and x12,x7,x3
To be corrected

and x13,x3,x8
To be corrected

and x14,x8,x3
To be corrected

and x15,x3,x9
To be corrected

and x16,x9,x3
To be corrected

and x17,x4,x5
To be corrected

and x18,x5,x4
To be corrected

and x19,x4,x6
To be corrected

and x20,x6,x4
To be corrected

and x21,x4,x7
To be corrected

and x22,x7,x4
To be corrected

and x23,x4,x8
To be corrected

and x24,x8,x4
To be corrected

and x25,x4,x9
To be corrected

and x26,x9,x4
To be corrected

and x27,x5,x6
To be corrected

and x28,x6,x5
To be corrected

and x29,x5,x7
To be corrected

and x30,x7,x5
To be corrected

and x31,x5,x8
To be corrected

and x10,x8,x5
To be corrected

and x11,x5,x9
To be corrected

and x1,x9,x5
To be corrected

and x2,x6,x7
To be corrected

and x3,x7,x6
To be corrected

and x4,x6,x8
To be corrected

and x5,x8,x6
To be corrected

and x1,x6,x9
To be corrected

and x2,x9,x6
To be corrected

and x3,x7,x8
To be corrected

and x4,x8,x7
To be corrected

and x5,x7,x9
To be corrected

and x6,x9,x7
To be corrected

and x7,x8,x9
To be corrected

and x8,x9,x8
To be corrected

and x1,x1,x1
To be corrected

and x2,x2,x2
To be corrected

and x3,x3,x3
To be corrected

and x4,x4,x4
To be corrected

and x5,x5,x5
To be corrected

and x6,x6,x6
To be corrected

and x7,x7,x7
To be corrected

and x8,x8,x8
To be corrected

and x9,x9,x9
To be corrected

and x10,x10,x10
To be corrected

and x11,x11,x11
To be corrected

and x12,x12,x12
To be corrected

and x13,x13,x13
To be corrected

and x14,x14,x14
To be corrected

and x15,x15,x15
To be corrected

and x16,x16,x16
To be corrected

and x17,x17,x17
To be corrected

and x18,x18,x18
To be corrected

and x19,x19,x19
To be corrected

and x20,x20,x20
To be corrected

and x21,x21,x21
To be corrected

and x22,x22,x22
To be corrected

and x23,x23,x23
To be corrected

and x24,x24,x24
To be corrected

and x25,x25,x25
To be corrected

and x26,x26,x26
To be corrected

and x27,x27,x27
To be corrected

and x28,x28,x28
To be corrected

and x29,x29,x29
To be corrected

and x30,x30,x30
To be corrected

and x31,x31,x31
To be corrected


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
To be corrected

add x11,x2,x2
To be corrected

add x12,x3,x3
To be corrected

add x13,x4,x4
To be corrected

add x15,x5,x5
To be corrected

add x16,x6,x6
To be corrected

add x17,x7,x7
To be corrected

add x18,x8,x8
To be corrected

add x19,x9,x9
To be corrected

add x20,x1,x2
To be corrected

add x21,x2,x1
To be corrected

add x22,x3,x1
To be corrected

add x23,x1,x3
To be corrected

add x24,x4,x1
To be corrected

add x25,x1,x4
To be corrected

add x26,x5,x1
To be corrected

add x27,x1,x5
To be corrected

add x28,x6,x1
To be corrected

add x29,x1,x6
To be corrected

add x30,x7,x1
To be corrected

add x31,x1,x7
To be corrected

add x10,x8,x1
To be corrected

add x11,x1,x8
To be corrected

add x12,x9,x1
To be corrected

add x13,x1,x9
To be corrected

add x14,x2,x2
To be corrected

add x15,x2,x3
To be corrected

add x16,x3,x2
To be corrected

add x17,x2,x4
To be corrected

add x18,x4,x2
To be corrected

add x19,x2,x5
To be corrected

add x20,x5,x2
To be corrected

add x21,x2,x6
To be corrected

add x21,x6,x2
To be corrected

add x22,x2,x7
To be corrected

add x23,x7,x2
To be corrected

add x24,x2,x8
To be corrected

add x25,x8,x2
To be corrected

add x26,x2,x9
To be corrected

add x27,x9,x2
To be corrected

add x28,x3,x4
To be corrected

add x28,x4,x3
To be corrected

add x29,x3,x5
To be corrected

add x30,x5,x3
To be corrected

add x31,x3,x6
To be corrected

add x10,x6,x3
To be corrected

add x11,x3,x7
To be corrected

add x12,x7,x3
To be corrected

add x13,x3,x8
To be corrected

add x14,x8,x3
To be corrected

add x15,x3,x9
To be corrected

add x16,x9,x3
To be corrected

add x17,x4,x5
To be corrected

add x18,x5,x4
To be corrected

add x19,x4,x6
To be corrected

add x20,x6,x4
To be corrected

add x21,x4,x7
To be corrected

add x22,x7,x4
To be corrected

add x23,x4,x8
To be corrected

add x24,x8,x4
To be corrected

add x25,x4,x9
To be corrected

add x26,x9,x4
To be corrected

add x27,x5,x6
To be corrected

add x28,x6,x5
To be corrected

add x29,x5,x7
To be corrected

add x30,x7,x5
To be corrected

add x31,x5,x8
To be corrected

add x10,x8,x5
To be corrected

add x11,x5,x9
To be corrected

add x1,x9,x5
To be corrected

add x2,x6,x7
To be corrected

add x3,x7,x6
To be corrected

add x4,x6,x8
To be corrected

add x5,x8,x6
To be corrected

add x1,x6,x9
To be corrected

add x2,x9,x6
To be corrected

add x3,x7,x8
To be corrected

add x4,x8,x7
To be corrected

add x5,x7,x9
To be corrected

add x6,x9,x7
To be corrected

add x7,x8,x9
To be corrected

add x8,x9,x8
To be corrected

add x1,x1,x1
To be corrected

add x2,x2,x2
To be corrected

add x3,x3,x3
To be corrected

add x4,x4,x4
To be corrected

add x5,x5,x5
To be corrected

add x6,x6,x6
To be corrected

add x7,x7,x7
To be corrected

add x8,x8,x8
To be corrected

add x9,x9,x9
To be corrected

add x10,x10,x10
To be corrected

add x11,x11,x11
To be corrected

add x12,x12,x12
To be corrected

add x13,x13,x13
To be corrected

add x14,x14,x14
To be corrected

add x15,x15,x15
To be corrected

add x16,x16,x16
To be corrected

add x17,x17,x17
To be corrected

add x18,x18,x18
To be corrected

add x19,x19,x19
To be corrected

add x20,x20,x20
To be corrected

add x21,x21,x21
To be corrected

add x22,x22,x22
To be corrected

add x23,x23,x23
To be corrected

add x24,x24,x24
To be corrected

add x25,x25,x25
To be corrected

add x26,x26,x26
To be corrected

add x27,x27,x27
To be corrected

add x28,x28,x28
To be corrected

add x29,x29,x29
To be corrected

add x30,x30,x30
To be corrected

add x31,x31,x31
To be corrected





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
To be corrected

or x11,x2,x2
To be corrected

or x12,x3,x3
To be corrected

or x13,x4,x4
To be corrected

or x15,x5,x5
To be corrected

or x16,x6,x6
To be corrected

or x17,x7,x7
To be corrected

or x18,x8,x8
To be corrected

or x19,x9,x9
To be corrected

or x20,x1,x2
To be corrected

or x21,x2,x1
To be corrected

or x22,x3,x1
To be corrected

or x23,x1,x3
To be corrected

or x24,x4,x1
To be corrected

or x25,x1,x4
To be corrected

or x26,x5,x1
To be corrected

or x27,x1,x5
To be corrected

or x28,x6,x1
To be corrected

or x29,x1,x6
To be corrected

or x30,x7,x1
To be corrected

or x31,x1,x7
To be corrected

or x10,x8,x1
To be corrected

or x11,x1,x8
To be corrected

or x12,x9,x1
To be corrected

or x13,x1,x9
To be corrected

or x14,x2,x2
To be corrected

or x15,x2,x3
To be corrected

or x16,x3,x2
To be corrected

or x17,x2,x4
To be corrected

or x18,x4,x2
To be corrected

or x19,x2,x5
To be corrected

or x20,x5,x2
To be corrected

or x21,x2,x6
To be corrected

or x21,x6,x2
To be corrected

or x22,x2,x7
To be corrected

or x23,x7,x2
To be corrected

or x24,x2,x8
To be corrected

or x25,x8,x2
To be corrected

or x26,x2,x9
To be corrected

or x27,x9,x2
To be corrected

or x28,x3,x4
To be corrected

or x28,x4,x3
To be corrected

or x29,x3,x5
To be corrected

or x30,x5,x3
To be corrected

or x31,x3,x6
To be corrected

or x10,x6,x3
To be corrected

or x11,x3,x7
To be corrected

or x12,x7,x3
To be corrected

or x13,x3,x8
To be corrected

or x14,x8,x3
To be corrected

or x15,x3,x9
To be corrected

or x16,x9,x3
To be corrected

or x17,x4,x5
To be corrected

or x18,x5,x4
To be corrected

or x19,x4,x6
To be corrected

or x20,x6,x4
To be corrected

or x21,x4,x7
To be corrected

or x22,x7,x4
To be corrected

or x23,x4,x8
To be corrected

or x24,x8,x4
To be corrected

or x25,x4,x9
To be corrected

or x26,x9,x4
To be corrected

or x27,x5,x6
To be corrected

or x28,x6,x5
To be corrected

or x29,x5,x7
To be corrected

or x30,x7,x5
To be corrected

or x31,x5,x8
To be corrected

or x10,x8,x5
To be corrected

or x11,x5,x9
To be corrected

or x1,x9,x5
To be corrected

or x2,x6,x7
To be corrected

or x3,x7,x6
To be corrected

or x4,x6,x8
To be corrected

or x5,x8,x6
To be corrected

or x1,x6,x9
To be corrected

or x2,x9,x6
To be corrected

or x3,x7,x8
To be corrected

or x4,x8,x7
To be corrected

or x5,x7,x9
To be corrected

or x6,x9,x7
To be corrected

or x7,x8,x9
To be corrected

or x8,x9,x8
To be corrected

or x1,x1,x1
To be corrected

or x2,x2,x2
To be corrected

or x3,x3,x3
To be corrected

or x4,x4,x4
To be corrected

or x5,x5,x5
To be corrected

or x6,x6,x6
To be corrected

or x7,x7,x7
To be corrected

or x8,x8,x8
To be corrected

or x9,x9,x9
To be corrected

or x10,x10,x10
To be corrected

or x11,x11,x11
To be corrected

or x12,x12,x12
To be corrected

or x13,x13,x13
To be corrected

or x14,x14,x14
To be corrected

or x15,x15,x15
To be corrected

or x16,x16,x16
To be corrected

or x17,x17,x17
To be corrected

or x18,x18,x18
To be corrected

or x19,x19,x19
To be corrected

or x20,x20,x20
To be corrected

or x21,x21,x21
To be corrected

or x22,x22,x22
To be corrected

or x23,x23,x23
To be corrected

or x24,x24,x24
To be corrected

or x25,x25,x25
To be corrected

or x26,x26,x26
To be corrected

or x27,x27,x27
To be corrected

or x28,x28,x28
To be corrected

or x29,x29,x29
To be corrected

or x30,x30,x30
To be corrected

or x31,x31,x31
To be corrected








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
To be corrected

sll x11,x2,x2
To be corrected

sll x12,x3,x3
To be corrected

sll x13,x4,x4
To be corrected

sll x15,x5,x5
To be corrected

sll x16,x6,x6
To be corrected

sll x17,x7,x7
To be corrected

sll x18,x8,x8
To be corrected

sll x19,x9,x9
To be corrected

sll x20,x1,x2
To be corrected

sll x21,x2,x1
To be corrected

sll x22,x3,x1
To be corrected

sll x23,x1,x3
To be corrected

sll x24,x4,x1
To be corrected

sll x25,x1,x4
To be corrected

sll x26,x5,x1
To be corrected

sll x27,x1,x5
To be corrected

sll x28,x6,x1
To be corrected

sll x29,x1,x6
To be corrected

sll x30,x7,x1
To be corrected

sll x31,x1,x7
To be corrected

sll x10,x8,x1
To be corrected

sll x11,x1,x8
To be corrected

sll x12,x9,x1
To be corrected

sll x13,x1,x9
To be corrected

sll x14,x2,x2
To be corrected

sll x15,x2,x3
To be corrected

sll x16,x3,x2
To be corrected

sll x17,x2,x4
To be corrected

sll x18,x4,x2
To be corrected

sll x19,x2,x5
To be corrected

sll x20,x5,x2
To be corrected

sll x21,x2,x6
To be corrected

sll x21,x6,x2
To be corrected

sll x22,x2,x7
To be corrected

sll x23,x7,x2
To be corrected

sll x24,x2,x8
To be corrected

sll x25,x8,x2
To be corrected

sll x26,x2,x9
To be corrected

sll x27,x9,x2
To be corrected

sll x28,x3,x4
To be corrected

sll x28,x4,x3
To be corrected

sll x29,x3,x5
To be corrected

sll x30,x5,x3
To be corrected

sll x31,x3,x6
To be corrected

sll x10,x6,x3
To be corrected

sll x11,x3,x7
To be corrected

sll x12,x7,x3
To be corrected

sll x13,x3,x8
To be corrected

sll x14,x8,x3
To be corrected

sll x15,x3,x9
To be corrected

sll x16,x9,x3
To be corrected

sll x17,x4,x5
To be corrected

sll x18,x5,x4
To be corrected

sll x19,x4,x6
To be corrected

sll x20,x6,x4
To be corrected

sll x21,x4,x7
To be corrected

sll x22,x7,x4
To be corrected

sll x23,x4,x8
To be corrected

sll x24,x8,x4
To be corrected

sll x25,x4,x9
To be corrected

sll x26,x9,x4
To be corrected

sll x27,x5,x6
To be corrected

sll x28,x6,x5
To be corrected

sll x29,x5,x7
To be corrected

sll x30,x7,x5
To be corrected

sll x31,x5,x8
To be corrected

sll x10,x8,x5
To be corrected

sll x11,x5,x9
To be corrected

sll x1,x9,x5
To be corrected

sll x2,x6,x7
To be corrected

sll x3,x7,x6
To be corrected

sll x4,x6,x8
To be corrected

sll x5,x8,x6
To be corrected

sll x1,x6,x9
To be corrected

sll x2,x9,x6
To be corrected

sll x3,x7,x8
To be corrected

sll x4,x8,x7
To be corrected

sll x5,x7,x9
To be corrected

sll x6,x9,x7
To be corrected

sll x7,x8,x9
To be corrected

sll x8,x9,x8
To be corrected

sll x1,x1,x1
To be corrected

sll x2,x2,x2
To be corrected

sll x3,x3,x3
To be corrected

sll x4,x4,x4
To be corrected

sll x5,x5,x5
To be corrected

sll x6,x6,x6
To be corrected

sll x7,x7,x7
To be corrected

sll x8,x8,x8
To be corrected

sll x9,x9,x9
To be corrected

sll x10,x10,x10
To be corrected

sll x11,x11,x11
To be corrected

sll x12,x12,x12
To be corrected

sll x13,x13,x13
To be corrected

sll x14,x14,x14
To be corrected

sll x15,x15,x15
To be corrected

sll x16,x16,x16
To be corrected

sll x17,x17,x17
To be corrected

sll x18,x18,x18
To be corrected

sll x19,x19,x19
To be corrected

sll x20,x20,x20
To be corrected

sll x21,x21,x21
To be corrected

sll x22,x22,x22
To be corrected

sll x23,x23,x23
To be corrected

sll x24,x24,x24
To be corrected

sll x25,x25,x25
To be corrected

sll x26,x26,x26
To be corrected

sll x27,x27,x27
To be corrected

sll x28,x28,x28
To be corrected

sll x29,x29,x29
To be corrected

sll x30,x30,x30
To be corrected

sll x31,x31,x31
To be corrected






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
To be corrected

slt x11,x2,x2
To be corrected

slt x12,x3,x3
To be corrected

slt x13,x4,x4
To be corrected

slt x15,x5,x5
To be corrected

slt x16,x6,x6
To be corrected

slt x17,x7,x7
To be corrected

slt x18,x8,x8
To be corrected

slt x19,x9,x9
To be corrected

slt x20,x1,x2
To be corrected

slt x21,x2,x1
To be corrected

slt x22,x3,x1
To be corrected

slt x23,x1,x3
To be corrected

slt x24,x4,x1
To be corrected

slt x25,x1,x4
To be corrected

slt x26,x5,x1
To be corrected

slt x27,x1,x5
To be corrected

slt x28,x6,x1
To be corrected

slt x29,x1,x6
To be corrected

slt x30,x7,x1
To be corrected

slt x31,x1,x7
To be corrected

slt x10,x8,x1
To be corrected

slt x11,x1,x8
To be corrected

slt x12,x9,x1
To be corrected

slt x13,x1,x9
To be corrected

slt x14,x2,x2
To be corrected

slt x15,x2,x3
To be corrected

slt x16,x3,x2
To be corrected

slt x17,x2,x4
To be corrected

slt x18,x4,x2
To be corrected

slt x19,x2,x5
To be corrected

slt x20,x5,x2
To be corrected

slt x21,x2,x6
To be corrected

slt x21,x6,x2
To be corrected

slt x22,x2,x7
To be corrected

slt x23,x7,x2
To be corrected

slt x24,x2,x8
To be corrected

slt x25,x8,x2
To be corrected

slt x26,x2,x9
To be corrected

slt x27,x9,x2
To be corrected

slt x28,x3,x4
To be corrected

slt x28,x4,x3
To be corrected

slt x29,x3,x5
To be corrected

slt x30,x5,x3
To be corrected

slt x31,x3,x6
To be corrected

slt x10,x6,x3
To be corrected

slt x11,x3,x7
To be corrected

slt x12,x7,x3
To be corrected

slt x13,x3,x8
To be corrected

slt x14,x8,x3
To be corrected

slt x15,x3,x9
To be corrected

slt x16,x9,x3
To be corrected

slt x17,x4,x5
To be corrected

slt x18,x5,x4
To be corrected

slt x19,x4,x6
To be corrected

slt x20,x6,x4
To be corrected

slt x21,x4,x7
To be corrected

slt x22,x7,x4
To be corrected

slt x23,x4,x8
To be corrected

slt x24,x8,x4
To be corrected

slt x25,x4,x9
To be corrected

slt x26,x9,x4
To be corrected

slt x27,x5,x6
To be corrected

slt x28,x6,x5
To be corrected

slt x29,x5,x7
To be corrected

slt x30,x7,x5
To be corrected

slt x31,x5,x8
To be corrected

slt x10,x8,x5
To be corrected

slt x11,x5,x9
To be corrected

slt x1,x9,x5
To be corrected

slt x2,x6,x7
To be corrected

slt x3,x7,x6
To be corrected

slt x4,x6,x8
To be corrected

slt x5,x8,x6
To be corrected

slt x1,x6,x9
To be corrected

slt x2,x9,x6
To be corrected

slt x3,x7,x8
To be corrected

slt x4,x8,x7
To be corrected

slt x5,x7,x9
To be corrected

slt x6,x9,x7
To be corrected

slt x7,x8,x9
To be corrected

slt x8,x9,x8
To be corrected

slt x1,x1,x1
To be corrected

slt x2,x2,x2
To be corrected

slt x3,x3,x3
To be corrected

slt x4,x4,x4
To be corrected

slt x5,x5,x5
To be corrected

slt x6,x6,x6
To be corrected

slt x7,x7,x7
To be corrected

slt x8,x8,x8
To be corrected

slt x9,x9,x9
To be corrected

slt x10,x10,x10
To be corrected

slt x11,x11,x11
To be corrected

slt x12,x12,x12
To be corrected

slt x13,x13,x13
To be corrected

slt x14,x14,x14
To be corrected

slt x15,x15,x15
To be corrected

slt x16,x16,x16
To be corrected

slt x17,x17,x17
To be corrected

slt x18,x18,x18
To be corrected

slt x19,x19,x19
To be corrected

slt x20,x20,x20
To be corrected

slt x21,x21,x21
To be corrected

slt x22,x22,x22
To be corrected

slt x23,x23,x23
To be corrected

slt x24,x24,x24
To be corrected

slt x25,x25,x25
To be corrected

slt x26,x26,x26
To be corrected

slt x27,x27,x27
To be corrected

slt x28,x28,x28
To be corrected

slt x29,x29,x29
To be corrected

slt x30,x30,x30
To be corrected

slt x31,x31,x31
To be corrected





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
To be corrected

sltu x11,x2,x2
To be corrected

sltu x12,x3,x3
To be corrected

sltu x13,x4,x4
To be corrected

sltu x15,x5,x5
To be corrected

sltu x16,x6,x6
To be corrected

sltu x17,x7,x7
To be corrected

sltu x18,x8,x8
To be corrected

sltu x19,x9,x9
To be corrected

sltu x20,x1,x2
To be corrected

sltu x21,x2,x1
To be corrected

sltu x22,x3,x1
To be corrected

sltu x23,x1,x3
To be corrected

sltu x24,x4,x1
To be corrected

sltu x25,x1,x4
To be corrected

sltu x26,x5,x1
To be corrected

sltu x27,x1,x5
To be corrected

sltu x28,x6,x1
To be corrected

sltu x29,x1,x6
To be corrected

sltu x30,x7,x1
To be corrected

sltu x31,x1,x7
To be corrected

sltu x10,x8,x1
To be corrected

sltu x11,x1,x8
To be corrected

sltu x12,x9,x1
To be corrected

sltu x13,x1,x9
To be corrected

sltu x14,x2,x2
To be corrected

sltu x15,x2,x3
To be corrected

sltu x16,x3,x2
To be corrected

sltu x17,x2,x4
To be corrected

sltu x18,x4,x2
To be corrected

sltu x19,x2,x5
To be corrected

sltu x20,x5,x2
To be corrected

sltu x21,x2,x6
To be corrected

sltu x21,x6,x2
To be corrected

sltu x22,x2,x7
To be corrected

sltu x23,x7,x2
To be corrected

sltu x24,x2,x8
To be corrected

sltu x25,x8,x2
To be corrected

sltu x26,x2,x9
To be corrected

sltu x27,x9,x2
To be corrected

sltu x28,x3,x4
To be corrected

sltu x28,x4,x3
To be corrected

sltu x29,x3,x5
To be corrected

sltu x30,x5,x3
To be corrected

sltu x31,x3,x6
To be corrected

sltu x10,x6,x3
To be corrected

sltu x11,x3,x7
To be corrected

sltu x12,x7,x3
To be corrected

sltu x13,x3,x8
To be corrected

sltu x14,x8,x3
To be corrected

sltu x15,x3,x9
To be corrected

sltu x16,x9,x3
To be corrected

sltu x17,x4,x5
To be corrected

sltu x18,x5,x4
To be corrected

sltu x19,x4,x6
To be corrected

sltu x20,x6,x4
To be corrected

sltu x21,x4,x7
To be corrected

sltu x22,x7,x4
To be corrected

sltu x23,x4,x8
To be corrected

sltu x24,x8,x4
To be corrected

sltu x25,x4,x9
To be corrected

sltu x26,x9,x4
To be corrected

sltu x27,x5,x6
To be corrected

sltu x28,x6,x5
To be corrected

sltu x29,x5,x7
To be corrected

sltu x30,x7,x5
To be corrected

sltu x31,x5,x8
To be corrected

sltu x10,x8,x5
To be corrected

sltu x11,x5,x9
To be corrected

sltu x1,x9,x5
To be corrected

sltu x2,x6,x7
To be corrected

sltu x3,x7,x6
To be corrected

sltu x4,x6,x8
To be corrected

sltu x5,x8,x6
To be corrected

sltu x1,x6,x9
To be corrected

sltu x2,x9,x6
To be corrected

sltu x3,x7,x8
To be corrected

sltu x4,x8,x7
To be corrected

sltu x5,x7,x9
To be corrected

sltu x6,x9,x7
To be corrected

sltu x7,x8,x9
To be corrected

sltu x8,x9,x8
To be corrected

sltu x1,x1,x1
To be corrected

sltu x2,x2,x2
To be corrected

sltu x3,x3,x3
To be corrected

sltu x4,x4,x4
To be corrected

sltu x5,x5,x5
To be corrected

sltu x6,x6,x6
To be corrected

sltu x7,x7,x7
To be corrected

sltu x8,x8,x8
To be corrected

sltu x9,x9,x9
To be corrected

sltu x10,x10,x10
To be corrected

sltu x11,x11,x11
To be corrected

sltu x12,x12,x12
To be corrected

sltu x13,x13,x13
To be corrected

sltu x14,x14,x14
To be corrected

sltu x15,x15,x15
To be corrected

sltu x16,x16,x16
To be corrected

sltu x17,x17,x17
To be corrected

sltu x18,x18,x18
To be corrected

sltu x19,x19,x19
To be corrected

sltu x20,x20,x20
To be corrected

sltu x21,x21,x21
To be corrected

sltu x22,x22,x22
To be corrected

sltu x23,x23,x23
To be corrected

sltu x24,x24,x24
To be corrected

sltu x25,x25,x25
To be corrected

sltu x26,x26,x26
To be corrected

sltu x27,x27,x27
To be corrected

sltu x28,x28,x28
To be corrected

sltu x29,x29,x29
To be corrected

sltu x30,x30,x30
To be corrected

sltu x31,x31,x31
To be corrected



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
To be corrected

sub x11,x2,x2
To be corrected

sub x12,x3,x3
To be corrected

sub x13,x4,x4
To be corrected

sub x15,x5,x5
To be corrected

sub x16,x6,x6
To be corrected

sub x17,x7,x7
To be corrected

sub x18,x8,x8
To be corrected

sub x19,x9,x9
To be corrected

sub x20,x1,x2
To be corrected

sub x21,x2,x1
To be corrected

sub x22,x3,x1
To be corrected

sub x23,x1,x3
To be corrected

sub x24,x4,x1
To be corrected

sub x25,x1,x4
To be corrected

sub x26,x5,x1
To be corrected

sub x27,x1,x5
To be corrected

sub x28,x6,x1
To be corrected

sub x29,x1,x6
To be corrected

sub x30,x7,x1
To be corrected

sub x31,x1,x7
To be corrected

sub x10,x8,x1
To be corrected

sub x11,x1,x8
To be corrected

sub x12,x9,x1
To be corrected

sub x13,x1,x9
To be corrected

sub x14,x2,x2
To be corrected

sub x15,x2,x3
To be corrected

sub x16,x3,x2
To be corrected

sub x17,x2,x4
To be corrected

sub x18,x4,x2
To be corrected

sub x19,x2,x5
To be corrected

sub x20,x5,x2
To be corrected

sub x21,x2,x6
To be corrected

sub x21,x6,x2
To be corrected

sub x22,x2,x7
To be corrected

sub x23,x7,x2
To be corrected

sub x24,x2,x8
To be corrected

sub x25,x8,x2
To be corrected

sub x26,x2,x9
To be corrected

sub x27,x9,x2
To be corrected

sub x28,x3,x4
To be corrected

sub x28,x4,x3
To be corrected

sub x29,x3,x5
To be corrected

sub x30,x5,x3
To be corrected

sub x31,x3,x6
To be corrected

sub x10,x6,x3
To be corrected

sub x11,x3,x7
To be corrected

sub x12,x7,x3
To be corrected

sub x13,x3,x8
To be corrected

sub x14,x8,x3
To be corrected

sub x15,x3,x9
To be corrected

sub x16,x9,x3
To be corrected

sub x17,x4,x5
To be corrected

sub x18,x5,x4
To be corrected

sub x19,x4,x6
To be corrected

sub x20,x6,x4
To be corrected

sub x21,x4,x7
To be corrected

sub x22,x7,x4
To be corrected

sub x23,x4,x8
To be corrected

sub x24,x8,x4
To be corrected

sub x25,x4,x9
To be corrected

sub x26,x9,x4
To be corrected

sub x27,x5,x6
To be corrected

sub x28,x6,x5
To be corrected

sub x29,x5,x7
To be corrected

sub x30,x7,x5
To be corrected

sub x31,x5,x8
To be corrected

sub x10,x8,x5
To be corrected

sub x11,x5,x9
To be corrected

sub x1,x9,x5
To be corrected

sub x2,x6,x7
To be corrected

sub x3,x7,x6
To be corrected

sub x4,x6,x8
To be corrected

sub x5,x8,x6
To be corrected

sub x1,x6,x9
To be corrected

sub x2,x9,x6
To be corrected

sub x3,x7,x8
To be corrected

sub x4,x8,x7
To be corrected

sub x5,x7,x9
To be corrected

sub x6,x9,x7
To be corrected

sub x7,x8,x9
To be corrected

sub x8,x9,x8
To be corrected

sub x1,x1,x1
To be corrected

sub x2,x2,x2
To be corrected

sub x3,x3,x3
To be corrected

sub x4,x4,x4
To be corrected

sub x5,x5,x5
To be corrected

sub x6,x6,x6
To be corrected

sub x7,x7,x7
To be corrected

sub x8,x8,x8
To be corrected

sub x9,x9,x9
To be corrected

sub x10,x10,x10
To be corrected

sub x11,x11,x11
To be corrected

sub x12,x12,x12
To be corrected

sub x13,x13,x13
To be corrected

sub x14,x14,x14
To be corrected

sub x15,x15,x15
To be corrected

sub x16,x16,x16
To be corrected

sub x17,x17,x17
To be corrected

sub x18,x18,x18
To be corrected

sub x19,x19,x19
To be corrected

sub x20,x20,x20
To be corrected

sub x21,x21,x21
To be corrected

sub x22,x22,x22
To be corrected

sub x23,x23,x23
To be corrected

sub x24,x24,x24
To be corrected

sub x25,x25,x25
To be corrected

sub x26,x26,x26
To be corrected

sub x27,x27,x27
To be corrected

sub x28,x28,x28
To be corrected

sub x29,x29,x29
To be corrected

sub x30,x30,x30
To be corrected

sub x31,x31,x31
To be corrected



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
To be corrected

xor x11,x2,x2
To be corrected

xor x12,x3,x3
To be corrected

xor x13,x4,x4
To be corrected

xor x15,x5,x5
To be corrected

xor x16,x6,x6
To be corrected

xor x17,x7,x7
To be corrected

xor x18,x8,x8
To be corrected

xor x19,x9,x9
To be corrected

xor x20,x1,x2
To be corrected

xor x21,x2,x1
To be corrected

xor x22,x3,x1
To be corrected

xor x23,x1,x3
To be corrected

xor x24,x4,x1
To be corrected

xor x25,x1,x4
To be corrected

xor x26,x5,x1
To be corrected

xor x27,x1,x5
To be corrected

xor x28,x6,x1
To be corrected

xor x29,x1,x6
To be corrected

xor x30,x7,x1
To be corrected

xor x31,x1,x7
To be corrected

xor x10,x8,x1
To be corrected

xor x11,x1,x8
To be corrected

xor x12,x9,x1
To be corrected

xor x13,x1,x9
To be corrected

xor x14,x2,x2
To be corrected

xor x15,x2,x3
To be corrected

xor x16,x3,x2
To be corrected

xor x17,x2,x4
To be corrected

xor x18,x4,x2
To be corrected

xor x19,x2,x5
To be corrected

xor x20,x5,x2
To be corrected

xor x21,x2,x6
To be corrected

xor x21,x6,x2
To be corrected

xor x22,x2,x7
To be corrected

xor x23,x7,x2
To be corrected

xor x24,x2,x8
To be corrected

xor x25,x8,x2
To be corrected

xor x26,x2,x9
To be corrected

xor x27,x9,x2
To be corrected

xor x28,x3,x4
To be corrected

xor x28,x4,x3
To be corrected

xor x29,x3,x5
To be corrected

xor x30,x5,x3
To be corrected

xor x31,x3,x6
To be corrected

xor x10,x6,x3
To be corrected

xor x11,x3,x7
To be corrected

xor x12,x7,x3
To be corrected

xor x13,x3,x8
To be corrected

xor x14,x8,x3
To be corrected

xor x15,x3,x9
To be corrected

xor x16,x9,x3
To be corrected

xor x17,x4,x5
To be corrected

xor x18,x5,x4
To be corrected

xor x19,x4,x6
To be corrected

xor x20,x6,x4
To be corrected

xor x21,x4,x7
To be corrected

xor x22,x7,x4
To be corrected

xor x23,x4,x8
To be corrected

xor x24,x8,x4
To be corrected

xor x25,x4,x9
To be corrected

xor x26,x9,x4
To be corrected

xor x27,x5,x6
To be corrected

xor x28,x6,x5
To be corrected

xor x29,x5,x7
To be corrected

xor x30,x7,x5
To be corrected

xor x31,x5,x8
To be corrected

xor x10,x8,x5
To be corrected

xor x11,x5,x9
To be corrected

xor x1,x9,x5
To be corrected

xor x2,x6,x7
To be corrected

xor x3,x7,x6
To be corrected

xor x4,x6,x8
To be corrected

xor x5,x8,x6
To be corrected

xor x1,x6,x9
To be corrected

xor x2,x9,x6
To be corrected

xor x3,x7,x8
To be corrected

xor x4,x8,x7
To be corrected

xor x5,x7,x9
To be corrected

xor x6,x9,x7
To be corrected

xor x7,x8,x9
To be corrected

xor x8,x9,x8
To be corrected

xor x1,x1,x1
To be corrected

xor x2,x2,x2
To be corrected

xor x3,x3,x3
To be corrected

xor x4,x4,x4
To be corrected

xor x5,x5,x5
To be corrected

xor x6,x6,x6
To be corrected

xor x7,x7,x7
To be corrected

xor x8,x8,x8
To be corrected

xor x9,x9,x9
To be corrected

xor x10,x10,x10
To be corrected

xor x11,x11,x11
To be corrected

xor x12,x12,x12
To be corrected

xor x13,x13,x13
To be corrected

xor x14,x14,x14
To be corrected

xor x15,x15,x15
To be corrected

xor x16,x16,x16
To be corrected

xor x17,x17,x17
To be corrected

xor x18,x18,x18
To be corrected

xor x19,x19,x19
To be corrected

xor x20,x20,x20
To be corrected

xor x21,x21,x21
To be corrected

xor x22,x22,x22
To be corrected

xor x23,x23,x23
To be corrected

xor x24,x24,x24
To be corrected

xor x25,x25,x25
To be corrected

xor x26,x26,x26
To be corrected

xor x27,x27,x27
To be corrected

xor x28,x28,x28
To be corrected

xor x29,x29,x29
To be corrected

xor x30,x30,x30
To be corrected

xor x31,x31,x31
To be corrected




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
To be corrected

//sra x11,x2,x2
//sw x11,4(x0)

sra x12,x3,x3
To be corrected

sra x13,x4,x4
To be corrected

sra x15,x5,x5
To be corrected

sra x16,x6,x6
To be corrected

sra x17,x7,x7
To be corrected

sra x18,x8,x8
To be corrected

sra x19,x9,x9
To be corrected

sra x20,x1,x2
To be corrected

sra x21,x2,x1
To be corrected

sra x22,x3,x1
To be corrected

sra x23,x1,x3
To be corrected

sra x24,x4,x1
To be corrected

sra x25,x1,x4
To be corrected

sra x26,x5,x1
To be corrected

sra x27,x1,x5
To be corrected

sra x28,x6,x1
To be corrected

sra x29,x1,x6
To be corrected

sra x30,x7,x1
To be corrected

sra x31,x1,x7
To be corrected

sra x10,x8,x1
To be corrected

sra x11,x1,x8
To be corrected

sra x12,x9,x1
To be corrected

sra x13,x1,x9
To be corrected

sra x14,x2,x2
To be corrected

sra x15,x2,x3
To be corrected

sra x16,x3,x2
To be corrected

sra x17,x2,x4
To be corrected

sra x18,x4,x2
To be corrected

sra x19,x2,x5
To be corrected

sra x20,x5,x2
To be corrected

sra x21,x2,x6
To be corrected

sra x21,x6,x2
To be corrected

sra x22,x2,x7
To be corrected

sra x23,x7,x2
To be corrected

sra x24,x2,x8
To be corrected

sra x25,x8,x2
To be corrected

sra x26,x2,x9
To be corrected

sra x27,x9,x2
To be corrected

sra x28,x3,x4
To be corrected

sra x28,x4,x3
To be corrected

sra x29,x3,x5
To be corrected

sra x30,x5,x3
To be corrected

sra x31,x3,x6
To be corrected

sra x10,x6,x3
To be corrected

sra x11,x3,x7
To be corrected

sra x12,x7,x3
To be corrected

sra x13,x3,x8
To be corrected

sra x14,x8,x3
To be corrected

sra x15,x3,x9
To be corrected

sra x16,x9,x3
To be corrected

sra x17,x4,x5
To be corrected

sra x18,x5,x4
To be corrected

sra x19,x4,x6
To be corrected

sra x20,x6,x4
To be corrected

sra x21,x4,x7
To be corrected

sra x22,x7,x4
To be corrected

sra x23,x4,x8
To be corrected

sra x24,x8,x4
To be corrected

sra x25,x4,x9
To be corrected

sra x26,x9,x4
To be corrected

sra x27,x5,x6
To be corrected

sra x28,x6,x5
To be corrected

sra x29,x5,x7
To be corrected

sra x30,x7,x5
To be corrected

sra x31,x5,x8
To be corrected

sra x10,x8,x5
To be corrected

sra x11,x5,x9
To be corrected

sra x1,x9,x5
To be corrected

sra x2,x6,x7
To be corrected

sra x3,x7,x6
To be corrected

sra x4,x6,x8
To be corrected

sra x5,x8,x6
To be corrected

sra x1,x6,x9
To be corrected

sra x2,x9,x6
To be corrected

sra x3,x7,x8
To be corrected

sra x4,x8,x7
To be corrected

sra x5,x7,x9
To be corrected

sra x6,x9,x7
To be corrected

sra x7,x8,x9
To be corrected

sra x8,x9,x8
To be corrected

sra x1,x1,x1
To be corrected

sra x2,x2,x2
To be corrected

sra x3,x3,x3
To be corrected

sra x4,x4,x4
To be corrected

sra x5,x5,x5
To be corrected

sra x6,x6,x6
To be corrected

sra x7,x7,x7
To be corrected

sra x8,x8,x8
To be corrected

sra x9,x9,x9
To be corrected

sra x10,x10,x10
To be corrected

sra x11,x11,x11
To be corrected

sra x12,x12,x12
To be corrected

sra x13,x13,x13
To be corrected

sra x14,x14,x14
To be corrected

sra x15,x15,x15
To be corrected

sra x16,x16,x16
To be corrected

sra x17,x17,x17
To be corrected

sra x18,x18,x18
To be corrected

sra x19,x19,x19
To be corrected

sra x20,x20,x20
To be corrected

sra x21,x21,x21
To be corrected

sra x22,x22,x22
To be corrected

sra x23,x23,x23
To be corrected

sra x24,x24,x24
To be corrected

sra x25,x25,x25
To be corrected

sra x26,x26,x26
To be corrected

sra x27,x27,x27
To be corrected

sra x28,x28,x28
To be corrected

sra x29,x29,x29
To be corrected

sra x30,x30,x30
To be corrected

sra x31,x31,x31
To be corrected



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
To be corrected

srl x11,x2,x2
To be corrected

srl x12,x3,x3
To be corrected

srl x13,x4,x4
To be corrected

srl x15,x5,x5
To be corrected

srl x16,x6,x6
To be corrected

srl x17,x7,x7
To be corrected

srl x18,x8,x8
To be corrected

srl x19,x9,x9
To be corrected

srl x20,x1,x2
To be corrected

srl x21,x2,x1
To be corrected

srl x22,x3,x1
To be corrected

srl x23,x1,x3
To be corrected

srl x24,x4,x1
To be corrected

srl x25,x1,x4
To be corrected

srl x26,x5,x1
To be corrected

srl x27,x1,x5
To be corrected

srl x28,x6,x1
To be corrected

srl x29,x1,x6
To be corrected

srl x30,x7,x1
To be corrected

srl x31,x1,x7
To be corrected

srl x10,x8,x1
To be corrected

srl x11,x1,x8
To be corrected

srl x12,x9,x1
To be corrected

srl x13,x1,x9
To be corrected

srl x14,x2,x2
To be corrected

srl x15,x2,x3
To be corrected

srl x16,x3,x2
To be corrected

srl x17,x2,x4
To be corrected

srl x18,x4,x2
To be corrected

srl x19,x2,x5
To be corrected

srl x20,x5,x2
To be corrected

srl x21,x2,x6
To be corrected

srl x21,x6,x2
To be corrected

srl x22,x2,x7
To be corrected

srl x23,x7,x2
To be corrected

srl x24,x2,x8
To be corrected

srl x25,x8,x2
To be corrected

srl x26,x2,x9
To be corrected

srl x27,x9,x2
To be corrected

srl x28,x3,x4
To be corrected

srl x28,x4,x3
To be corrected

srl x29,x3,x5
To be corrected

srl x30,x5,x3
To be corrected

srl x31,x3,x6
To be corrected

srl x10,x6,x3
To be corrected

srl x11,x3,x7
To be corrected

srl x12,x7,x3
To be corrected

srl x13,x3,x8
To be corrected

srl x14,x8,x3
To be corrected

srl x15,x3,x9
To be corrected

srl x16,x9,x3
To be corrected

srl x17,x4,x5
To be corrected

srl x18,x5,x4
To be corrected

srl x19,x4,x6
To be corrected

srl x20,x6,x4
To be corrected

srl x21,x4,x7
To be corrected

srl x22,x7,x4
To be corrected

srl x23,x4,x8
To be corrected

srl x24,x8,x4
To be corrected

srl x25,x4,x9
To be corrected

srl x26,x9,x4
To be corrected

srl x27,x5,x6
To be corrected

srl x28,x6,x5
To be corrected

srl x29,x5,x7
To be corrected

srl x30,x7,x5
To be corrected

srl x31,x5,x8
To be corrected

srl x10,x8,x5
To be corrected

srl x11,x5,x9
To be corrected

srl x1,x9,x5
To be corrected

srl x2,x6,x7
To be corrected

srl x3,x7,x6
To be corrected

srl x4,x6,x8
To be corrected

srl x5,x8,x6
To be corrected

srl x1,x6,x9
To be corrected

srl x2,x9,x6
To be corrected

srl x3,x7,x8
To be corrected

srl x4,x8,x7
To be corrected

srl x5,x7,x9
To be corrected

srl x6,x9,x7
To be corrected

srl x7,x8,x9
To be corrected

srl x8,x9,x8
To be corrected

srl x1,x1,x1
To be corrected

srl x2,x2,x2
To be corrected

srl x3,x3,x3
To be corrected

srl x4,x4,x4
To be corrected

srl x5,x5,x5
To be corrected

srl x6,x6,x6
To be corrected

srl x7,x7,x7
To be corrected

srl x8,x8,x8
To be corrected

srl x9,x9,x9
To be corrected

srl x10,x10,x10
To be corrected

srl x11,x11,x11
To be corrected

srl x12,x12,x12
To be corrected

srl x13,x13,x13
To be corrected

srl x14,x14,x14
To be corrected

srl x15,x15,x15
To be corrected

srl x16,x16,x16
To be corrected

srl x17,x17,x17
To be corrected

srl x18,x18,x18
To be corrected

srl x19,x19,x19
To be corrected

srl x20,x20,x20
To be corrected

srl x21,x21,x21
To be corrected

srl x22,x22,x22
To be corrected

srl x23,x23,x23
To be corrected

srl x24,x24,x24
To be corrected

srl x25,x25,x25
To be corrected

srl x26,x26,x26
To be corrected

srl x27,x27,x27
To be corrected

srl x28,x28,x28
To be corrected

srl x29,x29,x29
To be corrected

srl x30,x30,x30
To be corrected

srl x31,x31,x31
To be corrected






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
To be corrected

div x11,x2,x2
To be corrected

div x12,x3,x3
To be corrected

div x13,x4,x4
To be corrected

div x15,x5,x5
To be corrected

div x16,x6,x6
To be corrected

div x17,x7,x7
To be corrected

div x18,x8,x8
To be corrected

div x19,x9,x9
To be corrected

div x20,x1,x2
To be corrected

div x21,x2,x1
To be corrected

div x22,x3,x1
To be corrected

div x23,x1,x3
To be corrected

div x24,x4,x1
To be corrected

div x25,x1,x4
To be corrected

div x26,x5,x1
To be corrected

div x27,x1,x5
To be corrected

div x28,x6,x1
To be corrected

div x29,x1,x6
To be corrected

div x30,x7,x1
To be corrected

div x31,x1,x7
To be corrected

div x10,x8,x1
To be corrected

div x11,x1,x8
To be corrected

div x12,x9,x1
To be corrected

div x13,x1,x9
To be corrected

div x14,x2,x2
To be corrected

div x15,x2,x3
To be corrected

div x16,x3,x2
To be corrected

div x17,x2,x4
To be corrected

div x18,x4,x2
To be corrected

div x19,x2,x5
To be corrected

div x20,x5,x2
To be corrected

div x21,x2,x6
To be corrected

div x21,x6,x2
To be corrected

div x22,x2,x7
To be corrected

div x23,x7,x2
To be corrected

div x24,x2,x8
To be corrected

div x25,x8,x2
To be corrected

div x26,x2,x9
To be corrected

div x27,x9,x2
To be corrected

div x28,x3,x4
To be corrected

div x28,x4,x3
To be corrected

div x29,x3,x5
To be corrected

div x30,x5,x3
To be corrected

div x31,x3,x6
To be corrected

div x10,x6,x3
To be corrected

div x11,x3,x7
To be corrected

div x12,x7,x3
To be corrected

div x13,x3,x8
To be corrected

div x14,x8,x3
To be corrected

div x15,x3,x9
To be corrected

div x16,x9,x3
To be corrected

div x17,x4,x5
To be corrected

div x18,x5,x4
To be corrected

div x19,x4,x6
To be corrected

div x20,x6,x4
To be corrected

div x21,x4,x7
To be corrected

div x22,x7,x4
To be corrected

div x23,x4,x8
To be corrected

div x24,x8,x4
To be corrected

div x25,x4,x9
To be corrected

div x26,x9,x4
To be corrected

div x27,x5,x6
To be corrected

div x28,x6,x5
To be corrected

div x29,x5,x7
To be corrected

div x30,x7,x5
To be corrected

div x31,x5,x8
To be corrected

div x10,x8,x5
To be corrected

div x11,x5,x9
To be corrected

div x1,x9,x5
To be corrected

div x2,x6,x7
To be corrected

div x3,x7,x6
To be corrected

div x4,x6,x8
To be corrected

div x5,x8,x6
To be corrected

div x1,x6,x9
To be corrected

div x2,x9,x6
To be corrected

div x3,x7,x8
To be corrected

div x4,x8,x7
To be corrected

div x5,x7,x9
To be corrected

div x6,x9,x7
To be corrected

div x7,x8,x9
To be corrected

div x8,x9,x8
To be corrected

div x1,x1,x1
To be corrected

div x2,x2,x2
To be corrected

div x3,x3,x3
To be corrected

div x4,x4,x4
To be corrected

div x5,x5,x5
To be corrected

div x6,x6,x6
To be corrected

div x7,x7,x7
To be corrected

div x8,x8,x8
To be corrected

div x9,x9,x9
To be corrected

div x10,x10,x10
To be corrected

div x11,x11,x11
To be corrected

div x12,x12,x12
To be corrected

div x13,x13,x13
To be corrected

div x14,x14,x14
To be corrected

div x15,x15,x15
To be corrected

div x16,x16,x16
To be corrected

div x17,x17,x17
To be corrected

div x18,x18,x18
To be corrected

div x19,x19,x19
To be corrected

div x20,x20,x20
To be corrected

div x21,x21,x21
To be corrected

div x22,x22,x22
To be corrected

div x23,x23,x23
To be corrected

div x24,x24,x24
To be corrected

div x25,x25,x25
To be corrected

div x26,x26,x26
To be corrected

div x27,x27,x27
To be corrected

div x28,x28,x28
To be corrected

div x29,x29,x29
To be corrected

div x30,x30,x30
To be corrected

div x31,x31,x31
To be corrected



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
To be corrected

divu x11,x2,x2
To be corrected

divu x12,x3,x3
To be corrected

divu x13,x4,x4
To be corrected

divu x15,x5,x5
To be corrected

divu x16,x6,x6
To be corrected

divu x17,x7,x7
To be corrected

divu x18,x8,x8
To be corrected

divu x19,x9,x9
To be corrected

divu x20,x1,x2
To be corrected

divu x21,x2,x1
To be corrected

divu x22,x3,x1
To be corrected

divu x23,x1,x3
To be corrected

divu x24,x4,x1
To be corrected

divu x25,x1,x4
To be corrected

divu x26,x5,x1
To be corrected

divu x27,x1,x5
To be corrected

divu x28,x6,x1
To be corrected

divu x29,x1,x6
To be corrected

divu x30,x7,x1
To be corrected

divu x31,x1,x7
To be corrected

divu x10,x8,x1
To be corrected

divu x11,x1,x8
To be corrected

divu x12,x9,x1
To be corrected

divu x13,x1,x9
To be corrected

divu x14,x2,x2
To be corrected

divu x15,x2,x3
To be corrected

divu x16,x3,x2
To be corrected

divu x17,x2,x4
To be corrected

divu x18,x4,x2
To be corrected

divu x19,x2,x5
To be corrected

divu x20,x5,x2
To be corrected

divu x21,x2,x6
To be corrected

divu x21,x6,x2
To be corrected

divu x22,x2,x7
To be corrected

divu x23,x7,x2
To be corrected

divu x24,x2,x8
To be corrected

divu x25,x8,x2
To be corrected

divu x26,x2,x9
To be corrected

divu x27,x9,x2
To be corrected

divu x28,x3,x4
To be corrected

divu x28,x4,x3
To be corrected

divu x29,x3,x5
To be corrected

divu x30,x5,x3
To be corrected

divu x31,x3,x6
To be corrected

divu x10,x6,x3
To be corrected

divu x11,x3,x7
To be corrected

divu x12,x7,x3
To be corrected

divu x13,x3,x8
To be corrected

divu x14,x8,x3
To be corrected

divu x15,x3,x9
To be corrected

divu x16,x9,x3
To be corrected

divu x17,x4,x5
To be corrected

divu x18,x5,x4
To be corrected

divu x19,x4,x6
To be corrected

divu x20,x6,x4
To be corrected

divu x21,x4,x7
To be corrected

divu x22,x7,x4
To be corrected

divu x23,x4,x8
To be corrected

divu x24,x8,x4
To be corrected

divu x25,x4,x9
To be corrected

divu x26,x9,x4
To be corrected

divu x27,x5,x6
To be corrected

divu x28,x6,x5
To be corrected

divu x29,x5,x7
To be corrected

divu x30,x7,x5
To be corrected

divu x31,x5,x8
To be corrected

divu x10,x8,x5
To be corrected

divu x11,x5,x9
To be corrected

divu x1,x9,x5
To be corrected

divu x2,x6,x7
To be corrected

divu x3,x7,x6
To be corrected

divu x4,x6,x8
To be corrected

divu x5,x8,x6
To be corrected

divu x1,x6,x9
To be corrected

divu x2,x9,x6
To be corrected

divu x3,x7,x8
To be corrected

divu x4,x8,x7
To be corrected

divu x5,x7,x9
To be corrected

divu x6,x9,x7
To be corrected

divu x7,x8,x9
To be corrected

divu x8,x9,x8
To be corrected

divu x1,x1,x1
To be corrected

divu x2,x2,x2
To be corrected

divu x3,x3,x3
To be corrected

divu x4,x4,x4
To be corrected

divu x5,x5,x5
To be corrected

divu x6,x6,x6
To be corrected

divu x7,x7,x7
To be corrected

divu x8,x8,x8
To be corrected

divu x9,x9,x9
To be corrected

divu x10,x10,x10
To be corrected

divu x11,x11,x11
To be corrected

divu x12,x12,x12
To be corrected

divu x13,x13,x13
To be corrected

divu x14,x14,x14
To be corrected

divu x15,x15,x15
To be corrected

divu x16,x16,x16
To be corrected

divu x17,x17,x17
To be corrected

divu x18,x18,x18
To be corrected

divu x19,x19,x19
To be corrected

divu x20,x20,x20
To be corrected

divu x21,x21,x21
To be corrected

divu x22,x22,x22
To be corrected

divu x23,x23,x23
To be corrected

divu x24,x24,x24
To be corrected

divu x25,x25,x25
To be corrected

divu x26,x26,x26
To be corrected

divu x27,x27,x27
To be corrected

divu x28,x28,x28
To be corrected

divu x29,x29,x29
To be corrected

divu x30,x30,x30
To be corrected

divu x31,x31,x31
To be corrected



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
To be corrected

rem x11,x2,x2
To be corrected

rem x12,x3,x3
To be corrected

rem x13,x4,x4
To be corrected

rem x15,x5,x5
To be corrected

rem x16,x6,x6
To be corrected

rem x17,x7,x7
To be corrected

rem x18,x8,x8
To be corrected

rem x19,x9,x9
To be corrected

rem x20,x1,x2
To be corrected

rem x21,x2,x1
To be corrected

rem x22,x3,x1
To be corrected

rem x23,x1,x3
To be corrected

rem x24,x4,x1
To be corrected

rem x25,x1,x4
To be corrected

rem x26,x5,x1
To be corrected

rem x27,x1,x5
To be corrected

rem x28,x6,x1
To be corrected

rem x29,x1,x6
To be corrected

rem x30,x7,x1
To be corrected

rem x31,x1,x7
To be corrected

rem x10,x8,x1
To be corrected

rem x11,x1,x8
To be corrected

rem x12,x9,x1
To be corrected

rem x13,x1,x9
To be corrected

rem x14,x2,x2
To be corrected

rem x15,x2,x3
To be corrected

rem x16,x3,x2
To be corrected

rem x17,x2,x4
To be corrected

rem x18,x4,x2
To be corrected

rem x19,x2,x5
To be corrected

rem x20,x5,x2
To be corrected

rem x21,x2,x6
To be corrected

rem x21,x6,x2
To be corrected

rem x22,x2,x7
To be corrected

rem x23,x7,x2
To be corrected

rem x24,x2,x8
To be corrected

rem x25,x8,x2
To be corrected

rem x26,x2,x9
To be corrected

rem x27,x9,x2
To be corrected

rem x28,x3,x4
To be corrected

rem x28,x4,x3
To be corrected

rem x29,x3,x5
To be corrected

rem x30,x5,x3
To be corrected

rem x31,x3,x6
To be corrected

rem x10,x6,x3
To be corrected

rem x11,x3,x7
To be corrected

rem x12,x7,x3
To be corrected

rem x13,x3,x8
To be corrected

rem x14,x8,x3
To be corrected

rem x15,x3,x9
To be corrected

rem x16,x9,x3
To be corrected

rem x17,x4,x5
To be corrected

rem x18,x5,x4
To be corrected

rem x19,x4,x6
To be corrected

rem x20,x6,x4
To be corrected

rem x21,x4,x7
To be corrected

rem x22,x7,x4
To be corrected

rem x23,x4,x8
To be corrected

rem x24,x8,x4
To be corrected

rem x25,x4,x9
To be corrected

rem x26,x9,x4
To be corrected

rem x27,x5,x6
To be corrected

rem x28,x6,x5
To be corrected

rem x29,x5,x7
To be corrected

rem x30,x7,x5
To be corrected

rem x31,x5,x8
To be corrected

rem x10,x8,x5
To be corrected

rem x11,x5,x9
To be corrected

rem x1,x9,x5
To be corrected

rem x2,x6,x7
To be corrected

rem x3,x7,x6
To be corrected

rem x4,x6,x8
To be corrected

rem x5,x8,x6
To be corrected

rem x1,x6,x9
To be corrected

rem x2,x9,x6
To be corrected

rem x3,x7,x8
To be corrected

rem x4,x8,x7
To be corrected

rem x5,x7,x9
To be corrected

rem x6,x9,x7
To be corrected

rem x7,x8,x9
To be corrected

rem x8,x9,x8
To be corrected

rem x1,x1,x1
To be corrected

rem x2,x2,x2
To be corrected

rem x3,x3,x3
To be corrected

rem x4,x4,x4
To be corrected

rem x5,x5,x5
To be corrected

rem x6,x6,x6
To be corrected

rem x7,x7,x7
To be corrected

rem x8,x8,x8
To be corrected

rem x9,x9,x9
To be corrected

rem x10,x10,x10
To be corrected

rem x11,x11,x11
To be corrected

rem x12,x12,x12
To be corrected

rem x13,x13,x13
To be corrected

rem x14,x14,x14
To be corrected

rem x15,x15,x15
To be corrected

rem x16,x16,x16
To be corrected

rem x17,x17,x17
To be corrected

rem x18,x18,x18
To be corrected

rem x19,x19,x19
To be corrected

rem x20,x20,x20
To be corrected

rem x21,x21,x21
To be corrected

rem x22,x22,x22
To be corrected

rem x23,x23,x23
To be corrected

rem x24,x24,x24
To be corrected

rem x25,x25,x25
To be corrected

rem x26,x26,x26
To be corrected

rem x27,x27,x27
To be corrected

rem x28,x28,x28
To be corrected

rem x29,x29,x29
To be corrected

rem x30,x30,x30
To be corrected

rem x31,x31,x31
To be corrected




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
To be corrected

remu x11,x2,x2
To be corrected

remu x12,x3,x3
To be corrected

remu x13,x4,x4
To be corrected

remu x15,x5,x5
To be corrected

remu x16,x6,x6
To be corrected

remu x17,x7,x7
To be corrected

remu x18,x8,x8
To be corrected

remu x19,x9,x9
To be corrected

remu x20,x1,x2
To be corrected

remu x21,x2,x1
To be corrected

remu x22,x3,x1
To be corrected

remu x23,x1,x3
To be corrected

remu x24,x4,x1
To be corrected

remu x25,x1,x4
To be corrected

remu x26,x5,x1
To be corrected

remu x27,x1,x5
To be corrected

remu x28,x6,x1
To be corrected

remu x29,x1,x6
To be corrected

remu x30,x7,x1
To be corrected

remu x31,x1,x7
To be corrected

remu x10,x8,x1
To be corrected

remu x11,x1,x8
To be corrected

remu x12,x9,x1
To be corrected

remu x13,x1,x9
To be corrected

remu x14,x2,x2
To be corrected

remu x15,x2,x3
To be corrected

remu x16,x3,x2
To be corrected

remu x17,x2,x4
To be corrected

remu x18,x4,x2
To be corrected

remu x19,x2,x5
To be corrected

remu x20,x5,x2
To be corrected

remu x21,x2,x6
To be corrected

remu x21,x6,x2
To be corrected

remu x22,x2,x7
To be corrected

remu x23,x7,x2
To be corrected

remu x24,x2,x8
To be corrected

remu x25,x8,x2
To be corrected

remu x26,x2,x9
To be corrected

remu x27,x9,x2
To be corrected

remu x28,x3,x4
To be corrected

remu x28,x4,x3
To be corrected

remu x29,x3,x5
To be corrected

remu x30,x5,x3
To be corrected

remu x31,x3,x6
To be corrected

remu x10,x6,x3
To be corrected

remu x11,x3,x7
To be corrected

remu x12,x7,x3
To be corrected

remu x13,x3,x8
To be corrected

remu x14,x8,x3
To be corrected

remu x15,x3,x9
To be corrected

remu x16,x9,x3
To be corrected

remu x17,x4,x5
To be corrected

remu x18,x5,x4
To be corrected

remu x19,x4,x6
To be corrected

remu x20,x6,x4
To be corrected

remu x21,x4,x7
To be corrected

remu x22,x7,x4
To be corrected

remu x23,x4,x8
To be corrected

remu x24,x8,x4
To be corrected

remu x25,x4,x9
To be corrected

remu x26,x9,x4
To be corrected

remu x27,x5,x6
To be corrected

remu x28,x6,x5
To be corrected

remu x29,x5,x7
To be corrected

remu x30,x7,x5
To be corrected

remu x31,x5,x8
To be corrected

remu x10,x8,x5
To be corrected

remu x11,x5,x9
To be corrected

remu x1,x9,x5
To be corrected

remu x2,x6,x7
To be corrected

remu x3,x7,x6
To be corrected

remu x4,x6,x8
To be corrected

remu x5,x8,x6
To be corrected

remu x1,x6,x9
To be corrected

remu x2,x9,x6
To be corrected

remu x3,x7,x8
To be corrected

remu x4,x8,x7
To be corrected

remu x5,x7,x9
To be corrected

remu x6,x9,x7
To be corrected

remu x7,x8,x9
To be corrected

remu x8,x9,x8
To be corrected

remu x1,x1,x1
To be corrected

remu x2,x2,x2
To be corrected

remu x3,x3,x3
To be corrected

remu x4,x4,x4
To be corrected

remu x5,x5,x5
To be corrected

remu x6,x6,x6
To be corrected

remu x7,x7,x7
To be corrected

remu x8,x8,x8
To be corrected

remu x9,x9,x9
To be corrected

remu x10,x10,x10
To be corrected

remu x11,x11,x11
To be corrected

remu x12,x12,x12
To be corrected

remu x13,x13,x13
To be corrected

remu x14,x14,x14
To be corrected

remu x15,x15,x15
To be corrected

remu x16,x16,x16
To be corrected

remu x17,x17,x17
To be corrected

remu x18,x18,x18
To be corrected

remu x19,x19,x19
To be corrected

remu x20,x20,x20
To be corrected

remu x21,x21,x21
To be corrected

remu x22,x22,x22
To be corrected

remu x23,x23,x23
To be corrected

remu x24,x24,x24
To be corrected

remu x25,x25,x25
To be corrected

remu x26,x26,x26
To be corrected

remu x27,x27,x27
To be corrected

remu x28,x28,x28
To be corrected

remu x29,x29,x29
To be corrected

remu x30,x30,x30
To be corrected

remu x31,x31,x31
To be corrected



li x1,0
li x2,0x0F0F0F0F

.option rvc
c.addi x1,10
c.slli x2,12
c.ebreak
.option norvc


To be corrected
To be corrected



RVTEST_PASS

RVTEST_CODE_END

.data

RVTEST_DATA_BEGIN

TEST_DATA

RVTEST_DATA_END
