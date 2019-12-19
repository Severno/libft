# Libft - @21Born2Code
## Score 125/125
### Mandatory
**100/100**

### Bonus
**25/25**

------------

My implementation of some of the Standard C Library functions including some additional ones.

### FAQ
* [What is libft?](#what-is-libft)
* [What's in it?](#whats-in-it)
* [How does it work?](#how-does-it-work)
* [How do I use the library?](#how-do-i-use-the-library)
* [How do I test it? How do I test my own implementations?](#how-do-i-test-it-how-do-i-test-my-own-implementations)
	1. [To test the code in this repo](#1-to-test-the-code-in-this-repo)
* [Example usage](#example-usage)

### What is libft?
[Libft][1] is an individual project at [21][2] that requires us to re-create some standard C library functions including some additional ones that can be used later to build a library of useful functions for the rest of the program.

Disclaimer: *Reinventing the wheel is bad, 21 makes us do this just so we can have a deeper understanding of data structures and basic algorithms. At 21 we're not allowed to use some standard libraries on our projects, so we have to keep growing this library with our own functions as we go farther in the program.*

### What's in it?

As you can see from the [Project instructions][1], there are 4 sections:

1.  **Libc Functions:** Some of the standard C functions
2.  **Additional functions:** Functions 21 deems will be useful for later projects
3.  **Bonus Functions:** Functions 21 deems will be useful for linked list manipulation
4.  **Personal Functions:** Functions I believe will be useful later.

Notes:

- Most of the the files and function names are namespaced with an **ft** in front. It stands for Twenty One
- The project instructions require that we put all the source files in the root directory but for the sake of this Github repo, I separate them into sub folders.
- I update this list almost every month with new personal functions. If you don't know what a function does, maybe someday I will make a documentary :D

*My code is not the best, but it passed all the 21 tests successfully.
*
### How does it work?

The goal is to create a library called **libft.a** from the source files so I can later use that library from other projects at 21.

To create that library, after downloading/cloning this project, **cd** into the project, call make:

	git clone https://github.com/severno/libft
	cd libft
	make

You should see a **libft.a** file and some object files (.o).


Now to clean up (removing the .o files and the .c files from the root), call `make clean`

### How do I use the library?

I added an example file called **example.c**, it's using the function **ft_putstr** to print "WHOAMI" to the screen. 

If you try to compile it with gcc using `gcc example.c` you will get an *undefined symbol* error for ft_putstr. 

You have to tell the file where your library resides and which library it is using:

`gcc example.c -L. -lft`

-L takes the path to your library. `.` in this case<br>
-l takes the name of your library. This is the set of characters that come after `lib` in your library name.

That's it. Now run it using `./a.out`

### How do I test it? How do I test my own implementations?

To test the code we're going to be using @alelievr's [Libft Unit Test][4]. There are [some][5] [good][6] [others][7] but I'll only be covering this one.

#### 1. To test the code in this repo

1. Clone this repo and cd into it, make sure it's called `libft`:
		
		git clone https://github.com/severno/libft
		cd libft/
2. Run Make so you can build the library:
		
		make
3. Go back to the root directory and download @alelievr's Libft Unit Test:
		
		cd ..
		git clone https://github.com/alelievr/libft-unit-test
4. Go into the test folder and run the test:

		cd libft-unit-test/
		make f

If you did everything correctly you should get a cool list of tests showing you the function names and if they passed or not.

## Example usage

This is a list of my projects that use Libft extensively:

* [get_next_line](https://github.com/severno/get_next_line)
* [ft_printf](https://github.com/severno/ft_printf)
* [push_swap](https://github.com/severno/push_swap)
* [fillit](https://github.com/severno/fillit)

Enjoy.

Special thanks to @R4meau

[1]: https://github.com/severno/libft/libft.en.pdf "Libft PDF"
[2]: https://21-school.ru/ "21 Russia"
[3]: https://github.com/R4meau/libft/wiki/Personal-Functions-Documentation
[4]: https://github.com/alelievr/libft-unit-test
[5]: https://github.com/yyang42/moulitest
[6]: https://github.com/QuentinPerez/Maintest/tree/master/libft
[7]: https://github.com/Kant1-0/libft-test
