li x31, 0x00200000

li x5, 0
li x6, 0
xori x6, x6, -1
p.sw x5, 1(x31!)
p.sw x6, 1(x31!)

li x5, 0xFFFF0
li x6, 0xFFFF0
xori x6, x6, -1
p.sw x5, 1(x31!)
p.sw x6, 1(x31!)

 
li x5, 0x00FF0
ori x5, x5, 0x0FF
li x6, 0x00FF0
ori x6, x5, 0x0FF
xori x6, x6, -1
p.sw x5, 1(x31!)
p.sw x6, 1(x31!)


li x5, 0xF0F0F
ori x5, x5, 0x0F0
li x6, 0xF0F0F
ori x6, x6, 0x0F0
xori x6, x6, -1
p.sw x5, 1(x31!)
p.sw x6, 1(x31!)

li x5, 0x33333
ori x5, x5, 0x333
li x6, 0x33333
ori x6, x6, 0x333
xori x6, x6, -1
p.sw x5, 1(x31!)
p.sw x6, 1(x31!)


li x5, 0x55555
ori x5, x5, 0x555
li x6, 0x55555
ori x6, x6, 0x555
xori x6, x6, -1
p.sw x5, 1(x31!)
p.sw x6, 1(x31!)

li x29, 0x00200000

lp.setupi x0, 0xC, ext_loop_end6

p.lw x15, 1(x31!)
lhu x30, 0(x31)

pv.dotup.h x3, x15, x30 
mulhsu x4, x15, x30

pv.dotsp.b x5, x15, x30
mulhu x6, x15, x30

p.sw x3, 0(x29)
p.sw x4, 1(x29)
p.sw x5, 2(x29)
p.sw x5, 3(x29)

p.sb x3, 0(x29)
p.sb x4, 1(x29)
p.sb x5, 2(x29)
p.sb x5, 3(x29)


ext_loop_end6:

li x31, 0x00200000
li x3, 0xFFFFF
ori x3, x3, 0x0FF
sll x3, x3, 4
ori x3, x3, 0x0FF

sw x0, 0(x31)
nop
nop
nop
sw x3, 0(x31)

lw x5, 0(x31)
nop
nop
nop
lw x6, 0(x31)

lui x3, 0x33333
ori x3, x3, 0x333

sw x3, 0(x31)
lw x6, 0(x31)


