
li x30,1
li x25, 0x00200000

lp.setup x1,x30, setuphl1
addi x30,x30,7
nop
setuphl1: sw x30,0(x25)

lp.setup x1,x30, setuphl2
addi x30,x30,7
nop
setuphl2: sw x30,0(x25)

lp.setup x1,x30, setuphl3
addi x30,x30,7
nop
setuphl3: sw x30,0(x25)

lp.setup x1,x30, setuphl4
addi x30,x30,7
nop
setuphl4: sw x30,0(x25)
csrr x7,0x7C0
csrr x8,0x7C1
csrr x4,0x7C2
csrr x17,0x7C4
csrr x18,0x7C5
csrr x14,0x7C6
sw x7,0(x25);
sw x8,0(x25);
sw x4,0(x25);
sw x17,0(x25);
sw x18,0(x25);
sw x14,0(x25);
csrrwi x7,0x7C0,1
csrrwi x8,0x7C1,1
csrrwi x4,0x7C2,1
csrrwi x17,0x7C4,1
csrrwi x18,0x7C5,1
csrrwi x14,0x7C6,1
csrr x7,0x7C0
csrr x8,0x7C1
csrr x4,0x7C2
csrr x17,0x7C4
csrr x18,0x7C5
csrr x14,0x7C6
sw x7,0(x25);
sw x8,0(x25);
sw x4,0(x25);
sw x17,0(x25);
sw x18,0(x25);
sw x14,0(x25);
csrrwi x7,0x7C0,0
csrrwi x8,0x7C1,0
csrrwi x4,0x7C2,0
csrrwi x17,0x7C4,0
csrrwi x18,0x7C5,0
csrrwi x14,0x7C6,0
csrr x7,0x7C0
csrr x8,0x7C1
csrr x4,0x7C2
csrr x17,0x7C4
csrr x18,0x7C5
csrr x14,0x7C6
sw x7,0(x25);
sw x8,0(x25);
sw x4,0(x25);
sw x17,0(x25);
sw x18,0(x25);
sw x14,0(x25);
csrrwi x7,0x7C0,31
csrrwi x8,0x7C1,31
csrrwi x4,0x7C2,31
csrrwi x17,0x7C4,31
csrrwi x18,0x7C5,31
csrrwi x14,0x7C6,31
csrr x7,0x7C0
csrr x8,0x7C1
csrr x4,0x7C2
csrr x17,0x7C4
csrr x18,0x7C5
csrr x14,0x7C6
sw x7,0(x25);
sw x8,0(x25);
sw x4,0(x25);
sw x17,0(x25);
sw x18,0(x25);
sw x14,0(x25);
csrrwi x7,0x7C0,7
csrrwi x8,0x7C1,7
csrrwi x4,0x7C2,7
csrrwi x17,0x7C4,7
csrrwi x18,0x7C5,7
csrrwi x14,0x7C6,7
csrr x7,0x7C0
csrr x8,0x7C1
csrr x4,0x7C2
csrr x17,0x7C4
csrr x18,0x7C5
csrr x14,0x7C6
sw x7,0(x25);
sw x8,0(x25);
sw x4,0(x25);
sw x17,0(x25);
sw x18,0(x25);
sw x14,0(x25);
csrrwi x7,0x7C0,15
csrrwi x8,0x7C1,15
csrrwi x4,0x7C2,15
csrrwi x17,0x7C4,15
csrrwi x18,0x7C5,15
csrrwi x14,0x7C6,15
csrr x7,0x7C0
csrr x8,0x7C1
csrr x4,0x7C2
csrr x17,0x7C4
csrr x18,0x7C5
csrr x14,0x7C6
sw x7,0(x25);
sw x8,0(x25);
sw x4,0(x25);
sw x17,0(x25);
sw x18,0(x25);
sw x14,0(x25);

lp.starti x0, hwl1
lp.endi x0, endhwl1
lp.counti x0, 0xF
csrr x7,0x7C0
csrr x8,0x7C1;
nop
sw x7,0(x4);
sw x8,0(x25);
hwl1: add x10,x2,x3
sw x10,0(x25)
csrr x4, 0x7C2;
nop
sw x4,0(x25)
endhwl1:

li x31,0xF;
lp.starti x1, hwl2;
lp.endi x1, endhwl2;
lp.count x1, x31;
csrr x7,0x7C0
csrr x8,0x7C1;
nop
sw x7,0(x4);
sw x8,0(x25);
hwl2: add x10,x2,x3
sw x10,0(x25)
csrr x4, 0x7C6;
nop
sw x4,0(x25)
endhwl2:

lp.setup x0,x31,hwlsetup1;
csrr x7,0x7C0
csrr x8,0x7C1;
nop
sw x7,0(x4);
sw x8,0(x25);
add x10,x2,x3
sw x10,0(x25)
csrr x4, 0x7C2;
nop
sw x4,0(x25)
hwlsetup1:

lp.setup x1,x31,hwlsetup11;
csrr x7,0x7C0
csrr x8,0x7C1;
nop
sw x7,0(x4);
sw x8,0(x25);
add x10,x2,x3
sw x10,0(x25)
csrr x4, 0x7C6;
nop
sw x4,0(x25)
hwlsetup11:

lp.setupi x0,0xF,hwlsetup;

add x10,x2,x3
sw x10,0(x25)
add x10,x2,x3
sw x10,0(x25)
csrr x4, 0x7C2;
nop
sw x4,0(x25)
hwlsetup:

lp.setupi x1,0xF,hwlsetup21;

sw x8,0(x4);
add x10,x2,x3
sw x10,0(x25)
csrr x4, 0x7C6;
nop
sw x4,0(x25)
hwlsetup21:
