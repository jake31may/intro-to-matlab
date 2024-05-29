---
layout: page
title: MATLAB arrays
order: 4
session: 1
length: 30
toc: true
adapted: true
---
## Arrays
In MATLAB, arrays are a way of storing and manipulating data. Matrices here are two dimensional, with a `n` rows and `m` columns. A vector in MATLAB is defined as a two-dimensional array where one dimension is 1 - this is different to other languages where they can be one-dimensional. 

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
## Task
In the Command Window, create a column vector of all the multiples of 3 up to 100. Check the size of the array in Workspace.

## Matrices
