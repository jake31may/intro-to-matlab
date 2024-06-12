---
layout: page
title: MATLAB arrays
order: 4
session: 1
length: 30
toc: true
adapted: true
---
# Learning Objectives
- Get to grips with arrays and elements
- Learn how to use basic operations with vectors and matrices
- Select rows, columns and elements from matrices using indices.

# Arrays
In MATLAB, arrays are a way of storing and manipulating data. Matrices here are two-dimensional, with a `n` rows and `m` columns. A vector in MATLAB is defined as a two-dimensional array where one dimension is 1 - this is different to other languages where they can be one-dimensional. 

## Vectors
MATLAB is best known for its linear algebra capabilities. In MATLAB, it is easy to create arrays, which are any type of matrix or vector. To make a row vector, we can use square brackets and commas (`,`) from the command window:
```
row_vector = [1, 2, 3, 4]
```
We can also make a column vector using a semicolon (`;`) instead of a comma:
```
col_vector = [1; 2; 3; 4]
```
If we instead wish to have numbers 1 to 10, we can shorten the code using the colon (`:`):
```
row_vector = [1:10]
```
This notation takes the first number before the colon, and increases by 1 until the number on the right is reached. If instead we wanted to go up in tens, we can easily modify the code:
```
row_vector2 = [10:10:100]
```
We can also convert the row vector to a column vector by transposing the row vector. MATLAB has an in-built function for this `transpose`, or we can use the apostrophe (`'`) providing we are not using complex numbers:
```
col_vector1 = transpose(row_vector)
col_vector2 = [10:20]'
```
### Task 2a
In the Command Window, create a column vector of all the multiples of 3 up to 100. Check the size of the array in Workspace.

## Matrices
A matrix can be built in several ways. The simplest is manually using commas and colons as with vectors:
```
A = [1,2,3; 4,5,6; 7,8,9]
B = [1,2,3;
     4,5,6;
     7,8,9]
% A and B are identical but are used to illustrate how code can be written to improve readability
```
We can also build using vectors:
```
a = [1:5];
b = [6:10];
C = [a;b]      % creates matrix of size 2 by 5 (2 rows, 5 columns)
D = [a',b']    % creates matrix of size 5 by 2 (5 rows, 2 columns)
```
When building matrices this way, it is important to ensure the dimensions are the correct length.

**What do you think happens when we transpose the matrix? Test this out for yourself.**

Some other functions can be used to create matrices too, notably `ones([n,m])`, `zeroes([n,m])` and rand([n,m]). Try these functions:
```
mat_A = ones([2,3])
mat_B = zeros([6,7])
mat_C = rand([n,m])
mat_eye = eye(3)
```
**You are always encouraged to use the MATLAB help function to find out more information, for example:**
```
help ones
```

# Indexing
Sometimes we care about only certain rows or columns of an array. **Unlike other languages like python, indexing starts at 1** 
For vectors, we only require one number inside brackets:
```
row_vector = [1:10];
row_vector(1)    % first number in the array
row_vector(2)    % second number in the array
row_vector(1:5)  % first 5 numbers in array
row_vector(end)  % last number in array 
```
For matrices, more than one number is required for each dimension (row,column):
```
A = magic(5);    % Creates magic square of size 5
A(1,1)           % First element in row 1 and column 1
A(end,end)       % Element in end row and column
A(3,2)           % Element in third row, second column. 
A(1,:)           % Returns row vector of first row
A(:,4)           % Returns column vector of fourth column
```
**Notice the use of the colon (`:`) to denote all indices**

### Task 2c
1. Create a magic square of size 7
2. Using the `sum` function, find out the sum of the first row.
3. Using the `sum` function, find out the sum of the last column.
4. Guess what a magic square is. Check your guess by using the `help` function within MATLAB.

# Matrix operations 
## Summation
In most cases, matrices need to be the same size to add or subtract together.
```
A = [1,2,3; 4,5,6];
B = [4,5,6; 1,2,3];
```
### Task 2d
Try the following operations:
1. A+B
2. B-A
3. A-transpose(B)
4. Can you add a single number to A? If so, what happens?
5. What size row vector can be added to A? What happens?
6. What size column vector can be added to B? What happens?

## Product
"Matrix multiplication" can take two forms which can affect how we code the multiplication
**In traditional matrix multiplication**, if we wish to multiply A and B, the number of columns of A and the number of rows of B must be the same. This is useful in linear algebra and creates a matrix with the same number of rows as A, and the number of columns in B.

Using an example, we use the star `*` operator for this multiplication:
```
a_row = 1:5;                % produces a row vector from 1 to 5
a_col = transpose(a_row);   % produces a column vector from 1 to 5

a_col * a_row               % produces a square 5 by 5 matrix
a_row * a_col               % produces a single number.
```
How we get these numbers is shown in the following gif:
![Illustration of matrix multiplication](../fig/multiply_matrices.gif)

Sometimes we want to multiply the element of one matrix with the same of another instead. If we wanted a row vectors of the first 5 square numbers, we could use **element-wise multiplication**, using the dot-star (`.*`) operator:
```
a = 1:5;
a .* a
```
Another way we can do this is by squaring the number using the carat (`^`) operator. Again, the dot is important beforehand:
```
a.^2
```
The same rules apply for division.

**We will practice this difference in later episodes**
