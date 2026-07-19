! A program to calculate the area of triangle
! With Heron's Formula

program triangle_area
	implicit none
	real :: a, b, c
	real :: s, p, area
	print *,"please enter length a: " 
	read *, a


	b = 4

	c = 5

	p = a+b+c
	s = p/2


	area = (s*(s-a)*(s-b)*(s-c))**0.5

	print *,"Area of the triangle is : ",area
	print *,"The Perimeter: ",p
	

end program triangle_area

