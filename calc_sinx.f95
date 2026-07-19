! calculate the sin(x) by taking x as degree
program calc_sinx

implicit none
real :: x, sum, term, old_sum
integer :: index, index_sign 
sum = 0.0

write(*, *) 'Input the value of angle, x, in degree'
read *, x 
x = x * 3.14159265 / 180.0
write(*, *) 'Angle in Radian is ', x

term = x
sum = x
index = 3 
index_sign = -1
old_sum = sum

do
	sum = sum + index_sign * (term ** index) / (gamma(real(index) + 1.0))
	index_sign = -index_sign
	index = index + 2
	if ((abs(sum - old_sum)) < 1.0e-10) then
		exit
	end if
	old_sum = sum
end do

write (*, *) 'The sin(x) from our calculation is : ', sum
write (*, *) 'The sin(x) from Fortran library is : ', sin(x)






end program calc_sinx
