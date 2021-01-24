

xor x0,x0,x0
xor x1,x1,x1
xor x2,x2,x2
xor x3,x3,x3
xor x4,x4,x4
xor x5,x5,x5
xor x6,x6,x6
xor x7,x7,x7
xor x8,x8,x8
xor x9,x9,x9
xor x10,x10,x10
xor x11,x11,x11
xor x12,x12,x12
xor x13,x13,x13
xor x14,x14,x14
xor x15,x15,x15
xor x16,x16,x16
xor x17,x17,x17
xor x18,x18,x18
xor x19,x19,x19
xor x20,x20,x20
xor x21,x21,x21
xor x22,x22,x22
xor x23,x23,x23
xor x24,x24,x24
xor x25,x25,x25
xor x26,x26,x26
xor x27,x27,x27
xor x28,x28,x28
xor x29,x29,x29
xor x30,x30,x30
xor x31,x31,x31

li s11,0x00200000 // x27

lui x31,512
lui x31,0
	add x31,x31,s11
lui x29,256
lui x30, 1024
lui x30, 256
lui x1,32768
addi x11,x11,32

lp.setup x0,x11,lrecov1

	csrr x29,0x7b0
	p.sw x29,x30(x31)
	csrr x29,0x7b1
	p.sw x29,x30(x31)
	csrr x29,0x7b2
	p.sw x29,x30(x31)
	csrr x29,0x7b4
	p.sw x29,x30(x31)
	csrr x29,0x7b5
	p.sw x29,x30(x31)
	csrr x29,0x7b6
	p.sw x29,x30(x31)
	
	 srai x1,x1,1
lrecov1: p.sw x1,x30(x31)

/*
addi x7, x0, 32
addi x8,x0, -1

lp.starti x1,lprecov2
lp.endi x1, lprecov2
lp.count x1,x7
lp.starti x0, lprecov3
lp.endi x0,lprecov3
lp.counti x0,16

	csrr x29,0x7b0
	p.sw x29,x30(x31)
	csrr x29,0x7b1
	p.sw x29,x30(x31)
	csrr x29,0x7b2
	p.sw x29,x30(x31)
	csrr x29,0x7b4
	p.sw x29,x30(x31)
	csrr x29,0x7b5
	p.sw x29,x30(x31)
	csrr x29,0x7b6
lprecov3: p.sw x29,x30(x31)

lprecov2: nop
*/

lui x31,256
	add x31,x31,s11

addi x20,x20,-1
addi x18,x18,1
addi x21,x21,63


lp.setup x0,x21,comprl1
.option rvc
c.li x8,15
c.nop
sw x8,4(x31)
c.nop
c.li x9,4
c.nop
sw x10,4(x31)
c.nop
c.li x4,1
c.nop
sw x4,4(x31)
c.nop
c.li x5,31
c.nop
sw x5,4(x31)
c.nop
c.lui x9,1
c.nop
sw x9,4(x31)
c.nop
	c.addi x8,7
	c.nop
	sw x8,4(x31)
	c.nop
	c.slli x8,3
	c.nop
	sw x8,4(x31)	
	c.nop
	c.srli x8,2
	c.nop
	sw x8,4(x31)
	c.nop
	c.srai x8,1
	c.nop
	sw x8,4(x31)
	c.nop
	c.and x8,x9
	c.nop
	sw x9,4(x31)
	c.nop
	c.or x8,x9
	c.nop
	sw x8,4(x31)
	c.nop
	c.xor x8,x9
	c.nop
	sw x8,4(x31)
	c.nop
	c.sub x8,x9
	c.nop
	sw x3,4(x31)
	c.nop
	c.add x8,x9
	c.nop
	sw x3,4(x31)
	c.nop
	c.sub x9,x8
	c.nop
	sw x5,4(x31)
	c.nop
	//c.mv x6,30
	sw x5,4(x31)
	c.nop
	//c.sub3 x5,13,14
	
comprl1: .option norvc


