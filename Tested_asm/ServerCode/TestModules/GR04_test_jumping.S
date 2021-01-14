//#include "riscv_test.h"
//#include "test_macros.h"

//RVTEST_RV32U

//RVTEST_CODE_BEGIN

li s11, 0x00200000 //x27


li x1,1
li x2,0
li x3,3
li x4,0
li x5,0
li x6,0
li x31,10

startPoint: addi x1, x1, 1
            bgtz x1, startJumping

maximumAge: addi x1, x1, 1
            bnez x1, growingUp


startJumping:  addi x1, x1, 1
               bgez x1, becomeMan

brotherComing: addi x1, x1, 1
               nop
               nop
               li x2, 2
               bne x2, x1, growUpBrother

becomeMan: addi x1, x1, 1
           j maximumAge

growUpSister: addi x4, x4, 1
              ble x1, x4, becomingOldSister

growingUp: blt x0, x1, brotherComing

becomingOldBrother: sub x2, x2, x3
                    beq x2, x0, oldBrother

tooOldBrother: blt x2, x0, continueX1

finishingJumping: li x4, 4
                  bgt x4, x1, end_of_program

tooOldSister: 

growUpBrother: addi x2, x2, 1
               bge x2, x0, becomingOldBrother

becomingOldSister: addi x4, x4, 1
                   bge x4, x1, tooOldSister

becomingOld: sub x1, x1, x3
             blez x1, almostDead

oldBrother: sub x2, x2, x3
            bge x0, x2, tooOldBrother

continueX1: sub x1, x1, x3
            sub x1, x1, x3
            bltz x1, becomingOld

almostDead: li x1, 0
            beqz x1, finishingJumping

sisterComing: blt x1, x4, growUpSister

end_of_program:

li x1,1
li x2,50
li x3,10
lp.setup x1,x3,hw2
	lp.setup x0,x2,hw1
	call func
	csrr x3,0x7B0
	csrr x4,0x7B1
	csrr x5,0x7B2
	csrr x6,0x780 
	csrr x7,0x781
	csrr x8,0x79F
	sw x3,0(s11)
	sw x4,4(s11)
	sw x5,8(s11)
	sw x6,12(s11)
	sw x7,16(s11)
	sw x8,20(s11)	
	hw1:

csrr x9,0x7B6
sw x9,2000(s11)

hw2:
j fin

func: 
       ret
fin: 



li x1,1
li x2,1
li x3,50
li x20,16
li x21,-5
li x22,7

lp.setup x1,x2,here1
	lp.setup x0,x3,here2
	div x20,x20,x21
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	csrr x19,0x342	
	here2:

sw x19,0(s11)
sw x20,4(s11)


here1:



//RVTEST_PASS

//RVTEST_CODE_END

//.data

//RVTEST_DATA_BEGIN

//TEST_DATA

//RVTEST_DATA_END
