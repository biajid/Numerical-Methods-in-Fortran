program quadratic_root_complex

    implicit none;
    complex :: a, b, c;
    complex :: root1, root2, dis;

    print *, "Please enter a, b, c of ax^2 + bx + c = 0, ";
    read *, a, b, c;

    dis = sqrt(b ** 2 - 4.0 * a * c);
    root1 = (-b + dis) / (2.0 * a);
    root2 = (-b - dis) / (2.0 * a);

    print *, "The roots are : ", root1, root2;
 
end program quadratic_root_complex