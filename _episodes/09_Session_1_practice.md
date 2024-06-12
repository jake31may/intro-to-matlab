---
layout: page
title: Session 1 practice - Collatz Conjecture
order: 6
session: 1
length: 30
toc: true
adapted: true
---
## Collatz Problem
We will practice a number of the skills we have learnt already to look at the Collatz Problem. There are two rules for this problem:
1. If the number is **odd**, we multiply by 3 and add 1.
2. If the number is **even** we halve it.

## Task 
Let's create a function which takes an input number and returns a number based on whether it is odd or even. **Hint: we can use the `mod(number, base)` function to find the modulus of a number given the base, for example, the modulus or remainder of an even number in base 2 is 0.**

## Collatz Conjecture
The conjecture goes that if we apply the two rules to any positive whole number (and repeat for its outputs), we will always get into a 2-1-4 cycle. For example:
```
10 -> 5 -> 16 - 8 -> 4 -> 2 -> 1 -> 4 ...
```
Whilst not proven, this sequence will work for any number MATLAB can handle. 

## Task
Create a function that determines the number of steps to reach 1. Check that any positive whole number reduces to 1. As the number of steps is unknown, a `while` loop could be used.

## Task 
Using a `for` loop, find the steps it takes numbers 1 to 500 to reach 1. Plot the results using a line graph with points.

## Bonus
Create a subplot with the line plot on the left and a histogram showing the distribution of steps on the right. Use `help histogram` or search `histogram MATLAB` for help on this plot.
