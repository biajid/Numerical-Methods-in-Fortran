program array_ptr
	implicit none;
	integer :: i;
	integer, dimension(16), target :: info = [(i, i = 2, 32, 2)];
	integer, dimension(:), pointer :: ptr1, ptr2, ptr3, ptr4, ptr5;
	ptr1 => info;

	ptr2 => info(2::1);

	print *, "Ptr2 is now : ", ptr2;

	ptr2 => ptr1(2::2);
	ptr3 => ptr2(2 :: 2);
	ptr4 => ptr3(2 :: 2);
	ptr5 => ptr4(2 :: 2);

	write (*, *) "ptr1 = ", ptr1;
	write (*, *) "ptr2 = ", ptr2;
	write (*, *) "ptr3 = ", ptr3;
	write (*, *) "ptr4 = ", ptr4;
	write (*, *) "ptr5 = ", ptr5;

	nullify(ptr1, ptr2, ptr3, ptr4, ptr5);
	
end program array_ptr