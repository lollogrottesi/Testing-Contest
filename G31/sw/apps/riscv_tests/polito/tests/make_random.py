#!/usr/bin/python3
"""Generates the file simple.S for pulpino testing"""

import random

# Number of times each operation is executed
passes = 3

src_registers = []
for i in range(32):
    src_registers.append("x{}".format(i))
dst_registers = src_registers[1:]

def write_op(*args):
    target.write("{:<20}".format(str(args[0])))
    for i in range(1, len(args)-1):
        target.write("{:<8}".format(str(args[i])+","))
    target.write("{}".format(str(args[-1])+"\n"))

def write_label(label):
    target.write("{}:\n".format(label))

def write_mem(op, loc, base, offset):
    target.write("{:<20}".format(op))
    target.write("{:<8}".format(str(loc)+","))
    target.write("{}({})\n".format(offset, base))

def random_src():
    return src_registers[random.randint(0, 31)]

def random_dst():
    return dst_registers[random.randint(0, 30)]

def random_imm(bits):
    if bits != 12:
        return random.randint(0, 2**bits-1)
    # 12-bit interpreted as signed
    else:
        return random.randint(-2**(bits-1), 2**(bits-1)-1)

def random_datamem_store(address_reg, data_reg):
    # Random address 0x00000000 to 0x00008000
    base = random_imm(15)
    # Get it in datamem range (0x00100000 to 0x00108000)
    base += 0x00100000
    offset = random_imm(12)
    if base + offset >= 2**15 or base + offset < 0:
        offset = 0
    write_op("li", address_reg, hex(base))
    write_mem("sw", data_reg, address_reg, offset)

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
# MATS+ algorithm applied to register file. Only 1 data background sufficient
# due to stuck-at model not including coupling faults.
# Data backgrounds:
# 0xffffffff and 0x00000000
"""
target.write(register_file_header)

register_file_reset = "\n# Write DBG[0]\n"
test_reset = "\n# For each register, read DBG[0], write DBG[1]\n"
test_set = "\n# For each register, read DBG[1], write DBG[0]\n"

data_backgrounds = [(0x00000000, 0xffffffff)]

for dbg in data_backgrounds:
    # Set all registers to 0
    register_file_reset = "\n# Write DBG[0]\n"
    target.write(register_file_reset)
    for i in range(1, 32):
        reg = "x{}".format(i)
        write_op("li", reg, hex(dbg[0]))
    
    # Check register is 0 and write 1
    target.write(test_reset)
    for i in range(1, 32):
        reg = "x{}".format(i)
        # Check against reference register (x31, last to be set)
        write_op("bne", reg, "x31", "fail")
        # Write 1
        write_op("li", reg, hex(dbg[1]))

    # Check register is 1 and reset it
    target.write(test_set)
    for i in range(31, 0, -1):
        # Check against reference register (x1, last to be reset)
        reg = "x{}".format(i)
        write_op("bne", reg, "x1", "fail")
        # Write 0
        write_op("li", reg, hex(dbg[0]))

## Initialize to random values
#for dst in dst_registers:
    #val = random_imm(32)
    #write_op("li", dst, hex(val))
    #address_reg = "x31"
    #random_datamem_store(address_reg, dst)

alu_header = """
##############################################################################
#                                     _     _    _                           #
#                               /\   | |   | |  | |                          #
#                              /  \  | |   | |  | |                          #
#                             / /\ \ | |   | |  | |                          #
#                            / ____ \| |___| |__| |                          #
#                           /_/    \_\______\____/                           #
#                                                                            #
#                                                                            #
##############################################################################
"""
target.write(alu_header)

target.write("\n# ALU\n")
dst_src_imm5 = ("slli", "srli", "srai")
dst_src_imm12 = ("addi", "slti", "andi", "ori", "xori")
dst_imm20 = ("lui")
dst_src_src = ("add", "sub", "mul", "mulh", "mulhu", "mulhsu", "div", "rem",
               "divu", "remu", "slt", "sltu")
for op in dst_src_imm5:
    for i in range(passes):
        dst = random_dst()
        src = random_src()
        # Reload value in src to avoid convergence to 0
        val = random_imm(32)
        write_op("li", src, hex(val))
        imm = random_imm(5)
        write_op(op, dst, src, imm)
        address_reg = "x31"
        random_datamem_store(address_reg, dst)
for op in dst_src_imm12:
    for i in range(passes):
        dst = random_dst()
        src = random_src()
        # Reload value in src to avoid any convergence
        val = random_imm(32)
        write_op("li", src, hex(val))
        imm = random_imm(12)
        write_op(op, dst, src, imm)
        address_reg = "x31"
        random_datamem_store(address_reg, dst)
for op in dst_src_src:
    for i in range(passes):
        dst = random_dst()
        src1 = random_src()
        src2 = random_src()
        # Reload value in src to avoid any convergence
        val1 = random_imm(32)
        val2 = random_imm(32)
        write_op("li", src1, hex(val1))
        write_op("li", src2, hex(val2))
        write_op(op, dst, src1, src2)
        address_reg = "x31"
        random_datamem_store(address_reg, dst)

# ALU extensions
target.write("\n# ALU extensions\n")
dst_src_imm5_imm5 = ("p.extract", "p.extractu", "p.insert", "p.bclr", "p.bset")
dst_src_src = ("p.extractr", "p.extractur", "p.insertr", "p.bclrr", "p.bsetr",
               "p.ror", "p.slet", "p.sletu", "p.min", "p.minu", "p.max",
               "p.maxu", "p.clipr", "p.clipur", "p.addNr", "p.adduNr",
               "p.addRNr", "p.adduRNr", "p.subNr", "p.subuNr", "p.subRNr",
               "p.subuRNr", "p.mac", "p.msu", "p.muls", "p.mulhhs", "p.mulu",
               "p.mulhhu")
dst_src = ("p.ff1", "p.fl1", "p.clb", "p.cnt", "p.abs", "p.exths", "p.exthz",
           "p.extbs", "p.extbz")
dst_src_imm5 = ("p.clip", "p.clipu")
dst_src_src_imm5 = ("p.addN", "p.adduN", "p.addRN", "p.adduRN", "p.subN",
                   "p.subuN", "p.subRN", "p.subuRN", "p.mulsN", "p.mulhhsN",
                   "p.mulsRN", "p.mulhhsRN", "p.muluN", "p.mulhhuN",
                   "p.muluRN", "p.mulhhuRN", "p.macsN", "p.machhsN",
                   "p.macsRN", "p.machhsRN", "p.macuN", "p.machhuN",
                   "p.macuRN", "p.machhuRN")
for op in dst_src_imm5_imm5:
    for i in range(passes):
        dst = random_dst()
        src = random_src()
        # Reload value in src to avoid any convergence
        val = random_imm(32)
        write_op("li", src, hex(val))
        imm1 = random_imm(5)
        imm2 = random_imm(5)
        write_op(op, dst, src, imm1, imm2)
        address_reg = "x31"
        random_datamem_store(address_reg, dst)
for op in dst_src_src:
    for i in range(passes):
        dst = random_dst()
        src1 = random_src()
        src2 = random_src()
        # Reload value in src to avoid any convergence
        val1 = random_imm(32)
        val2 = random_imm(32)
        write_op("li", src1, hex(val1))
        write_op("li", src2, hex(val2))
        write_op(op, dst, src1, src2)
        address_reg = "x31"
        random_datamem_store(address_reg, dst)
for op in dst_src:
    for i in range(passes):
        dst = random_dst()
        src = random_src()
        # Reload value in src to avoid any convergence
        val = random_imm(32)
        write_op("li", src, hex(val))
        write_op(op, dst, src)
        address_reg = "x31"
        random_datamem_store(address_reg, dst)
for op in dst_src_imm5:
    for i in range(passes):
        dst = random_dst()
        src = random_src()
        # Reload value in src to avoid any convergence
        val = random_imm(32)
        write_op("li", src, hex(val))
        imm = random_imm(5)
        write_op(op, dst, src, imm)
        address_reg = "x31"
        random_datamem_store(address_reg, dst)
for op in dst_src_src_imm5:
    for i in range(passes):
        dst = random_dst()
        src1 = random_src()
        src2 = random_src()
        imm = random_imm(5)
        write_op(op, dst, src1, src2, imm)
        address_reg = "x31"
        random_datamem_store(address_reg, dst)
    
# Vector operations
target.write("\n# Vector operations\n")
ops = ("pv.add", "pv.sub", "pv.avg", "pv.avgu", "pv.min", "pv.minu", "pv.max",
       "pv.maxu", "pv.srl", "pv.sra", "pv.sll", "pv.or", "pv.xor", "pv.and",
       "pv.dotusp", "pv.dotsp", "pv.sdotup", "pv.sdotusp", "pv.sdotsp",
       "pv.cmpeq", "pv.cmpne", "pv.cmpgt", "pv.cmpge", "pv.cmplt", "pv.cmple",
       "pv.cmpgtu", "pv.cmpgeu", "pv.cmpltu", "pv.cmpleu")
ext_src = ("", ".sc")
ext_format = (".h", ".b")
for op in ops:
    for ext1 in ext_src:
        for ext2 in ext_format:
            for i in range(passes):
                dst = random_dst()
                src1 = random_src()
                src2 = random_src()
                # Reload value in src to avoid any convergence
                val1 = random_imm(32)
                val2 = random_imm(32)
                write_op("li", src1, hex(val1))
                write_op("li", src2, hex(val2))
                write_op(op+ext1+ext2, dst, src1, src2)
                address_reg = "x31"
                random_datamem_store(address_reg, dst)
    for ext2 in ext_format:
        for i in range(passes):
            dst = random_dst()
            src = random_src()
            # Reload value in src to avoid any convergence
            val = random_imm(32)
            write_op("li", src, hex(val))
            imm = random_imm(5)
            write_op(op+".sci"+ext2, dst, src, imm)
            address_reg = "x31"
            random_datamem_store(address_reg, dst)
ops = ("pv.shuffle.h", "pv.shuffle.sci.h", "pv.shuffle.b",
       "pv.shuffleI0.sci.b", "pv.shuffleI1.sci.b", "pv.shuffleI2.sci.b",
       "pv.shuffleI3.sci.b", "pv.shuffle2.h", "pv.shuffle2.b", "pv.pack.h",
       "pv.packhi.b", "pv.packlo.b")
for op in ops:
    for i in range(passes):
        if ".sci" in op:
            dst = random_dst()
            src = random_src()
            # Reload value in src to avoid any convergence
            val = random_imm(32)
            write_op("li", src, hex(val))
            imm = random_imm(6)
            write_op(op, dst, src, imm)
        else:
            dst = random_dst()
            src1 = random_src()
            src2 = random_src()
            # Reload value in src to avoid any convergence
            val1 = random_imm(32)
            val2 = random_imm(32)
            write_op("li", src1, hex(val1))
            write_op("li", src2, hex(val2))
            write_op(op, dst, src1, src2)
        address_reg = "x31"
        random_datamem_store(address_reg, dst)


# TODO: FROM HERE
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
write_mem("sw", "x2", "x0", 0)
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
write_mem("sw", "x2", "x0", 0)
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

# Set x31 (reference) to something recognizable
write_op("li", "x8", "0xffffffff")

# Set compressed instruction option
write_op("addi", "x0", "x0", 0)
target.write(".option rvc\n")

# Jumps
write_op("c.j", "test_cj")
write_op("c.mv", "s0", "a0")
write_label("test_cj")
write_mem("c.sw", "s0", "a0", 0)
write_op("c.jal", "test_cjal")
write_op("c.mv", "s0", "a0")
write_label("test_cjal")
write_mem("c.sw", "s0", "a0", 0)
write_op("c.beqz", "x8","test_beqz")
write_op("c.mv", "s0", "a0")
write_mem("c.sw", "s0", "a0", 0)
write_label("test_beqz")
write_op("c.addi", "x8", -1)
write_op("c.bnez", "x8","test_bnez")
write_op("c.mv", "s0", "a0")
write_label("test_bnez")
write_mem("c.sw", "s0", "a0", 0)

# Register-Immediate
write_op("c.slli", "s1", 1)
write_mem("c.sw", "s1", "a0", 0)
write_op("c.srli", "s1", 1)
write_mem("c.sw", "s1", "a0", 0)
write_op("c.srai", "s1", 1)
write_mem("c.sw", "s1", "a0", 0)

# Register-Register
write_op("c.add", "s0", "s1")
write_mem("c.sw", "s0", "a0", 0)
write_op("c.sub", "a0", "a0")
write_mem("c.sw", "s0", "a0", 0)

# Unset compressed instruction option
target.write(".option norvc\n")
write_op("addi", "x0", "x0", 0)

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
    for i in range(passes):
        # Write random data to random memory locations
        src = random_dst()
        address_reg = random_dst()
        imm = random_imm(32)
        write_op("li", src, hex(imm))
        base = random_imm(15)
        base += 0x00100000
        write_op("li", address_reg, hex(base))
        write_mem(store, src, address_reg, 0)
        # Read the data to a random register
        dst = random_dst()
        write_mem(load, dst, address_reg, 0)
        # Check register
        random_datamem_store(address_reg, dst)

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

# Nested loops
target.write("\n# Nested loops\n")
write_op("addi", "x1", "x0", 10)
write_op("addi", "x2", "x0", 10)
write_op("addi", "x3", "x0", 0)
write_op("addi", "x4", "x0", 0)
write_op("lp.setup", "x0", "x1", "nested_1")
write_op("addi", "x3", "x3", 1)
write_op("lp.setup", "x1", "x2", "nested_2")
write_op("addi", "x4", "x4", 1)
write_op("addi", "x0", "x0", 0)
write_label("nested_2")
write_mem("sw", "x2", "x0", 0)
write_label("nested_1")
write_mem("sw", "x2", "x0", 0)

csr_header = """
##############################################################################
#                             _____  _____ _____                             #
#                            / ____|/ ____|  __ \                            #
#                           | |    | (___ | |__) |                           #
#                           | |     \___ \|  _  /                            #
#                           | |____ ____) | | \ \                            #
#                            \_____|_____/|_|  \_\                           #
#                                                                            #
##############################################################################
"""
target.write(csr_header)

# MATS+ on CSRs
target.write("\n# MATS+ on CSRs\n")
csr_list = [0x300, 0x305, 0x341, 0x342] + list(range(0x780, 0x7a0)) +\
    [0x7a0, 0x7a1] + list(range(0x7b0, 0x7b8)) + [0xc10, 0x014, 0xf14]
for dbg in data_backgrounds:
    write_op("li", "x1", hex(dbg[0]))
    write_op("li", "x2", hex(dbg[1]))
    # Set all registers to 0
    register_file_reset = "\n# Write DBG[0]\n"
    target.write(register_file_reset)
    for csr in csr_list:
        write_op("csrw", csr, "x1")
    
    # Check register is 0 and write 1
    target.write(test_reset)
    for csr in csr_list:
        write_op("csrr", "x3", csr)
        write_mem("sw", "x3", "x0", 0)
        write_op("csrw", csr, "x2")

    # Check register is 1 and reset it
    target.write(test_set)
    for csr in csr_list:
        write_op("csrr", "x3", csr)
        write_mem("sw", "x3", "x0", 0)
        write_op("csrw", csr, "x1")

# Read debug registers (DO NOT WRITE ON THEM FOR THE LOVE OF GOD)
target.write("\n# Read debug registers\n")
debug_list = list(range(0x00, 0x10, 0x04)) + list(range(0x40, 0x80, 0x04))
for debug in debug_list:
    write_op("csrr", "x3", debug)
    write_mem("sw", "x3", "x0", 0)
    
tail="""
RVTEST_PASS

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
"""
target.write(tail)
