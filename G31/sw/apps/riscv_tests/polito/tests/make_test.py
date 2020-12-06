#!/usr/bin/python3
"""Generates the file simple.S for pulpino testing"""

def write_op(*args):
    target.write("{:<20}".format(str(args[0])))
    for i in range(1, len(args)-1):
        target.write("{:<8}".format(str(args[i])+","))
    target.write("{}".format(str(args[-1])+"\n"))

def write_label(label):
    target.write("{}:\n".format(label))

def write_mem(op, loc, base, offset):
    target.write("{:<20}".format(op))
    target.write("{:<8}".format(loc+","))
    target.write("{}({})\n".format(offset, base))

target = open("simple.S", "w")

license = """# See LICENSE for license details.

#*****************************************************************************
# simple.S
#-----------------------------------------------------------------------------
#
# This is the most basic self checking test. If your simulator does not
# pass thiss then there is little chance that it will pass any of the
# more complicated self checking tests.
#
"""
target.write(license)

include = """
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

# insert code here!!
"""
target.write(include)

register_file_header = """
##############################################################################
#            _____            _     _              ______ _ _                #
#           |  __ \          (_)   | |            |  ____(_) |               #
#           | |__) |___  __ _ _ ___| |_ ___ _ __  | |__   _| | ___           #
#           |  _  // _ \/ _` | / __| __/ _ \ '__| |  __| | | |/ _ \          #
#           | | \ \  __/ (_| | \__ \ ||  __/ |    | |    | | |  __/          #
#           |_|  \_\___|\__, |_|___/\__\___|_|    |_|    |_|_|\___|          #
#                        __/ |                                               #
#                       |___/                                                #
#                                                                            #
##############################################################################
# MATS+ algorithm applied to register file for full stuck-at coverage.
# Also tests:
# 0x00000000 + 0xffffffff immediate
# bne 0x00000000 0x00000000
# bne 0xffffffff 0xffffffff
"""
target.write(register_file_header)

# Set all registers to 0
register_file_reset = """
# Write all 0s
"""
target.write(register_file_reset)
for i in range(1, 32):
    reg = "x{}".format(i)
    write_op("add", reg, "x0", "x0")
    
# Check register is 0 and write 1
test_reset = """
# For each register, read all 0s, write all 1s
"""
target.write(test_reset)
for i in range(1, 32):
    reg = "x{}".format(i)
    # Check 0
    write_op("bne", reg, "x0", "fail")
    # Write 0xffffffff
    write_op("addi", reg, "x0", -1)

# Check register is 1 and reset it
test_set = """
# For each register, read all 1s, write all 0s
"""
target.write(test_set)
for i in range(31, 0, -1):
    # Check if equal to reference register (x31)
    reg = "x{}".format(i)
    write_op("bne", reg, reg, "fail")
    # Write 0
    write_op("add", reg, "x0", "x0")

adder_header = """
##############################################################################
#                                   _     _                                  #
#                           /\      | |   | |                                #
#                          /  \   __| | __| | ___ _ __                       #
#                         / /\ \ / _` |/ _` |/ _ \ '__|                      #
#                        / ____ \ (_| | (_| |  __/ |                         #
#                       /_/    \_\__,_|\__,_|\___|_|                         #
#                                                                            #
##############################################################################
# Tests:
# 0x00000000 + 0x00000000
# 0x00000000 + 0x00000555 immediate
# 0x00555000 + 0x00000555 immediate
# 0x55555500 + 0x00000055 immediate
# 0x00000000 + 0x00000aaa immediate
# 0x00aaa000 + 0x00000aaa immediate
# 0xaaaaaa00 + 0x000000aa immediate
# 0x55555555 + 0xaaaaaaaa
# 0x00000000 + 0x00000001 immediate
# 0x40000000 + 0x40000000
# 0x80000000 - 0x80000000
"""
target.write(adder_header)

# Zero neutrality
target.write("\n# 0 neutrality\n")
write_op("add", "x1", "x0", "x0")
write_mem("sw", "x1", "x0", 0)

# All bits working
target.write("\n# All bits working (0b0101... + 0b1010... = 0b1111...)\n")
# x1 to 0x55555555
write_op("addi", "x1", "x0", 0x555)
write_op("lui", "x1", 0x55555)
# x2 to 0xaaaaaaaa
write_op("addi", "x2", "x2", -1366)
write_op("lui", "x2", 0xaaaaa)
# x3 to 0xffffffff
write_op("add", "x3", "x1", "x2")
write_mem("sw", "x3", "x0", 0)

# WARNING: apparently overflow fucks the simulation up. Unhandled exception?
# Handling requires a shitton of clock cycles?
#target.write("\n# Overflow\n")
# Overflow
#write_op("addi", "x1", "x0", 1)
#write_op("slli", "x1", "x1", 30)
#write_op("add", "x2", "x1", "x1")
#write_op("slli", "x3", "x1", 1)
#write_op("bne", "x2", "x3", "fail")

target.write("\n# Subtraction\n")
# Subtraction
write_op("sub", "x2", "x2", "x2")
write_mem("sw", "x2", "x0", 0)


multiplier_header = """
##############################################################################
#                  __  __       _ _   _       _ _                            #
#                 |  \/  |     | | | (_)     | (_)                           #
#                 | \  / |_   _| | |_ _ _ __ | |_  ___ _ __                  #
#                 | |\/| | | | | | __| | '_ \| | |/ _ \ '__|                 # 
#                 | |  | | |_| | | |_| | |_) | | |  __/ |                    #
#                 |_|  |_|\__,_|_|\__|_| .__/|_|_|\___|_|                    #
#                                      | |                                   #
#                                      |_|                                   #
#                                                                            #
##############################################################################
"""
target.write(multiplier_header)

# One neutrality
target.write("\n# 1 neutrality\n")
write_op("addi", "x1", "x0", 1)
write_op("mulh", "x2", "x1", "x1")
write_op("mul", "x3", "x1", "x1")
write_mem("sw", "x2", "x0", 0)
write_mem("sw", "x3", "x0", 0)

# Sign behaving as expected, also moving a lot of bits
target.write("\n# Sign working\n")
write_op("addi", "x1", "x0", 1)
write_op("addi", "x2", "x0", -1)
# 1*(-1) => x3=0xffffffff, x4=0xffffffff
write_op("mulh", "x3", "x1", "x2")
write_op("mul", "x4", "x1", "x2")
write_mem("sw", "x3", "x0", 0)
write_mem("sw", "x4", "x0", 0)
# (-1)*(-1) => x3=0x00000000, x4=0x00000001
write_op("mulh", "x3", "x2", "x2")
write_op("mul", "x4", "x2", "x2")
write_mem("sw", "x3", "x0", 0)
write_mem("sw", "x4", "x0", 0)

# Unsigned by unsigned
target.write("\n# Unsigned by unsigned\n")
# 1*0xffffffff => x3=0x00000000, x4=0xffffffff
write_op("mulhu", "x3", "x1", "x2")
write_op("mul", "x4", "x1", "x2")
write_op("bne", "x3", "x0", "fail")
write_op("bne", "x4", "x2", "fail")

# Signed by unsigned
target.write("\n# Signed by unsigned\n")
# (-1)*0xffffffff => x3=0xffffffff, x4=0x00000001
write_op("mulhsu", "x3", "x2", "x2")
write_op("mul", "x4", "x2", "x2")
write_mem("sw", "x3", "x0", 0)
write_mem("sw", "x4", "x0", 0)

divider_header = """
##############################################################################
#                      _____  _       _     _                                #
#                     |  __ \(_)     (_)   | |                               #
#                     | |  | |___   ___  __| | ___ _ __                      #
#                     | |  | | \ \ / / |/ _` |/ _ \ '__|                     #
#                     | |__| | |\ V /| | (_| |  __/ |                        #
#                     |_____/|_| \_/ |_|\__,_|\___|_|                        #
#                                                                            #
#                                                                            #
##############################################################################
"""
target.write(divider_header)

