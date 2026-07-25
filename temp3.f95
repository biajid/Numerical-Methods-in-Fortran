! We will do 1 + 3 + 5 + ... + 99;
program temp3
    integer :: sum, i;
    sum = 0;
    
    do i = 1, 99, 2
        sum = sum + i;
    end do

    print *, "1 + 3 + 5 + .... + 99 = ", sum
end program temp3