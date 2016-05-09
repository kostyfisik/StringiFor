!< StringiFor `sscan` test.
program sscan
!-----------------------------------------------------------------------------------------------------------------------------------
!< StringiFor `sscan` test.
!-----------------------------------------------------------------------------------------------------------------------------------
use, intrinsic :: iso_fortran_env, only : stdout => output_unit
use stringifor, only : string
!-----------------------------------------------------------------------------------------------------------------------------------

!-----------------------------------------------------------------------------------------------------------------------------------
implicit none
type(string)                  :: astring          !< A string.
character(len=:), allocatable :: acharacter       !< A character.
character(len=:), allocatable :: anothercharacter !< Another character.
integer                       :: i                !< Index result.
integer                       :: ic               !< Index result comparison.
logical                       :: test_passed(2)   !< List of passed tests.
!-----------------------------------------------------------------------------------------------------------------------------------

!-----------------------------------------------------------------------------------------------------------------------------------
test_passed = .false.

acharacter = 'Hello World Hello!'
anothercharacter = 'llo'
astring = acharacter

i = astring%sscan(set=anothercharacter)
ic = scan(string=acharacter, set=anothercharacter)
test_passed(1) = i==ic
write(stdout, "(A,I2,A,L1)") 'Basic call result: ', i, ' is correct? ', i==ic

i = astring%sscan(set=anothercharacter, back=.true.)
ic = scan(string=acharacter, set=anothercharacter, back=.true.)
test_passed(2) = i==ic
write(stdout, "(A,I2,A,L1)") 'Back call result: ', i, ' is correct? ', i==ic

write(stdout, "(A,L1)") new_line('a')//'Are all tests passed? ', all(test_passed)
stop
!-----------------------------------------------------------------------------------------------------------------------------------
endprogram sscan
