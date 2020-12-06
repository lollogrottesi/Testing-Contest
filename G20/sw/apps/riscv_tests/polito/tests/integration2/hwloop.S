lui x31, 256
addi x5, x0, 1
sub x6, x0, x5
xor x3, x3, x3
//srli x6, x6, 30

nop
lp.starti x1, abl1s
lp.count x1, x6
lp.endi x1, abl1e
lp.starti x0, abl0s
lp.count x0, x6
lp.endi x0, abl0e
abl1s:nop
abl0s:nop
nop
nop
nop
j endabl
nop

abl0e: nop
abl1e:nop
endabl:
csrr x9, 0x7B0
p.sw x9, 0(x31)
csrr x9, 0x7B1
p.sw x9, 0(x31)
csrr x9, 0x7B2
p.sw x9, 0(x31)
csrr x9, 0x7B4
p.sw x9, 0(x31)
csrr x9, 0x7B5
p.sw x9, 0(x31)
csrr x9, 0x7B6
p.sw x9, 0(x31)
nop

xor x6, x6, x6
nop
lp.starti x1, abl1s2
lp.count x1, x6
lp.endi x1, abl1e2
lp.starti x0, abl0s2
lp.count x0, x6
lp.endi x0, abl0e2
abl1s2:nop
abl0s2:nop
nop
nop
nop
j endabl2
nop

abl0e2: nop
abl1e2:nop
endabl2:
csrr x9, 0x7B0
p.sw x9, 0(x31)
csrr x9, 0x7B1
p.sw x9, 0(x31)
csrr x9, 0x7B2
p.sw x9, 0(x31)
csrr x9, 0x7B4
p.sw x9, 0(x31)
csrr x9, 0x7B5
p.sw x9, 0(x31)
csrr x9, 0x7B6
p.sw x9, 0(x31)

nop

addi x6, x6, 0
lp.setup x0, x6, ablsh1
csrr x9, 0x7B0
p.sw x9, 0(x31)
csrr x9, 0x7B1
p.sw x9, 0(x31)
csrr x9, 0x7B2
p.sw x9, 0(x31)
csrr x9, 0x7B4
p.sw x9, 0(x31)
csrr x9, 0x7B5
p.sw x9, 0(x31)
csrr x9, 0x7B6
p.sw x9, 0(x31)
j xxx1
ablsh1:nop
nop
xxx1:nop

addi x6, x6, 0
lp.setup x1, x6, ablsh2
csrr x9, 0x7B0
p.sw x9, 0(x31)
csrr x9, 0x7B1
p.sw x9, 0(x31)
csrr x9, 0x7B2
p.sw x9, 0(x31)
csrr x9, 0x7B4
p.sw x9, 0(x31)
csrr x9, 0x7B5
p.sw x9, 0(x31)
csrr x9, 0x7B6
p.sw x9, 0(x31)
j xxx2
ablsh2:nop
nop
xxx2:nop

sub x6, x0, x5
lp.setup x0, x6, ablsh3
csrr x9, 0x7B0
p.sw x9, 0(x31)
csrr x9, 0x7B1
p.sw x9, 0(x31)
csrr x9, 0x7B2
p.sw x9, 0(x31)
csrr x9, 0x7B4
p.sw x9, 0(x31)
csrr x9, 0x7B5
p.sw x9, 0(x31)
csrr x9, 0x7B6
p.sw x9, 0(x31)
j xxx3
ablsh3:nop
nop
xxx3:nop


sub x6, x0, x5
lp.setup x1, x6, ablsh4
csrr x9, 0x7B0
p.sw x9, 0(x31)
csrr x9, 0x7B1
p.sw x9, 0(x31)
csrr x9, 0x7B2
p.sw x9, 0(x31)
csrr x9, 0x7B4
p.sw x9, 0(x31)
csrr x9, 0x7B5
p.sw x9, 0(x31)
csrr x9, 0x7B6
p.sw x9, 0(x31)
j xxx4
ablsh4:nop
nop
xxx4:nop




