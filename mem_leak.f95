program mem_leak
    implicit none;
    integer :: i, istat;
    integer, dimension(:), pointer :: ptr1, ptr2;
    real :: r;

    ! check the association of the pointers
    write (*, *) "Association status of the pointer1: ", & 
    associated(ptr1);

    write (*, *) "Association status of the pointer2: ", &
    associated(ptr2);

    ! Now allocate the memory for both pointer
    allocate(ptr1(1 : 5), stat = istat);
    allocate(ptr2(5), stat = istat)

    ! check the status, success = 0, failure is a code
    print *, "Status of the allocation of ptr1: ", istat;
    allocate(ptr2(5), stat = istat)
    print *, "Status of the allocation of ptr1: ", istat;

    ! Now populate the array.
    call random_seed();
    do i = 1, 5
        call random_number(r);
        ptr2(i) = int(r * 100) + 1;
    end do
    ! Initial ptr2
    print *, "ptr2 after initialization: ";
    print *, ptr2;

    ptr1 => ptr2;

    print *, "ptr1 after pointing to ptr2: ";
    print *, ptr1;

    ! now free the pointer 2 and see what happens 
    deallocate(ptr2, stat = istat);

    print *, "ptr1 after deallocating ptr2: ";
    print *, ptr1;

    ! now put something else on ptr1.. 
    allocate(ptr2(3));

    ptr2 = [1, 2, 3];

    print *, "After re-allocation ptr2 : ";
    print *, ptr2

    ! Now check the weirdness in ptr1
    print *, "ptr1 is now : ";
    print *, ptr1;

    ! Now I will deallocate ptr2, and see ptr1;
    deallocate(ptr2);

    print *, ptr1;

    

end program mem_leak