li s11, 0x00200000
li s1, 0x00000000
li s2, 0x00000000
li s3, 0x11111111
li s4, 0xFFFFFFFF
loopp: 
	p.muls s5, s1, s2
	p.mulhhs s6, s1, s2
	p.mac s7, s1, s2
	p.msu s8, s1, s2
	p.mulu s9, s1, s2
	p.mulhhu s10, s1, s2

	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)
	sw s9, 16(s11)
	sw s10,20(s11)

	p.macsRN s5, s1, s2, 0
	p.machhsRN s6, s1, s2, 0
	pv.dotusp.sc.h s7, s1, s2
	pv.sdotusp.sc.b s8, s1, s2

	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)

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
	p.msu s6, s1, s2
	p.muls s7, s1, s2
	p.mulhhs s8, s1, s2
	p.mulhhsN s9, s1, s2, 3
	p.mulhhsN s10, s1, s2, 3

	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)
	sw s9, 16(s11)
	sw s10,20(s11)

	p.mulsRN s5, s1, s2, 4
	p.mulhhsRN s6, s1, s2, 5
	p.mulu s7, s1, s2
	p.mulhhu s8, s1, s2
	p.mulhhuN s9, s1, s2, 7
	p.muluRN s10, s1, s2, 8

	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)
	sw s9, 16(s11)
	sw s10,20(s11)

	p.mulhhuRN s5, s1, s2, 9
	p.macsN s6, s1, s2, 10
	p.machhsN s7, s1, s2, 11
	p.macsRN s8, s1, s2, 12
	p.machhsRN s9, s1, s2, 13
	p.macuN s10, s1, s2, 14

	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)
	sw s9, 16(s11)
	sw s10,20(s11)

	p.machhuN s5, s1, s2, 15
	p.macuRN s6, s1, s2, 16
	p.machhuRN s7, s1, s2, 17
	p.mulhsu s8,s1,s2
	p.mulh s9,s1,s2
	p.mulhu s10,s1,s2

	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)
	sw s9, 16(s11)
	sw s10,20(s11)

	p.msu s5, s1, s2
	pv.dotup.h s6, s1, s2
	pv.dotup.sc.h s7, s1, s2
	pv.dotup.b s8, s1, s2
	pv.dotup.sc.b s9, s1, s2
	pv.dotusp.h s10, s1, s2
	
	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)
	sw s9, 16(s11)
	sw s10,20(s11)


	pv.dotusp.sc.h s5, s1, s2
	pv.dotusp.b s6, s1, s2
	pv.dotusp.sc.b s7, s1, s2
	pv.dotsp.h s8, s1, s2
	pv.dotsp.sc.h s9, s1, s2
	pv.dotsp.b s10, s1, s2

	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)
	sw s9, 16(s11)
	sw s10,20(s11)

	pv.dotsp.sc.b s5, s1, s2
	pv.sdotup.h s6, s1, s2
	pv.sdotup.sc.h s7, s1, s2
	pv.sdotup.b s8, s1, s2
	pv.sdotup.sc.b s9, s1, s2
	pv.sdotusp.h s10, s1, s2

	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)
	sw s9, 16(s11)
	sw s10,20(s11)

	pv.sdotusp.sc.h s5, s1, s2
	pv.sdotusp.b s6, s1, s2
	pv.sdotusp.sc.b s7, s1, s2
	pv.sdotsp.h s8, s1, s2
	pv.sdotsp.sc.h s9, s1, s2
	pv.sdotsp.b s10, s1, s2
	
	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)
	sw s9, 16(s11)
	sw s10,20(s11)

	pv.sdotsp.sc.b s5, s1, s2
	pv.dotup.sci.b s6, s1, 63
	pv.dotusp.sci.h s7, s1, 31
	pv.dotusp.sci.b s8, s1, 31
	pv.dotsp.sci.h s9, s1, 31
	pv.dotsp.sci.b s10, s1, 31
	
	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)
	sw s9, 16(s11)
	sw s10,20(s11)

	pv.sdotup.sci.h s5, s1, 63
	pv.sdotup.sci.b s6, s1, 63
	pv.sdotusp.sci.h s7, s1, 31
	pv.dotup.sci.h s8, s1, 63
	pv.sdotusp.sci.b s9, s1, 31
	pv.sdotsp.sci.h s10, s1, 31

	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)
	sw s9, 16(s11)
	sw s10,20(s11)

	pv.sdotsp.sci.b s5, s1, 31
	pv.dotup.sci.b s6, s1, 0
	pv.dotusp.sci.h s7, s1, 0
	pv.dotusp.sci.b s8, s1, 0
	pv.dotsp.sci.h s9, s1, 0
	pv.dotsp.sci.b s10, s1, 0

	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)
	sw s9, 16(s11)
	sw s10,20(s11)

	pv.sdotup.sci.h s5, s1, 0
	pv.sdotup.sci.b s6, s1, 0
	pv.sdotusp.sci.h s7, s1, 0
	pv.dotup.sci.h s8, s1, 0
	pv.sdotusp.sci.b s9, s1, 0
	pv.sdotsp.sci.h s10, s1, 0

	sw s5, 0(s11)
	sw s6, 4(s11)
	sw s7, 8(s11)
	sw s8, 12(s11)
	sw s9, 16(s11)
	sw s10,20(s11)

	pv.sdotsp.sci.b s5, s1, 0
	sw s5, 0(s11)
