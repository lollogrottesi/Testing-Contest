//ctrl-h, substitute val1 and val2  

li s1, val1
ADDI s3,s1,val2
sw s3, 0(s11)
SLTI s3,s1,val2
sw s3, 0(s11)
SLTIU s3,s1,val2
sw s3, 0(s11)
XORI s3,s1,val2
sw s3, 0(s11)
ORI s3,s1,val2
sw s3, 0(s11)
ANDI s3,s1,val2
sw s3, 0(s11)
