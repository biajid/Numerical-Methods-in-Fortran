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

    ! I intentionally did this lousy code to see what happens when pointers are associated and memory is deallocated.
    ! valgrind shows error because ptr1 is still associated with the memory that ptr2 points to, which will be deallocated later.

    ! check the status, success = 0, failure is a code
    allocate(ptr2(1 : 5), stat = istat)
    print *, "Status of the allocation of ptr2: ", istat;

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
    allocate(ptr2(1 : 3));

    ptr2 = [1, 2, 3];

    print *, "After re-allocation ptr2 : ";
    print *, ptr2;

    ! Now check the weirdness in ptr1
    print *, "ptr1 is now : ";
    print *, ptr1;

    ! Now I will deallocate ptr2, and see ptr1;
    deallocate(ptr2);

    print *, "ptr1 = ";
    print *, ptr1;

    nullify(ptr1); ! Infact, it should have been nullified immediately with ptr2;

    
    

end program mem_leak