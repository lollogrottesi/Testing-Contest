li s6, 31
li s2, 0
li s1, 0xCCCCCCCC
li s4, 0xB6DB6DB6
rorr: 
	p.ror s3, s1, s2
	p.ror s3, s4, s2
	sw s3, 0(s11)
	add s2, s2, 1
	beq s2, s6, end_ror
	j rorr
end_ror:
