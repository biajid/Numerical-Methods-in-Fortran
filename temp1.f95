! This program computes the real roots of a quadratic equation of the form ax^2 + bx + c = 0.
program temp1
    implicit none;
    real :: a, b, c;
    real :: dis, root1, root2;

    print *, "Please enter the values of A, B, C : "
    read *, a, b, c;
    dis = b ** 2 - 4.0 * a * c;
    print *, dis;

    if (dis .ge. 0.0) then 
        root1 = (-b + sqrt(dis)) / (2.0 * a);
        root2 = (-b - sqrt(dis)) / (2.0 * a);
        print *, "Roots are : ", root1, root2;
    else 
        print *, "Discriminant of the equation is negative, so no real root!";
    end if

end program temp1