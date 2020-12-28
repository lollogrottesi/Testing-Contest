li s6, 1
li s1, 0xFFFFFFFF
clbb: 
	p.clb s3, s1
	p.cnt s4, s1
	sw s3, 0(s11)
	sw s4, 0(s11)
	sub s1, s1, s6
	sll s6, s6, 1
	beq s6, x0, end_clb
	j clbb
end_clb:
