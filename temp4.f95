program temp4
    real :: a, b, result;
    print *, 'Enter a and b'
    read *, a, b

    numerator = a ** float(1/5) + b ** (-3.0);
    denominator = sinh(a) - cosh(b);

    result = numerator / denominator
    print *, "Result = ", result



end program temp4
