from asm_sbst_core import *


# Read template
sbst = SBST("template_asm.txt")

sbst.block_begin("Base Instruction Set", "RV32I")
sbst.set_iterations(32)
sbst.add_instr("auipc", TYPE_I, False)
sbst.add_instr("lui", TYPE_I, False)
sbst.add_instr("addi", TYPE_RI)
sbst.add_instr("slti", TYPE_RS)
sbst.add_instr("sltiu", TYPE_RS)
sbst.add_instr("xori", TYPE_RI)
sbst.add_instr("ori", TYPE_RI)
sbst.add_instr("andi", TYPE_RI)
sbst.add_instr("slli", TYPE_RS)
sbst.add_instr("srli", TYPE_RS)
sbst.add_instr("srai", TYPE_RS)
sbst.add_instr("add", TYPE_RR)
sbst.add_instr("sub", TYPE_RR)
sbst.add_instr("sll", TYPE_RR)
sbst.add_instr("slt", TYPE_RR)
sbst.add_instr("sltu", TYPE_RR)
sbst.add_instr("xor", TYPE_RR)
sbst.add_instr("srl", TYPE_RR)
sbst.add_instr("sra", TYPE_RR)
sbst.add_instr("or", TYPE_RR)
sbst.add_instr("and", TYPE_RR)
sbst.add_instr("rdcycle", TYPE_D)
sbst.add_instr("rdcycleh", TYPE_D)
sbst.add_instr("rdtime", TYPE_D)
sbst.add_instr("rdtimeh", TYPE_D)
sbst.add_instr("rdinstret", TYPE_D)
sbst.add_instr("rdinstreth", TYPE_D)
sbst.block_end()

sbst.block_begin("Standard Extension", "RV32M")
sbst.set_iterations(32)
sbst.add_instr("mul", TYPE_RR)
sbst.add_instr("mulh", TYPE_RR)
sbst.add_instr("mulhsu", TYPE_RR)
sbst.add_instr("mulhu", TYPE_RR)
sbst.add_instr("div", TYPE_RR)
sbst.add_instr("divu", TYPE_RR)
sbst.add_instr("rem", TYPE_RR)
sbst.add_instr("remu", TYPE_RR)
sbst.block_end()

sbst.block_begin("ALU Bitwise Extension", "RVCY_ALU1")
sbst.set_iterations(32)
sbst.add_instr("p.extract", TYPE_RSS)
sbst.add_instr("p.extractu", TYPE_RSS)
sbst.add_instr("p.insert", TYPE_RSS)
sbst.add_instr("p.bclr", TYPE_RSS)
sbst.add_instr("p.bset", TYPE_RSS)
sbst.add_instr("p.extractr", TYPE_RR)
sbst.add_instr("p.extractur", TYPE_RR)
sbst.add_instr("p.insertr", TYPE_RR)
sbst.add_instr("p.bclrr", TYPE_RR)
sbst.add_instr("p.bsetr", TYPE_RR)
sbst.add_instr("p.ror", TYPE_RR)
sbst.add_instr("p.ff1", TYPE_R)
sbst.add_instr("p.fl1", TYPE_R)
sbst.add_instr("p.clb", TYPE_R)
sbst.add_instr("p.cnt", TYPE_R)
sbst.block_end()

sbst.block_begin("ALU General Extension", "RVCY_ALU2")
sbst.set_iterations(64)
sbst.add_instr("p.abs", TYPE_R)
sbst.add_instr("p.slet", TYPE_RR)
sbst.add_instr("p.sletu", TYPE_RR)
sbst.add_instr("p.min", TYPE_RR)
sbst.add_instr("p.minu", TYPE_RR)
sbst.add_instr("p.max", TYPE_RR)
sbst.add_instr("p.maxu", TYPE_RR)
sbst.add_instr("p.exths", TYPE_R)
sbst.add_instr("p.exthz", TYPE_R)
sbst.add_instr("p.extbs", TYPE_R)
sbst.add_instr("p.extbz", TYPE_R)
sbst.add_instr("p.clip", TYPE_RS)
sbst.add_instr("p.clipr", TYPE_RR)
sbst.add_instr("p.clipu", TYPE_RS)
sbst.add_instr("p.clipur", TYPE_RR)
sbst.add_instr("p.addN", TYPE_RRS)
sbst.add_instr("p.adduN", TYPE_RRS)
sbst.add_instr("p.addRN", TYPE_RRS)
sbst.add_instr("p.adduRN", TYPE_RRS)
sbst.add_instr("p.subN", TYPE_RRS)
sbst.add_instr("p.subuN", TYPE_RRS)
sbst.add_instr("p.subRN", TYPE_RRS)
sbst.add_instr("p.subuRN", TYPE_RRS)
sbst.add_instr("p.addNr", TYPE_RR)
sbst.add_instr("p.adduNr", TYPE_RR)
sbst.add_instr("p.addRNr", TYPE_RR)
sbst.add_instr("p.adduRNr", TYPE_RR)
sbst.add_instr("p.subNr", TYPE_RR)
sbst.add_instr("p.subuNr", TYPE_RR)
sbst.add_instr("p.subRNr", TYPE_RR)
sbst.add_instr("p.subuRNr", TYPE_RR)
sbst.block_end()

