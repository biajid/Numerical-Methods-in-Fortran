function f2(x) result(res)
    implicit  none;
    double precision, intent(in) :: x;
    double precision :: res;

    res = cos(x) / ((4.0 + sin(x)) * (1.0 + sin(x)));

end function f2
