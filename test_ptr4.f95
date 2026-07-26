program test_ptr4
    implicit none;
    real, pointer :: p1 => null(), p2 => null(), p3 => null();
    real, target :: a = 12.5, b = 7.0, c;
    
    !initialize the pointers
    p1 => a;
    p2 => b; 
    p3 => c;

    p3 = p1 + p2; ! now c = a + b;
    write(*, *) "p3 = ", p3, ", c = ", c;

    p3 = p1;
    write(*, *) "p3 = ", p3, ", c = ", c; ! now c = a;

    p3 => p2;
    write(*, *) "p3 = ", p3, ", c = ", c;

end program test_ptr4