sbst.block_begin("MAC Extension", "RVCY_MAC")
sbst.set_iterations(32)
sbst.add_instr("p.mac", TYPE_RR)
sbst.add_instr("p.msu", TYPE_RR)
sbst.add_instr("p.muls", TYPE_RR)
sbst.add_instr("p.mulhhs", TYPE_RR)
sbst.add_instr("p.mulsN", TYPE_RRS)
sbst.add_instr("p.mulhhsN", TYPE_RRS)
sbst.add_instr("p.mulsRN", TYPE_RRS)
sbst.add_instr("p.mulhhsRN", TYPE_RRS)
sbst.add_instr("p.mulu", TYPE_RR)
sbst.add_instr("p.mulhhu", TYPE_RR)
sbst.add_instr("p.muluN", TYPE_RRS)
sbst.add_instr("p.mulhhuN", TYPE_RRS)
sbst.add_instr("p.muluRN", TYPE_RRS)
sbst.add_instr("p.mulhhuRN", TYPE_RRS)
sbst.add_instr("p.macsN", TYPE_RRS)
sbst.add_instr("p.machhsN", TYPE_RRS)
sbst.add_instr("p.macsRN", TYPE_RRS)
sbst.add_instr("p.machhsRN", TYPE_RRS)
sbst.add_instr("p.macuN", TYPE_RRS)
sbst.add_instr("p.machhuN", TYPE_RRS)
sbst.add_instr("p.macuRN", TYPE_RRS)
sbst.add_instr("p.machhuRN", TYPE_RRS)
sbst.block_end()

