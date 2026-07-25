program temp7
    implicit none;
    real :: j, a, numerator, denominator, result;
    print *, "Please enter the values of j, and a: ";

    read *, j, a;
    numerator = exp(j * a) - j * sin(a);
    denominator = sqrt(j) * log(a);

    result = numerator / denominator;

    print *, "result = ", result;
end program temp7