# One neutrality
target.write("\n# One neutrality\n")
write_op("addi", "x1", "x0", 1)
write_op("addi", "x2", "x0", -1)
# (-1)/1
write_op("div", "x3", "x2", "x1")
write_op("rem", "x4", "x2", "x1")
write_mem("sw", "x3", "x0", 0)
write_mem("sw", "x4", "x0", 0)

# Move a lot of bits
target.write("\n# Move a lot of bits\n")
# (-1)/(-1)
write_op("div", "x3", "x2", "x2")
write_op("rem", "x4", "x2", "x2")
write_mem("sw", "x3", "x0", 0)
write_mem("sw", "x4", "x0", 0)
write_op("addi", "x1", "x0", 33)
write_op("addi", "x2", "x0", 2)
# 33/2
write_op("div", "x3", "x1", "x2")
write_op("rem", "x4", "x1", "x2")
write_mem("sw", "x3", "x0", 0)
write_mem("sw", "x4", "x0", 0)

target.write("\n# Unsigned division\n")
write_op("addi", "x1", "x0", 1)
write_op("addi", "x2", "x0", -1)
# 1/0xffffffff
write_op("divu", "x3", "x1", "x2")
write_op("remu", "x4", "x1", "x2")
write_mem("sw", "x3", "x0", 0)
write_mem("sw", "x4", "x0", 0)

tests_header = """
##############################################################################
#                           _______        _                                 #
#                          |__   __|      | |                                #
#                             | | ___  ___| |_ ___                           #
#                             | |/ _ \/ __| __/ __|                          #
#                             | |  __/\__ \ |_\__ \                          #
#                             |_|\___||___/\__|___/                          #
#                                                                            #
##############################################################################

# SLTI also tests SLT provided that data coming
# from immediate register and data coming from register file are consistent
"""
target.write(tests_header)

# Set if less than immediate
target.write("\n# Set if less than immediate\n")
# x1=1 if 0<1
write_op("slti", "x1", "x0", 1)
write_mem("sw", "x1", "x0", 0)
# x2=1 if 2<1
write_op("addi", "x1", "x0", 2)
write_op("slti", "x2", "x1", 1)
write_mem("sw", "x1", "x0", 0)

# Set if less than unsigned
target.write("\n# Set if less than immediate unsigned\n")
# x1=1
write_op("addi", "x1", "x0", 1)
# x2=1 if 0<1 (TRUE)
write_op("sltu", "x2", "x0", "x1")
write_mem("sw", "x2", "x0", 0)
# x4=0xffffffff
write_op("addi", "x4", "x0", -1)
# x3=1 if 1<0xffffffff unsigned (2^32-1) (TRUE)
write_op("sltu", "x3", "x1", "x4")
write_mem("sw", "x3", "x0", 0)
# x5=1 if 0xffffffff unsigned (2^32-1)<1 (FALSE)
write_op("sltu", "x5", "x4", "x1")
write_mem("sw", "x5", "x0", 0)

bit_operations_header = """
##############################################################################
#      ____  _ _      ____                       _   _                       #
#     |  _ \(_) |    / __ \                     | | (_)                      #
#     | |_) |_| |_  | |  | |_ __   ___ _ __ __ _| |_ _  ___  _ __  ___       #
#     |  _ <| | __| | |  | | '_ \ / _ \ '__/ _` | __| |/ _ \| '_ \/ __|      #
#     | |_) | | |_  | |__| | |_) |  __/ | | (_| | |_| | (_) | | | \__ \      #
#     |____/|_|\__|  \____/| .__/ \___|_|  \__,_|\__|_|\___/|_| |_|___/      #
#                          | |                                               #
#                          |_|                                               #
##############################################################################

# Immediate operations test correspondent register operations provided that
# data coming from immediate register and data coming from register file are
# consistent
"""
target.write(bit_operations_header)

# And immediate, or immediate, xor immediate
target.write("\n# And immediate\n")
# x1=0xffffffff
write_op("addi", "x1", "x0", -1)
# x2=0xffffffff
write_op("andi", "x2", "x1", -1)
write_mem("sw", "x2", "x0", 0)
# x3=0x00000000
write_op("andi", "x3", "x1", 0)
write_mem("sw", "x3", "x0", 0)

target.write("\n# Or immediate\n")
# x1=0xffffffff
write_op("ori", "x1", "x0", -1)
write_mem("sw", "x1", "x0", 0)
# x2=0x00000000
write_op("ori", "x2", "x0", 0)
write_mem("sw", "x2", "x0", 0)

target.write("\n# Xor immediate\n")
# x1=0xffffffff
write_op("addi", "x1", "x0", -1)
write_op("xori", "x2", "x1", -1)
write_mem("sw", "x2", "x0", 0)
# x3=0xffffffff
write_op("xori", "x3", "x1", 0)
write_mem("sw", "x3", "x0", 0)

# Load immediate
target.write("\n# Load upper immediate\n")
# x1=0xffffffff
write_op("addi", "x1", "x0", -1)
# x2=0xfffff000
write_op("lui", "x2", 0xfffff)
# x2=0xfffff7ff
write_op("addi", "x2", "x2", 0x7ff)
# x2=0xfffffffe
write_op("addi", "x2", "x2", 0x7ff)
# x2=0xffffffff
write_op("addi", "x2", "x2", 1)
write_mem("sw", "x2", "x0", 0)

# Shift left immediate
target.write("\n# Shift left immediate\n")
# x1=0x000000ff
write_op("addi", "x1", "x0", 0xff)
# x1=0x0000ff00
write_op("slli", "x1", "x1", 8)
write_mem("sw", "x1", "x0", 0)
# x1=0x0000ffff
write_op("addi", "x1", "x1", 0xff)
# x1=0xffff0000
write_op("slli", "x1", "x1", 16)
write_mem("sw", "x1", "x0", 0)

# Shift right immediate
target.write("\n# Shift right immediate\n")
# x2=0xffff0000
write_op("lui", "x2", 0xffff0)
# x2=0x0000ffff
write_op("srli", "x2", "x2", 16)
write_mem("sw", "x1", "x0", 0)

# Shift right arithmetic immediate
target.write("\n# Shift right arithmetic immediate\n")
# x1=0xffffffff
write_op("addi", "x1", "x0", -1)
# x2=0xffff0000
write_op("lui", "x2", 0xffff0)
# x2=0xffffffff
write_op("srai", "x2", "x2", 16)
write_op("bne", "x2", "x1", "fail")
# x1=0x0000007f
write_op("addi", "x1", "x0", 0x7f)
# x1=0x00007f00
write_op("slli", "x1", "x1", 8)
# x1=0x00007fff
write_op("addi", "x1", "x1", 0xff)
# x2=0x7fff0000
write_op("lui", "x2", 0x7fff0)
# x2=0x00007fff
write_op("srai", "x2", "x2", 16)
write_mem("sw", "x1", "x0", 0)
write_mem("sw", "x2", "x0", 0)

# ALU extensions
target.write("\n# ALU extensions\n")
dst_src_imm_imm = ("p.extract", "p.extractu", "p.insert", "p.bclr", "p.bset")
dst_src_src = ("p.extractr", "p.extractur", "p.insertr", "p.bclrr", "p.bsetr",
               "p.ror", "p.slet", "p.sletu", "p.min", "p.minu", "p.max",
               "p.maxu", "p.clipr", "p.clipur", "p.addNr", "p.adduNr",
               "p.addRNr", "p.adduRNr", "p.subNr", "p.subuNr", "p.subRNr",
               "p.subuRNr", "p.mac", "p.msu", "p.muls", "p.mulhhs", "p.mulu",
               "p.mulhhu")
dst_src = ("p.ff1", "p.fl1", "p.clb", "p.cnt", "p.abs", "p.exths", "p.exthz",
           "p.extbs", "p.extbz")
