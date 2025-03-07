//#include "riscv_test.h"

//#include "test_macros.h"



//RVTEST_RV32U

//RVTEST_CODE_BEGIN

//base address
li x31,0x00200000

li x2,0x000000FF
li x3,0xF0F0F0F0
li x4,0x0000FFFF
li x5,0xFFFF0F0F
li x6,0xFFFFFF00
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


mul x10,x0,x0
sw x10,0(x31)

mul x11,x2,x2
sw x11,4(x31)

mul x12,x3,x3
sw x12,8(x31)

mul x13,x4,x4
sw x13,12(x31)

mul x15,x5,x5
sw x15,16(x31)

mul x16,x6,x6
sw x16,20(x31)

mul x17,x7,x7
sw x17,24(x31)

mul x18,x8,x8
sw x18,28(x31)

mul x19,x9,x9
sw x19,32(x31)

mul x20,x0,x2
sw x20,36(x31)

mul x21,x2,x0
sw x21,40(x31)

mul x22,x3,x0
sw x22,44(x31)

mul x23,x0,x3
sw x23,48(x31)

mul x24,x4,x0
sw x24,52(x31)

mul x25,x0,x4
sw x25,56(x31)

mul x26,x5,x0
sw x26,60(x31)

mul x27,x0,x5
sw x27,64(x31)

mul x28,x6,x0
sw x28,68(x31)

mul x29,x0,x6
sw x29,72(x31)

mul x30,x7,x0
sw x30,76(x31)

mul x10,x8,x0
sw x10,84(x31)

mul x11,x0,x8
sw x11,88(x31)

mul x12,x9,x0
sw x12,92(x31)

mul x13,x0,x9
sw x13,96(x31)

mul x14,x2,x2
sw x14,100(x31)

mul x15,x2,x3
sw x15,104(x31)

mul x16,x3,x2
sw x16,108(x31)

mul x17,x2,x4
sw x17,112(x31)

mul x18,x4,x2
sw x18,116(x31)

mul x19,x2,x5
sw x19,120(x31)

mul x20,x5,x2
sw x20,124(x31)

mul x21,x2,x6
sw x21,128(x31)

mul x21,x6,x2
sw x21,132(x31)

mul x22,x2,x7
sw x22,136(x31)

mul x23,x7,x2
sw x23,140(x31)

mul x24,x2,x8
sw x24,144(x31)

mul x25,x8,x2
sw x25,148(x31)

mul x26,x2,x9
sw x26,152(x31)

mul x27,x9,x2
sw x27,156(x31)

mul x28,x3,x4
sw x28,160(x31)

mul x28,x4,x3
sw x28,164(x31)

mul x29,x3,x5
sw x29,168(x31)

mul x30,x5,x3
sw x30,172(x31)

mul x10,x6,x3
sw x10,180(x31)

mul x11,x3,x7
sw x11,184(x31)

mul x12,x7,x3
sw x12,188(x31)

mul x13,x3,x8
sw x13,192(x31)

mul x14,x8,x3
sw x14,196(x31)

mul x15,x3,x9
sw x15,200(x31)

mul x16,x9,x3
sw x16,204(x31)

mul x17,x4,x5
sw x17,208(x31)

mul x18,x5,x4
sw x18,212(x31)

mul x19,x4,x6
sw x19,216(x31)

mul x20,x6,x4
sw x20,220(x31)

mul x21,x4,x7
sw x21,224(x31)

mul x22,x7,x4
sw x22,228(x31)

mul x23,x4,x8
sw x23,232(x31)

mul x24,x8,x4
sw x24,236(x31)

mul x25,x4,x9
sw x25,240(x31)

mul x26,x9,x4
sw x26,244(x31)

mul x27,x5,x6
sw x27,248(x31)

mul x28,x6,x5
sw x28,252(x31)

mul x29,x5,x7
sw x29,256(x31)

mul x30,x7,x5
sw x30,260(x31)

mul x10,x8,x5
sw x10,268(x31)

