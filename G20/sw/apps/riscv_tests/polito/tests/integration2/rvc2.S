//lui x1, 0x80000
addi x1, x0, -1

lui x31, 512
lui x29, 256
lui x30, 1024
addi x11, x11, 2
xor x5, x5, x5

lp.setup x0, x11, lsf
//hardwarw lopp csr
csrr x29, 0x7B0
p.sw x29, x30(x31)
csrr x29, 0x7B1
p.sw x29, x30(x31)
csrr x29, 0x7B2
p.sw x29, x30(x31)
csrr x29, 0x7B4
p.sw x29, x30(x31)
csrr x29, 0x7B5
p.sw x29, x30(x31)
csrr x29, 0x7B6
p.sw x29, x30(x31)
	
	xor x6, x6, x6
	xor x5, x5, x5
	addi x5, x5, 4
	addi x31, x31, 4
	addi x30, x30, 4

lsf:	srli x1, x1, 1
nop
nop


addi x7, x0, 16
addi x8, x0, -1 //x8=FFFFFFFF
xor x9, x9, x9
lui x10, 69905
addi x10, x0, 273
lp.starti x1, extls
lp.endi x1, extle
lp.count x1, x7
lp.starti x0, intls
lp.endi x0, intle
lp.counti x0, 16
csrr x29, 0x7B0
p.sw x29, x30(x31)
csrr x29, 0x7B1
p.sw x29, x30(x31)
csrr x29, 0x7B2
p.sw x29, x30(x31)
csrr x29, 0x7B4
p.sw x29, x30(x31)
csrr x29, 0x7B5
p.sw x29, x30(x31)
csrr x29, 0x7B6
p.sw x29, x30(x31)

extls:
intls:
.option rvc
	c.add x9, x8
	sw x9, 4(x2)
	c.addi x31, 31
	sw x31, 4(x2)


	c.and x9, x8
	sw x9, 4(x2)
	c.xor x9, x8
	sw x9, 4(x2)
	c.andi x15, 31
	sw x15, 4(x2)
	c.or x9, x8
	sw x9, 4(x2)
	c.mv x24, x8
	sw x24, 4(x2)
	c.xor x9, x8
	sw x9, 4(x2)
	c.sub x9, x8
	sw x9, 4(x2)

	c.slli x8, 15
	sw x8, 4(x2)
	c.srai x8, 15
	sw x8, 4(x2)	
	c.srli x8, 15
	sw x8, 4(x2)

	c.slli x8, 15
	sw x8, 4(x2)
	c.srai x8, 15
	sw x8, 4(x2)	
	c.srli x8, 15
	sw x8, 4(x2)

intle:	c.sub x8, x10
.option norvc
extle: addi x8, x0, -1

.option rvc
c.lui x8, 31
sw x8, 0(x31) 
c.li x29, 31
sw x29, 19(x2)
lw x29, 31(x2)
lw x29, 63(x31)
lui x29, 15
sw x29, 21(x31)

c.jal next1
c.beqz x12, salto

next1:xor x12, x12, x12
c.jr x1

salto:c.j continua
nop
nop
continua:

c.jal next2
c.bnez x12, salto2

next2:xor x12, x12, x12
c.jalr x1

salto2:c.j continua2
nop
nop
continua2:

nop
c.nop

.option norvc