dst_src_imm = ("p.clip", "p.clipu")
dst_src_src_imm = ("p.addN", "p.adduN", "p.addRN", "p.adduRN", "p.subN",
                   "p.subuN", "p.subRN", "p.subuRN", "p.mulsN", "p.mulhhsN",
                   "p.mulsRN", "p.mulhhsRN", "p.muluN", "p.mulhhuN",
                   "p.muluRN", "p.mulhhuRN", "p.macsN", "p.machhsN",
                   "p.macsRN", "p.machhsRN", "p.macuN", "p.machhuN",
                   "p.macuRN", "p.machhuRN")
dst = "x3"
src1 = "x1"
src2 = "x2"
imm1 = 1
imm2 = 2
for op in dst_src_imm_imm:
    write_op(op, dst, src1, imm1, imm2)
    write_mem("sw", dst, "x0", 0)
for op in dst_src_src:
    write_op(op, dst, src1, src2)
    write_mem("sw", dst, "x0", 0)
for op in dst_src:
    write_op(op, dst, src1)
    write_mem("sw", dst, "x0", 0)
for op in dst_src_imm:
    write_op(op, dst, src1, imm1)
    write_mem("sw", dst, "x0", 0)
for op in dst_src_src_imm:
    write_op(op, dst, src1, src2, imm2)
    write_mem("sw", dst, "x0", 0)
    
# Vector operations
target.write("\n# Vector operations\n")
ops = ("pv.add", "pv.sub", "pv.avg", "pv.avgu", "pv.min", "pv.minu", "pv.max",
       "pv.maxu", "pv.srl", "pv.sra", "pv.sll", "pv.or", "pv.xor", "pv.and",
       "pv.dotusp", "pv.dotsp", "pv.sdotup", "pv.sdotusp", "pv.sdotsp",
       "pv.cmpeq", "pv.cmpne", "pv.cmpgt", "pv.cmpge", "pv.cmplt", "pv.cmple",
       "pv.cmpgtu", "pv.cmpgeu", "pv.cmpltu", "pv.cmpleu")
ext_src = ("", ".sc")
ext_format = (".h", ".b")
dst = "x3"
src1 = "x1"
src2 = "x2"
imm1 = 1
imm2 = 2
for op in ops:
    for ext1 in ext_src:
        for ext2 in ext_format:
            write_op(op+ext1+ext2, dst, src1, src2)
            write_mem("sw", dst, "x0", 0)
    for ext2 in ext_format:
        write_op(op+".sci"+ext2, dst, src1, imm1)
ops = ("pv.shuffle.h", "pv.shuffle.sci.h", "pv.shuffle.b",
       "pv.shuffleI0.sci.b", "pv.shuffleI1.sci.b", "pv.shuffleI2.sci.b",
       "pv.shuffleI3.sci.b", "pv.shuffle2.h", "pv.shuffle2.b", "pv.pack.h",
       "pv.packhi.b", "pv.packlo.b")
dst = "x3"
src1 = "x1"
src2 = "x2"
imm1 = 1
imm2 = 2
for op in ops:
    if ".sci" in op:
        write_op(op, dst, src1, imm1)
    else:
        write_op(op, dst, src1, src2)
    write_mem("sw", dst, "x0", 0)

jump_header = """
##############################################################################
#                            _                                               #
#                           | |                                              #
#                           | |_   _ _ __ ___  _ __  ___                     #
#                       _   | | | | | '_ ` _ \| '_ \/ __|                    #
#                      | |__| | |_| | | | | | | |_) \__ \                    #
#                       \____/ \__,_|_| |_| |_| .__/|___/                    #
#                                             | |                            #
#                                             |_|                            #
##############################################################################
"""
target.write(jump_header)

# Jump and link, jump, jump and link register
target.write("\n# Jump and link\n")
# Reset x2
target.write("# Reset x2, set x3\n")
write_op("add", "x2", "x0", "x0")
# Set x3
write_op("addi", "x3", "x0", 1)
# Jump to "set_x2"
target.write("# Jump over the next few instructions, if it fails x2 is not set and check fails\n")
write_op("jal", "x1", "set_x2")
# Check x2 was set
target.write("# Check x2=1\n")
write_op("bne", "x2", "x3", "fail")
# Reset x2
target.write("# Reset x2\n")
write_op("add", "x2", "x0", "x0")
# Jump to "after_set_x2"
target.write("# Jump over next few instruction, if it fails x2 will be set\n")
write_op("jal", "x0", "after_set_x2")
# Define "set_x2" label
write_label("set_x2")
# Set x2
write_op("addi", "x2", "x0", 1)
# Return to caller
target.write("# Return to caller a few lines above\n")
write_op("jalr", "x0", "x1", 0)
# Define "after_set_x2" label
write_label("after_set_x2")
# Check x2 was not set
target.write("# Check x2 was not set\n")
write_op("bne", "x2", "x0", "fail")

branch_header = """
##############################################################################
#                 ____                       _                               #
#                |  _ \                     | |                              #
#                | |_) |_ __ __ _ _ __   ___| |__   ___  ___                 #
#                |  _ <| '__/ _` | '_ \ / __| '_ \ / _ \/ __|                #
#                | |_) | | | (_| | | | | (__| | | |  __/\__ \                #
#                |____/|_|  \__,_|_| |_|\___|_| |_|\___||___/                #
#                                                                            #
#                                                                            #
##############################################################################
"""
target.write(branch_header)

# Branch if equal
target.write("\n# Branch if equal\n")
# Set x1 and x2
write_op("addi", "x1", "x0", 1)
write_op("addi", "x2", "x0", 1)
# Jump to beq_test (TAKEN)
write_op("beq", "x1", "x2", "beq_test")
write_op("jal", "x0", "fail")
# beq_test
write_label("beq_test")
# Jump to fail (NOT TAKEN)
write_op("beq", "x1", "x0", "fail")

# Branch if not equal
target.write("\n# Branch if not equal\n")
# Jump to test_bne (TAKEN)
write_op("bne", "x0", "x1", "test_bne")
write_op("jal", "x0", "fail")
# test_bne
write_label("test_bne")
# Jump to fail (NOT TAKEN)
write_op("bne", "x1", "x1", "fail")

# Branch if greater or equal
target.write("\n# Branch if greater or equal\n")
# Jump to bge_test1 (TAKEN)
write_op("bge", "x1", "x0", "bge_test1")
write_op("jal", "x0", "fail")
# bge_test1
write_label("bge_test1")
# Jump to bge_test2 (TAKEN)
write_op("bge", "x0", "x0", "bge_test2")
write_op("jal", "x0", "fail")
# bge_test2
write_label("bge_test2")
# Jump to fail (NOT TAKEN)
write_op("bge", "x0", "x1", "fail")

# Branch if greater or equal unsigned
target.write("\n# Branch if greater or equal unsigned\n")
# set x2 to 0xffffffff
write_op("addi", "x2", "x0", "-1")
# Jump to bgeu_test1 (TAKEN)
write_op("bgeu", "x2", "x0", "bgeu_test1")
write_op("jal", "x0", "fail")
# bgeu_test1
write_label("bgeu_test1")
# Jump to bgeu_test2 (TAKEN)
write_op("bgeu", "x0", "x0", "bgeu_test2")
write_op("jal", "x0", "fail")
# bgeu_test2
write_label("bgeu_test2")
# Jump to fail (NOT TAKEN)
write_op("bgeu", "x0", "x2", "fail")

# Branch if less than
target.write("\n# Branch if less than\n")
# Jump to blt_test (TAKEN)
write_op("blt", "x2", "x0", "blt_test")
write_op("jal", "x0", "fail")
# blt_test
write_label("blt_test")
# Jump to fail (NOT TAKEN)
write_op("blt", "x1", "x0", "fail")

# Branch if less than unsigned
target.write("\n# Branch if less than\n")
# Jump to bltu_test (TAKEN)
write_op("bltu", "x0", "x2", "bltu_test")
write_op("jal", "x0", "fail")
# bltu_test
write_label("bltu_test")
# Jump to fail (NOT TAKEN)
write_op("bltu", "x2", "x0", "fail")

