#include "riscv_test.h"

.global main
main:

// only execute on first core
csrr x1, mhartid
andi x1, x1, 0x1f
bnez x1, finish

// the test pass/fail logic depends on the bne instruction only, so do a quick check f$
addi x5, x0, 1
addi x6, x0, 1
bne x5, x6, fail
bne x5, x0, bne_ok
fail: // also catches remaining branches/jumps to the fail label in the tests
.byte 0,0,0,0
bne_ok:


// source files

#undef  TESTSUITE
#define TESTSUITE simple
TEST(simple);
#include "tests/simple.S"

// if you add other tests, remember to add them here!





#undef  TESTSUITE
#define TESTSUITE test_alu
TEST(test_alu);
#include "tests/test_alu.S"

#undef  TESTSUITE
#define TESTSUITE test_rf
TEST(test_rf);
#include "tests/test_rf.S"

#undef  TESTSUITE
#define TESTSUITE test_mul_dot
TEST(test_mul_dot);
#include "tests/test_mul_dot.S"

#undef  TESTSUITE
#define TESTSUITE test_rf_2
TEST(test_rf_2);
#include "tests/test_rf_2.S"


#undef  TESTSUITE
#define TESTSUITE test_branches
TEST(test_branches);
#include "tests/test_branches.S"


#undef  TESTSUITE
#define TESTSUITE test_if
TEST(test_if);
#include "tests/test_if.S"


#undef  TESTSUITE
#define TESTSUITE test_ls
TEST(test_ls);
#include "tests/test_ls.S"

#undef  TESTSUITE
#define TESTSUITE test_csr
TEST(test_csr);
#include "tests/test_csr.S"

 .text
finish:
  FIX_STACK;

  // synch barrier
  //li x10, 0
  //jal x1, wait_barrier_event_buff

  jal print_test_summary
  jal x0, (. - 4)





