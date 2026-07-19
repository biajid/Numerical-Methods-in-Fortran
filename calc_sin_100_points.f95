! This program calculates sin(x) at 101 equidistanced points in [0, 2pi].

program calc_sin_100_points

implicit none

real :: two_pi, x, y
integer :: i
two_pi = 2.0 * acos(-1.0)

do i = 0, 100  
	x = real(i) * 0.01 * two_pi
	y = sin(x)
	write(*, *) 'x and sin(x) : ', x, y
end do





end program calc_sin_100_points