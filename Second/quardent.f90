program quadrant
implicit none

real :: x, y

character :: q

print *, "Please enter the x and y: "

read *,x,y

if (x>=0 .and. y>= 0) then
    print *,"Point is in the first quadrant. "
    q = '1'
else if (x >= 0 .and. y<= 0) then
    print *,"Point is in the fourth quadrant. "
    q = '4'
else if (x <= 0 .and. y>=0) then
    print *, "Point is in the second quadrant. "
    q = '2'
else
    print *, "Point is in the third quadrant."
    q = '3'
end if

end program quadrant
