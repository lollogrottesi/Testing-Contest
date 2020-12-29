//#include "riscv_test.h"

//#include "test_macros.h"



//RVTEST_RV32U

//RVTEST_CODE_BEGIN

li s11, 0x00200000 //x27


#ALL REGISTERS AT 0s


li x1,0x00000000
li x2,0x00000000
li x3,0x00000000
li x4,0x00000000
li x5,0x00000000
li x6,0x00000000
li x7,0x00000000
li x8,0x00000000
li x9,0x00000000
li x10,0x00000000
li x11,0x00000000
li x12,0x00000000
li x13,0x00000000
li x14,0x00000000
li x15,0x00000000
li x16,0x00000000
li x17,0x00000000
li x18,0x00000000
li x19,0x00000000
li x20,0x00000000
li x21,0x00000000
li x23,0x00000000
li x24,0x00000000
li x25,0x00000000
li x26,0x00000000
li x27,0x00000000
li x28, 0x00200000 //x28
sw x27,104(x28)
li s11, 0x00200000 //x27
li x28,0x00000000
li x29,0x00000000
li x30,0x00000000
li x31,0x00000000
sw x1,0(s11)
sw x2,4(s11)
sw x3,8(s11)
sw x4,2(s11)
sw x5,16(s11)
sw x6,20(s11)
sw x7,24(s11)
sw x8,28(s11)
sw x9,32(s11)
sw x10,36(s11)
sw x11,40(s11)
sw x12,44(s11)
sw x13,48(s11)
sw x14,52(s11)
sw x15,56(s11)
sw x16,60(s11)
sw x17,64(s11)
sw x18,68(s11)
sw x19,72(s11)
sw x20,76(s11)
sw x21,80(s11)
sw x22,84(s11)
sw x23,88(s11)
sw x24,92(s11)
sw x25,96(s11)
sw x26,100(s11)
sw x28,108(s11)
sw x29,112(s11)
sw x30,116(s11)
sw x31,120(s11)


lb x15,56(s11)
lb x16,60(s11)
lb x17,64(s11)
lb x18,68(s11)
lb x19,72(s11)
lb x20,76(s11)
lb x21,80(s11)
lb x22,84(s11)
lb x23,88(s11)
lb x24,92(s11)
lb x25,96(s11)
lb x26,100(s11)
li x28, 0x00200000 //x28
lb x27,104(x28)
li s11, 0x00200000 //x27
lb x28,108(s11)
lb x29,112(s11)
lb x30,116(s11)
lb x31,120(s11)
sb x15,56(s11)
sb x16,60(s11)
sb x17,64(s11)
sb x18,68(s11)
sb x19,72(s11)
sb x20,76(s11)
sb x21,80(s11)
sb x22,84(s11)
sb x23,88(s11)
sb x24,92(s11)
sb x25,96(s11)
sb x26,100(s11)
li x26, 0x00200000 //x26
sb x27,104(x26)
li s11, 0x00200000 //x27
sb x28,108(s11)
sb x29,112(s11)
sb x30,116(s11)
sb x31,120(s11)



lbu x15,56(s11)
lbu x16,60(s11)
lbu x17,64(s11)
lbu x18,68(s11)
lbu x19,72(s11)
lbu x20,76(s11)
lbu x21,80(s11)
lbu x22,84(s11)
lbu x23,88(s11)
lbu x24,92(s11)
lbu x25,96(s11)
lbu x26,100(s11)
li x28, 0x00200000 //x28
lbu x27,104(x28)
sb x27,104(x28)
li s11, 0x00200000 //x27
lbu x28,108(s11)
lbu x29,112(s11)
lbu x30,116(s11)
lbu x31,120(s11)
sb x15,56(s11)
sb x16,60(s11)
sb x17,64(s11)
sb x18,68(s11)
sb x19,72(s11)
sb x20,76(s11)
sb x21,80(s11)
sb x22,84(s11)
sb x23,88(s11)
sb x24,92(s11)
sb x25,96(s11)
sb x26,100(s11)
sb x28,108(s11)
sb x29,112(s11)
sb x30,116(s11)
sb x31,120(s11)


lh x1,0(s11)
lh x2,4(s11)
lh x3,8(s11)
lh x4,12(s11)
lh x5,16(s11)
lh x6,20(s11)
lh x7,24(s11)
lh x8,28(s11)
lh x9,32(s11)
lh x10,36(s11)
lh x11,40(s11)
lh x12,44(s11)
lh x13,48(s11)
lh x14,52(s11)
sh x1,0(s11)
sh x2,4(s11)
sh x3,8(s11)
sh x4,12(s11)
sh x5,16(s11)
sh x6,20(s11)
sh x7,24(s11)
sh x8,28(s11)
sh x9,32(s11)
sh x10,36(s11)
sh x11,40(s11)
sh x12,44(s11)
sh x13,48(s11)
sh x14,52(s11)


lhu x1,0(s11)
lhu x2,4(s11)
lhu x3,8(s11)
lhu x4,12(s11)
lhu x5,16(s11)
lhu x6,20(s11)
lhu x7,24(s11)
lhu x8,28(s11)
lhu x9,32(s11)
lhu x10,36(s11)
lhu x11,40(s11)
lhu x12,44(s11)
lhu x13,48(s11)
lhu x14,52(s11)
sh x1,0(s11)
sh x2,4(s11)
sh x3,8(s11)
sh x4,12(s11)
sh x5,16(s11)
sh x6,20(s11)
sh x7,24(s11)
sh x8,28(s11)
sh x9,32(s11)
sh x10,36(s11)
sh x11,40(s11)
sh x12,44(s11)
sh x13,48(s11)
sh x14,52(s11)

lw x15,56(s11)
lw x16,60(s11)
lw x17,64(s11)
lw x18,68(s11)
lw x19,72(s11)
lw x20,76(s11)
lw x21,80(s11)
lw x22,84(s11)
lw x23,88(s11)
lw x24,92(s11)
lw x25,96(s11)
lw x26,100(s11)
li x28, 0x00200000 //x28
lw x27,104(s11)
sw x27,104(s11)
li s11, 0x00200000 //x27
lw x28,108(s11)
lw x29,112(s11)
lw x30,116(s11)
lw x31,120(s11)
sw x15,56(s11)
sw x16,60(s11)
sw x17,64(s11)
sw x18,68(s11)
sw x19,72(s11)
sw x20,76(s11)
sw x21,80(s11)
sw x22,84(s11)
sw x23,88(s11)
sw x24,92(s11)
sw x25,96(s11)
sw x26,100(s11)
sw x28,108(s11)
sw x29,112(s11)
sw x30,116(s11)
sw x31,120(s11)

//li x1,0xFFFFFFFF
li x2,0xFFFFFFFF
li x3,0xFFFFFFFF
li x4,0xFFFFFFFF
li x5,0xFFFFFFFF
li x6,0xFFFFFFFF
li x7,0xFFFFFFFF
//li x8,0xFFFFFFFF
li x9,0xFFFFFFFF
li x10,0xFFFFFFFF
li x11,0xFFFFFFFF
li x12,0xFFFFFFFF
li x13,0xFFFFFFFF
li x14,0xFFFFFFFF
li x15,0xFFFFFFFF
//li x16,0xFFFFFFFF
li x17,0xFFFFFFFF

sw x1,0(s11)
sw x2,4(s11)
sw x3,8(s11)
sw x4,12(s11)
sw x5,16(s11)
sw x6,20(s11)
sw x7,24(s11)
sw x8,28(s11)
sw x9,32(s11)
sw x10,36(s11)
sw x11,40(s11)
sw x12,44(s11)
sw x13,48(s11)
sw x14,52(s11)
sw x15,56(s11)
sw x16,60(s11)
sw x17,64(s11)


li x18,0xFFFFFFFF
li x19,0xFFFFFFFF
li x20,0xFFFFFFFF
li x21,0xFFFFFFFF
li x23,0xFFFFFFFF
li x24,0xFFFFFFFF
li x25,0xFFFFFFFF
li x26,0xFFFFFFFF
li x28, 0x00200000 //x28
li x27,0xFFFFFFFF
sw x27,104(x28)
li s11, 0x00200000 //x27
li x28,0xFFFFFFFF
li x29,0xFFFFFFFF
li x30,0xFFFFFFFF
li x31,0xFFFFFFFF


