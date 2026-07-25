program centrigrade_farenheit

    implicit none;
    real :: c, f;

    print *, "Please enter temperature in centrigrade: ";
    read *, c;

    f = (9.0 / 5.0) * c + 32.0;

    print *, "Temperature = ", f, " farenheit"
end program centrigrade_farenheit