# Branch if equal to immediate
target.write("\n# Branch if equal to immediate\n")
write_op("addi", "x1", "x0", 1)
# Jump to beqimm_test (TAKEN)
write_op("p.beqimm", "x1", 1, "beqimm_test")
write_op("jal", "x0", "fail")
write_label("beqimm_test")
# Jump to fail (NOT TAKEN)
write_op("p.beqimm", "x1", 2, "fail")

# Branch if not equal to immediate
target.write("\n# Branch if not equal to immediate\n")
write_op("addi", "x1", "x0", 1)
# Jump to bneimm_test (TAKEN)
write_op("p.bneimm", "x1", 2, "bneimm_test")
write_op("jal", "x0", "fail")
write_label("bneimm_test")
# Jump to fail (NOT TAKEN)
write_op("p.bneimm", "x1", 1, "fail")

timer_header = """
##############################################################################
#                       _______ _                                            #
#                      |__   __(_)                                           #
#                         | |   _ _ __ ___   ___ _ __                        #
#                         | |  | | '_ ` _ \ / _ \ '__|                       #
#                         | |  | | | | | | |  __/ |                          #
#                         |_|  |_|_| |_| |_|\___|_|                          #
#                                                                            #
#                                                                            #
##############################################################################

# Timer faults are hard to detect by the processor itself, this section
# probably needs an ATE
"""
target.write(timer_header)

write_op("rdcycle", "x1")
write_mem("sw", "x1", "x0", 0)
write_op("rdcycleh", "x2")
write_mem("sw", "x2", "x0", 0)
write_op("rdtime", "x3")
write_mem("sw", "x3", "x0", 0)
write_op("rdtimeh", "x4")
write_mem("sw", "x4", "x0", 0)
write_op("rdinstret", "x5")
write_mem("sw", "x5", "x0", 0)
write_op("rdinstreth", "x6")
write_mem("sw", "x6", "x0", 0)

compressed_header = """
##############################################################################
#           _____                                                 _          #
#          / ____|                                               | |         #
#         | |     ___  _ __ ___  _ __  _ __ ___  ___ ___  ___  __| |         #
#         | |    / _ \| '_ ` _ \| '_ \| '__/ _ \/ __/ __|/ _ \/ _` |         #
#         | |___| (_) | | | | | | |_) | | |  __/\__ \__ \  __/ (_| |         #
#          \_____\___/|_| |_| |_| .__/|_|  \___||___/___/\___|\__,_|         #
#                               | |                                          #
#                               |_|                                          #
#                                                                            #
##############################################################################
"""
target.write(compressed_header)

# TODO: FIND WHY ASSEMBLER COMPLAINS
# write_op("c.j", "test_c_jump")
# write_op("jal", "x0", "fail")
# write_label("test_c_jump")

memory_header = """
##############################################################################
#                   __  __                                                   #
#                  |  \/  |                                                  #
#                  | \  / | ___ _ __ ___   ___  _ __ _   _                   #
#                  | |\/| |/ _ \ '_ ` _ \ / _ \| '__| | | |                  #
#                  | |  | |  __/ | | | | | (_) | |  | |_| |                  #
#                  |_|  |_|\___|_| |_| |_|\___/|_|   \__, |                  #
#                                                     __/ |                  #
#                                                    |___/                   #
#                                                                            #
##############################################################################
"""
target.write(memory_header)

target.write("\n# Store and load word, halfword, byte\n")
stores = ("sw", "sh", "sb")
loads = ("lw", "lh", "lb")
for i in range(len(stores)):
    store = stores[i]
    load = loads[i]
    write_op("addi", "x1", "x0", 1)
    write_op("addi", "x2", "x0", 2)
    write_mem(store, "x0", "x0", 0)
    write_mem(store, "x1", "x1", 0)
    write_mem(store, "x2", "x0", 2)
    write_mem(load, "x3", "x0", 0)
    write_mem(load, "x4", "x0", 1)
    write_mem(load, "x5", "x2", 0)
    write_mem(store, "x3", "x0", 0)
    write_mem(store, "x4", "x0", 1)
    write_mem(store, "x5", "x2", 0)

