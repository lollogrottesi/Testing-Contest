li x31, 0x00200000

.option rvc
c.li x8,15

sw x8,4(x31)

c.li x9,4

sw x10,4(x31)

c.li x4,1

sw x4,4(x31)

c.li x5,31

sw x5,4(x31)

c.lui x9,1

sw x9,4(x31)

c.addi x8,7

sw x8,4(x31)

c.slli x8,3

sw x8,4(x31)	

c.srli x8,2

sw x8,4(x31)

c.srai x8,1

sw x8,4(x31)

c.and x8,x9

sw x9,4(x31)

c.or x8,x9

sw x8,4(x31)

c.xor x8,x9

sw x8,4(x31)

c.sub x8,x9

sw x3,4(x31)

c.add x8,x9

sw x3,4(x31)

c.sub x9,x8

sw x5,4(x31)

.option norvc

li x31, 0x00200000
li x29, 0xFFFFFFFF
li x30, 4

lui x0,12345
srl x0,x0,3

sw x0, 0(x31)
sub x31,x31,x30
lw x0,0(x31)

xor x0,x0,x29  

sw x0, 0(x31)
sub x31,x31,x30
lw x0,0(x31)

lui x1,12345
srl x1,x1,3
sw x1, 0(x31)
lw x1,0(x31)
xor x1,x1,x29  
sw x1, 0(x31)
lw x1,0(x31)

lui x2,12345
srl x2,x2,3
sw x2, 0(x31)
lw x2,0(x31)
xor x2,x2,x29  
sw x2, 0(x31)
lw x2,0(x31)

lui x3,12345
srl x3,x3,3
sw x3, 0(x31)
lw x3,0(x31)
xor x3,x3,x29  
sw x3, 0(x31)
lw x3,0(x31)



lui x4,12345
srl x4,x4,3
sw x4, 0(x31)
lw x4,0(x31)
xor x4,x4,x29  
sw x4, 0(x31)
lw x4,0(x31)


lui x5,12345
srl x5,x5,3
sw x5, 0(x31)
lw x5,0(x31)
xor x5,x5,x29  
sw x5, 0(x31)
lw x5,0(x31)

lui x6,12345
srl x6,x6,3
sw x6, 0(x31)
lw x6,0(x31)
xor x6,x6,x29  
sw x6, 0(x31)
lw x6,0(x31)

lui x7,12345
srl x7,x7,3
sw x7, 0(x31)
lw x7,0(x31)
xor x7,x7,x29 
sw x7, 0(x31)
lw x7,0(x31)

lui x8,12345
srl x8,x8,3
sw x8, 0(x31)
lw x8,0(x31)
xor x8,x8,x29  
sw x8, 0(x31)
lw x8,0(x31)

lui x9,12345
srl x9,x9,3
sw x9, 0(x31)
lw x9,0(x31)
xor x9,x9,x29  
sw x9, 0(x31)
lw x9,0(x31)

lui x10,12345
srl x10,x10,3
sw x10, 0(x31)
lw x10,0(x31)
xor x10,x10,x29  
sw x10, 0(x31)
lw x10,0(x31)

lui x11,12345
srl x11,x11,3
sw x11, 0(x31)
lw x11,0(x31)
xor x11,x11,x29  
sw x11, 0(x31)
lw x11,0(x31)

lui x12,12345
srl x12,x12,3
sw x12, 0(x31)
lw x12,0(x31)
xor x12,x12,x29  
sw x12, 0(x31)
lw x12,0(x31)

lui x14,12345
srl x14,x14,3
sw x14, 0(x31)
lw x14,0(x31)
xor x14,x14,x29  
sw x14, 0(x31)
lw x14,0(x31)

lui x15,12345
srl x15,x15,3
sw x15, 0(x31)
lw x15,0(x31)
xor x15,x15,x29  
sw x15, 0(x31)
lw x15,0(x31)

lui x16,12345
srl x16,x16,3
sw x16, 0(x31)
lw x16,0(x31)
xor x16,x16,x29  
sw x16, 0(x31)
lw x16,0(x31)

lui x17,12345
srl x17,x17,3
sw x17, 0(x31)
lw x17,0(x31)
xor x17,x17,x29  
sw x17, 0(x31)
lw x17,0(x31)

lui x18,12345
srl x18,x18,3
sw x18, 0(x31)
lw x18,0(x31)
xor x18,x18,x29
sw x18, 0(x31)
lw x18,0(x31)

lui x19,12345
srl x19,x19,3
sw x19, 0(x31)
lw x19,0(x31)
xor x19,x19,x29  
lw x19,0(x31)
sw x19, 0(x31)

lui x20,12345
srl x20,x20,3
sw x20, 0(x31)
lw x20,0(x31)
xor x20,x20,x29  
sw x20, 0(x31)
lw x20,0(x31)

