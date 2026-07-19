program quadratic_root

implicit none

real :: a, b, c, sol1, sol2, discriminant, im1, im2

! read a, b, c
write (*, *) 'Please enter a, b, c'
read *, a, b, c

if (a == 0.0 .and. b .ne. 0.0) then
	sol1 = -1.0 * c / b
	write(*, *) 'The equation is linear and the only solution is ', sol1
	stop
end if

if (a == 0.0 .and. b == 0.0) then
    if (c == 0.0) then
        write(*, *) 'Every real number is a solution.'
    else
        write(*, *) 'The equation has no solution.'
    end if
    stop
end if



discriminant = b ** 2 - 4 * a * c 

if (discriminant >= 0.0) then
	sol1 = -b + sqrt(discriminant)
	sol1 = sol1 / (2 * a)
	sol2 = -b - sqrt(discriminant)
	sol2 = sol2 / (2 * a)
	write (*, *) 'Solution1 = ', sol1
	write (*, *) 'Solution2 = ', sol2
	stop
else 
	sol1 = - b / (2 * a)
	im1 = sqrt(-1.0 * discriminant) / (2 * a)
	im2 = -1.0 * im1
	write (*, *) 'Solutions are imaginary '
	write (*, *) 'First root: real part = ', sol1, 'imaginary part = ', im1
	write (*, *) 'Second root : real part = ', sol1, 'imaginary part = ', im2
end if







end program quadratic_root