sw x18,68(s11)
sw x19,72(s11)
sw x20,76(s11)
sw x21,80(s11)
sw x22,84(s11)
sw x23,88(s11)
sw x24,92(s11)
sw x25,96(s11)
sw x26,100(s11)
sw x28,108(s11)
sw x29,112(s11)
sw x30,116(s11)
sw x31,120(s11)



lb x15,56(s11)
lb x16,60(s11)
lb x17,64(s11)
lb x18,68(s11)
lb x19,72(s11)
lb x20,76(s11)
lb x21,80(s11)
lb x22,84(s11)
lb x23,88(s11)
lb x24,92(s11)
lb x25,96(s11)
lb x26,100(s11)
li x28, 0x00200000 //x28
lb x27,104(x28)
sb x27,104(x28)
li x27, 0x00200000 //x27
lb x28,108(s11)
lb x29,112(s11)
lb x30,116(s11)
lb x31,120(s11)
sb x15,56(s11)
sb x16,60(s11)
sb x17,64(s11)
sb x18,68(s11)
sb x19,72(s11)
sb x20,76(s11)
sb x21,80(s11)
sb x22,84(s11)
sb x23,88(s11)
sb x24,92(s11)
sb x25,96(s11)
sb x26,100(s11)
sb x28,108(s11)
sb x29,112(s11)
sb x30,116(s11)
sb x31,120(s11)



lbu x15,56(s11)
lbu x16,60(s11)
lbu x17,64(s11)
lbu x18,68(s11)
lbu x19,72(s11)
lbu x20,76(s11)
lbu x21,80(s11)
lbu x22,84(s11)
lbu x23,88(s11)
lbu x24,92(s11)
lbu x25,96(s11)
lbu x26,100(s11)
li x28, 0x00200000 //x28
lbu x27,104(x28)
sb x27,104(x28)
li s11, 0x00200000 //x27
lbu x28,108(s11)
lbu x29,112(s11)
lbu x30,116(s11)
lbu x31,120(s11)
sb x15,56(s11)
sb x16,60(s11)
sb x17,64(s11)
sb x18,68(s11)
sb x19,72(s11)
sb x20,76(s11)
sb x21,80(s11)
sb x22,84(s11)
sb x23,88(s11)
sb x24,92(s11)
sb x25,96(s11)
sb x26,100(s11)
sb x28,108(s11)
sb x29,112(s11)
sb x30,116(s11)
sb x31,120(s11)


lh x1,0(s11)
lh x2,4(s11)
lh x3,8(s11)
lh x4,12(s11)
lh x5,16(s11)
lh x6,20(s11)
lh x7,24(s11)
lh x8,28(s11)
lh x9,32(s11)
lh x10,36(s11)
lh x11,40(s11)
lh x12,44(s11)
lh x13,48(s11)
lh x14,52(s11)
sh x1,0(s11)
sh x2,4(s11)
sh x3,8(s11)
sh x4,12(s11)
sh x5,16(s11)
sh x6,20(s11)
sh x7,24(s11)
sh x8,28(s11)
sh x9,32(s11)
sh x10,36(s11)
sh x11,40(s11)
sh x12,44(s11)
sh x13,48(s11)
sh x14,52(s11)


lhu x1,0(s11)
lhu x2,4(s11)
lhu x3,8(s11)
lhu x4,12(s11)
lhu x5,16(s11)
lhu x6,20(s11)
lhu x7,24(s11)
lhu x8,28(s11)
lhu x9,32(s11)
lhu x10,36(s11)
lhu x11,40(s11)
lhu x12,44(s11)
lhu x13,48(s11)
lhu x14,52(s11)
sh x1,0(s11)
sh x2,4(s11)
sh x3,8(s11)
sh x4,12(s11)
sh x5,16(s11)
sh x6,20(s11)
sh x7,24(s11)
sh x8,28(s11)
sh x9,32(s11)
sh x10,36(s11)
sh x11,40(s11)
sh x12,44(s11)
sh x13,48(s11)
sh x14,52(s11)

