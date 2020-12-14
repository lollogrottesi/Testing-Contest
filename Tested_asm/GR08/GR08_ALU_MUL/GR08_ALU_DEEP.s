AUIPC s1, 0xFFFFF
AUIPC s1, 0x00000
AUIPC s1, 0x00001
li s11, 0x00200000
li s1, 0x00000000
li s2, 0x00000000
li s3, 0x11111111
li s4, 0xFFFFFFFF
loopalu:
	p.adduN s0, s1, s2, 0
	p.subN s5, s1, s2, 0
	p.clipr s6, s1, s2
	div s7, s1, s2
	REM s8,s1,s2
	REMu s9,s2,s1
	divu s10,s2,s1

	sw s0, 0(s11)
	sw s5, 4(s11)
	sw s6, 8(s11)
	sw s7, 12(s11)
	sw s8, 16(s11)
	sw s9, 20(s11)
	sw s10, 24(s11)

	pv.add.h s0, s1, s2
	pv.sub.b s5, s1, s2
	pv.shuffle.b s6, s1, s2
	pv.shuffle.h s7, s1, s2
	
	sw s0, 0(s11)
	sw s5, 4(s11)
	sw s6, 8(s11)
	sw s7, 12(s11)

	beq s2, s4, end2alu
	p.adduN s2, s2, s3, 0
	j loopalu

end2alu:
	xor s2, s2, s2
	beq s1, s4, end3alu
	p.adduN s1, s1, s3, 0
	j loopalu

end3alu:
	li s5, 0xEFFFFFFF
	li s2, 0x55555555
	li s6, 0xCCCCCCCC
	li s1, 0x00000001
	li s7, 2
	li s8, 144
loopdiv:
	div s9, s2, s1
	REM s10,s2,s1

	sw s9, 0(s11)
	sw s10, 4(s11)

	REMu s9,s2,s1
	divu s10,s2,s1

	sw s9, 0(s11)
	sw s10, 4(s11)

	div s9, s6, s1
	REM s10,s6,s1

	sw s9, 0(s11)
	sw s10, 4(s11)

	REMu s9,s6,s1
	divu s10,s6,s1

	sw s9, 0(s11)
	sw s10, 4(s11)


	addi s9, s7, 0
	p.adduN s7, s1, s7, 0

	sw s9, 0(s11)
	sw s7, 4(s11)

	addi s1, s9, 0
	beq s1, s8, end_div
	
	j loopdiv

end_div:
	li s0, 0x00000000
	li s1, 0x0000FFFF
	//li s2, 0x00000000
	li s3, 0x0000FFFF
	li s4, 0x00FF00FF
	li s5, 0x33333333
	li s6, 0x0F0F0F0F
	li s7, 0xF0F0F0F0
	li s8, 0x00000001
	li s9, 0xFFFFFFFF
	li s10, 0x765ABCDE
