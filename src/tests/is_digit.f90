!< StringiFor `is_digit` test.
program is_digit
!-----------------------------------------------------------------------------------------------------------------------------------
!< StringiFor `is_digit` test.
!-----------------------------------------------------------------------------------------------------------------------------------
use, intrinsic :: iso_fortran_env, only : stdout => output_unit
use stringifor, only : string
!-----------------------------------------------------------------------------------------------------------------------------------

!-----------------------------------------------------------------------------------------------------------------------------------
implicit none
type(string) :: astring        !< A string.
logical      :: test_passed(2) !< List of passed tests.
!-----------------------------------------------------------------------------------------------------------------------------------

!-----------------------------------------------------------------------------------------------------------------------------------
test_passed = .false.

astring = '   -1212112.3 '
test_passed(1) = astring%is_digit().eqv..false.
write(stdout, "(A)") 'Original: "'//astring//'"'
write(stdout, "(A,L1)") 'Is digit? ', astring%is_digit()

astring = '12121123'
test_passed(2) = astring%is_digit().eqv..true.
write(stdout, "(A)") 'Original: "'//astring//'"'
write(stdout, "(A,L1)") 'Is digit? ', astring%is_digit()

write(stdout, "(A,L1)") new_line('a')//'Are all tests passed? ', all(test_passed)
stop
!-----------------------------------------------------------------------------------------------------------------------------------
endprogram is_digit