lw x15,56(s11)
lw x16,60(s11)
lw x17,64(s11)
lw x18,68(s11)
lw x19,72(s11)
lw x20,76(s11)
lw x21,80(s11)
lw x22,84(s11)
lw x23,88(s11)
lw x24,92(s11)
lw x25,96(s11)
lw x26,100(s11)
li x28, 0x00200000 //x28
lw x27,104(x28)
sw x27,104(x28)
li s11, 0x00200000 //x27
lw x28,108(s11)
lw x29,112(s11)
lw x30,116(s11)
lw x31,120(s11)
sw x15,56(s11)
sw x16,60(s11)
sw x17,64(s11)
sw x18,68(s11)
sw x19,72(s11)
sw x20,76(s11)
sw x21,80(s11)
sw x22,84(s11)
sw x23,88(s11)
sw x24,92(s11)
sw x25,96(s11)
sw x26,100(s11)
sw x28,108(s11)
sw x29,112(s11)
sw x30,116(s11)
sw x31,120(s11)

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
li x23,0
li x24,0
li x25,0
li x26,0
//li x27,0
li s11, 0x00200000 //x27
li x28,0
li x29,0
li x30,0
li x31,0


p.lb x1,0(s11)
p.lb x2,4(s11)
p.lb x3,8(s11)
p.lb x4,12(s11)
p.lb x5,16(s11)
p.lb x6,20(s11)
p.lb x7,24(s11)
p.lb x8,28(s11)
p.lb x9,60(s11)
p.lb x10,32(s11)
p.lb x11,36(s11)
p.lb x12,40(s11)
p.lb x13,44(s11)
p.lb x14,48(s11)
p.lb x15,60(s11)
p.sb x1,63(s11)
p.sb x2,1000(s11)
p.sb x3,104(s11)
p.sb x4,52(s11)
p.sb x5,31(s11)
p.sb x6,78(s11)
p.sb x7,90(s11)
p.sb x8,99(s11)
p.sb x9,94(s11)
p.sb x10,27(s11)
p.sb x11,0(s11)
p.sb x12,11(s11)
p.sb x13,22(s11)
p.sb x14,18(s11)
p.sb x15,44(s11)



p.lb x16,x10(s11)
p.lb x17,x30(s11)
p.lb x18,x23(s11)
p.lb x19,x21(s11)
p.lb x20,x9(s11)
p.lb x21,x4(s11)
p.lb x22,x3(s11)
p.lb x23,x31(s11)
p.lb x24,x0(s11)
p.lb x25,x8(s11)
p.lb x26,x11(s11)
li x28, 0x00200000 //x28
p.lb x27,x23(x28)
p.sb x27,11(x28)
li s11, 0x00200000 //x27
p.lb x28,x26(s11)
p.lb x29,x1(s11)
p.lb x30,x2(s11)
p.sb x16,63(s11)
p.sb x17,1000(s11)
p.sb x18,104(s11)
p.sb x19,52(s11)
p.sb x20,31(s11)
p.sb x21,78(s11)
p.sb x22,90(s11)
p.sb x23,99(s11)
p.sb x24,94(s11)
p.sb x25,27(s11)
p.sb x26,0(s11)
p.sb x28,22(s11)
p.sb x29,18(s11)
p.sb x30,44(s11)


li x3,0


p.lbu x1,0(s11)
p.lbu x2,0(s11)
p.lbu x3,60(s11)
p.lbu x4,0(s11)
p.lbu x5,0(s11)
p.lbu x6,60(s11)
p.lbu x7,0(s11)
p.lbu x8,0(s11)
p.lbu x9,60(s11)
p.lbu x10,0(s11)
p.lbu x11,0(s11)
p.lbu x12,60(s11)
p.lbu x13,0(s11)
p.lbu x14,0(s11)
p.lbu x15,60(s11)
p.sb x1,63(s11)
p.sb x2,1000(s11)
p.sb x3,104(s11)
p.sb x4,52(s11)
p.sb x5,31(s11)
p.sb x6,78(s11)
p.sb x7,90(s11)
p.sb x8,99(s11)
p.sb x9,94(s11)
p.sb x10,27(s11)
p.sb x11,0(s11)
p.sb x12,11(s11)
p.sb x13,22(s11)
p.sb x14,18(s11)
p.sb x15,44(s11)