lui x21,12345
srl x21,x21,3
sw x21, 0(x31)
lw x21,0(x31)
xor x21,x21,x29  
sw x21, 0(x31)
lw x21,0(x31)

lui x22,12345
srl x22,x22,3
sw x22, 0(x31)
lw x22,0(x31)
xor x22,x22,x29  
sw x22, 0(x31)
lw x22,0(x31)

lui x23,12345
srl x23,x23,3
sw x23, 0(x31)
lw x23,0(x31)
xor x23,x23,x29  
sw x23, 0(x31)
lw x23,0(x31)

lui x24,12345
srl x24,x24,3
sw x24, 0(x31)
lw x24,0(x31)
xor x24,x24,x29  
sw x24, 0(x31)
lw x24,0(x31)

lui x25,12345
srl x25,x25,3
sw x25, 0(x31)
lw x25,0(x31)
xor x25,x25,x29  
sw x25, 0(x31)
lw x25,0(x31)

lui x26,12345
srl x26,x26,3
sw x26, 0(x31)
lw x26,0(x31)
xor x26,x26,x29  
sw x26, 0(x31)
lw x26,0(x31)

lui x27,12345
srl x27,x27,3
sw x27, 0(x31)
lw x27,0(x31)
xor x27,x27,x29  
sw x27, 0(x31)
lw x27,0(x31)

lui x28,12345
srl x28,x28,3
sw x28, 0(x31)
lw x28,0(x31)
xor x28,x28,x29  
sw x28, 0(x31)
lw x28,0(x31)





li x2, 4
li x3, -1
lui x29,12345
srl x29,x29,3
sw x29, 0(x31)
sub x31,x31,x2
lw x29,0(x31)
xor x29,x29,x3  
sw x29, 0(x31)
sub x31,x31,x2
lw x29,0(x31)

lui x30,12345
srl x30,x30,3
sw x30, 0(x31)
sub x31,x31,x2
lw x30, 0(x31)
xor x30,x30,x3  
sw x30, 0(x31)
sub x31,x31,x2
lw x30, 0(x31)

//WORK TILL HERE.

li x29, -1
li x30, 4

lui x0,4080
ori x0,x0,255
sw x0, 0(x31)
lw x0,0(x31)
xor x0,x0,x29  
sw x0, 0(x31)
lw x0,0(x31)

lui x1,4080
ori x1,x1,255
sw x1, 0(x31)
lw x1,0(x31)
xor x1,x1,x29  
sw x1, 0(x31)
lw x1,0(x31)

lui x2,4080
ori x2,x2,255
sw x2, 0(x31)
lw x2,0(x31)
xor x2,x2,x29  
sw x2, 0(x31)
lw x2,0(x31)

lui x3,4080
ori x3,x3,255
sw x3, 0(x31)
lw x3,0(x31)
xor x3,x3,x29  
sw x3, 0(x31)
lw x3,0(x31)

lui x4,4080
ori x4,x4,255
sw x4, 0(x31)
lw x4,0(x31)
xor x4,x4,x29  
sw x4, 0(x31)
lw x4,0(x31)

lui x5,4080
ori x5,x5,255
sw x5, 0(x31)
lw x5,0(x31)
xor x5,x5,x29  
sw x5, 0(x31)
lw x5,0(x31)

lui x6,4080
ori x6,x6,255
sw x6, 0(x31)
lw x6,0(x31)
xor x6,x6,x29  
sw x6, 0(x31)
lw x6,0(x31)

lui x7,4080
ori x7,x7,255
sw x7, 0(x31)
lw x7,0(x31)
xor x7,x7,x29  
sw x7, 0(x31)
lw x7,0(x31)

lui x8,4080
ori x8,x8,255
sw x8, 0(x31)
lw x8,0(x31)
xor x8,x8,x29  
sw x8, 0(x31)
lw x8,0(x31)

lui x9,4080
ori x9,x9,255
sw x9, 0(x31)
lw x9,0(x31)
xor x9,x9,x29  
sw x9, 0(x31)
lw x9,0(x31)

lui x10,4080
ori x10,x10,255




sw x10, 0(x31)

lw x10,0(x31)




xor x10,x10,x29  




sw x10, 0(x31)

lw x10,0(x31)






lui x11,4080
ori x11,x11,255




sw x11, 0(x31)

lw x11,0(x31)




xor x11,x11,x29  




sw x11, 0(x31)

lw x11,0(x31)






lui x12,4080
ori x12,x12,255




sw x12, 0(x31)

lw x12,0(x31)




xor x12,x12,x29  




sw x13, 0(x31)

lw x13,0(x31)






lui x14,4080
ori x14,x14,255




