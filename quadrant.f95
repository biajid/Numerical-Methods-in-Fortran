! Find the quadrant of a point
program quadrant

implicit none

real :: x, y, z
real, parameter :: pi = 4 * atan(1.0)
print *,"Enter the x and y"
read *,x,y
z = x * y
write (*, *) "x * y = ", z
!pi = 4


end program quadrant