aluu:
	p.extractu s2, s0, 31, 0
	sw s2, 0(s11)
	p.extractr s2, s0, s1
	sw s2, 0(s11)
	p.extractur s2, s0, s1
	sw s2, 0(s11)
	p.insertr s2, s0, s1
	sw s2, 0(s11)
	p.bclrr s2, s0, s1
	sw s2, 0(s11)
	p.bsetr s2, s0, s1
	sw s2, 0(s11)
	p.abs s2, s0
	sw s2, 0(s11)
	p.slet s2, s0, s1
	sw s2, 0(s11)
	p.sletu s2, s0, s1
	sw s2, 0(s11)
	p.min s2, s0, s1
	sw s2, 0(s11)
	p.minu s2, s0, s1
	sw s2, 0(s11)
	p.max s2, s0, s1
	sw s2, 0(s11)
	p.maxu s2, s0, s1
	sw s2, 0(s11)
	p.exths s2, s0
	sw s2, 0(s11)
	p.exthz s2, s0
	sw s2, 0(s11)
	p.extbs s2, s0
	sw s2, 0(s11)
	p.extbz s2, s0
	sw s2, 0(s11)
	p.clip s2, s0, 1
	sw s2, 0(s11)
	p.clipu s2, s0, 2
	sw s2, 0(s11)
	p.clipr s2, s0, s1
	sw s2, 0(s11)
	p.clipur s2, s0, s1
	sw s2, 0(s11)
	p.addN s2, s0, s1, 0
	sw s2, 0(s11)
	p.adduN s2, s0, s1, 0
	sw s2, 0(s11)
	p.addRN s2, s0, s1, 0
	sw s2, 0(s11)
	p.adduRN s2, s0, s1, 0
	sw s2, 0(s11)
	p.subN s2, s0, s1, 0
	sw s2, 0(s11)
	p.subuN s2, s0, s1, 0
	sw s2, 0(s11)
	p.subRN s2, s0, s1, 0
	sw s2, 0(s11)
	p.subuRN s2, s0, s1, 0
	sw s2, 0(s11)
	p.addNr s2, s0, s1
	sw s2, 0(s11)
	p.adduNr s2, s0, s1
	sw s2, 0(s11)
	p.addRNr s2, s0, s1
	sw s2, 0(s11)
	p.adduRNr s2, s0, s1
	sw s2, 0(s11)
	p.subNr s2, s0, s1
	sw s2, 0(s11)
	p.subuNr s2, s0, s1
	sw s2, 0(s11)
	p.subRNr s2, s0, s1
	sw s2, 0(s11)
	p.subuRNr s2, s0, s1
	sw s2, 0(s11)
	pv.add.h s2, s0, s1
	sw s2, 0(s11)
	pv.add.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.add.b s2, s0, s1
	sw s2, 0(s11)
	pv.add.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.sub.h s2, s0, s1
	sw s2, 0(s11)
	pv.sub.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.sub.b s2, s0, s1
	sw s2, 0(s11)
	pv.sub.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.avg.h s2, s0, s1
	sw s2, 0(s11)
	pv.avg.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.avg.b s2, s0, s1
	sw s2, 0(s11)
	pv.avg.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.avgu.h s2, s0, s1
	sw s2, 0(s11)
	pv.avgu.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.avgu.b s2, s0, s1
	sw s2, 0(s11)
	pv.avgu.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.min.h s2, s0, s1
	sw s2, 0(s11)
	pv.min.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.min.b s2, s0, s1
	sw s2, 0(s11)
	pv.min.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.minu.h s2, s0, s1
	sw s2, 0(s11)
	pv.minu.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.minu.b s2, s0, s1
	sw s2, 0(s11)
	pv.minu.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.max.h s2, s0, s1
	sw s2, 0(s11)
	pv.max.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.max.b s2, s0, s1
	sw s2, 0(s11)
	pv.max.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.maxu.h s2, s0, s1
	sw s2, 0(s11)
	pv.maxu.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.maxu.b s2, s0, s1
	sw s2, 0(s11)
	pv.maxu.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.srl.sci.h s2, s0, 31
	sw s2, 0(s11)
	pv.srl.sci.b s2, s0, 31
	sw s2, 0(s11)
	pv.sra.sci.h s2, s0, 31
	sw s2, 0(s11)
	pv.sra.sci.b s2, s0, 31
	sw s2, 0(s11)
	pv.sll.sci.h s2, s0, 31
	sw s2, 0(s11)
	pv.sll.sci.b s2, s0, 31
	sw s2, 0(s11)
	pv.or.h s2, s0, s1
	sw s2, 0(s11)
	pv.or.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.or.b s2, s0, s1
	sw s2, 0(s11)
	pv.or.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.xor.h s2, s0, s1
	sw s2, 0(s11)
	pv.xor.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.xor.b s2, s0, s1
	sw s2, 0(s11)
	pv.xor.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.and.h s2, s0, s1
	sw s2, 0(s11)
	pv.and.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.and.b s2, s0, s1
	sw s2, 0(s11)
	pv.and.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.abs.h s2, s0
	sw s2, 0(s11)
	pv.abs.b s2, s0
	sw s2, 0(s11)
	pv.shuffle.h s2, s0, s1
	sw s2, 0(s11)
	pv.shuffle.b s2, s0, s1
	sw s2, 0(s11)
	pv.extract.h s2, s0, 0
	sw s2, 0(s11)
	pv.extract.b s2, s0, 1
	sw s2, 0(s11)
	pv.extractu.h s2, s0, 1
	sw s2, 0(s11)
	pv.extractu.b s2, s0, 2
	sw s2, 0(s11)
	pv.shuffle.sci.h s2, s0, 31
	sw s2, 0(s11)
	pv.shuffleI0.sci.b s2, s0, 31
	sw s2, 0(s11)
	pv.shuffleI1.sci.b s2, s0, 31
	sw s2, 0(s11)
	pv.shuffleI2.sci.b s2, s0, 31
	sw s2, 0(s11)
	pv.shuffleI3.sci.b s2, s0, 31
	sw s2, 0(s11)
	pv.shuffle2.h s2, s0, s1
	sw s2, 0(s11)
	pv.shuffle2.b s2, s0, s1
	sw s2, 0(s11)
	pv.shuffle.h s2, s0, s2
	pv.shuffle.b s2, s2, s1
	pv.shuffle.sci.h s2, s2, 1
	sw s2, 0(s11)
	pv.shuffle.sci.h s2, s2, 2
	sw s2, 0(s11)
	pv.shuffle.sci.h s2, s2, 3
	sw s2, 0(s11)
	pv.shuffleI0.sci.b s2, s2, 21
	sw s2, 0(s11)
	pv.shuffleI1.sci.b s2, s2, 10
	sw s2, 0(s11)
	pv.shuffleI2.sci.b s2, s2, 21
	sw s2, 0(s11)
	pv.shuffleI3.sci.b s2, s2, 10
	sw s2, 0(s11)
	pv.shuffle2.h s2, s2, s1
	sw s2, 0(s11)
	pv.shuffle2.b s2, s0, s2
	sw s2, 0(s11)
	pv.extract.h s2, s2, 0
	sw s2, 0(s11)
	pv.extract.b s2, s2, 1
	sw s2, 0(s11)
	pv.extractu.h s2, s2, 1
	sw s2, 0(s11)
	pv.extractu.b s2, s2, 2
	sw s2, 0(s11)
	pv.pack.h s2, s0, s1
	sw s2, 0(s11)
	pv.packhi.b s2, s0, s1
	sw s2, 0(s11)
	pv.packlo.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpeq.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpeq.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpeq.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpeq.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpne.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpne.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpne.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpne.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpgt.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpgt.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpgt.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpgt.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpge.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpge.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpge.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpge.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmplt.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmplt.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmplt.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmplt.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmple.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmple.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmple.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmple.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpgtu.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpgtu.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpgtu.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpgtu.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpgeu.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpgeu.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpgeu.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpgeu.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpltu.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpltu.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpltu.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpltu.sc.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpleu.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpleu.sc.h s2, s0, s1
	sw s2, 0(s11)
	pv.cmpleu.b s2, s0, s1
	sw s2, 0(s11)
	pv.cmpleu.sc.b s2, s0, s1
	sw s2, 0(s11)
	divu s2, s0, s1
	sw s2, 0(s11)
	p.adduN s2, s0, s1, 0
	sw s2, 0(s11)
	p.subN s2, s0, s1, 0
	sw s2, 0(s11)
	div s2, s0, s1
	sw s2, 0(s11)
	REM s2,s0,s1
	sw s2, 0(s11)
	REMU s2,s0,s1
	sw s2, 0(s11)
	srl s2, s0, s1
	sw s2, 0(s11)
	sll s2, s0, s1
	sw s2, 0(s11)
	sra s2, s0, s1
	sw s2, 0(s11)
	SLT s2,s0,s1
	sw s2, 0(s11)
	SLTU s2,s0,s1
	sw s2, 0(s11)
	XOR s2,s0,s1
	sw s2, 0(s11)
	OR s2,s0,s1
	sw s2, 0(s11)
	AND s2,s0,s1

	bne s0, x0, num2
	li s0, 0x0000FFFF
	li s1, 0xFFFF0000
	j aluu
