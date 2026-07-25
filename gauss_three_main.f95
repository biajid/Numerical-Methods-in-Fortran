program gauss_three_main
    implicit none;
    real :: a, b, pi, exact, approximate;

    !declare the external functions
    real, external :: f1;
    real, external :: gauss3;

    pi = acos(-1.0);
    a = 0.0;
    b = pi / 2.0;

    exact = (3 * log(2.0) - log(5.0)) / 3.0;
    approximate = gauss3(a, b, f1);

    print *, 'Gauss 3-Point estimate: ', approximate;
    print *, 'Exact integral: ', exact;

end program gauss_three_main