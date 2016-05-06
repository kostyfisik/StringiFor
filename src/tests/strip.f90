!< StringiFor `pythonishes` test.
program pythonishes
!-----------------------------------------------------------------------------------------------------------------------------------
!< StringiFor `pythonishes` test.
!-----------------------------------------------------------------------------------------------------------------------------------
use, intrinsic :: iso_fortran_env, only : stdout => output_unit
use stringifor, only : string
!-----------------------------------------------------------------------------------------------------------------------------------

!-----------------------------------------------------------------------------------------------------------------------------------
implicit none
type(string)              :: astring       !< A string.
type(string), allocatable :: strings(:)    !< A set of strings.
integer                   :: s          !< Counter.
!-----------------------------------------------------------------------------------------------------------------------------------

!-----------------------------------------------------------------------------------------------------------------------------------
write(stdout, "(A)") new_line('A')//'Strip'
astring = '  Hello World!   '
write(stdout, "(A)") 'Original: "'//astring//'"'
write(stdout, "(A)") 'Strip:    "'//astring%strip()//'"'
write(stdout, "(A)") new_line('A')//'Swapcase'
astring = '  Hello World!   '
write(stdout, "(A)") 'Original: "'//astring//'"'
write(stdout, "(A)") 'Swapcase: "'//astring%swapcase()//'"'
stop
!-----------------------------------------------------------------------------------------------------------------------------------
endprogram pythonishes