sbst.block_begin("Vectorial Extension", "RVCY_VEC1")
sbst.set_iterations(32)
sbst.add_instr("pv.add.h", TYPE_RR)
sbst.add_instr("pv.add.sc.h", TYPE_RR)
sbst.add_instr("pv.add.sci.h", TYPE_R6)
sbst.add_instr("pv.add.b", TYPE_RR)
sbst.add_instr("pv.add.sc.b", TYPE_RR)
sbst.add_instr("pv.add.sci.b", TYPE_R6)
sbst.add_instr("pv.sub.h", TYPE_RR)
sbst.add_instr("pv.sub.sc.h", TYPE_RR)
sbst.add_instr("pv.sub.sci.h", TYPE_R6)
sbst.add_instr("pv.sub.b", TYPE_RR)
sbst.add_instr("pv.sub.sc.b", TYPE_RR)
sbst.add_instr("pv.sub.sci.b", TYPE_R6)
sbst.add_instr("pv.avg.h", TYPE_RR)
sbst.add_instr("pv.avg.sc.h", TYPE_RR)
sbst.add_instr("pv.avg.sci.h", TYPE_R6)
sbst.add_instr("pv.avg.b", TYPE_RR)
sbst.add_instr("pv.avg.sc.b", TYPE_RR)
sbst.add_instr("pv.avg.sci.b", TYPE_R6)
sbst.add_instr("pv.avgu.h", TYPE_RR)
sbst.add_instr("pv.avgu.sc.h", TYPE_RR)
sbst.add_instr("pv.avgu.sci.h", TYPE_R6, False)
sbst.add_instr("pv.avgu.b", TYPE_RR)
sbst.add_instr("pv.avgu.sc.b", TYPE_RR)
sbst.add_instr("pv.avgu.sci.b", TYPE_R6, False)
sbst.add_instr("pv.min.h", TYPE_RR)
sbst.add_instr("pv.min.sc.h", TYPE_RR)
sbst.add_instr("pv.min.sci.h", TYPE_R6)
sbst.add_instr("pv.min.b", TYPE_RR)
sbst.add_instr("pv.min.sc.b", TYPE_RR)
sbst.add_instr("pv.min.sci.b", TYPE_R6)
sbst.add_instr("pv.minu.h", TYPE_RR)
sbst.add_instr("pv.minu.sc.h", TYPE_RR)
sbst.add_instr("pv.minu.sci.h", TYPE_R6, False)
sbst.add_instr("pv.minu.b", TYPE_RR)
sbst.add_instr("pv.minu.sc.b", TYPE_RR)
sbst.add_instr("pv.minu.sci.b", TYPE_R6, False)
sbst.add_instr("pv.max.h", TYPE_RR)
sbst.add_instr("pv.max.sc.h", TYPE_RR)
sbst.add_instr("pv.max.sci.h", TYPE_R6)
sbst.add_instr("pv.max.b", TYPE_RR)
sbst.add_instr("pv.max.sc.b", TYPE_RR)
sbst.add_instr("pv.max.sci.b", TYPE_R6)
sbst.add_instr("pv.maxu.h", TYPE_RR)
sbst.add_instr("pv.maxu.sc.h", TYPE_RR)
sbst.add_instr("pv.maxu.sci.h", TYPE_R6, False)
sbst.add_instr("pv.maxu.b", TYPE_RR)
sbst.add_instr("pv.maxu.sc.b", TYPE_RR)
sbst.add_instr("pv.maxu.sci.b", TYPE_R6, False)
sbst.add_instr("pv.srl.h", TYPE_RR)
sbst.add_instr("pv.srl.sc.h", TYPE_RR)
sbst.add_instr("pv.srl.sci.h", TYPE_RS)
sbst.add_instr("pv.srl.b", TYPE_RR)
sbst.add_instr("pv.srl.sc.b", TYPE_RR)
sbst.add_instr("pv.srl.sci.b", TYPE_RS)
sbst.add_instr("pv.sra.h", TYPE_RR)
sbst.add_instr("pv.sra.sc.h", TYPE_RR)
sbst.add_instr("pv.sra.sci.h", TYPE_RS)
sbst.add_instr("pv.sra.b", TYPE_RR)
sbst.add_instr("pv.sra.sc.b", TYPE_RR)
sbst.add_instr("pv.sra.sci.b", TYPE_RS)
sbst.add_instr("pv.sll.h", TYPE_RR)
sbst.add_instr("pv.sll.sc.h", TYPE_RR)
sbst.add_instr("pv.sll.sci.h", TYPE_RS)
sbst.add_instr("pv.sll.b", TYPE_RR)
sbst.add_instr("pv.sll.sc.b", TYPE_RR)
sbst.add_instr("pv.sll.sci.b", TYPE_RS)
sbst.add_instr("pv.or.h", TYPE_RR)
sbst.add_instr("pv.or.sc.h", TYPE_RR)
sbst.add_instr("pv.or.sci.h", TYPE_R6)
sbst.add_instr("pv.or.b", TYPE_RR)
sbst.add_instr("pv.or.sc.b", TYPE_RR)
sbst.add_instr("pv.or.sci.b", TYPE_R6)
sbst.add_instr("pv.xor.h", TYPE_RR)
sbst.add_instr("pv.xor.sc.h", TYPE_RR)
sbst.add_instr("pv.xor.sci.h", TYPE_R6)
sbst.add_instr("pv.xor.b", TYPE_RR)
sbst.add_instr("pv.xor.sc.b", TYPE_RR)
sbst.add_instr("pv.xor.sci.b", TYPE_R6)
sbst.add_instr("pv.and.h", TYPE_RR)
sbst.add_instr("pv.and.sc.h", TYPE_RR)
sbst.add_instr("pv.and.sci.h", TYPE_R6)
sbst.add_instr("pv.and.b", TYPE_RR)
sbst.add_instr("pv.and.sc.b", TYPE_RR)
sbst.add_instr("pv.and.sci.b", TYPE_R6)
sbst.add_instr("pv.abs.h", TYPE_R)
sbst.add_instr("pv.abs.b", TYPE_R)
# sbst.add_instr("pv.extract.h", TYPE_6, False)
# sbst.add_instr("pv.extract.b", TYPE_6, False)
# sbst.add_instr("pv.extractu.h", TYPE_6, False)
# sbst.add_instr("pv.extractu.b", TYPE_6, False)
# sbst.add_instr("pv.insert.h", TYPE_6, False)
# sbst.add_instr("pv.insert.b", TYPE_6, False)
sbst.add_instr("pv.dotup.h", TYPE_RR)
sbst.add_instr("pv.dotup.sc.h", TYPE_RR)
sbst.add_instr("pv.dotup.sci.h", TYPE_R6, False)
sbst.add_instr("pv.dotup.b", TYPE_RR)
sbst.add_instr("pv.dotup.sc.b", TYPE_RR)
sbst.add_instr("pv.dotup.sci.b", TYPE_R6, False)
sbst.add_instr("pv.dotusp.h", TYPE_RR)
sbst.add_instr("pv.dotusp.sc.h", TYPE_RR)
sbst.add_instr("pv.dotusp.sci.h", TYPE_RS)
sbst.add_instr("pv.dotusp.b", TYPE_RR)
sbst.add_instr("pv.dotusp.sc.b", TYPE_RR)
sbst.add_instr("pv.dotusp.sci.b", TYPE_RS)
sbst.add_instr("pv.dotsp.h", TYPE_RR)
sbst.add_instr("pv.dotsp.sc.h", TYPE_RR)
sbst.add_instr("pv.dotsp.sci.h", TYPE_R6)
sbst.add_instr("pv.dotsp.b", TYPE_RR)
sbst.add_instr("pv.dotsp.sc.b", TYPE_RR)
sbst.add_instr("pv.dotsp.sci.b", TYPE_R6)
sbst.add_instr("pv.sdotup.h", TYPE_RR)
sbst.add_instr("pv.sdotup.sc.h", TYPE_RR)
sbst.add_instr("pv.sdotup.sci.h", TYPE_R6, False)
sbst.add_instr("pv.sdotup.b", TYPE_RR)
sbst.add_instr("pv.sdotup.sc.b", TYPE_RR)
sbst.add_instr("pv.sdotup.sci.b", TYPE_R6, False)
sbst.add_instr("pv.sdotusp.h", TYPE_RR)
sbst.add_instr("pv.sdotusp.sc.h", TYPE_RR)
sbst.add_instr("pv.sdotusp.sci.h", TYPE_RS)
sbst.add_instr("pv.sdotusp.b", TYPE_RR)
sbst.add_instr("pv.sdotusp.sc.b", TYPE_RR)
sbst.add_instr("pv.sdotusp.sci.b", TYPE_RS)
sbst.add_instr("pv.sdotsp.h", TYPE_RR)
sbst.add_instr("pv.sdotsp.sc.h", TYPE_RR)
sbst.add_instr("pv.sdotsp.sci.h", TYPE_R6)
sbst.add_instr("pv.sdotsp.b", TYPE_RR)
sbst.add_instr("pv.sdotsp.sc.b", TYPE_RR)
sbst.add_instr("pv.sdotsp.sci.b", TYPE_R6)
sbst.add_instr("pv.shuffle.h", TYPE_RR)
sbst.add_instr("pv.shuffle.sci.h", TYPE_R6, False)
sbst.add_instr("pv.shuffle.b", TYPE_RR)
sbst.add_instr("pv.shuffleI0.sci.b", TYPE_R6, False)
sbst.add_instr("pv.shuffleI1.sci.b", TYPE_R6, False)
sbst.add_instr("pv.shuffleI2.sci.b", TYPE_R6, False)
sbst.add_instr("pv.shuffleI3.sci.b", TYPE_R6, False)
sbst.add_instr("pv.shuffle2.h", TYPE_RR)
sbst.add_instr("pv.shuffle2.b", TYPE_RR)
sbst.add_instr("pv.pack.h", TYPE_RR)
sbst.add_instr("pv.packhi.b", TYPE_RR)
sbst.add_instr("pv.packlo.b", TYPE_RR)
sbst.block_end()

