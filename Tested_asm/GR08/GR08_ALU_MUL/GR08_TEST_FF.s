li s1, 0x80000000
li s2, 0x00000000
cnt_bit:
	p.ff1 s3, s1
	p.fl1 s4, s1
	sw s3, 0(s11)
	sw s4, 0(s11)
	beq s1, s2, end_cnt
	srli s1, s1, 1
	j cnt_bit
end_cnt:
