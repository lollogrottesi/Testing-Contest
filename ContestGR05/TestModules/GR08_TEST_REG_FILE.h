//run MARCH_TEST() in main.s
//SP.init = 0x00200800.
#define POP_ALL() \
lw x4, 0(sp); \
lw x5, 4(sp); \
lw x6, 8(sp); \
lw x7, 12(sp); \
lw x8, 16(sp); \
lw x9, 20(sp); \
lw x10, 24(sp); \
lw x11, 28(sp); \
lw x12, 32(sp); \
lw x13, 36(sp); \
lw x14, 40(sp); \
lw x15, 44(sp); \
lw x16, 48(sp); \
lw x17, 52(sp); \
lw x18, 56(sp); \
lw x19, 60(sp); \
lw x20, 64(sp); \
lw x21, 68(sp); \
lw x22, 72(sp); \
lw x23, 76(sp); \
lw x24, 80(sp); \
lw x25, 84(sp); \
lw x26, 88(sp); \
lw x27, 92(sp); \
lw x28, 96(sp); \
lw x29, 100(sp); \
lw x30, 104(sp); \
lw x31, 108(sp); \

#define PUSH_ALL() \
sw x4, 0(sp); \
sw x5, 4(sp); \
sw x6, 8(sp); \
sw x7, 12(sp); \
sw x8, 16(sp); \
sw x9, 20(sp); \
sw x10, 24(sp); \
sw x11, 28(sp); \
sw x12, 32(sp); \
sw x13, 36(sp); \
sw x14, 40(sp); \
sw x15, 44(sp); \
sw x16, 48(sp); \
sw x17, 52(sp); \
sw x18, 56(sp); \
sw x19, 60(sp); \
sw x20, 64(sp); \
sw x21, 68(sp); \
sw x22, 72(sp); \
sw x23, 76(sp); \
sw x24, 80(sp); \
sw x25, 84(sp); \
sw x26, 88(sp); \
sw x27, 92(sp); \
sw x28, 96(sp); \
sw x29, 100(sp); \
sw x30, 104(sp); \
sw x31, 108(sp); \

#define LOAD_TEST() \
TEST_REG_FILE_LOAD_FULL(0xFFFFFFFF); \
TEST_REG_FILE_LOAD_FULL_REVERSE(0x00000000); \

#define MARCH_TEST() \
PUSH_ALL();\
LI_ALL_REGISTER(0x00000000); \
MARCH_ELEMENT_MAP_COMPLETE(0xFFFFFFFF); \
MARCH_ELEMENT_MAP_REVERSE(0x00000000); \
TEST_REG_FILE_ALU_FULL(); \
LOAD_TEST(); \
POP_ALL(); \



#define MARCH_ELEMENT_MAP_COMPLETE(value) \
li s11, 0x00200000; \
MARCH_ELEMENT_MAP(x0, value); \
MARCH_ELEMENT_MAP(x4, value); \
MARCH_ELEMENT_MAP(x5, value); \
MARCH_ELEMENT_MAP(x6, value); \
MARCH_ELEMENT_MAP(x7, value); \
MARCH_ELEMENT_MAP(x8, value); \
MARCH_ELEMENT_MAP(x9, value); \
MARCH_ELEMENT_MAP(x10, value); \
MARCH_ELEMENT_MAP(x11, value); \
MARCH_ELEMENT_MAP(x12, value); \
MARCH_ELEMENT_MAP(x13, value); \
MARCH_ELEMENT_MAP(x14, value); \
MARCH_ELEMENT_MAP(x15, value); \
MARCH_ELEMENT_MAP(x16, value); \
MARCH_ELEMENT_MAP(x17, value); \
MARCH_ELEMENT_MAP(x18, value); \
MARCH_ELEMENT_MAP(x19, value); \
MARCH_ELEMENT_MAP(x20, value); \
MARCH_ELEMENT_MAP(x21, value); \
MARCH_ELEMENT_MAP(x22, value); \
MARCH_ELEMENT_MAP(x23, value); \
MARCH_ELEMENT_MAP(x24, value); \
MARCH_ELEMENT_MAP(x25, value); \
MARCH_ELEMENT_MAP(x26, value); \
li s0, 0x00200000; \
MARCH_ELEMENT_MAP_2(x27, value); \
li s11, 0x00200000; \
MARCH_ELEMENT_MAP(x28, value); \
MARCH_ELEMENT_MAP(x29, value); \
MARCH_ELEMENT_MAP(x30, value); \
MARCH_ELEMENT_MAP(x31, value); \

#define MARCH_ELEMENT_MAP_REVERSE(value) \
li s11, 0x00200000; \
MARCH_ELEMENT_MAP(x31, value); \
MARCH_ELEMENT_MAP(x30, value); \
MARCH_ELEMENT_MAP(x29, value); \
MARCH_ELEMENT_MAP(x28, value); \
li s0, 0x00200000; \
MARCH_ELEMENT_MAP_2(x27, value); \
li s11, 0x00200000; \
MARCH_ELEMENT_MAP(x26, value); \
MARCH_ELEMENT_MAP(x25, value); \
MARCH_ELEMENT_MAP(x24, value); \
MARCH_ELEMENT_MAP(x23, value); \
MARCH_ELEMENT_MAP(x22, value); \
MARCH_ELEMENT_MAP(x21, value); \
MARCH_ELEMENT_MAP(x20, value); \
MARCH_ELEMENT_MAP(x19, value); \
MARCH_ELEMENT_MAP(x18, value); \
MARCH_ELEMENT_MAP(x17, value); \
MARCH_ELEMENT_MAP(x16, value); \
MARCH_ELEMENT_MAP(x15, value); \
MARCH_ELEMENT_MAP(x14, value); \
MARCH_ELEMENT_MAP(x13, value); \
MARCH_ELEMENT_MAP(x12, value); \
MARCH_ELEMENT_MAP(x11, value); \
MARCH_ELEMENT_MAP(x10, value); \
MARCH_ELEMENT_MAP(x9, value); \
MARCH_ELEMENT_MAP(x8, value); \
MARCH_ELEMENT_MAP(x7, value); \
MARCH_ELEMENT_MAP(x6, value); \
MARCH_ELEMENT_MAP(x5, value); \
MARCH_ELEMENT_MAP(x4, value); \
MARCH_ELEMENT_MAP(x0, value); \

#define MARCH_ELEMENT_MAP(reg1, value) \
sw reg1, 0(s11); \
li reg1, value; \

#define MARCH_ELEMENT_MAP_2(reg1, value) \
sw reg1, 0(s0); \
li reg1, value; \

#define LI_ALL_REGISTER(value) \
li x4, value; \
li x5, value; \
li x6, value; \
li x7, value; \
li x8, value; \
li x9, value; \
li x10, value; \
li x11, value; \
li x12, value; \
li x13, value; \
li x14, value; \
li x15, value; \
li x16, value; \
li x17, value; \
li x18, value; \
li x19, value; \
li x20, value; \
li x21, value; \
li x22, value; \
li x23, value; \
li x24, value; \
li x25, value; \
li x26, value; \
li x27, value; \
li x28, value; \
li x29, value; \
li x30, value; \
li x31, value; \

#define TEST_REG_FILE_ALU_FULL() \
LI_ALL_REGISTER(0x00000000); \
TEST_REG_FILE_ALU_FULL_REG(p.mac, 0xFFFFFFFF); \
TEST_REG_FILE_ALU_FULL_REG(p.mac, 0x00000000); \
TEST_REG_FILE_ALU_FULL_REG(p.mac, 0x0000FFFF); \

#define TEST_REG_FILE_ALU_FULL_REG(inst, value1) \
li s11, 0x00200000; \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x4); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x5); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x6); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x7); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x8); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x9); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x10); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x11); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x12); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x13); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x14); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x15); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x16); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x17); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x18); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x19); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x20); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x21); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x22); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x23); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x24); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x25); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x26); \
li s0, 0x00200000; \
TEST_REG_FILE_ALU_OPERATION_2(inst, value1, x27); \
li s11, 0x00200000; \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x28); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x29); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x30); \
TEST_REG_FILE_ALU_OPERATION(inst, value1, x31); \

#define TEST_REG_FILE_ALU_OPERATION_2(inst, value1, reg1)\
li reg1, value1; \
nop; \
nop; \
nop; \
nop; \
inst reg1,reg1,reg1; \
nop; \
nop; \
nop; \
nop; \
sw reg1, 0(s0);\

#define TEST_REG_FILE_ALU_OPERATION(inst, value1, reg1)\
li reg1, value1; \
nop; \
nop; \
nop; \
nop; \
inst reg1,reg1,reg1; \
nop; \
nop; \
nop; \
nop; \
sw reg1, 0(s11);\


