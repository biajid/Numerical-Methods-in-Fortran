subroutine wts_pts3(w1, w2, w3, x1, x2, x3)
    implicit none;
    real, intent(out) :: w1, w2, w3, x1, x2, x3;
    
    ! put the points here 
    x1 = -0.7745966692;
    x2 = 0.00000000000;
    x3 = 0.7745966692;

    ! put three gauss-legendre weight here
    w1 = 0.5555555556;
    w2 = 0.8888888889;
    w3 = 0.5555555556;

end subroutine wts_pts3