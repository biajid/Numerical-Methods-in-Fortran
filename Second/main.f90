
program hello
    implicit none

    real :: x,y,z
    print *, "Enter the value of length and height of the right triangle: "
    read *,x,y

    !z = (x**2 + y**2)**0.5
    z = sqrt(x**2 + y**2)
    print *, "Hello World!"

    print *,"Hypotaneus is : ",z



end program

