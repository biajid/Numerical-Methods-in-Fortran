program temp6

    implicit none;
    real :: a, b, numerator, denominator, result;
    print *, "Please enter real a and b: ";
    read *, a, b;

    numerator = asin(a) + acos(b);
    denominator = atan(a) + cos(2 * log10(b));

    result = numerator / denominator;

    print *, "Result: ", result;

end program temp6