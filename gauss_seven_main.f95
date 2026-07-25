program gauss_seven_main
    implicit none
    double precision :: a, b, pi, exact, approximate;

    double precision, external :: f2
    double precision, external :: gauss7


    pi = acos(-1.0);
    a = 0.0;
    b = pi / 2.0;
    exact = (3.0 * log(2.0) - log(5.0)) / 3;
    approximate = gauss7(a, b, f2);

    print *, "Gauss7 integral: ", approximate;
    print *, "Exact  integral: ", exact;
end program gauss_seven_main