mul x11,x5,x9
sw x11,272(x31)

mul x1,x9,x5
sw x1,276(x31)

mul x2,x6,x7
sw x2,280(x31)

mul x3,x7,x6
sw x3,284(x31)

mul x4,x6,x8
sw x4,288(x31)

mul x5,x8,x6
sw x5,292(x31)

mul x1,x6,x9
sw x1,296(x31)

mul x2,x9,x6
sw x2,300(x31)

mul x3,x7,x8
sw x3,304(x31)

mul x4,x8,x7
sw x4,308(x31)

mul x5,x7,x9
sw x5,312(x31)

mul x6,x9,x7
sw x6,316(x31)

mul x7,x8,x9
sw x7,320(x31)

mul x8,x9,x8
sw x8,324(x31)

mul x1,x0,x0
sw x1,328(x31)

mul x2,x2,x2
sw x2,332(x31)

mul x3,x3,x3
sw x3,336(x31)

mul x4,x4,x4
sw x4,340(x31)

mul x5,x5,x5
sw x5,344(x31)

mul x6,x6,x6
sw x6,348(x31)

mul x7,x7,x7
sw x7,352(x31)

mul x8,x8,x8
sw x8,356(x31)

mul x9,x9,x9
sw x9,360(x31)

mul x10,x10,x10
sw x10,364(x31)

mul x11,x11,x11
sw x11,368(x31)

mul x12,x12,x12
sw x12,372(x31)

mul x13,x13,x13
sw x13,376(x31)

mul x14,x14,x14
sw x14,380(x31)

mul x15,x15,x15
sw x15,384(x31)

mul x16,x16,x16
sw x16,388(x31)

mul x17,x17,x17
sw x17,392(x31)

mul x18,x18,x18
sw x18,396(x31)

mul x19,x19,x19
sw x19,400(x31)

mul x20,x20,x20
sw x20,404(x31)

mul x21,x21,x21
sw x21,408(x31)

mul x22,x22,x22
sw x22,412(x31)

mul x23,x23,x23
sw x23,416(x31)

mul x24,x24,x24
sw x24,420(x31)

mul x25,x25,x25
sw x25,424(x31)

mul x26,x26,x26
sw x26,428(x31)

mul x27,x27,x27
sw x27,432(x31)

mul x28,x28,x28
sw x28,436(x31)

mul x29,x29,x29
sw x29,440(x31)

mul x30,x30,x30
sw x30,444(x31)

mul x1,x0,x7
sw x1,80(x31)

mul x1,x3,x6
sw x1,176(x31)

mul x1,x5,x8
sw x1,264(x31)

mul x1,x1,x1
sw x1,448(x31)


li x0,0x00000000
li x2,0xFFFF00FF
li x3,0x0F0FFF00
li x4,0xF0F0FFFF
li x5,0xFF000000
li x6,0x00FFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


mulh x10,x0,x0
sw x10,0(x31)

mulh x11,x2,x2
sw x11,4(x31)

mulh x12,x3,x3
sw x12,8(x31)

mulh x13,x4,x4
sw x13,12(x31)

mulh x15,x5,x5
sw x15,16(x31)

mulh x16,x6,x6
sw x16,20(x31)

mulh x17,x7,x7
sw x17,24(x31)

mulh x18,x8,x8
sw x18,28(x31)

mulh x19,x9,x9
sw x19,32(x31)

mulh x20,x0,x2
sw x20,36(x31)

mulh x21,x2,x0
sw x21,40(x31)

mulh x22,x3,x0
sw x22,44(x31)

mulh x23,x0,x3
sw x23,48(x31)

mulh x24,x4,x0
sw x24,52(x31)

mulh x25,x0,x4
sw x25,56(x31)

mulh x26,x5,x0
sw x26,60(x31)

mulh x27,x0,x5
sw x27,64(x31)

mulh x28,x6,x0
sw x28,68(x31)

mulh x29,x0,x6
sw x29,72(x31)

mulh x30,x7,x0
sw x30,76(x31)


mulh x10,x8,x0
sw x10,84(x31)

mulh x11,x0,x8
sw x11,88(x31)

mulh x12,x9,x0
sw x12,92(x31)

mulh x13,x0,x9
sw x13,96(x31)

mulh x14,x2,x2
sw x14,100(x31)

mulh x15,x2,x3
sw x15,104(x31)

mulh x16,x3,x2
sw x16,108(x31)

mulh x17,x2,x4
sw x17,112(x31)

mulh x18,x4,x2
sw x18,116(x31)

mulh x19,x2,x5
sw x19,120(x31)

mulh x20,x5,x2
sw x20,124(x31)

mulh x21,x2,x6
sw x21,128(x31)

mulh x21,x6,x2
sw x21,132(x31)

mulh x22,x2,x7
sw x22,136(x31)

mulh x23,x7,x2
sw x23,140(x31)

mulh x24,x2,x8
sw x24,144(x31)

mulh x25,x8,x2
sw x25,148(x31)

mulh x26,x2,x9
sw x26,152(x31)

mulh x27,x9,x2
sw x27,156(x31)

mulh x28,x3,x4
sw x28,160(x31)

mulh x28,x4,x3
sw x28,164(x31)

mulh x29,x3,x5
sw x29,168(x31)

mulh x30,x5,x3
sw x30,172(x31)

mulh x10,x6,x3
sw x10,180(x31)

mulh x11,x3,x7
sw x11,184(x31)

mulh x12,x7,x3
sw x12,188(x31)

mulh x13,x3,x8
sw x13,192(x31)

mulh x14,x8,x3
sw x14,196(x31)

mulh x15,x3,x9
sw x15,200(x31)

mulh x16,x9,x3
sw x16,204(x31)

mulh x17,x4,x5
sw x17,208(x31)

mulh x18,x5,x4
sw x18,212(x31)

mulh x19,x4,x6
sw x19,216(x31)

mulh x20,x6,x4
sw x20,220(x31)

mulh x21,x4,x7
sw x21,224(x31)

mulh x22,x7,x4
sw x22,228(x31)

mulh x23,x4,x8
sw x23,232(x31)

mulh x24,x8,x4
sw x24,236(x31)

mulh x25,x4,x9
sw x25,240(x31)

mulh x26,x9,x4
sw x26,244(x31)

mulh x27,x5,x6
sw x27,248(x31)

mulh x28,x6,x5
sw x28,252(x31)

mulh x29,x5,x7
sw x29,256(x31)

mulh x30,x7,x5
sw x30,260(x31)

mulh x10,x8,x5
sw x10,268(x31)

mulh x11,x5,x9
sw x11,272(x31)

mulh x1,x9,x5
sw x1,276(x31)

mulh x2,x6,x7
sw x2,280(x31)

mulh x3,x7,x6
sw x3,284(x31)

mulh x4,x6,x8
sw x4,288(x31)

mulh x5,x8,x6
sw x5,292(x31)

mulh x1,x6,x9
sw x1,296(x31)

mulh x2,x9,x6
sw x2,300(x31)

mulh x3,x7,x8
sw x3,304(x31)

mulh x4,x8,x7
sw x4,308(x31)

mulh x5,x7,x9
sw x5,312(x31)

mulh x6,x9,x7
sw x6,316(x31)

mulh x7,x8,x9
sw x7,320(x31)

mulh x8,x9,x8
sw x8,324(x31)

mulh x1,x0,x0
sw x1,328(x31)

mulh x2,x2,x2
sw x2,332(x31)

mulh x3,x3,x3
sw x3,336(x31)

mulh x4,x4,x4
sw x4,340(x31)

mulh x5,x5,x5
sw x5,344(x31)

mulh x6,x6,x6
sw x6,348(x31)

mulh x7,x7,x7
sw x7,352(x31)

mulh x8,x8,x8
sw x8,356(x31)

mulh x9,x9,x9
sw x9,360(x31)

mulh x10,x10,x10
sw x10,364(x31)

mulh x11,x11,x11
sw x11,368(x31)

mulh x12,x12,x12
sw x12,372(x31)

mulh x13,x13,x13
sw x13,376(x31)

mulh x14,x14,x14
sw x14,380(x31)

mulh x15,x15,x15
sw x15,384(x31)

mulh x16,x16,x16
sw x16,388(x31)

mulh x17,x17,x17
sw x17,392(x31)

mulh x18,x18,x18
sw x18,396(x31)

mulh x19,x19,x19
sw x19,400(x31)

mulh x20,x20,x20
sw x20,404(x31)

mulh x21,x21,x21
sw x21,408(x31)

mulh x22,x22,x22
sw x22,412(x31)

mulh x23,x23,x23
sw x23,416(x31)

mulh x24,x24,x24
sw x24,420(x31)

mulh x25,x25,x25
sw x25,424(x31)

mulh x26,x26,x26
sw x26,428(x31)

mulh x27,x27,x27
sw x27,432(x31)

mulh x28,x28,x28
sw x28,436(x31)

mulh x29,x29,x29
sw x29,440(x31)

mulh x30,x30,x30
sw x30,444(x31)

mulh x1,x0,x7
sw x1,80(x31)

mulh x1,x3,x6
sw x1,176(x31)

mulh x1,x5,x8
sw x1,264(x31)

mulh x1,x1,x1
sw x1,448(x31)



li x0,0x00000000
li x2,0xFFFF0001
li x3,0xF0F0F0F0
li x4,0x0F0FFFFF
li x5,0xFF000000
li x6,0x00FFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


mulhsu x10,x0,x0
sw x10,0(x31)

mulhsu x11,x2,x2
sw x11,4(x31)

mulhsu x12,x3,x3
sw x12,8(x31)

mulhsu x13,x4,x4
sw x13,12(x31)

mulhsu x15,x5,x5
sw x15,16(x31)

mulhsu x16,x6,x6
sw x16,20(x31)

mulhsu x17,x7,x7
sw x17,24(x31)

mulhsu x18,x8,x8
sw x18,28(x31)

mulhsu x19,x9,x9
sw x19,32(x31)

mulhsu x20,x0,x2
sw x20,36(x31)

mulhsu x21,x2,x0
sw x21,40(x31)

mulhsu x22,x3,x0
sw x22,44(x31)

mulhsu x23,x0,x3
sw x23,48(x31)

mulhsu x24,x4,x0
sw x24,52(x31)

mulhsu x25,x0,x4
sw x25,56(x31)

mulhsu x26,x5,x0
sw x26,60(x31)

mulhsu x27,x0,x5
sw x27,64(x31)

mulhsu x28,x6,x0
sw x28,68(x31)

mulhsu x29,x0,x6
sw x29,72(x31)

mulhsu x30,x7,x0
sw x30,76(x31)

mulhsu x10,x8,x0
sw x10,84(x31)

mulhsu x11,x0,x8
sw x11,88(x31)

mulhsu x12,x9,x0
sw x12,92(x31)

mulhsu x13,x0,x9
sw x13,96(x31)

mulhsu x14,x2,x2
sw x14,100(x31)

mulhsu x15,x2,x3
sw x15,104(x31)

mulhsu x16,x3,x2
sw x16,108(x31)

mulhsu x17,x2,x4
sw x17,112(x31)

mulhsu x18,x4,x2
sw x18,116(x31)

mulhsu x19,x2,x5
sw x19,120(x31)

mulhsu x20,x5,x2
sw x20,124(x31)

mulhsu x21,x2,x6
sw x21,128(x31)

mulhsu x21,x6,x2
sw x21,132(x31)

mulhsu x22,x2,x7
sw x22,136(x31)

mulhsu x23,x7,x2
sw x23,140(x31)

mulhsu x24,x2,x8
sw x24,144(x31)

mulhsu x25,x8,x2
sw x25,148(x31)

mulhsu x26,x2,x9
sw x26,152(x31)

mulhsu x27,x9,x2
sw x27,156(x31)

mulhsu x28,x3,x4
sw x28,160(x31)

mulhsu x28,x4,x3
sw x28,164(x31)

mulhsu x29,x3,x5
sw x29,168(x31)

mulhsu x30,x5,x3
sw x30,172(x31)

mulhsu x10,x6,x3
sw x10,180(x31)

mulhsu x11,x3,x7
sw x11,184(x31)

mulhsu x12,x7,x3
sw x12,188(x31)

mulhsu x13,x3,x8
sw x13,192(x31)

mulhsu x14,x8,x3
sw x14,196(x31)

mulhsu x15,x3,x9
sw x15,200(x31)

mulhsu x16,x9,x3
sw x16,204(x31)

mulhsu x17,x4,x5
sw x17,208(x31)

mulhsu x18,x5,x4
sw x18,212(x31)

mulhsu x19,x4,x6
sw x19,216(x31)

mulhsu x20,x6,x4
sw x20,220(x31)

mulhsu x21,x4,x7
sw x21,224(x31)

mulhsu x22,x7,x4
sw x22,228(x31)

mulhsu x23,x4,x8
sw x23,232(x31)

mulhsu x24,x8,x4
sw x24,236(x31)

mulhsu x25,x4,x9
sw x25,240(x31)

mulhsu x26,x9,x4
sw x26,244(x31)

mulhsu x27,x5,x6
sw x27,248(x31)

mulhsu x28,x6,x5
sw x28,252(x31)

mulhsu x29,x5,x7
sw x29,256(x31)

mulhsu x30,x7,x5
sw x30,260(x31)

mulhsu x10,x8,x5
sw x10,268(x31)

mulhsu x11,x5,x9
sw x11,272(x31)

mulhsu x1,x9,x5
sw x1,276(x31)

mulhsu x2,x6,x7
sw x2,280(x31)

mulhsu x3,x7,x6
sw x3,284(x31)

mulhsu x4,x6,x8
sw x4,288(x31)

mulhsu x5,x8,x6
sw x5,292(x31)

mulhsu x1,x6,x9
sw x1,296(x31)

mulhsu x2,x9,x6
sw x2,300(x31)

mulhsu x3,x7,x8
sw x3,304(x31)

mulhsu x4,x8,x7
sw x4,308(x31)

mulhsu x5,x7,x9
sw x5,312(x31)

mulhsu x6,x9,x7
sw x6,316(x31)

mulhsu x7,x8,x9
sw x7,320(x31)

mulhsu x8,x9,x8
sw x8,324(x31)

mulhsu x1,x0,x0
sw x1,328(x31)

mulhsu x2,x2,x2
sw x2,332(x31)

mulhsu x3,x3,x3
sw x3,336(x31)

mulhsu x4,x4,x4
sw x4,340(x31)

mulhsu x5,x5,x5
sw x5,344(x31)

mulhsu x6,x6,x6
sw x6,348(x31)

mulhsu x7,x7,x7
sw x7,352(x31)

mulhsu x8,x8,x8
sw x8,356(x31)

mulhsu x9,x9,x9
sw x9,360(x31)

mulhsu x10,x10,x10
sw x10,364(x31)

mulhsu x11,x11,x11
sw x11,368(x31)

mulhsu x12,x12,x12
sw x12,372(x31)

mulhsu x13,x13,x13
sw x13,376(x31)

mulhsu x14,x14,x14
sw x14,380(x31)

mulhsu x15,x15,x15
sw x15,384(x31)

mulhsu x16,x16,x16
sw x16,388(x31)

mulhsu x17,x17,x17
sw x17,392(x31)

mulhsu x18,x18,x18
sw x18,396(x31)

mulhsu x19,x19,x19
sw x19,400(x31)

mulhsu x20,x20,x20
sw x20,404(x31)

mulhsu x21,x21,x21
sw x21,408(x31)

mulhsu x22,x22,x22
sw x22,412(x31)

mulhsu x23,x23,x23
sw x23,416(x31)

mulhsu x24,x24,x24
sw x24,420(x31)

mulhsu x25,x25,x25
sw x25,424(x31)

mulhsu x26,x26,x26
sw x26,428(x31)

mulhsu x27,x27,x27
sw x27,432(x31)

mulhsu x28,x28,x28
sw x28,436(x31)

mulhsu x29,x29,x29
sw x29,440(x31)

mulhsu x30,x30,x30
sw x30,444(x31)

mulhsu x1,x0,x7
sw x1,80(x31)

mulhsu x1,x3,x6
sw x1,176(x31)

mulhsu x1,x5,x8
sw x1,264(x31)

mulhsu x1,x1,x1
sw x1,448(x31)




li x0,0x00000000
li x2,0xFFFF0001
li x3,0xF0F00002
li x4,0x0F0FFFFF
li x5,0xFF000000
li x6,0x00FFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA
li x9,0xCCCCCCCC


mulhu x10,x0,x0
sw x10,0(x31)

mulhu x11,x2,x2
sw x11,4(x31)

mulhu x12,x3,x3
sw x12,8(x31)

mulhu x13,x4,x4
sw x13,12(x31)

mulhu x15,x5,x5
sw x15,16(x31)

mulhu x16,x6,x6
sw x16,20(x31)

mulhu x17,x7,x7
sw x17,24(x31)

mulhu x18,x8,x8
sw x18,28(x31)

mulhu x19,x9,x9
sw x19,32(x31)

mulhu x20,x0,x2
sw x20,36(x31)

mulhu x21,x2,x0
sw x21,40(x31)

mulhu x22,x3,x0
sw x22,44(x31)

mulhu x23,x0,x3
sw x23,48(x31)

mulhu x24,x4,x0
sw x24,52(x31)

mulhu x25,x0,x4
sw x25,56(x31)

mulhu x26,x5,x0
sw x26,60(x31)

mulhu x27,x0,x5
sw x27,64(x31)

mulhu x28,x6,x0
sw x28,68(x31)

mulhu x29,x0,x6
sw x29,72(x31)

mulhu x30,x7,x0
sw x30,76(x31)

mulhu x10,x8,x0
sw x10,84(x31)

mulhu x11,x0,x8
sw x11,88(x31)

mulhu x12,x9,x0
sw x12,92(x31)

mulhu x13,x0,x9
sw x13,96(x31)

mulhu x14,x2,x2
sw x14,100(x31)

mulhu x15,x2,x3
sw x15,104(x31)

mulhu x16,x3,x2
sw x16,108(x31)

mulhu x17,x2,x4
sw x17,112(x31)

mulhu x18,x4,x2
sw x18,116(x31)

mulhu x19,x2,x5
sw x19,120(x31)

mulhu x20,x5,x2
sw x20,124(x31)

mulhu x21,x2,x6
sw x21,128(x31)

mulhu x21,x6,x2
sw x21,132(x31)

mulhu x22,x2,x7
sw x22,136(x31)

mulhu x23,x7,x2
sw x23,140(x31)

mulhu x24,x2,x8
sw x24,144(x31)

mulhu x25,x8,x2
sw x25,148(x31)

mulhu x26,x2,x9
sw x26,152(x31)

mulhu x27,x9,x2
sw x27,156(x31)

mulhu x28,x3,x4
sw x28,160(x31)

mulhu x28,x4,x3
sw x28,164(x31)

mulhu x29,x3,x5
sw x29,168(x31)

mulhu x30,x5,x3
sw x30,172(x31)

mulhu x10,x6,x3
sw x10,180(x31)

mulhu x11,x3,x7
sw x11,184(x31)

mulhu x12,x7,x3
sw x12,188(x31)

mulhu x13,x3,x8
sw x13,192(x31)

mulhu x14,x8,x3
sw x14,196(x31)

mulhu x15,x3,x9
sw x15,200(x31)

mulhu x16,x9,x3
sw x16,204(x31)

