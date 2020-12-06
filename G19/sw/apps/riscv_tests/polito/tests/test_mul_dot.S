##########################
# 32418 patterns
# 5183 seconds
# 74.6%
##########################



lui x2, 0x00104
xor x6, x6, x6
xor x3, x3, x3
lui x8, 0x11111
ori x8, x8, 0x111
addi x1, x0, 0x1
addi x15, x0, 0x3


lp.setupi x1, 0x10, ext_loop_end

lp.setupi x0, 0x10, in_loop_end

mulh x4, x6, x3
p.mac x5, x6, x3

p.sw x4, x15(x2!)
p.sw x5, x15(x2!)

p.msu x4, x6, x3
mul x5, x6, x3

p.sw x4, x15(x2!)
p.sw x5, x15(x2!)

in_loop_end:
add x6, x6, x8

ext_loop_end:
add x3, x3, x8


lui x2, 0x00104
xor x6, x6, x6
xor x3, x3, x3
lui x8, 0x11111
ori x8, x8, 0x111
addi x1, x0, 0x1
addi x15, x0, 0x3



lp.setupi x1, 0x10, ext_loop_end2

lp.setupi x0, 0x10, in_loop_end2

p.machhuN x7, x6, x3, 1
pv.dotsp.h x9, x6, x3

p.sw x7, x15(x2!)
p.sw x9, x15(x2!)

pv.dotup.b x7, x6, x3
pv.sdotusp.sc.b x9, x6, x3

p.sw x7, x15(x2!)
p.sw x9, x15(x2!)

in_loop_end2:
add x6, x6, x8

ext_loop_end2:
add x3, x3, x8
