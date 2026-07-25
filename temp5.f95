program temp5
    implicit none;
    real :: a, b, i, j, result, numerator, denominator;
    
    print *, "Please enter a, b, i, j";
    read *, a, b, i, j;
    numerator = abs(i) ** nint(a) - j ** int(b);
    denominator = mod(i, j);

    result = numerator / denominator;

    print *, 'Numerator, denominator, result' , numerator, denominator, result;

end program temp5