sw x14, 0(x31)

lw x14,0(x31)




xor x14,x14,x29  




sw x14, 0(x31)

lw x14,0(x31)






lui x15,4080
ori x15,x15,255




sw x15, 0(x31)

lw x15,0(x31)




xor x15,x15,x29  




sw x15, 0(x31)

lw x15,0(x31)






lui x16,4080
ori x16,x16,255




sw x16, 0(x31)

lw x16,0(x31)




xor x16,x16,x29  




sw x16, 0(x31)

lw x16,0(x31)






lui x17,4080
ori x17,x17,255




sw x17, 0(x31)

lw x17,0(x31)




xor x17,x17,x29  




sw x17, 0(x31)

lw x17,0(x31)






lui x18,4080
ori x18,x18,255




sw x18, 0(x31)

lw x18,0(x31)




xor x18,x18,x29  




sw x18, 0(x31)

lw x18,0(x31)






lui x19,4080
ori x19,x19,255




sw x19, 0(x31)

lw x19,0(x31)




xor x19,x19,x29  





lui x20,4080
ori x20,x20,255




sw x20, 0(x31)

lw x20,0(x31)




xor x20,x20,x29  




sw x20, 0(x31)

lw x20,0(x31)







lui x21,4080
ori x21,x21,255




sw x21, 0(x31)

lw x21,0(x31)




xor x21,x21,x29  




sw x21, 0(x31)

lw x21,0(x31)






lui x22,4080
ori x22,x22,255




sw x22, 0(x31)

lw x22,0(x31)




xor x22,x22,x29  




sw x22, 0(x31)

lw x22,0(x31)






lui x23,4080
ori x23,x23,255




sw x23, 0(x31)

lw x23,0(x31)




xor x23,x23,x29  




sw x23, 0(x31)

lw x23,0(x31)






lui x24,4080
ori x24,x24,255




sw x24, 0(x31)

lw x24,0(x31)




xor x24,x24,x29  




sw x24, 0(x31)

lw x24,0(x31)






lui x25,4080
ori x25,x25,255




sw x25, 0(x31)

lw x25,0(x31)




xor x25,x25,x29  




sw x25, 0(x31)

lw x25,0(x31)






lui x26,4080
ori x26,x26,255




sw x26, 0(x31)

lw x26,0(x31)




xor x26,x26,x29  




sw x26, 0(x31)

lw x26,0(x31)






lui x27,4080
ori x27,x27,255




sw x27, 0(x31)

lw x27,0(x31)




xor x27,x27,x29  




sw x27, 0(x31)

lw x27,0(x31)






lui x27,4080
ori x27,x27,255




sw x27, 0(x31)

lw x27,0(x31)




xor x27,x27,x29  




sw x27, 0(x31)

lw x27,0(x31)






lui x28,4080
ori x28,x28,255




sw x28, 0(x31)

lw x28,0(x31)




xor x28,x28,x29  




sw x28, 0(x31)

lw x28,0(x31)






li x3, -1

lui x29,4080
ori x29,x29,255
sw x29, 0(x31)
lw x29, 0(x31)
xor x29,x29,x3  
sw x29, 0(x31)
sub x1,x1,x2
lw x29, 0(x31)






lui x30,4080
ori x30,x30,255
sw x30, 0(x31)
lw x30, 0(x31)
xor x30,x30,x3  
sw x30, 0(x31)
sub x1,x1,x2
lw x30, 0(x31)


//WORK HERE.

li x29, -1
li x31, 0x00200000

lui x0, 986895
ori x0,x0,240
sw x0, 0(x31)
lw x0,0(x31)
xor x0,x0,x29  
sw x0, 0(x31)
lw x0,0(x31)

lui x1,986895
ori x1,x1,240
sw x1, 0(x31)
lw x1,0(x31)
xor x1,x1,x29  
sw x1, 0(x31)
lw x1,0(x31)






lui x2,986895
ori x2,x2,240




sw x2, 0(x31)

lw x2,0(x31)




xor x2,x2,x29  




sw x2, 0(x31)

lw x2,0(x31)






lui x3,986895
ori x3,x3,240




sw x3, 0(x31)

lw x3,0(x31)




xor x3,x3,x29  




sw x3, 0(x31)

lw x3,0(x31)






lui x4,986895
ori x4,x4,240




sw x4, 0(x31)

lw x4,0(x31)




xor x4,x4,x29  




sw x4, 0(x31)

lw x4,0(x31)






lui x5,986895
ori x5,x5,240




sw x5, 0(x31)

lw x5,0(x31)




xor x5,x5,x29  




sw x5, 0(x31)

lw x5,0(x31)






lui x6,986895
ori x6,x6,240




sw x6, 0(x31)

