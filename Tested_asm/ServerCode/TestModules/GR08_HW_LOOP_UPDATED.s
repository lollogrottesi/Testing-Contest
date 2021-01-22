li x31, 0x00000000
li x25, 0xFFFFFFFF
li x1,1
csrw 0x7C0, x31
csrw 0x7C1, x31
csrw 0x7C2, x31
csrw 0x7C4, x31
csrw 0x7C5, x31
csrw 0x7C6, x31
csrrw x8, 0x7C1, x25
csrrw x7, 0x7C2, x25
csrrw x4, 0x7C4, x25
csrrw x5, 0x7C5, x25
csrrw x6, 0x7C6, x25
li x31, 0x00200001
sw x8, 0(x31)
sw x7, 0(x31)
sw x4, 0(x31)
sw x5, 0(x31)
sw x6, 0(x31)
csrr x7, 0x7C0
csrr x8, 0x7C1
csrr x9, 0x7C2
csrr x10, 0x7C4
csrr x11, 0x7C5
csrr x12, 0x7C6
sw x7, 0(x31)
sw x8, 0(x31)
sw x9, 0(x31)
sw x10, 0(x31)
sw x11, 0(x31)
sw x12, 0(x31)

lp.starti x0, HW_loopx0_0
lp.endi x0, end_HW_loopx0_0
lp.counti x0, 0xF
csrr x7, 0x7C0
csrr x8, 0x7C1
sw x7, 0(x31)
sw x8, 0(x31)
//WORKS
HW_loopx0_0:
	csrr x9, 0x7C2
end_HW_loopx0_0: 
	sw x9, 0(x31)
	li x27, 10
	lp.starti x1, HW_loopx1_0
	lp.endi x1, end_HW_loopx1_0
	lp.count x1, x27
	csrr x7, 0x7C4
	csrr x8, 0x7C5
	nop
	sw x7, 0(x31)
	sw x8, 0(x31)
HW_loopx1_0:
	csrr x9, 0x7C6
end_HW_loopx1_0: 
	sw x9, 0(x31)
	li x27, 4
	lp.setup x0, x27, end_HW_loopx0_0_2
	addi x27,x27, 15
end_HW_loopx0_0_2: 
	sw x27, 0(x31)
	lp.setupi x0, 31, end_HW_loopx0_0_3
	addi x27,x27, 15
	nop
end_HW_loopx0_0_3: 
	sw x27, 0(x31)
	lp.setup x1, x27, end_HW_loopx0_0_4
	addi x27,x27, 15
end_HW_loopx0_0_4: 
	sw x27, 0(x31)
	lp.setupi x1, 31, end_HW_loopx0_0_5
	addi x27,x27, 15
end_HW_loopx0_0_5: 
	sw x27, 0(x31)
	li x27, 4
	lp.setup x0, x27, end_HW_loopx0_0_22
	addi x27,x27, 15
	nop
end_HW_loopx0_0_22: 
	sw x27, 0(x31)
	lp.setupi x0, 4, end_HW_loopx0_0_33
	addi x27,x27, 15
	nop
	nop
end_HW_loopx0_0_33: 
	sw x27, 0(x31)
	lp.setup x1, x27, end_HW_loopx0_0_44
	addi x27,x27, 15
	nop
	end_HW_loopx0_0_44: 
	sw x27, 0(x31)
	lp.setupi x1, 4, end_HW_loopx0_0_55
	addi x27,x27, 15
	nop
	nop
end_HW_loopx0_0_55: 
	sw x27, 0(x31)
	li x5, 2
	li x28, 3
	li x27, 0x80000000
	lp.starti x0, HW_loopx0_05
	lp.endi x0, end_HW_loopx0_05
	lp.count x0, x27
HW_loopx0_05:
	beq x5, x28, endl1_0
	add x5, x5, 1
	csrr x9, 0x7C2
end_HW_loopx0_05: 
	sw x9, 0(x31)
endl1_0:
	li x5, 2
	lp.starti x1, HW_loopx1_05
	lp.endi x1, end_HW_loopx1_05
	lp.count x1, x27
	HW_loopx1_05:
	beq x5, x28, endl2_0
	add x5, x5, 1
	csrr x9, 0x7C6
end_HW_loopx1_05: 
	sw x9, 0(x31)
endl2_0:
	li x5, 2
	lp.starti x0, HW_loopx0_06
	lp.endi x0, end_HW_loopx0_06
	lp.counti x0, 0x800
HW_loopx0_06:
	beq x5, x28, endl1_06
	add x5, x5, 1
	csrr x9, 0x7C2
end_HW_loopx0_06: 
	sw x9, 0(x31)
endl1_06:
	li x5, 2
	lp.starti x1, HW_loopx1_06
	lp.endi x1, end_HW_loopx1_06
	lp.counti x1, 0x800
HW_loopx1_06:
	beq x5, x28, endl2_06
	add x5, x5, 1
	csrr x9, 0x7C6
end_HW_loopx1_06: 
	sw x9, 0(x31)
endl2_06:
