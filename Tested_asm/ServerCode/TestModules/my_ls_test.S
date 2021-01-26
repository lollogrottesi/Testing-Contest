li x31, 0x00200000
li x30, 0 
li x6, 2000
li x7, 1

data_section_1:
	lw x5, 0(x30)
	sw x5, 0(x31)
	addi x30, x30, 4
	addi x31, x31, 4
	sub x6, x6, x7
beqz x6, data_section_1

li x6, 500
li x7, 1
li x30, 0x00000F00
li x31, 0x0020BB8
data_section_2:
	lw x5, 0(x30)
	sw x5, 0(x31)
	addi x30, x30, 4
	addi x31, x31, 4
	sub x6, x6, x7
beqz x6, data_section_2

li x6, 500
li x7, 1
li x30, 0x0000F0F0
li x31, 0x0020F0F0
data_section_3:
	lw x5, 0(x30)
	sw x5, 0(x31)
	addi x30, x30, 4
	addi x31, x31, 4
	sub x6, x6, x7
beqz x6, data_section_3

li x6, 1000
li x7, 1
li x30, 0x000F00F
li x31, 0x00203000
data_section_4:
	lw x5, 0(x30)
	sw x5, 0(x31)
	addi x30, x30, 4
	addi x31, x31, 4
	sub x6, x6, x7
beqz x6, data_section_4

li x5, 0xAAAAAAAA
li x6, 0x55555555
li x31, 0x00200000
sw x5, 0(x31)
sw x6, 0(x31)
li x30, 0x00200000
sw x5, 0(x30)
sw x6, 0(x30)
li x29, 0x00200000
sw x5, 0(x29)
sw x6, 0(x29)
li x28, 0x00200000
sw x5, 0(x28)
sw x6, 0(x28)
li x27, 0x00200000
sw x5, 0(x27)
sw x6, 0(x27)
li x26, 0x00200000
sw x5, 0(x26)
sw x6, 0(x26)
li x25, 0x00200000
sw x5, 0(x25)
sw x6, 0(x25)
li x24, 0x00200000
sw x5, 0(x24)
sw x6, 0(x24)
li x23, 0x00200000
sw x5, 0(x23)
sw x6, 0(x23)
li x22, 0x00200000
sw x5, 0(x22)
sw x6, 0(x22)
li x21, 0x00200000
sw x5, 0(x21)
sw x6, 0(x21)
li x20, 0x00200000
sw x5, 0(x20)
sw x6, 0(x20)
li x19, 0x00200000
sw x5, 0(x19)
sw x6, 0(x19)
li x18, 0x00200000
sw x5, 0(x18)
sw x6, 0(x18)
li x17, 0x00200000
sw x5, 0(x17)
sw x6, 0(x17)
li x16, 0x00200000
sw x5, 0(x16)
sw x6, 0(x16)
li x15, 0x00200000
sw x5, 0(x15)
sw x6, 0(x15)
li x14, 0x00200000
sw x5, 0(x14)
sw x6, 0(x14)
li x13, 0x00200000
sw x5, 0(x13)
sw x6, 0(x13)
li x12, 0x00200000
sw x5, 0(x12)
sw x6, 0(x12)
li x11, 0x00200000
sw x5, 0(x11)
sw x6, 0(x11)
li x10, 0x00200000
sw x5, 0(x10)
sw x6, 0(x10)
li x9, 0x00200000
sw x5, 0(x9)
sw x6, 0(x9)
li x8, 0x00200000
sw x5, 0(x8)
sw x6, 0(x8)
li x7, 0x00200000
sw x5, 0(x7)
sw x6, 0(x7)
li x4, 0x00200000
sw x5, 0(x4)
sw x6, 0(x4)
li x3, 0x00200000
sw x5, 0(x3)
sw x6, 0(x3)
//END OF MEMORY 0x00240000

//GR31 LS
# Store and load word, halfword, byte
li                  x3,     0xc2c76c49
li                  x4,     0x00200c91
sw                  x3,     0(x4)
lw                  x3,     0(x4)
li                  x4,     0x001047ba
sw                  x3,     0(x4)
li                  x28,    0x0e5dd2a8
li                  x23,    0x00203d08
sw                  x28,    0(x23)
lw                  x5,     0(x23)
li                  x23,    0x00201b59
sw                  x5,     0(x23)
li                  x19,    0x8e0de182
li                  x17,    0x00203a70
sw                  x19,    0(x17)
lw                  x18,    0(x17)
li                  x17,    0x002057dd
sw                  x18,    0(x17)
li                  x7,     0x86a8e2d
li                  x18,    0x0020564b
sh                  x7,     0(x18)
lh                  x30,    0(x18)
li                  x18,    0x0020620d
sw                  x30,    0(x18)
li                  x4,     0x7c8e5b75
li                  x28,    0x00204546
sh                  x4,     0(x28)
lh                  x1,     0(x28)
li                  x28,    0x00206897
sw                  x1,     0(x28)
li                  x11,    0x3dff324a
li                  x24,    0x00201b2d
sh                  x11,    0(x24)
lh                  x10,    0(x24)
li                  x24,    0x00207025
sw                  x10,    0(x24)
li                  x18,    0x11f0a287
li                  x12,    0x002069b0
sb                  x18,    0(x12)
lb                  x2,     0(x12)
li                  x12,    0x001077f8
sw                  x2,     0(x12)
li                  x2,     0xd38130eb
li                  x16,    0x00201514
sb                  x2,     0(x16)
lb                  x6,     0(x16)
li                  x16,    0x00205ca3
sw                  x6,     0(x16)
li                  x31,    0xd17f550f
li                  x5,     0x00206fa7
sb                  x31,    0(x5)
lb                  x27,    0(x5)
li                  x5,     0x0020531c
sw                  x27,    0(x5)

addi                x5,     x0,     1
li x6, 0x00200000
li x31,0x00200000

p.sb                x5,     1(x6!)
sw                  x6,     0(x31)
p.sb                x5,     x5(x6!)
sw                  x6,     0(x31)
p.sb                x5,     x5(x6)
addi                x6,     x31,     0
p.sh                x5,     1(x6!)
sw                  x6,     0(x31)
p.sh                x5,     x5(x6!)
sw                  x6,     0(x31)
p.sh                x5,     x5(x6)
addi                x6,     x31,     0
p.sw                x5,     1(x6!)
sw                  x6,     0(x31)
p.sw                x5,     x5(x6!)
sw                  x6,     0(x31)
p.sw                x5,     x5(x6)

li x6, 0
li x31, 0x00200000
//TEST LOAD
p.lb                x5,     1(x6!)
sw                  x5,     0(x31)
sw                  x6,     0(x31)
p.lb                x5,     x5(x6!)
sw                  x5,     0(x31)
sw                  x6,     0(x31)
p.lb                x5,     x5(x6)
sw                  x5,     0(x31)
sw                  x6,     0(x31)
addi                x6,     x31,     0
p.lbu               x5,     1(x6!)
sw                  x5,     0(x31)
sw                  x6,     0(x31)
p.lbu               x5,     x5(x6!)
sw                  x5,     0(x31)
sw                  x6,     0(x31)
p.lbu               x5,     x5(x6)
sw                  x5,     0(x31)
sw                  x6,     0(x31)