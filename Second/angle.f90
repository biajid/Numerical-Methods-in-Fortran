program angle

implicit none
real :: x, y, theta
real, parameter :: pi = 4 * atan(1.0)

print *, "Please enter the length and height of the right-angled triangle: "
read *,x,y

theta = atan(y/x) * (180/pi)

print *,"Angle is : ",theta

end program angle
