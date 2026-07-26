program test_ptr2
    real, pointer :: p1, p2;
    real, target :: a = 7.0, b = -5.25;

    p1 => a;
    p2 => p1;

    print *, "a = ", a, ", b = ", b, ", p1 = ", p1, ", p2 = ", p2;

    ! Now point p1 to b and see what happens;
    p1 => b;
    print *, "a = ", a, ", b = ", b, ", p1 = ", p1, ", p2 = ", p2;

    ! Now change p2 to something else and see what happens
    p2 => a;
    print *, "a = ", a, ", b = ", b, ", p1 = ", p1, ", p2 = ", p2;


end program test_ptr2