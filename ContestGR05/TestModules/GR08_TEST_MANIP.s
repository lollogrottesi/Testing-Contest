xor s2, s2, s2
li s6, 1
li s1, 0xFFFFFFFF
li s5, 0x000003E0
li s7, 31
manip1: 
	p.extractr s3, s1, s2
	sw s3, 0(s11)
	p.bclrr s3, s1, s2
	sw s3, 0(s11)
/*	p.insertr s3, s1, s2
	sw s3, 0(s11)
	p.bsetr s3, s1, s2
	sw s3, 0(s11)
	beq s2, s7, manip2
	add s2, s2, 1
	j manip1
manip2: 
	add s2, s2, 0x00000020
	add s7, s2, 0
	sub s7, s7, s6
	andi s2, s2, 0xFFFFFFE0
	beq s7, s5, end_manip
	j manip1
end_manip:
	beq s1, x0, end_manip2
	li s1, 0
	li s2, 0xFFFFFFFF
	li s7, 31
	j manip1
end_manip2:*/