target.write("\n# Post-increment instructions\n")
stores = ("p.sb", "p.sh", "p.sw")
loads = ("p.lb", "p.lbu", "p.lh", "p.lhu", "p.lw")
write_op("addi", "x1", "x0", 1)
for store in stores:
    write_op("addi", "x2", "x0", 0)
    write_mem(store, "x1", "x2!", 1)
    write_mem("sw", "x2", "x0", 0)
    write_mem(store, "x1", "x2!", "x1")
    write_mem("sw", "x2", "x0", 0)
    write_mem(store, "x1", "x2", "x1")
for load in loads:
    write_op("addi", "x2", "x0", 0)
    write_mem(load, "x1", "x2!", 1)
    write_mem("sw", "x1", "x0", 0)
    write_mem("sw", "x2", "x0", 0)
    write_mem(load, "x1", "x2!", "x1")
    write_mem("sw", "x1", "x0", 0)
    write_mem("sw", "x2", "x0", 0)
    write_mem(load, "x1", "x2", "x1")
    write_mem("sw", "x1", "x0", 0)
    write_mem("sw", "x2", "x0", 0)

hwloop_header = """
##############################################################################
#                _    ___          __  _                                     #
#               | |  | \ \        / / | |                                    #
#               | |__| |\ \  /\  / /  | | ___   ___  _ __  ___               #
#               |  __  | \ \/  \/ /   | |/ _ \ / _ \| '_ \/ __|              #
#               | |  | |  \  /\  /    | | (_) | (_) | |_) \__ \              #
#               |_|  |_|   \/  \/     |_|\___/ \___/| .__/|___/              #
#                                                   | |                      #
#                                                   |_|                      #
#                                                                            #
##############################################################################
"""
target.write(hwloop_header)

target.write("\n# lp.setup\n")
write_op("addi", "x1", "x0", 30)
write_op("addi", "x2", "x0", 0)
write_op("lp.setup", "x0", "x1", "hwloop_test_1")
write_op("addi", "x2", "x2", 1)
write_label("hwloop_test_1")
write_mem("sw", "x2", "x0", 0)
target.write("\n")
write_op("addi", "x1", "x0", 30)
write_op("addi", "x2", "x0", 0)
write_op("lp.setup", "x1", "x1", "hwloop_test_2")
write_op("addi", "x2", "x2", 1)
write_op("addi", "x0", "x0", 0)
write_label("hwloop_test_2")
write_mem("sw", "x2", "x0", 0)

target.write("\n# lp.setupi\n")
write_op("addi", "x2", "x0", 0)
write_op("lp.setupi", "x0", 10, "30")
write_op("addi", "x2", "x2", 1)
# Waste some time, dunno what this does
for i in range(10):
    write_op("addi", "x0", "x0", 0)
write_mem("sw", "x2", "x0", 0)

target.write("\n# Long loops\n")
write_op("addi", "x1", "x0", 100)
write_op("addi", "x2", "x0", 0)
write_op("lp.starti", "x0", "hwl_start1")
write_op("lp.endi", "x0", "hwl_end1")
write_op("lp.count", "x0", "x1")
write_label("hwl_start1")
write_op("addi", "x2", "x2", 1)
write_op("addi", "x0", "x0", 0)
write_label("hwl_end1")
write_mem("sw", "x2", "x0", 0)
# Test again with immediate counter
write_op("addi", "x1", "x0", 100)
write_op("addi", "x2", "x0", 0)
write_op("lp.starti", "x0", "hwl_start2")
write_op("lp.endi", "x0", "hwl_end2")
write_op("lp.counti", "x0", 50)
write_label("hwl_start2")
write_op("addi", "x2", "x2", 1)
write_op("addi", "x0", "x0", 0)
write_label("hwl_end2")
write_mem("sw", "x2", "x0", 0)

tail="""
RVTEST_PASS

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
"""
target.write(tail)
