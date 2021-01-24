
#define TEST_COMPRESSED()\
  li x11, 0x00200000;\
  sw sp, 0(x11);\
  li x11, 0x00200100;\
  li x14, 3;\
  li x9, 0xFFFFFFFF;\
  li x13, 0xFFFFFFFF;\
  li x15, 0xCCCCCCCC;\
  li x12, 0;\
  sw x0, 4(x11);\
  .option rvc;\
  c.li x10, 1;\
  c.add x10, x9;\
  c.sw x10, 0(x11);\
  c.addi x10, 1;\
  c.sw x10, 0(x11);\
  c.addi16sp sp, 0x20;\
  c.nop;\
  c.nop;\
 .option norvc;\
  sw sp, 0(x11);\
 .option rvc;\
  c.addi4spn x10, sp, 0x20;\
  c.sw x10, 0(x11);\
  c.mv x12, x10;\
  c.sw x12, 0(x11);\
  c.sub x10, x9;\
  c.sw x10, 0(x11);\
  c.andi x9, 15;\
  c.sw x9, 0(x11);\
  c.li x9, 1;\
  c.xor x9, x13;\
  c.sw x9, 0(x11);\
  c.or x9, x13;\
  c.sw x9, 0(x11);\
  c.and x9, x13;\
  c.sw x9, 0(x11);\
  c.srai x15, 5;\
  c.sw x15, 0(x11);\
  c.slli x15, 7;\
  c.sw x15, 0(x11);\
  c.beqz x15, neveer2;\
  c.addi x8, 1;\
  neveer2:;\
  c.sw x8, 0(x11);\
  c.lw x12, 4(x11);\
  c.sw x12, 0(x11);\
  c.bnez x12, neveer2;\
 .option norvc;\
addi x1, x1, 1;\
helper_error:;\
sw x1, 0x(x11);\
li x11, 0x00200000;\
lw sp, 0(x11);\

