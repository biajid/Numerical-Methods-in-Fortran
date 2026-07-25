function gauss3(a, b, f_handle) result(integral)
    implicit none;
    real, intent(in) :: a, b;
    real :: integral;

    ! define the function handle signature;
    interface
        function f_handle(x) result(res) 
            implicit none;
            real, intent(in) :: x;
            real :: res
        end function f_handle
    end interface

    real :: w1, w2, w3, x1, x2, x3;
    real :: left, right, f1, f2, f3 

    call wts_pts3(w1, w2, w3, x1, x2, x3);

    left = (b - a) / 2.0;
    right = (b + a) / 2.0;

    ! evaluate the integrand at the quadrature point using the function handle
    f1 = f_handle(left * x1 + right);
    f2 = f_handle(left * x2 + right);
    f3 = f_handle(left * x3 + right);

    integral = left * (w1 * f1 + w2 * f2 + w3 * f3);

end function gauss3