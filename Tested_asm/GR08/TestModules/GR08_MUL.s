li s11, 0x00200000
li s1, 0x00000000
li s2, 0x00000000
li s3, 0x11111111
li s4, 0xFFFFFFFF
loopp: 
	p.muls s5, s1, s2
	sw s5, 1(s11)
	p.mulhhs s5, s1, s2
	sw s5, 1(s11)
	p.mac s5, s1, s2
	sw s5, 1(s11)
	p.msu s5, s1, s2
	sw s5, 1(s11)
	p.mulu s5, s1, s2
	sw s5, 1(s11)
	p.mulhhu s5, s1, s2
	sw s5, 1(s11)
	p.macsRN s5, s1, s2, 0
	sw s5, 1(s11)
	p.machhsRN s5, s1, s2, 0
	sw s5, 1(s11)
	pv.dotusp.sc.h s5, s1, s2
	sw s5, 1(s11)
	pv.sdotusp.sc.b s5, s1, s2
	sw s5, 1(s11)

	beq s2, s4, end2
	p.adduN s2, s2, s3, 0
	j loopp
end2: 
	xor s2, s2, s2
	beq s1, s4, end3
	p.adduN s1, s1, s3, 0
	j loopp

end3:
	p.mac s5, s1, s2
	sw s5, 1(s11)
	p.msu s5, s1, s2
	sw s5, 1(s11)
	p.muls s5, s1, s2
	sw s5, 1(s11)
	p.mulhhs s5, s1, s2
	sw s5, 1(s11)
	p.mulhhsN s5, s1, s2, 3
	sw s5, 1(s11)
	p.mulsRN s5, s1, s2, 4
	sw s5, 1(s11)
	p.mulhhsRN s5, s1, s2, 5
	sw s5, 1(s11)
	p.mulu s5, s1, s2
	sw s5, 1(s11)
	p.mulhhu s5, s1, s2
	sw s5, 1(s11)
	p.mulhhuN s5, s1, s2, 7
	sw s5, 1(s11)
	p.muluRN s5, s1, s2, 8
	sw s5, 1(s11)
	p.mulhhuRN s5, s1, s2, 9
	sw s5, 1(s11)
	p.macsN s5, s1, s2, 10
	sw s5, 1(s11)
	p.machhsN s5, s1, s2, 11
	sw s5, 1(s11)
	p.macsRN s5, s1, s2, 12
	sw s5, 1(s11)
	p.machhsRN s5, s1, s2, 13
	sw s5, 1(s11)
	p.macuN s5, s1, s2, 14
	sw s5, 1(s11)
	p.machhuN s5, s1, s2, 15
	sw s5, 1(s11)
	p.macuRN s5, s1, s2, 16
	sw s5, 1(s11)
	p.machhuRN s5, s1, s2, 17
	sw s5, 1(s11)


//last part
	p.mulhsu s5,s1,s2
	sw s5, 1(s11)
	p.mulh s5,s1,s2
	sw s5, 1(s11)
	p.mulhu s5,s1,s2
	sw s5, 1(s11)
	p.msu s5, s1, s2
	sw s5, 1(s11)
	
	pv.dotup.h s5, s1, s2
	sw s5, 1(s11)
	pv.dotup.sc.h s5, s1, s2
	sw s5, 1(s11)
	pv.dotup.b s5, s1, s2
	sw s5, 1(s11)
	pv.dotup.sc.b s5, s1, s2
	sw s5, 1(s11)
	pv.dotusp.h s5, s1, s2
	sw s5, 1(s11)
	pv.dotusp.sc.h s5, s1, s2
	sw s5, 1(s11)
	pv.dotusp.b s5, s1, s2
	sw s5, 1(s11)
	pv.dotusp.sc.b s5, s1, s2
	sw s5, 1(s11)
	pv.dotsp.h s5, s1, s2
	sw s5, 1(s11)
	pv.dotsp.sc.h s5, s1, s2
	sw s5, 1(s11)
	pv.dotsp.b s5, s1, s2
	sw s5, 1(s11)
	pv.dotsp.sc.b s5, s1, s2
	sw s5, 1(s11)
	pv.sdotup.h s5, s1, s2
	sw s5, 1(s11)
	pv.sdotup.sc.h s5, s1, s2
	sw s5, 1(s11)
	pv.sdotup.b s5, s1, s2
	sw s5, 1(s11)
	pv.sdotup.sc.b s5, s1, s2
	sw s5, 1(s11)
	pv.sdotusp.h s5, s1, s2
	sw s5, 1(s11)
	pv.sdotusp.sc.h s5, s1, s2
	sw s5, 1(s11)
	pv.sdotusp.b s5, s1, s2
	sw s5, 1(s11)
	pv.sdotusp.sc.b s5, s1, s2
	sw s5, 1(s11)
	pv.sdotsp.h s5, s1, s2
	sw s5, 1(s11)
	pv.sdotsp.sc.h s5, s1, s2
	sw s5, 1(s11)
	pv.sdotsp.b s5, s1, s2
	sw s5, 1(s11)
	pv.sdotsp.sc.b s5, s1, s2
	sw s5, 1(s11)
	pv.dotup.sci.b s5, s1, 63
	sw s5, 1(s11)
	pv.dotusp.sci.h s5, s1, 31
	sw s5, 1(s11)
	pv.dotusp.sci.b s5, s1, 31
	sw s5, 1(s11)
	pv.dotsp.sci.h s5, s1, 31
	sw s5, 1(s11)
	pv.dotsp.sci.b s5, s1, 31
	sw s5, 1(s11)
	pv.sdotup.sci.h s5, s1, 63
	sw s5, 1(s11)
	pv.sdotup.sci.b s5, s1, 63
	sw s5, 1(s11)
	pv.sdotusp.sci.h s5, s1, 31
	sw s5, 1(s11)
	pv.dotup.sci.h s5, s1, 63
	sw s5, 1(s11)
	pv.sdotusp.sci.b s5, s1, 31
	sw s5, 1(s11)
	pv.sdotsp.sci.h s5, s1, 31
	sw s5, 1(s11)
	pv.sdotsp.sci.b s5, s1, 31
	sw s5, 1(s11)
	pv.dotup.sci.b s5, s1, 0
	sw s5, 1(s11)
	pv.dotusp.sci.h s5, s1, 0
	sw s5, 1(s11)
	pv.dotusp.sci.b s5, s1, 0
	sw s5, 1(s11)
	pv.dotsp.sci.h s5, s1, 0
	sw s5, 1(s11)
	pv.dotsp.sci.b s5, s1, 0
	sw s5, 1(s11)
	pv.sdotup.sci.h s5, s1, 0
	sw s5, 1(s11)
	pv.sdotup.sci.b s5, s1, 0
	sw s5, 1(s11)
	pv.sdotusp.sci.h s5, s1, 0
	sw s5, 1(s11)
	pv.dotup.sci.h s5, s1, 0
	sw s5, 1(s11)
	pv.sdotusp.sci.b s5, s1, 0
	sw s5, 1(s11)
	pv.sdotsp.sci.h s5, s1, 0
	sw s5, 1(s11)
	pv.sdotsp.sci.b s5, s1, 0
