program temp4
    implicit none;
    real :: a, b, result, numerator, denominator;
    print *, 'Enter a and b'
    read *, a, b

    numerator = a ** float((1)/5) + b ** (-3);
    denominator = sinh(a) - cosh(b);

    result = numerator / denominator
    print *, "Result = ", result



end program temp4