#define TEST_REG_FILE_LOAD_FULL(value1) \
li s11, 0x00200000; \
li x0, 0; \
nop; \
nop; \
nop; \
li x4, value1; \
nop; \
nop; \
nop; \
nop; \
sw x4, 0(s11); \
nop; \
nop; \
nop; \
nop; \
TEST_REG_FILE_LOAD(x4); \
TEST_REG_FILE_LOAD(x5); \
TEST_REG_FILE_LOAD(x6); \
TEST_REG_FILE_LOAD(x7); \
TEST_REG_FILE_LOAD(x8); \
TEST_REG_FILE_LOAD(x9); \
TEST_REG_FILE_LOAD(x10); \
TEST_REG_FILE_LOAD(x11); \
TEST_REG_FILE_LOAD(x12); \
TEST_REG_FILE_LOAD(x13); \
TEST_REG_FILE_LOAD(x14); \
TEST_REG_FILE_LOAD(x15); \
TEST_REG_FILE_LOAD(x16); \
TEST_REG_FILE_LOAD(x17); \
TEST_REG_FILE_LOAD(x18); \
TEST_REG_FILE_LOAD(x19); \
TEST_REG_FILE_LOAD(x20); \
TEST_REG_FILE_LOAD(x21); \
TEST_REG_FILE_LOAD(x22); \
TEST_REG_FILE_LOAD(x23); \
TEST_REG_FILE_LOAD(x24); \
TEST_REG_FILE_LOAD(x25); \
TEST_REG_FILE_LOAD(x26); \
li s0, 0x00200000; \
TEST_REG_FILE_LOAD_2(x27); \
li s11, 0x00200000; \
TEST_REG_FILE_LOAD(x28); \
TEST_REG_FILE_LOAD(x29); \
TEST_REG_FILE_LOAD(x30); \
TEST_REG_FILE_LOAD(x31); \

#define TEST_REG_FILE_LOAD_FULL_REVERSE(value1) \
li s11, 0x00200000; \
li x0, 0; \
nop; \
nop; \
nop; \
li x4, value1; \
nop; \
nop; \
nop; \
nop; \
sw x4, 0(s11); \
nop; \
nop; \
nop; \
nop; \
TEST_REG_FILE_LOAD(x31); \
TEST_REG_FILE_LOAD(x30); \
TEST_REG_FILE_LOAD(x29); \
TEST_REG_FILE_LOAD(x28); \
li s0, 0x00200000; \
TEST_REG_FILE_LOAD_2(x27); \
li s11, 0x00200000; \
TEST_REG_FILE_LOAD(x26); \
TEST_REG_FILE_LOAD(x25); \
TEST_REG_FILE_LOAD(x24); \
TEST_REG_FILE_LOAD(x23); \
TEST_REG_FILE_LOAD(x22); \
TEST_REG_FILE_LOAD(x21); \
TEST_REG_FILE_LOAD(x20); \
TEST_REG_FILE_LOAD(x19); \
TEST_REG_FILE_LOAD(x18); \
TEST_REG_FILE_LOAD(x17); \
TEST_REG_FILE_LOAD(x16); \
TEST_REG_FILE_LOAD(x15); \
TEST_REG_FILE_LOAD(x14); \
TEST_REG_FILE_LOAD(x13); \
TEST_REG_FILE_LOAD(x12); \
TEST_REG_FILE_LOAD(x11); \
TEST_REG_FILE_LOAD(x10); \
TEST_REG_FILE_LOAD(x9); \
TEST_REG_FILE_LOAD(x8); \
TEST_REG_FILE_LOAD(x7); \
TEST_REG_FILE_LOAD(x6); \
TEST_REG_FILE_LOAD(x5); \
TEST_REG_FILE_LOAD(x4); \


#define TEST_REG_FILE_LOAD(reg1)\
lw reg1, 0(s11); \
nop; \
nop; \
sw reg1, 4(s11); \
nop; \
nop; \
nop; \
lh reg1,0(s11); \
nop; \
sh reg1, 4(s11); \
lb reg1, 0(s11);\
nop; \
nop; \
nop; \
nop; \
sb reg1, 4(s11); \
nop; \
lhu reg1,0(s11); \
nop; \
nop; \
sh reg1, 4(s11); \
nop; \
lbu reg1, 0(s11);\
nop; \
sb reg1, 4(s11); \
li reg1, 0; \
nop; \
nop; \
p.lw reg1, reg1(s11); \
nop; \
nop; \
p.sw reg1, reg1(s11); \

#define TEST_REG_FILE_LOAD_2(reg1)\
lw reg1, 0(s0); \
nop; \
nop; \
sw reg1, 4(s0); \
nop; \
nop; \
nop; \
lh reg1,0(s0); \
nop; \
sh reg1, 4(s0); \
lb reg1, 0(s0);\
nop; \
nop; \
nop; \
nop; \
sb reg1, 4(s0); \
nop; \
lhu reg1,0(s0); \
nop; \
nop; \
sh reg1, 4(s0); \
nop; \
lbu reg1, 0(s0);\
nop; \
sb reg1, 4(s0); \
li reg1, 0; \
nop; \
nop; \
p.lw reg1, reg1(s0); \
nop; \
nop; \
p.sw reg1, reg1(s0); \

#define TEST_REG_FILE_DEEP() \
MARCH_TEST(); \
TEST_REG_FILE_ALU_FULL(); \
LOAD_TEST(); \