sbst.block_begin("Vectorial Comparison Extension", "RVCY_VEC2")
sbst.set_iterations(32)
sbst.add_instr("pv.cmpeq.h", TYPE_RR)
sbst.add_instr("pv.cmpeq.sc.h", TYPE_RR)
sbst.add_instr("pv.cmpeq.sci.h", TYPE_RS)
sbst.add_instr("pv.cmpeq.b", TYPE_RR)
sbst.add_instr("pv.cmpeq.sc.b", TYPE_RR)
sbst.add_instr("pv.cmpne.sci.b", TYPE_RS)
sbst.add_instr("pv.cmpne.h", TYPE_RR)
sbst.add_instr("pv.cmpne.sc.h", TYPE_RR)
sbst.add_instr("pv.cmpne.sci.h", TYPE_RS)
sbst.add_instr("pv.cmpne.b", TYPE_RR)
sbst.add_instr("pv.cmpne.sc.b", TYPE_RR)
sbst.add_instr("pv.cmpne.sci.b", TYPE_RS)
sbst.add_instr("pv.cmpgt.h", TYPE_RR)
sbst.add_instr("pv.cmpgt.sc.h", TYPE_RR)
sbst.add_instr("pv.cmpgt.sci.h", TYPE_RS)
sbst.add_instr("pv.cmpgt.b", TYPE_RR)
sbst.add_instr("pv.cmpgt.sc.b", TYPE_RR)
sbst.add_instr("pv.cmpgt.sci.b", TYPE_RS)
sbst.add_instr("pv.cmpge.h", TYPE_RR)
sbst.add_instr("pv.cmpge.sc.h", TYPE_RR)
sbst.add_instr("pv.cmpge.sci.h", TYPE_RS)
sbst.add_instr("pv.cmpge.b", TYPE_RR)
sbst.add_instr("pv.cmpge.sc.b", TYPE_RR)
sbst.add_instr("pv.cmpge.sci.b", TYPE_RS)
sbst.add_instr("pv.cmplt.h", TYPE_RR)
sbst.add_instr("pv.cmplt.sc.h", TYPE_RR)
sbst.add_instr("pv.cmplt.sci.h", TYPE_RS)
sbst.add_instr("pv.cmplt.b", TYPE_RR)
sbst.add_instr("pv.cmplt.sc.b", TYPE_RR)
sbst.add_instr("pv.cmplt.sci.b", TYPE_RS)
sbst.add_instr("pv.cmple.h", TYPE_RR)
sbst.add_instr("pv.cmple.sc.h", TYPE_RR)
sbst.add_instr("pv.cmple.sci.h", TYPE_RS)
sbst.add_instr("pv.cmple.b", TYPE_RR)
sbst.add_instr("pv.cmple.sc.b", TYPE_RR)
sbst.add_instr("pv.cmple.sci.b", TYPE_RS)
sbst.add_instr("pv.cmpgtu.h", TYPE_RR)
sbst.add_instr("pv.cmpgtu.sc.h", TYPE_RR)
sbst.add_instr("pv.cmpgtu.sci.h", TYPE_RS)
sbst.add_instr("pv.cmpgtu.b", TYPE_RR)
sbst.add_instr("pv.cmpgtu.sc.b", TYPE_RR)
sbst.add_instr("pv.cmpgtu.sci.b", TYPE_RS)
sbst.add_instr("pv.cmpgeu.h", TYPE_RR)
sbst.add_instr("pv.cmpgeu.sc.h", TYPE_RR)
sbst.add_instr("pv.cmpgeu.sci.h", TYPE_RS)
sbst.add_instr("pv.cmpgeu.b", TYPE_RR)
sbst.add_instr("pv.cmpgeu.sc.b", TYPE_RR)
sbst.add_instr("pv.cmpgeu.sci.b", TYPE_RS)
sbst.add_instr("pv.cmpltu.h", TYPE_RR)
sbst.add_instr("pv.cmpltu.sc.h", TYPE_RR)
sbst.add_instr("pv.cmpltu.sci.h", TYPE_RS)
sbst.add_instr("pv.cmpltu.b", TYPE_RR)
sbst.add_instr("pv.cmpltu.sc.b", TYPE_RR)
sbst.add_instr("pv.cmpltu.sci.b", TYPE_RS)
sbst.add_instr("pv.cmpleu.h", TYPE_RR)
sbst.add_instr("pv.cmpleu.sc.h", TYPE_RR)
sbst.add_instr("pv.cmpleu.sci.h", TYPE_RS)
sbst.add_instr("pv.cmpleu.b", TYPE_RR)
sbst.add_instr("pv.cmpleu.sc.b", TYPE_RR)
sbst.add_instr("pv.cmpleu.sci.b", TYPE_RS)
sbst.block_end()

with open("insn_test.S", "w") as text_file:
    text_file.write(sbst.get_body())