mulhu x17,x4,x5
sw x17,208(x31)

mulhu x18,x5,x4
sw x18,212(x31)

mulhu x19,x4,x6
sw x19,216(x31)

mulhu x20,x6,x4
sw x20,220(x31)

mulhu x21,x4,x7
sw x21,224(x31)

mulhu x22,x7,x4
sw x22,228(x31)

mulhu x23,x4,x8
sw x23,232(x31)

mulhu x24,x8,x4
sw x24,236(x31)

mulhu x25,x4,x9
sw x25,240(x31)

mulhu x26,x9,x4
sw x26,244(x31)

mulhu x27,x5,x6
sw x27,248(x31)

mulhu x28,x6,x5
sw x28,252(x31)

mulhu x29,x5,x7
sw x29,256(x31)

mulhu x30,x7,x5
sw x30,260(x31)

mulhu x10,x8,x5
sw x10,268(x31)

mulhu x11,x5,x9
sw x11,272(x31)

mulhu x1,x9,x5
sw x1,276(x31)

mulhu x2,x6,x7
sw x2,280(x31)

mulhu x3,x7,x6
sw x3,284(x31)

mulhu x4,x6,x8
sw x4,288(x31)

mulhu x5,x8,x6
sw x5,292(x31)

mulhu x1,x6,x9
sw x1,296(x31)

mulhu x2,x9,x6
sw x2,300(x31)

mulhu x3,x7,x8
sw x3,304(x31)

mulhu x4,x8,x7
sw x4,308(x31)

mulhu x5,x7,x9
sw x5,312(x31)

mulhu x6,x9,x7
sw x6,316(x31)

mulhu x7,x8,x9
sw x7,320(x31)

mulhu x8,x9,x8
sw x8,324(x31)

mulhu x1,x0,x0
sw x1,328(x31)

mulhu x2,x2,x2
sw x2,332(x31)

mulhu x3,x3,x3
sw x3,336(x31)

mulhu x4,x4,x4
sw x4,340(x31)

mulhu x5,x5,x5
sw x5,344(x31)

mulhu x6,x6,x6
sw x6,348(x31)

mulhu x7,x7,x7
sw x7,352(x31)

mulhu x8,x8,x8
sw x8,356(x31)

mulhu x9,x9,x9
sw x9,360(x31)

mulhu x10,x10,x10
sw x10,364(x31)

mulhu x11,x11,x11
sw x11,368(x31)

mulhu x12,x12,x12
sw x12,372(x31)

mulhu x13,x13,x13
sw x13,376(x31)

mulhu x14,x14,x14
sw x14,380(x31)

mulhu x15,x15,x15
sw x15,384(x31)

mulhu x16,x16,x16
sw x16,388(x31)

mulhu x17,x17,x17
sw x17,392(x31)

mulhu x18,x18,x18
sw x18,396(x31)

mulhu x19,x19,x19
sw x19,400(x31)

mulhu x20,x20,x20
sw x20,404(x31)

mulhu x21,x21,x21
sw x21,408(x31)

mulhu x22,x22,x22
sw x22,412(x31)

mulhu x23,x23,x23
sw x23,416(x31)

mulhu x24,x24,x24
sw x24,420(x31)

mulhu x25,x25,x25
sw x25,424(x31)

mulhu x26,x26,x26
sw x26,428(x31)

mulhu x27,x27,x27
sw x27,432(x31)

mulhu x28,x28,x28
sw x28,436(x31)

mulhu x29,x29,x29
sw x29,440(x31)

mulhu x30,x30,x30
sw x30,444(x31)

mulhu x1,x0,x7
sw x1,80(x31)

mulhu x1,x3,x6
sw x1,176(x31)

mulhu x1,x5,x8
sw x1,264(x31)

mulhu x1,x1,x1
sw x1,448(x31)



//RVTEST_PASS

//RVTEST_CODE_END

//.data

//RVTEST_DATA_BEGIN

//TEST_DATA

//RVTEST_DATA_END