p.lbu x16,x10(s11)
p.lbu x17,x30(s11)
p.lbu x18,x23(s11)
p.lbu x19,x21(s11)
p.lbu x20,x9(s11)
p.lbu x21,x4(s11)
p.lbu x22,x3(s11)
p.lbu x23,x31(s11)
p.lbu x24,x0(s11)
p.lbu x25,x8(s11)
p.lbu x26,x11(s11)
li x28, 0x00200000 //x28
p.lbu x27,x23(x28)
p.sb x27,11(x28)
li s11, 0x00200000 //x27
p.lbu x28,x26(s11)
p.lbu x29,x1(s11)
p.lbu x30,x2(s11)
p.sb x16,63(s11)
p.sb x17,1000(s11)
p.sb x18,104(s11)
p.sb x19,52(s11)
p.sb x20,31(s11)
p.sb x21,78(s11)
p.sb x22,90(s11)
p.sb x23,99(s11)
p.sb x24,94(s11)
p.sb x25,27(s11)
p.sb x26,0(s11)
p.sb x28,22(s11)
p.sb x29,18(s11)
p.sb x30,44(s11)


p.lh x1,0(s11)
p.lh x2,0(s11)
p.lh x3,60(s11)
p.lh x4,0(s11)
p.lh x5,0(s11)
p.lh x6,60(s11)
p.lh x7,0(s11)
p.lh x8,0(s11)
p.lh x9,60(s11)
p.lh x10,0(s11)
p.lh x11,0(s11)
p.lh x12,60(s11)
p.lh x13,0(s11)
p.lh x14,0(s11)
p.lh x15,60(s11)
p.sh x1,63(s11)
p.sh x2,100(s11)
p.sh x3,104(s11)
p.sh x4,52(s11)
p.sh x5,31(s11)
p.sh x6,78(s11)
p.sh x7,90(s11)
p.sh x8,99(s11)
p.sh x9,94(s11)
p.sh x10,27(s11)
p.sh x11,0(s11)
p.sh x12,11(s11)
p.sh x13,22(s11)
p.sh x14,18(s11)
p.sh x15,44(s11)


li x3,0



p.lh x16,x1(s11)
p.lh x17,x2(s11)
p.lh x18,x30(s11)
p.lh x19,x20(s11)
p.lh x20,x17(s11)
p.lh x21,x19(s11)
p.lh x22,x6(s11)
p.lh x23,x8(s11)
p.lh x24,x12(s11)
p.lh x25,x19(s11)
p.lh x26,x25(s11)
li x28, 0x00200000 //x28
p.lh x27,x23(x28)
li s11, 0x00200000 //x27
p.lh x28,x29(s11)
p.lh x29,x28(s11)
p.lh x30,x28(s11)
p.sh x1,64(s11)
p.sh x2,100(s11)
p.sh x3,104(s11)
p.sh x4,52(s11)
p.sh x5,32(s11)
p.sh x6,78(s11)
p.sh x7,90(s11)
p.sh x8,100(s11)
p.sh x9,94(s11)
p.sh x10,36(s11)
p.sh x11,0(s11)
p.sh x12,12(s11)
p.sh x13,24(s11)
p.sh x14,16(s11)
p.sh x15,44(s11)



p.lhu x1,0(s11)
p.lhu x2,0(s11)
p.lhu x3,60(s11)
p.lhu x4,0(s11)
p.lhu x5,0(s11)
p.lhu x6,60(s11)
p.lhu x7,0(s11)
p.lhu x8,0(s11)
p.lhu x9,60(s11)
p.lhu x10,0(s11)
p.lhu x11,0(s11)
p.lhu x12,60(s11)
p.lhu x13,0(s11)
p.lhu x14,0(s11)
p.lhu x15,60(s11)
p.sh x1,63(s11)
p.sh x2,100(s11)
p.sh x3,104(s11)
p.sh x4,52(s11)
p.sh x5,31(s11)
p.sh x6,78(s11)
p.sh x7,90(s11)
p.sh x8,99(s11)
p.sh x9,94(s11)
p.sh x10,27(s11)
p.sh x11,0(s11)
p.sh x12,11(s11)
p.sh x13,22(s11)
p.sh x14,18(s11)
p.sh x15,44(s11)




