#include "riscv_test.h"

.global main
main:

// only execute on first core
csrr x1, mhartid
andi x1, x1, 0x1f
bnez x1, finish

// the test pass/fail logic depends on the bne instruction only, so do a quick check first
addi x5, x0, 1
addi x6, x0, 1
bne x5, x6, fail
bne x5, x0, bne_ok
fail: // also catches remaining branches/jumps to the fail label in the tests
.byte 0,0,0,0
bne_ok:


// source file

#undef TESTSUITE
#define TESTSUITE test_regs
TEST(test_regs);
#include "tests/test_regs.S"

#undef TESTSUITE
#define TESTSUITE test_alu
TEST(test_alu);
#include "tests/test_alu.S"

#undef TESTSUITE
#define TESTSUITE test_mul
TEST(test_mul);
#include "tests/test_mul.S"

#undef TESTSUITE
#define TESTSUITE test_self
TEST(test_self);
#include "tests/test_self.S"

#undef TESTSUITE
#define TESTSUITE test_jumping
TEST(test_jumping);
#include "tests/test_jumping.S"


  .text
finish:
  FIX_STACK;

  // synch barrier
  //li x10, 0
  //jal x1, wait_barrier_event_buff

  jal print_test_summary
  jal x0, (. - 4)
