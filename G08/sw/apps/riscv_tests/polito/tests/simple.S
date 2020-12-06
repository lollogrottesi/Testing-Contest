# See LICENSE for license details.

#*****************************************************************************
# simple.S
#-----------------------------------------------------------------------------
#
# This is the most basic self checking test. If your simulator does not
# pass thiss then there is little chance that it will pass any of the
# more complicated self checking tests.
#

#include "riscv_test.h"
#include "Test_macros_mine.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN


FORWARDING_STALL_JUMPS()
CALL_INVALID()
TEST_HWLOOP()
TEST_REG_FILE_DEEP()
TEST_MUL()
TEST_ALU_DEEP()
TEST_BRANCH()
TEST_CSR()
TEST_LOAD_STORE()
TEST_COMPRESSED()
EXCEPTIONS()


 

RVTEST_PASS

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  #TEST_DATA


RVTEST_DATA_END
