(this is still a work in progress, i've got to write all the test functions which will take some time.)

Because the libft project involves so many functions to test, I decided to make testing as simple as possible by creating a completely separate directory, testlibft, to hold all the test files. This directory contains its own Makefile, which utilizes the libft.a library created by the libft Makefile.

In order to use this setup, you’ll need to update the LIBFT_DIR variable in testlibft/Makefile to point to the location where your libft repository is cloned.

You also have to update the path to "libft.h" inside the "test_libft.h" file so that the prototypes of functions can be accessed.

How it works?

1. Make the library: Go to the libft directory and run make. This will create the libft.a library if libft is built correctly.
2. Make the tests: Go to the testlibft directory and run make. This will compile each test file into a separate executable. You can then run each test executable independently, like so:

```
./test_ft_strlen
./test_ft_memcpy
```

etc.

It will then output the tests. I made it in a way that it compares the original strlib function with the "ft_*" versions.

Have a great day!
