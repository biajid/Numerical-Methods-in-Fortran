program test_ptr3
    implicit none;
    real, pointer :: p1 => null(), p2 => null();
    real, target :: a = 5.25, b = 3.74;

    print *, associated(p1);
    p1 => a;
    p2 => b;
    

    print *, associated(p1, a);
    print *, associated(p1, b);
end program test_ptr3