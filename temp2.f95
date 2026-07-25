! This program will compute the sum of 1^2 + 2^2 + ... + 100^2
program temp2
  
    integer :: i, sum;

    i = 1;
    sum = 0;

    do while(i <= 100)
        sum = sum + i*i;
        i = i + 1;
    end do

    print *, "1^2 + 2^2 + 3^2 + .... + 100^2 = ", sum;

end program temp2