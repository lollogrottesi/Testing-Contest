li s0 , 0x00200000
csrr s1, 0x00
sw s1, 0(s0)
csrrci s1, 0x300, 7
csrrci s1, 0x300, 3
csrrsi s1, 0x300, 7
sw s1, 0(s0)
csrrsi s1, 0x300, 3
sw s1, 0(s0)
csrrci s1, 0x300, 7
sw s1, 0(s0)
csrrci s1, 0x300, 3
sw s1, 0(s0)
csrr s1, 0x300
sw s1, 0(s0)
li s3, 0xFFFFFFFE
li s2, 1
csrrwi s1, 0x341, 1
csrrw s1, 0x341, s3
sw s1, 0(s0)
csrrw s1, 0x341, s2
sw s1, 0(s0)
csrr s1, 0x342
sw s1, 0(s0)
csrrwi s1, 0x305, 1
csrrw s1, 0x305, s3
sw s1, 0(s0)
csrrw s1, 0x305, s2
sw s1, 0(s0)
csrr s1, 0x014
sw s1, 0(s0)
csrr s1, 0xF14
sw s1, 0(s0)
csrrsi s1, 0x7A1, 1
csrrsi s1, 0x7A1, 0
csrrci s1, 0x7A1, 1
sw s1, 0(s0)
csrrci s1, 0x7A1, 0
sw s1, 0(s0)
csrrsi s1, 0x7A1, 1
sw s1, 0(s0)
csrrsi s1, 0x7A0, 20
csrrsi s1, 0x7A0, 19
csrrsi s1, 0x7A0, 18
csrrsi s1, 0x7A0, 17
csrrsi s1, 0x7A0, 16
csrrsi s1, 0x7A0, 15
csrrsi s1, 0x7A0, 14
csrrsi s1, 0x7A0, 13
csrrsi s1, 0x7A0, 12
csrrsi s1, 0x7A0, 11
csrrsi s1, 0x7A0, 10
csrrsi s1, 0x7A0, 9
csrrsi s1, 0x7A0, 8
csrrsi s1, 0x7A0, 7
csrrsi s1, 0x7A0, 6
csrrsi s1, 0x7A0, 5
csrrsi s1, 0x7A0, 4
csrrsi s1, 0x7A0, 3
csrrsi s1, 0x7A0, 2
csrrsi s1, 0x7A0, 1
csrrsi s1, 0x7A0, 0
csrrci s1, 0x7A0, 20
sw s1, 0(s0)
csrrci s1, 0x7A0, 19
sw s1, 0(s0)
csrrci s1, 0x7A0, 18
sw s1, 0(s0)
csrrci s1, 0x7A0, 17
sw s1, 0(s0)
csrrci s1, 0x7A0, 16
sw s1, 0(s0)
csrrci s1, 0x7A0, 15
sw s1, 0(s0)
csrrci s1, 0x7A0, 14
sw s1, 0(s0)
csrrci s1, 0x7A0, 13
sw s1, 0(s0)
csrrci s1, 0x7A0, 12
sw s1, 0(s0)
csrrci s1, 0x7A0, 11
sw s1, 0(s0)
csrrci s1, 0x7A0, 10
sw s1, 0(s0)
csrrci s1, 0x7A0, 9
sw s1, 0(s0)
csrrci s1, 0x7A0, 8
sw s1, 0(s0)
csrrsi s1, 0x7A1, 0
sw s1, 0(s0)
csrrci s1, 0x7A0, 7
sw s1, 0(s0)
csrrci s1, 0x7A0, 6
sw s1, 0(s0)
csrrci s1, 0x7A0, 5
sw s1, 0(s0)
csrrci s1, 0x7A0, 4
sw s1, 0(s0)
csrrci s1, 0x7A0, 3
sw s1, 0(s0)
csrrci s1, 0x7A0, 2
sw s1, 0(s0)
csrrci s1, 0x7A0, 1
sw s1, 0(s0)
csrrci s1, 0x7A0, 0
sw s1, 0(s0)
csrrsi s1, 0x7A0, 20
sw s1, 0(s0)
csrrsi s1, 0x7A0, 19
sw s1, 0(s0)
csrrsi s1, 0x7A0, 18
sw s1, 0(s0)
csrrsi s1, 0x7A0, 17
sw s1, 0(s0)
csrrsi s1, 0x7A0, 16
sw s1, 0(s0)
csrrsi s1, 0x7A0, 15
sw s1, 0(s0)
csrrsi s1, 0x7A0, 14
sw s1, 0(s0)
csrrsi s1, 0x7A0, 13
sw s1, 0(s0)
csrrsi s1, 0x7A0, 12
sw s1, 0(s0)
csrrsi s1, 0x7A0, 11
sw s1, 0(s0)
csrrsi s1, 0x7A0, 10
sw s1, 0(s0)
csrrsi s1, 0x7A0, 9
sw s1, 0(s0)
csrrsi s1, 0x7A0, 8
sw s1, 0(s0)
csrrsi s1, 0x7A0, 7
sw s1, 0(s0)
csrrsi s1, 0x7A0, 6
sw s1, 0(s0)
csrrsi s1, 0x7A0, 5
sw s1, 0(s0)
csrrsi s1, 0x7A0, 4
sw s1, 0(s0)
csrrsi s1, 0x7A0, 3
sw s1, 0(s0)
csrrsi s1, 0x7A0, 2
sw s1, 0(s0)
csrrsi s1, 0x7A0, 1
sw s1, 0(s0)
csrrsi s1, 0x7A0, 0
sw s1, 0(s0)
csrw 0x780, s3
csrw 0x781, s3
csrw 0x782, s3
csrw 0x783, s3
csrw 0x784, s3
csrw 0x785, s3
csrw 0x786, s3
csrw 0x787, s3
csrw 0x788, s3
csrw 0x789, s3
csrw 0x78A, s3
csrw 0x78B, s3
csrw 0x78C, s3
csrw 0x78D, s3
csrw 0x78E, s3
csrw 0x78F, s3
csrw 0x790, s3
csrw 0x791, s3
csrw 0x792, s3
csrw 0x793, s3
csrw 0x794, s3
csrw 0x79F, s3
csrrw s9, 0x780, s10
csrrw s8, 0x781, s10
csrrw s7, 0x782, s10
csrrw s6, 0x783, s10
csrrw s5, 0x784, s10
csrrw s4, 0x785, s10
csrrw s3, 0x786, s10
csrrw s2, 0x787, s10
sw s9, 0(s0)
sw s8, 0(s0)
sw s7, 0(s0)
sw s6, 0(s0)
sw s5, 0(s0)
sw s4, 0(s0)
sw s3, 0(s0)
sw s2, 0(s0)
csrrw s9, 0x788, s10
csrrw s8, 0x789, s10
csrrw s7, 0x78A, s10
csrrw s6, 0x78B, s10
csrrw s5, 0x78C, s10
csrrw s4, 0x78D, s10
csrrw s3, 0x78E, s10
csrrw s2, 0x78F, s10
sw s9, 0(s0)
sw s8, 0(s0)
sw s7, 0(s0)
sw s6, 0(s0)
sw s5, 0(s0)
sw s4, 0(s0)
sw s3, 0(s0)
sw s2, 0(s0)
csrrw s9, 0x790, s10
csrrw s8, 0x791, s10
csrrw s7, 0x792, s10
csrrw s6, 0x793, s10
csrrw s5, 0x794, s10
sw s9, 0(s0)
sw s8, 0(s0)
sw s7, 0(s0)
sw s6, 0(s0)
sw s5, 0(s0)
csrrw s2, 0x79F, s10
sw s2, 0(s0)

//TEST_PERF
li s11 , 0x00000001
li s0 , 0x00200000
csrw 0x79F, s11
csrr s10, 0x780
csrr s9, 0x781
csrr s8, 0x782
csrr s7, 0x783
csrr s6, 0x784
csrr s5, 0x785
csrr s4, 0x786
csrr s3, 0x787
sw s10, 0(s0)
sw s9, 0(s0)
sw s8, 0(s0)
sw s7, 0(s0)
sw s6, 0(s0)
sw s5, 0(s0)
sw s4, 0(s0)
sw s3, 0(s0)
csrr s10, 0x788
csrr s9, 0x789
csrr s8, 0x78A
csrr s7, 0x78B
csrr s6, 0x78C
csrr s5, 0x78D
csrr s4, 0x78E
csrr s3, 0x78F
sw s10, 0(s0)
sw s9, 0(s0)
sw s8, 0(s0)
sw s7, 0(s0)
sw s6, 0(s0)
sw s5, 0(s0)
sw s4, 0(s0)
sw s3, 0(s0)
csrr s10, 0x790
csrr s9, 0x791
csrr s8, 0x792
csrr s7, 0x793
csrr s6, 0x794
sw s10, 0(s0)
sw s9, 0(s0)
sw s8, 0(s0)
sw s7, 0(s0)
sw s6, 0(s0)
csrr s3, 0x79F
//END TEST_PERF


csrrw s1, 0x341, s2
sw s1, 0(s0)
csrrw s1, 0x341, s3
sw s1, 0(s0)
csrr s1, 0x341
sw s1, 0(s0)
csrrw s1, 0x341, s0
sw s1, 0(s0)
csrrw s1, 0x341, s3
sw s1, 0(s0)
CSRRCI s2, 0x7B6, 0
sw s2, 0(s0)
CSRRSI s2, 0x7B6, 0
sw s2, 0(s0)
CSRRWI s2, 0x7B6, 0
sw s2, 0(s0)
CSRRC s2, 0x7B6, s3
sw s2, 0(s0)
CSRRS s2, 0x7B6, s3
sw s2, 0(s0)
CSRRW s2, 0x7B6, s3
sw s2, 0(s0)
RDCYCLE s3
sw s3, 0(s0)
RDCYCLEH s3
sw s3, 0(s0)
RDTIME s3
sw s3, 0(s0)
RDTIMEH s3
sw s3, 0(s0)
RDINSTRET s3
sw s3, 0(s0)
RDINSTRETH s3
sw s3, 0(s0)
csrw 0x7B2, s0
csrrsi s1, 0x7B2, 31
sw s1, 0(s0)
csrrsi s1, 0x7B2, 30
sw s1, 0(s0)
csrrsi s1, 0x7B2, 29
sw s1, 0(s0)
csrrsi s1, 0x7B2, 28
sw s1, 0(s0)
csrrsi s1, 0x7B2, 27
sw s1, 0(s0)
csrrsi s1, 0x7B2, 26
sw s1, 0(s0)
csrrsi s1, 0x7B2, 25
sw s1, 0(s0)
csrrsi s1, 0x7B2, 24
sw s1, 0(s0)
csrrsi s1, 0x7B2, 23
sw s1, 0(s0)
csrrsi s1, 0x7B2, 22
sw s1, 0(s0)
csrrsi s1, 0x7B2, 21
sw s1, 0(s0)
csrrci s1, 0x7B2, 31
sw s1, 0(s0)
csrrci s1, 0x7B2, 30
sw s1, 0(s0)
csrrci s1, 0x7B2, 29
sw s1, 0(s0)
csrrci s1, 0x7B2, 28
sw s1, 0(s0)
csrrci s1, 0x7B2, 27
sw s1, 0(s0)
csrrci s1, 0x7B2, 26
sw s1, 0(s0)
csrrci s1, 0x7B2, 25
sw s1, 0(s0)
csrrci s1, 0x7B2, 24
sw s1, 0(s0)
csrrci s1, 0x7B2, 23
sw s1, 0(s0)
csrrci s1, 0x7B2, 22
sw s1, 0(s0)
csrrci s1, 0x7B2, 21
