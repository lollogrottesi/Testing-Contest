li x31, 0x00200000
li x30, 0 
li x6, 2000
li x7, 1
li x8, 1
data_section_1:
	p.lw x5, x8(x30!)
	p.sw x5, x8(x31!)
	sub x6, x6, x7
beqz x6, data_section_1

li x6, 500
li x7, 1
li x30, 0x00000F00
li x31, 0x0020BB8
li x8, 1
data_section_2:
	p.lbu x5, x8(x30!)
	p.sb x5, x8(x31!)
	sub x6, x6, x7
beqz x6, data_section_2

li x6, 500
li x7, 1
li x30, 0x0000F0F0
li x31, 0x0020F0F0
li x8, 1
data_section_3:
	p.lb x5, x8(x30!)
	p.sb x5, x8(x31!)
	sub x6, x6, x7
beqz x6, data_section_3

li x6, 1000
li x7, 1
li x30, 0x000F00F
li x31, 0x00203000
li x8, 1
data_section_4:
	p.lh x5, x8(x30!)
	p.sh x5, x8(x31!)
	sub x6, x6, x7
beqz x6, data_section_4


li x6, 500
li x7, 1
li x30, 0x00000FF0
li x31, 0x00203000
li x8, 1
data_section_5:
	p.lhu x5, x8(x30!)
	p.sh x5, x8(x31!)
	sub x6, x6, x7
beqz x6, data_section_5


//Store random values.

li                  x3,     0x94cd1645
li                  x4,     0x00200c91
sw                  x3,     0(x4)
lw                  x3,     0(x4)
li                  x4,     0x002047ba
sw                  x3,     0(x4)
li                  x28,    0x29254756
li                  x23,    0x00203d08
sw                  x28,    0(x23)
lw                  x5,     0(x23)
li                  x23,    0x00201b59
sw                  x5,     0(x23)
li                  x19,    0x85b27942
li                  x17,    0x00203a70
sw                  x19,    0(x17)
lw                  x18,    0(x17)
li                  x17,    0x002057dd
sw                  x18,    0(x17)
li                  x7,     0xf9f149d4
li                  x18,    0x0020564b
sh                  x7,     0(x18)
lh                  x30,    0(x18)
li                  x18,    0x0020620d
sw                  x30,    0(x18)
li                  x4,     0x0eb95e3b
li                  x28,    0x00204546
sh                  x4,     0(x28)
lh                  x1,     0(x28)
li                  x28,    0x00206897
sw                  x1,     0(x28)
li                  x11,    0x4f196169
li                  x24,    0x00201b2d
sh                  x11,    0(x24)
lh                  x10,    0(x24)
li                  x24,    0x00207025
sw                  x10,    0(x24)
li                  x18,    0x582125ee
li                  x12,    0x002069b0
sb                  x18,    0(x12)
lb                  x2,     0(x12)
li                  x12,    0x002077f8
sw                  x2,     0(x12)
li                  x2,     0xd92c2064
li                  x16,    0x00201514
sb                  x2,     0(x16)
lb                  x6,     0(x16)
li                  x16,    0x00205ca3
sw                  x6,     0(x16)
li                  x31,    0x28a0a33c
li                  x5,     0x00206fa7
sb                  x31,    0(x5)
lb                  x27,    0(x5)
li                  x5,     0x0020531c
sw                  x27,    0(x5)