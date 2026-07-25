function gauss7(a, b, f_handle) result(integral)
    implicit none;
    double precision, intent(in) :: a, b;
    double precision :: integral;

    ! Interface describing incoming double precision function handle 
    interface
        function f_handle(x) result(res)
            implicit none;
            double precision, intent(in) :: x;
            double precision :: res;
        end function f_handle
    end interface

    ! Now declare the array here.
    double precision :: w(7), x(7), fn(7);
    double precision :: left, right, sum_value;
    integer :: i;

    call wts_pts7(w, x);

    left = (b - a) / 2.0;
    right = (a + b) / 2.0;

    sum_value = 0.0;

    do i = 1, 7
        fn(i) = f_handle(left * x(i) + right);
        sum_value = sum_value + w(i) * fn(i);
    end do

    integral = left * sum_value;

end function gauss7