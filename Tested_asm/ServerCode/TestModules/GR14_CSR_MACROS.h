
#define TEST_CSR_reg(inst,CSR)\
inst s1, CSR, s3;\
sw s1,0(s11);\
csrr s2,CSR;\
sw s2,0(s11);\

#define TEST_CSR_reg_compl(inst,CSR)\
inst s1, CSR, s3;\
sw s1,0(s11);\
csrr s2,CSR;\
sw s2,0(s11);\
\
inst s1, CSR, s4;\
sw s1,0(s11);\
csrr s2,CSR;\
sw s2,0(s11);\

#define TEST_CSR_imm(inst,CSR,imm)\
inst s1, CSR, imm;\
sw s1,0(s11);\
csrr s2,CSR;\
sw s2,0(s11);\