lw x6,0(x31)




xor x6,x6,x29  




sw x6, 0(x31)

lw x6,0(x31)






lui x7,986895
ori x7,x7,240




sw x7, 0(x31)

lw x7,0(x31)




xor x7,x7,x29  




sw x7, 0(x31)

lw x7,0(x31)






lui x8,986895
ori x8,x8,240




sw x8, 0(x31)

lw x8,0(x31)




xor x8,x8,x29  




sw x8, 0(x31)

lw x8,0(x31)






lui x9,986895
ori x9,x9,240




sw x9, 0(x31)

lw x9,0(x31)




xor x9,x9,x29  




sw x9, 0(x31)

lw x9,0(x31)






lui x10,986895
ori x10,x10,240




sw x10, 0(x31)

lw x10,0(x31)




xor x10,x10,x29  




sw x10, 0(x31)

lw x10,0(x31)






lui x11,986895
ori x11,x11,240




sw x11, 0(x31)

lw x11,0(x31)




xor x11,x11,x29  




sw x11, 0(x31)

lw x11,0(x31)


lui x12,986895
ori x12,x12,240
sw x12, 0(x31)
lw x12,0(x31)
xor x12,x12,x29  
sw x12, 0(x31)
lw x12,0(x31)

lui x13,986895
ori x13,x13,240
sw x13, 0(x31)
lw x13,0(x31)
xor x13,x13,x29  
sw x13, 0(x31)
lw x13,0(x31)





lui x14,986895
ori x14,x14,240




sw x14, 0(x31)

lw x14,0(x31)




xor x14,x14,x29  




sw x14, 0(x31)

lw x14,0(x31)






lui x15,986895
ori x15,x15,240




sw x15, 0(x31)

lw x15,0(x31)




xor x15,x15,x29  




sw x15, 0(x31)

lw x15,0(x31)






lui x16,986895
ori x16,x16,240




sw x16, 0(x31)

lw x16,0(x31)




xor x16,x16,x29  




sw x16, 0(x31)

lw x16,0(x31)






lui x17,986895
ori x17,x17,240




sw x17, 0(x31)

lw x17,0(x31)




xor x17,x17,x29  




sw x17, 0(x31)

lw x17,0(x31)






lui x18,986895
ori x18,x18,240




sw x18, 0(x31)

lw x18,0(x31)




xor x18,x18,x29  




sw x18, 0(x31)

lw x18,0(x31)






lui x19,986895
ori x19,x19,240
sw x19, 0(x31)
lw x19,0(x31)
xor x19,x19,x29  
sw x19, 0(x31)
lw x19,0(x31)




lui x20,986895
ori x20,x20,240
sw x20, 0(x31)
lw x20,0(x31)
xor x20,x20,x29 
sw x20, 0(x31)
lw x20,0(x31)


lui x21,986895
ori x21,x21,240




sw x21, 0(x31)

lw x21,0(x31)




xor x21,x21,x29  




sw x21, 0(x31)

lw x21,0(x31)






lui x22,986895
ori x22,x22,240




sw x22, 0(x31)

lw x22,0(x31)




xor x22,x22,x29  




sw x22, 0(x31)

lw x22,0(x31)






lui x23,986895
ori x23,x23,240




sw x23, 0(x31)

lw x23,0(x31)




xor x23,x23,x29  




sw x23, 0(x31)

lw x23,0(x31)






lui x24,986895
ori x24,x24,240




sw x24, 0(x31)

lw x24,0(x31)




xor x24,x24,x29  




sw x24, 0(x31)

lw x24,0(x31)






lui x25,986895
ori x25,x25,240




sw x25, 0(x31)

lw x25,0(x31)




xor x25,x25,x29  




sw x25, 0(x31)

lw x25,0(x31)






lui x26,986895
ori x26,x26,240




sw x26, 0(x31)

lw x26,0(x31)




xor x26,x26,x29  




sw x26, 0(x31)

lw x26,0(x31)






lui x27,986895
ori x27,x27,240




sw x27, 0(x31)

lw x27,0(x31)




xor x27,x27,x29  




sw x27, 0(x31)

lw x27,0(x31)



lui x28,986895
ori x28,x28,240
sw x28, 0(x31)
lw x28,0(x31)
xor x28,x28,x29  
sw x28, 0(x31)
lw x28,0(x31)







li x3, -1

lui x29,986895
ori x29,x29,240
sw x29, 0(x31)
lw x29, 0(x31)
xor x29,x29,x3  
sw x29, 0(x31)
lw x29, 0(x31)


lui x30,986895
ori x30,x30,240
sw x30, 0(x31)
lw x30, 0(x31)
xor x30,x30,x3  
sw x30, 0(x31)
lw x30,0(x31)

