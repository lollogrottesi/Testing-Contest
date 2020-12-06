xor x0,x0,x0
xor x1,x1,x1
xor x2,x2,x2
xor x3,x3,x3
xor x4,x4,x4
xor x5,x5,x5
xor x6,x6,x6
xor x7,x7,x7
xor x8,x8,x8
xor x9,x9,x9
xor x10,x10,x10
xor x11,x11,x11
xor x12,x12,x12
xor x13,x13,x13
xor x14,x14,x14
xor x15,x15,x15
xor x16,x16,x16
xor x17,x17,x17
xor x18,x18,x18
xor x19,x19,x19
xor x20,x20,x20
xor x21,x21,x21
xor x22,x22,x22
xor x23,x23,x23
xor x24,x24,x24
xor x25,x25,x25
xor x26,x26,x26
xor x27,x27,x27
xor x28,x28,x28
xor x29,x29,x29
xor x30,x30,x30
xor x31,x31,x31

lui x31, 256

addi x2,x2,1
sub x4,x1,x2
xor x2,x2,x2

lui x1,69905
ori x1,x1,273



l1:
	

	l2:	
		p.mac x5,x2,x3
		p.sw x5,x6(x31)
		
		p.msu x5,x2,x3
		p.sw x5,x6(x31)
		
		p.muls x5,x2,x3
		p.sw x5,x6(x31)
		
		p.mulhhs x5,x2,x3
		p.sw x5,x6(x31)
		
		p.mulsN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.mulhhsN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.mulsRN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.mulhhsRN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.mulu x5,x2,x3
		p.sb x5,x6(x31)
		p.mulhhu x5,x2,x3
		p.sw x5,x6(x31)
		p.muluN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.mulhhuN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.muluRN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.mulhhuRN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.macsN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.machhsN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.macsRN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.machhsRN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.macuN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.machhuN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.macuRN x5,x2,x3,7
		p.sw x5,x6(x31)
		p.machhuRN x5,x2,x3,7
		p.sw x5,x6(x31)
		
		pv.dotup.h x5,x2,x3
		p.sw x5,x6(x31)
		pv.dotup.sc.h x5,x2,x3
		p.sw x5,x6(x31)
		pv.dotup.sci.h x5,x2,7
		p.sw x5,x6(x31)
		pv.dotup.b x5,x2,x3
		p.sw x5,x6(x31)
		pv.dotup.sc.b x5,x2,x3
		p.sw x5,x6(x31)
		pv.dotup.sci.b x5,x2,7
		p.sw x5,x6(x31)
		pv.dotusp.h x5,x2,x3
		p.sw x5,x6(x31)
		pv.dotusp.sc.h x5,x2,x3
		p.sw x5,x6(x31)
		pv.dotusp.sci.h x5,x2,7
		p.sw x5,x6(x31)
		pv.dotsp.h x5,x2,x3
		p.sw x5,x6(x31)
		pv.dotsp.sc.h x5,x2,x3
		p.sw x5,x6(x31)
		pv.dotsp.sci.h x5,x2,7
		p.sw x5,x6(x31)
		pv.dotsp.b x5,x2,x3
		p.sw x5,x6(x31)
		pv.dotsp.sc.b x5,x2,x3
		p.sw x5,x6(x31)
		pv.dotsp.sci.b x5,x2,7
		p.sw x5,x6(x31)
		pv.sdotup.h x5,x2,x3
		p.sw x5,x6(x31)
		pv.sdotup.sc.h x5,x2,x3
		p.sw x5,x6(x31)
		pv.sdotup.sci.h x5,x2,7
		p.sw x5,x6(x31)
		pv.sdotup.b x5,x2,x3
		p.sw x5,x6(x31)
		pv.sdotup.sc.b x5,x2,x3
		p.sw x5,x6(x31)
		pv.sdotup.sci.b x5,x2,7
		p.sw x5,x6(x31)
		
		pv.sdotusp.h x5,x2,x3
		p.sw x5,x6(x31)
		pv.sdotusp.sc.h x5,x2,x3
		p.sw x5,x6(x31)
		pv.sdotusp.sci.h x5,x2,7
		p.sw x5,x6(x31)
	
		pv.sdotsp.h x5,x2,x3
		p.sw x5,x6(x31)
		pv.sdotsp.sc.h x5,x2,x3
		p.sw x5,x6(x31)
		pv.sdotsp.sci.h x5,x2,7
		p.sw x5,x6(x31)
		
		pv.sdotsp.b x5,x2,x3
		p.sw x5,x6(x31)
		pv.sdotsp.sc.b x5,x2,x3
		p.sw x5,x6(x31)
		pv.sdotsp.sci.b x5,x2,7
		p.sw x5,x6(x31)

		addi x6,x6,4
		
		add x2,x2,x1
		bne x2,x4,l2	
	     	

	xor x2,x2,x2
	add x3,x3,x1
	bne x3,x4,l1

nop
nop
nop
nop	
