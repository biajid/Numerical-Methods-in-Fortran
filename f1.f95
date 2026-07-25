function f1(x) result(res)
    implicit  none;
    real, intent(in) :: x;
    real :: res;

    res = cos(x) / ((4.0 + sin(x)) * (1.0 + sin(x)));

end function f1