num2: 
	bne s0, s3, num3
	li s0, 0x00FF00FF
	li s1, 0xCCCCCCCC
	j aluu
num3: 
	bne s0, s4, num4
	li s0, 0x33333333
	li s1, 0x55555555
	j aluu
num4: 
	bne s0, s5, num5
	li s0, 0x0F0F0F0F
	li s1, 0x0F0F0F0F
	j aluu
num5: 
	bne s0, s6, num6
	li s0, 0xF0F0F0F0
	li s1, 0xF0F0F0F0
	j aluu
num6: 
	bne s0, s7, num7
	li s0, 0x00000001
	li s1, 0xFFFFFFFF
	j aluu
num7: 
	bne s0, s8, num8
	li s0, 0xFFFFFFFF
	li s1, 0x00000000
	j aluu
num8: 
	bne s0, s9, num9
	li s0, 0x765ABCDE
	li s1, 0x43210ABC
num9:
#include "GR08_TEST_FF.s"
#include "GR08_TEST_MANIP.s"
#include "GR08_TEST_INSERT.s"
#include "GR08_TEST_COMPVI.s"
#include "GR08_TEST_CLIP.s"
#include "GR08_TEST_CLB.s"
#include "GR08_TEST_ROR.s"
//TEST_ALU_imm(0xFFFFFFFF, 0x00000000)
li s1, 0xFFFFFFFF
ADDI s3,s1,0x00000000
sw s3, 0(s11)
SLTI s3,s1,0x00000000
sw s3, 0(s11)
SLTIU s3,s1,0x00000000
sw s3, 0(s11)
XORI s3,s1,0x00000000
sw s3, 0(s11)
ORI s3,s1,0x00000000
sw s3, 0(s11)
ANDI s3,s1,0x00000000
sw s3, 0(s11)
//TEST_ALU_imm(0x00000000, 0xFFFFFFFF)
li s1, 0x00000000
ADDI s3,s1,0xFFFFFFFF
sw s3, 0(s11)
SLTI s3,s1,0xFFFFFFFF
sw s3, 0(s11)
SLTIU s3,s1,0xFFFFFFFF
sw s3, 0(s11)
XORI s3,s1,0xFFFFFFFF
sw s3, 0(s11)
ORI s3,s1,0xFFFFFFFF
sw s3, 0(s11)
ANDI s3,s1,0xFFFFFFFF
sw s3, 0(s11)
//TEST_ALU_imm(0xFFFFFFFF, 0xFFFFFFFF)
li s1, 0xFFFFFFFF
ADDI s3,s1,0xFFFFFFFF
sw s3, 0(s11)
SLTI s3,s1,0xFFFFFFFF
sw s3, 0(s11)
SLTIU s3,s1,0xFFFFFFFF
sw s3, 0(s11)
XORI s3,s1,0xFFFFFFFF
sw s3, 0(s11)
ORI s3,s1,0xFFFFFFFF
sw s3, 0(s11)
ANDI s3,s1,0xFFFFFFFF
sw s3, 0(s11)
//TEST_ALU_imm(0x00000000, 0x00000000)
li s1, 0x00000000
ADDI s3,s1,0x00000000
sw s3, 0(s11)
SLTI s3,s1,0x00000000
sw s3, 0(s11)
SLTIU s3,s1,0x00000000
sw s3, 0(s11)
XORI s3,s1,0x00000000
sw s3, 0(s11)
ORI s3,s1,0x00000000
sw s3, 0(s11)
ANDI s3,s1,0x00000000
sw s3, 0(s11)
//TEST_SHF2( pv.srl.sci.h , 0x00000000)
li s1, 0x00000000
pv.srl.sci.h s3, s1, 0
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 1
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 2
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 3
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 4
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 5
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 6
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 7
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 8
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 9
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 10
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 11
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 12
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 13
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 14
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 15
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 16
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 17
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 18
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 19
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 20
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 21
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 22
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 23
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 24
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 25
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 26
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 27
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 28
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 29
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 30
sw s3, 1(s11)
pv.srl.sci.h s3, s1, 31
//TEST_SHF2( pv.sra.sci.h , 0xB6DB6DB6)
li s1, 0xB6DB6DB6
pv.sra.sci.h s3, s1, 0
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 1
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 2
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 3
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 4
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 5
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 6
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 7
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 8
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 9
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 10
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 11
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 12
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 13
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 14
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 15
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 16
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 17
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 18
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 19
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 20
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 21
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 22
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 23
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 24
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 25
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 26
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 27
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 28
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 29
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 30
sw s3, 1(s11)
pv.sra.sci.h s3, s1, 31
//TEST_SHF2( pv.sll.sci.h , 0xFFFFFFFF)
li s1, 0xFFFFFFFF
pv.sll.sci.h s3, s1, 0
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 1
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 2
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 3
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 4
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 5
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 6
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 7
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 8
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 9
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 10
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 11
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 12
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 13
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 14
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 15
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 16
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 17
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 18
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 19
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 20
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 21
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 22
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 23
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 24
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 25
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 26
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 27
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 28
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 29
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 30
sw s3, 1(s11)
pv.sll.sci.h s3, s1, 31
//TEST_SHF2( srli , 0xB6DB6DB6)
li s1, 0xB6DB6DB6
srli s3, s1, 0
sw s3, 1(s11)
srli s3, s1, 1
sw s3, 1(s11)
srli s3, s1, 2
sw s3, 1(s11)
srli s3, s1, 3
sw s3, 1(s11)
srli s3, s1, 4
sw s3, 1(s11)
srli s3, s1, 5
sw s3, 1(s11)
srli s3, s1, 6
sw s3, 1(s11)
srli s3, s1, 7
sw s3, 1(s11)
srli s3, s1, 8
sw s3, 1(s11)
srli s3, s1, 9
sw s3, 1(s11)
srli s3, s1, 10
sw s3, 1(s11)
srli s3, s1, 11
sw s3, 1(s11)
srli s3, s1, 12
sw s3, 1(s11)
srli s3, s1, 13
sw s3, 1(s11)
srli s3, s1, 14
sw s3, 1(s11)
srli s3, s1, 15
sw s3, 1(s11)
srli s3, s1, 16
sw s3, 1(s11)
srli s3, s1, 17
sw s3, 1(s11)
srli s3, s1, 18
sw s3, 1(s11)
srli s3, s1, 19
sw s3, 1(s11)
srli s3, s1, 20
sw s3, 1(s11)
srli s3, s1, 21
sw s3, 1(s11)
srli s3, s1, 22
sw s3, 1(s11)
srli s3, s1, 23
sw s3, 1(s11)
srli s3, s1, 24
sw s3, 1(s11)
srli s3, s1, 25
sw s3, 1(s11)
srli s3, s1, 26
sw s3, 1(s11)
srli s3, s1, 27
sw s3, 1(s11)
srli s3, s1, 28
sw s3, 1(s11)
srli s3, s1, 29
sw s3, 1(s11)
srli s3, s1, 30
sw s3, 1(s11)
srli s3, s1, 31
//TEST_SHF2( srai , 0xCCCCCCCC)
li s1, 0xCCCCCCCC
srai s3, s1, 0
sw s3, 1(s11)
srai s3, s1, 1
sw s3, 1(s11)
srai s3, s1, 2
sw s3, 1(s11)
srai s3, s1, 3
sw s3, 1(s11)
srai s3, s1, 4
sw s3, 1(s11)
srai s3, s1, 5
sw s3, 1(s11)
srai s3, s1, 6
sw s3, 1(s11)
srai s3, s1, 7
sw s3, 1(s11)
srai s3, s1, 8
sw s3, 1(s11)
srai s3, s1, 9
sw s3, 1(s11)
srai s3, s1, 10
sw s3, 1(s11)
srai s3, s1, 11
sw s3, 1(s11)
srai s3, s1, 12
sw s3, 1(s11)
srai s3, s1, 13
sw s3, 1(s11)
srai s3, s1, 14
sw s3, 1(s11)
srai s3, s1, 15
sw s3, 1(s11)
srai s3, s1, 16
sw s3, 1(s11)
srai s3, s1, 17
sw s3, 1(s11)
srai s3, s1, 18
sw s3, 1(s11)
srai s3, s1, 19
sw s3, 1(s11)
srai s3, s1, 20
sw s3, 1(s11)
srai s3, s1, 21
sw s3, 1(s11)
srai s3, s1, 22
sw s3, 1(s11)
srai s3, s1, 23
sw s3, 1(s11)
srai s3, s1, 24
sw s3, 1(s11)
srai s3, s1, 25
sw s3, 1(s11)
srai s3, s1, 26
sw s3, 1(s11)
srai s3, s1, 27
sw s3, 1(s11)
srai s3, s1, 28
sw s3, 1(s11)
srai s3, s1, 29
sw s3, 1(s11)
srai s3, s1, 30
sw s3, 1(s11)
srai s3, s1, 31
//TEST_SHF2( slli , 0x55555555)
li s1, 0x55555555
slli s3, s1, 0
sw s3, 1(s11)
slli s3, s1, 1
sw s3, 1(s11)
slli s3, s1, 2
sw s3, 1(s11)
slli s3, s1, 3
sw s3, 1(s11)
slli s3, s1, 4
sw s3, 1(s11)
slli s3, s1, 5
sw s3, 1(s11)
slli s3, s1, 6
sw s3, 1(s11)
slli s3, s1, 7
sw s3, 1(s11)
slli s3, s1, 8
sw s3, 1(s11)
slli s3, s1, 9
sw s3, 1(s11)
slli s3, s1, 10
sw s3, 1(s11)
slli s3, s1, 11
sw s3, 1(s11)
slli s3, s1, 12
sw s3, 1(s11)
slli s3, s1, 13
sw s3, 1(s11)
slli s3, s1, 14
sw s3, 1(s11)
slli s3, s1, 15
sw s3, 1(s11)
slli s3, s1, 16
sw s3, 1(s11)
slli s3, s1, 17
sw s3, 1(s11)
slli s3, s1, 18
sw s3, 1(s11)
slli s3, s1, 19
sw s3, 1(s11)
slli s3, s1, 20
sw s3, 1(s11)
slli s3, s1, 21
sw s3, 1(s11)
slli s3, s1, 22
sw s3, 1(s11)
slli s3, s1, 23
sw s3, 1(s11)
slli s3, s1, 24
sw s3, 1(s11)
slli s3, s1, 25
sw s3, 1(s11)
slli s3, s1, 26
sw s3, 1(s11)
slli s3, s1, 27
sw s3, 1(s11)
slli s3, s1, 28
sw s3, 1(s11)
slli s3, s1, 29
sw s3, 1(s11)
slli s3, s1, 30
sw s3, 1(s11)
slli s3, s1, 31
//TEST_SHF( p.addN, 0x55555555, 0x00000001)
li s1, 0x55555555
li s2, 0x00000001
p.addN s3, s1, s2, 1
sw s3, 1(s11)
p.addN s3, s1, s2, 2
sw s3, 1(s11)
p.addN s3, s1, s2, 3
sw s3, 1(s11)
p.addN s3, s1, s2, 4
sw s3, 1(s11)
p.addN s3, s1, s2, 5
sw s3, 1(s11)
p.addN s3, s1, s2, 6
sw s3, 1(s11)
p.addN s3, s1, s2, 7
sw s3, 1(s11)
p.addN s3, s1, s2, 8
sw s3, 1(s11)
p.addN s3, s1, s2, 9
sw s3, 1(s11)
p.addN s3, s1, s2, 10
sw s3, 1(s11)
p.addN s3, s1, s2, 11
sw s3, 1(s11)
p.addN s3, s1, s2, 12
sw s3, 1(s11)
p.addN s3, s1, s2, 13
sw s3, 1(s11)
p.addN s3, s1, s2, 14
sw s3, 1(s11)
p.addN s3, s1, s2, 15
sw s3, 1(s11)
p.addN s3, s1, s2, 16
sw s3, 1(s11)
p.addN s3, s1, s2, 17
sw s3, 1(s11)
p.addN s3, s1, s2, 18
sw s3, 1(s11)
p.addN s3, s1, s2, 19
sw s3, 1(s11)
p.addN s3, s1, s2, 20
sw s3, 1(s11)
p.addN s3, s1, s2, 21
sw s3, 1(s11)
p.addN s3, s1, s2, 22
sw s3, 1(s11)
p.addN s3, s1, s2, 23
sw s3, 1(s11)
p.addN s3, s1, s2, 24
sw s3, 1(s11)
p.addN s3, s1, s2, 25
sw s3, 1(s11)
p.addN s3, s1, s2, 26
sw s3, 1(s11)
p.addN s3, s1, s2, 27
sw s3, 1(s11)
p.addN s3, s1, s2, 28
sw s3, 1(s11)
p.addN s3, s1, s2, 29
sw s3, 1(s11)
p.addN s3, s1, s2, 30
sw s3, 1(s11)
p.addN s3, s1, s2, 31
//TEST_SHF( p.addN, 0xB6DB6DB6, 0x00000001)
li s1, 0xB6DB6DB6
li s2, 0x00000001
p.addN s3, s1, s2, 1
sw s3, 1(s11)
p.addN s3, s1, s2, 2
sw s3, 1(s11)
p.addN s3, s1, s2, 3
sw s3, 1(s11)
p.addN s3, s1, s2, 4
sw s3, 1(s11)
p.addN s3, s1, s2, 5
sw s3, 1(s11)
p.addN s3, s1, s2, 6
sw s3, 1(s11)
p.addN s3, s1, s2, 7
sw s3, 1(s11)
p.addN s3, s1, s2, 8
sw s3, 1(s11)
p.addN s3, s1, s2, 9
sw s3, 1(s11)
p.addN s3, s1, s2, 10
sw s3, 1(s11)
p.addN s3, s1, s2, 11
sw s3, 1(s11)
p.addN s3, s1, s2, 12
sw s3, 1(s11)
p.addN s3, s1, s2, 13
sw s3, 1(s11)
p.addN s3, s1, s2, 14
sw s3, 1(s11)
p.addN s3, s1, s2, 15
sw s3, 1(s11)
p.addN s3, s1, s2, 16
sw s3, 1(s11)
p.addN s3, s1, s2, 17
sw s3, 1(s11)
p.addN s3, s1, s2, 18
sw s3, 1(s11)
p.addN s3, s1, s2, 19
sw s3, 1(s11)
p.addN s3, s1, s2, 20
sw s3, 1(s11)
p.addN s3, s1, s2, 21
sw s3, 1(s11)
p.addN s3, s1, s2, 22
sw s3, 1(s11)
p.addN s3, s1, s2, 23
sw s3, 1(s11)
p.addN s3, s1, s2, 24
sw s3, 1(s11)
p.addN s3, s1, s2, 25
sw s3, 1(s11)
p.addN s3, s1, s2, 26
sw s3, 1(s11)
p.addN s3, s1, s2, 27
sw s3, 1(s11)
p.addN s3, s1, s2, 28
sw s3, 1(s11)
p.addN s3, s1, s2, 29
sw s3, 1(s11)
p.addN s3, s1, s2, 30
sw s3, 1(s11)
p.addN s3, s1, s2, 31
//TEST_SHF( p.subuN, 0xB6DB6DB6, 0x00000001)
li s1, 0xB6DB6DB6
li s2, 0x00000001
p.subuN s3, s1, s2, 1
sw s3, 1(s11)
p.subuN s3, s1, s2, 2
sw s3, 1(s11)
p.subuN s3, s1, s2, 3
sw s3, 1(s11)
p.subuN s3, s1, s2, 4
sw s3, 1(s11)
p.subuN s3, s1, s2, 5
sw s3, 1(s11)
p.subuN s3, s1, s2, 6
sw s3, 1(s11)
p.subuN s3, s1, s2, 7
sw s3, 1(s11)
p.subuN s3, s1, s2, 8
sw s3, 1(s11)
p.subuN s3, s1, s2, 9
sw s3, 1(s11)
p.subuN s3, s1, s2, 10
sw s3, 1(s11)
p.subuN s3, s1, s2, 11
sw s3, 1(s11)
p.subuN s3, s1, s2, 12
sw s3, 1(s11)
p.subuN s3, s1, s2, 13
sw s3, 1(s11)
p.subuN s3, s1, s2, 14
sw s3, 1(s11)
p.subuN s3, s1, s2, 15
sw s3, 1(s11)
p.subuN s3, s1, s2, 16
sw s3, 1(s11)
p.subuN s3, s1, s2, 17
sw s3, 1(s11)
p.subuN s3, s1, s2, 18
sw s3, 1(s11)
p.subuN s3, s1, s2, 19
sw s3, 1(s11)
p.subuN s3, s1, s2, 20
sw s3, 1(s11)
p.subuN s3, s1, s2, 21
sw s3, 1(s11)
p.subuN s3, s1, s2, 22
sw s3, 1(s11)
p.subuN s3, s1, s2, 23
sw s3, 1(s11)
p.subuN s3, s1, s2, 24
sw s3, 1(s11)
p.subuN s3, s1, s2, 25
sw s3, 1(s11)
p.subuN s3, s1, s2, 26
sw s3, 1(s11)
p.subuN s3, s1, s2, 27
sw s3, 1(s11)
p.subuN s3, s1, s2, 28
sw s3, 1(s11)
p.subuN s3, s1, s2, 29
sw s3, 1(s11)
p.subuN s3, s1, s2, 30
sw s3, 1(s11)
p.subuN s3, s1, s2, 31
//TEST_SHF( p.subuN, 0x55555555, 0x00000001)
li s1, 0x55555555
li s2, 0x00000001
p.subuN s3, s1, s2, 1
sw s3, 1(s11)
p.subuN s3, s1, s2, 2
sw s3, 1(s11)
p.subuN s3, s1, s2, 3
sw s3, 1(s11)
p.subuN s3, s1, s2, 4
sw s3, 1(s11)
p.subuN s3, s1, s2, 5
sw s3, 1(s11)
p.subuN s3, s1, s2, 6
sw s3, 1(s11)
p.subuN s3, s1, s2, 7
sw s3, 1(s11)
p.subuN s3, s1, s2, 8
sw s3, 1(s11)
p.subuN s3, s1, s2, 9
sw s3, 1(s11)
p.subuN s3, s1, s2, 10
sw s3, 1(s11)
p.subuN s3, s1, s2, 11
sw s3, 1(s11)
p.subuN s3, s1, s2, 12
sw s3, 1(s11)
p.subuN s3, s1, s2, 13
sw s3, 1(s11)
p.subuN s3, s1, s2, 14
sw s3, 1(s11)
p.subuN s3, s1, s2, 15
sw s3, 1(s11)
p.subuN s3, s1, s2, 16
sw s3, 1(s11)
p.subuN s3, s1, s2, 17
sw s3, 1(s11)
p.subuN s3, s1, s2, 18
sw s3, 1(s11)
p.subuN s3, s1, s2, 19
sw s3, 1(s11)
p.subuN s3, s1, s2, 20
sw s3, 1(s11)
p.subuN s3, s1, s2, 21
sw s3, 1(s11)
p.subuN s3, s1, s2, 22
sw s3, 1(s11)
p.subuN s3, s1, s2, 23
sw s3, 1(s11)
p.subuN s3, s1, s2, 24
sw s3, 1(s11)
p.subuN s3, s1, s2, 25
sw s3, 1(s11)
p.subuN s3, s1, s2, 26
sw s3, 1(s11)
p.subuN s3, s1, s2, 27
sw s3, 1(s11)
p.subuN s3, s1, s2, 28
sw s3, 1(s11)
p.subuN s3, s1, s2, 29
sw s3, 1(s11)
p.subuN s3, s1, s2, 30
sw s3, 1(s11)
p.subuN s3, s1, s2, 31
//TEST_SHF( p.adduRN, 0x00000001, 0xFFFFFFFF)
li s1, 0x00000001
li s2, 0xFFFFFFFF
p.adduRN s3, s1, s2, 1
sw s3, 1(s11)
p.adduRN s3, s1, s2, 2
sw s3, 1(s11)
p.adduRN s3, s1, s2, 3
sw s3, 1(s11)
p.adduRN s3, s1, s2, 4
sw s3, 1(s11)
p.adduRN s3, s1, s2, 5
sw s3, 1(s11)
p.adduRN s3, s1, s2, 6
sw s3, 1(s11)
p.adduRN s3, s1, s2, 7
sw s3, 1(s11)
p.adduRN s3, s1, s2, 8
sw s3, 1(s11)
p.adduRN s3, s1, s2, 9
sw s3, 1(s11)
p.adduRN s3, s1, s2, 10
sw s3, 1(s11)
p.adduRN s3, s1, s2, 11
sw s3, 1(s11)
p.adduRN s3, s1, s2, 12
sw s3, 1(s11)
p.adduRN s3, s1, s2, 13
sw s3, 1(s11)
p.adduRN s3, s1, s2, 14
sw s3, 1(s11)
p.adduRN s3, s1, s2, 15
sw s3, 1(s11)
p.adduRN s3, s1, s2, 16
sw s3, 1(s11)
p.adduRN s3, s1, s2, 17
sw s3, 1(s11)
p.adduRN s3, s1, s2, 18
sw s3, 1(s11)
p.adduRN s3, s1, s2, 19
sw s3, 1(s11)
p.adduRN s3, s1, s2, 20
sw s3, 1(s11)
p.adduRN s3, s1, s2, 21
sw s3, 1(s11)
p.adduRN s3, s1, s2, 22
sw s3, 1(s11)
p.adduRN s3, s1, s2, 23
sw s3, 1(s11)
p.adduRN s3, s1, s2, 24
sw s3, 1(s11)
p.adduRN s3, s1, s2, 25
sw s3, 1(s11)
p.adduRN s3, s1, s2, 26
sw s3, 1(s11)
p.adduRN s3, s1, s2, 27
sw s3, 1(s11)
p.adduRN s3, s1, s2, 28
sw s3, 1(s11)
p.adduRN s3, s1, s2, 29
sw s3, 1(s11)
p.adduRN s3, s1, s2, 30
sw s3, 1(s11)
p.adduRN s3, s1, s2, 31
//TEST_SHF( p.subRN, 0x00000001, 0xFFFFFFFF)
li s1, 0x00000001
li s2, 0xFFFFFFFF
p.subuRN s3, s1, s2, 1
sw s3, 1(s11)
p.subuRN s3, s1, s2, 2
sw s3, 1(s11)
p.subuRN s3, s1, s2, 3
sw s3, 1(s11)
p.subuRN s3, s1, s2, 4
sw s3, 1(s11)
p.subuRN s3, s1, s2, 5
sw s3, 1(s11)
p.subuRN s3, s1, s2, 6
sw s3, 1(s11)
p.subuRN s3, s1, s2, 7
sw s3, 1(s11)
p.subuRN s3, s1, s2, 8
sw s3, 1(s11)
p.subuRN s3, s1, s2, 9
sw s3, 1(s11)
p.subuRN s3, s1, s2, 10
sw s3, 1(s11)
p.subuRN s3, s1, s2, 11
sw s3, 1(s11)
p.subuRN s3, s1, s2, 12
sw s3, 1(s11)
p.subuRN s3, s1, s2, 13
sw s3, 1(s11)
p.subuRN s3, s1, s2, 14
sw s3, 1(s11)
p.subuRN s3, s1, s2, 15
sw s3, 1(s11)
p.subuRN s3, s1, s2, 16
sw s3, 1(s11)
p.subuRN s3, s1, s2, 17
sw s3, 1(s11)
p.subuRN s3, s1, s2, 18
sw s3, 1(s11)
p.subuRN s3, s1, s2, 19
sw s3, 1(s11)
p.subuRN s3, s1, s2, 20
sw s3, 1(s11)
p.subuRN s3, s1, s2, 21
sw s3, 1(s11)
p.subuRN s3, s1, s2, 22
sw s3, 1(s11)
p.subuRN s3, s1, s2, 23
sw s3, 1(s11)
p.subuRN s3, s1, s2, 24
sw s3, 1(s11)
p.subuRN s3, s1, s2, 25
sw s3, 1(s11)
p.subuRN s3, s1, s2, 26
sw s3, 1(s11)
p.subuRN s3, s1, s2, 27
sw s3, 1(s11)
p.subuRN s3, s1, s2, 28
sw s3, 1(s11)
p.subuRN s3, s1, s2, 29
sw s3, 1(s11)
p.subuRN s3, s1, s2, 30
sw s3, 1(s11)
p.subuRN s3, s1, s2, 31