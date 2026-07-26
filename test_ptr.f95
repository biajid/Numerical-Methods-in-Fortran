program test_ptr
    implicit none;
    real, pointer :: p;
    real, target :: t1 = 100.0, t2 = 52.5, c;

    p => t1;
    write (*, *) "Pointer = ", p, ", t1 = ", t1, ", t2 = ", t2;
    p => t2;
    write (*, *) "Pointer = ", p, ", t1 = ", t1, ", t2 = ", t2;

    p = 200;
    write (*, *) "Pointer = ", p, ", t1 = ", t1, ", t2 = ", t2;
    t2 = 500;
    write (*, *) "Pointer = ", p, ", t1 = ", t1, ", t2 = ", t2;

    !real :: c;
    c = p + t2;

    write (*, *) "c = ", c;



end program test_ptr