li x1, 0
li x2, 0
li x3, 0
li x4, 0
li x5, 0
li x6, 0
li x7, 0
li x8, 0
li x9, 0
li x10, 0
li x11, 0
li x12, 0
li x13, 0
li x14, 0
li x15, 0
li x16, 0
li x17, 0
li x18, 0
li x19, 0
li x20, 0
li x21, 0
li x22, 0
li x23, 0
li x24, 0
li x25, 0
li x26, 0
//li x27, 0
li s11, 0x00200000 //x27
li x28, 0
li x29, 0
li x30, 0
li x31, 0




p.lhu x1,x25(s11)
p.lhu x2,x2(s11)
p.lhu x3,x30(s11)
p.lhu x4,x20(s11)
p.lhu x5,x17(s11)
p.lhu x6,x19(s11)
p.lhu x7,x6(s11)
p.lhu x8,x8(s11)
p.lhu x9,x12(s11)
p.lhu x10,x19(s11)
p.lhu x11,x25(s11)
p.lhu x12,x23(s11)
p.lhu x13,x29(s11)
p.lhu x14,x28(s11)
p.lhu x15,x28(s11)
p.sh x1,63(s11)
p.sh x2,100(s11)
p.sh x3,104(s11)
p.sh x4,52(s11)
p.sh x5,31(s11)
p.sh x6,78(s11)
p.sh x7,90(s11)
p.sh x8,99(s11)
p.sh x9,94(s11)
p.sh x10,27(s11)
p.sh x11,0(s11)
p.sh x12,11(s11)
p.sh x13,22(s11)
p.sh x14,18(s11)
p.sh x15,44(s11)




p.lw x1,0(s11)
p.lw x2,0(s11)
p.lw x3,60(s11)
p.lw x4,0(s11)
p.lw x5,0(s11)
p.lw x6,60(s11)
p.lw x7,0(s11)
p.lw x8,0(s11)
p.lw x9,60(s11)
p.lw x10,0(s11)
p.lw x11,0(s11)
p.lw x12,60(s11)
p.lw x13,0(s11)
p.lw x14,0(s11)
p.lw x15,60(s11)
p.sw x1,63(s11)
p.sw x2,1000(s11)
p.sw x3,104(s11)
p.sw x4,52(s11)
p.sw x5,31(s11)
p.sw x6,78(s11)
p.sw x7,90(s11)
p.sw x8,99(s11)
p.sw x9,94(s11)
p.sw x10,27(s11)
p.sw x11,0(s11)
p.sw x12,11(s11)
p.sw x13,22(s11)
p.sw x14,18(s11)
p.sw x15,44(s11)


p.lw x16,x2(s11)
p.lw x17,x4(s11)
p.lw x18,x8(s11)
p.lw x19,x1(s11)
p.lw x20,x3(s11)
p.lw x21,x6(s11)
p.lw x22,x9(s11)
p.lw x23,x25(s11)
p.lw x24,x28(s11)
p.lw x25,x22(s11)
p.lw x26,x30(s11)
li x28, 0x00200000 //x28
p.lw x27,x31(x28)
p.lw x30,x27(x28)
li s11, 0x00200000 //x27
p.lw x28,x1(s11)
p.lw x29,x28(s11)
p.sw x1,63(s11)
p.sw x2,1000(s11)
p.sw x3,104(s11)
p.sw x4,52(s11)
p.sw x5,31(s11)
p.sw x6,78(s11)
p.sw x7,90(s11)
p.sw x8,99(s11)
p.sw x9,94(s11)
p.sw x10,27(s11)
p.sw x11,0(s11)
p.sw x12,11(s11)
p.sw x13,22(s11)
p.sw x14,18(s11)
p.sw x15,44(s11)



li x3,0
li x2,0
li x4,0

again:
rdcycleh x3
rdcycle x2
rdcycleh x4
bne x3, x4, again

sw x2,0(s11)
sw x3,4(s11)
sw x4,8(s11)

csrr x1,0x785
csrr x2,0x786
sw x1,0(s11)
sw x2,4(s11)

//RVTEST_PASS

//RVTEST_CODE_END

//.data

//RVTEST_DATA_BEGIN

//TEST_DATA

//RVTEST_DATA_END
