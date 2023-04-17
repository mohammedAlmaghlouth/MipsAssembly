# MIPS Assembly Language Programs

This repository contains two MIPS assembly language programs:

1. A program that generates a sequence of integers, such that each integer in the sequence is the sum of the last three integers.
2. A program that reads an input string, reverses the order of its characters in memory, and displays the reversed string on the screen.

Both programs have been implemented and tested on the MARS MIPS simulator.

## Program 1: Generating a sequence of integers

### Description

This MIPS assembly language program generates a sequence of integers, such that each integer in the sequence is the sum of the last three integers. The program asks the user to enter the first three integers in the sequence and the count of integers that should be generated after that.

### Features

- The program prompts the user to enter the first three integers and the count of integers to be generated.
- The program generates the required sequence of integers.
- The program displays the generated sequence on the screen.

### Screenshots

<img src="https://user-images.githubusercontent.com/65549274/232625384-c32333a9-5860-4215-990d-cc90f53d7bf7.jpg" width="500">


### How to use

1. Open the MARS MIPS simulator.
2. Load the file `mips1-q1.asm`.
3. Assemble the code by clicking on the Assemble button.
4. Run the program by clicking on the Run button.
5. Enter the first three integers in the sequence and the count of integers to be generated.
6. The program will generate the required sequence of integers and display it on the screen.

## Program 2: Reversing a string

### Description

This MIPS assembly language program reads an input string, reverses the order of its characters in memory, and displays the reversed string on the screen. The program allocates space for 20 bytes in the data segment (18 characters + newline char + null char).

### Features

- The program prompts the user to enter a string (at most 18 characters).
- The program reverses the order of characters in the input string.
- The program displays the reversed string on the screen.

### Screenshots

<img src="https://user-images.githubusercontent.com/65549274/232625391-8fb6e313-ffd7-413f-882c-b1f9a5367a4c.jpg" width="500">

### How to use

1. Open the MARS MIPS simulator.
2. Load the file `mips2-q2.asm`.
3. Assemble the code by clicking on the Assemble button.
4. Run the program by clicking on the Run button.
5. Enter a string (at most 18 characters).
6. The program will reverse the order of characters in the input string and display the reversed string on the screen.

## Conclusion

These two programs demonstrate the use of MIPS assembly language in solving basic programming problems. The programs can be further optimized for better performance and usability.
