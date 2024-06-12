---
layout: page
title: Conditionals
order: 7
session: 1
length: 30
toc: true
adapted: true
---
# Learning Objectives
- Understand what is meant by a conditional statement
- When to apply conditional statements in your code
- Use conditional statements for indexing and `if`, `elseif` and `else` commands. 

# Conditional statements
Sometimes we may have instructions or code that only act when a criterion is met. We can construct conditional statements that allow us to check whether a criterion is met or not. In python, this is commonly known as True-False or Boolean statements. In MATLAB, it returns a binary option, either 1 for True or 0 for False. An easy example to try is greater than and less than:
```
5 < 7  % is 5 less than 7
```
which will return 1 for True. Or,
```
8 >= 10 % is 8 greater or equal to 10
```
will return 0 for False. 

For equals, we must use two equal signs `==`:
```
5 == 10/2 % is 5 equal to 10/2
```
Sometimes we may want to check if is not equal, in which case we use the tilde and equals together:
```
5 ~= 2
```

We can use conditional statements for **indexing**, which tells where in an array the statement is true.
```
x = 1:10  
x(x<4)      % selects elements that are less than 4

y = [3,8,4,1,7,0,2]
y(y>3)      % selects elements that are more than 3
```
We can even use this to remove elements from an array:
```
y(y>3) = []; % removes elements that are more than 3 from the array
y
```

# Combining conditions
Sometimes we require multiple conditions to be met at the same time. Here we use two ampersands `&&`:
```
5 < 8 && 2 > 5 % is 5 less than 8 and is 5 greater than 2  
```
This requires **all** statements to be correct to return 1 or True. In contrast, we may only need one condition to be True. In which case we can use an *or* statement, where we use two pipes `||`. 
```
5 < 7 || 7 < 5 % is 5 less than 7 or is 7 less than 5. 
```
Clearly in the above one of these statements is true and therefore would return 1. 

# If statements
To use conditional statements in our code, we can use an `if` function. This checks if a criterion is met, and executes the code between the `if` statement and `end` if True, or otherwise passes. Try this:
```
x = 5;
if x < 6
  disp([num2str(x), ' is smaller than 6'])
end
```
**Change the number and see what the output is**.

## If-else statements
We may also want something to happen if the statement is not True. This is one option:
```
x = 8;
if x < 6
  disp([num2str(x), ' is smaller than 6'])
end

if x > 6
  disp([num2str(x), ' is greater than 6'])
end
```
Alternatively, we can use an `else` statement:
```
x = 8;
if x < 6
  disp([num2str(x), ' is smaller than 6'])
else
  disp([num2str(x), ' is greater than 6'])
end
```
For many lines of code, this is much more readable and also more efficient. With the above example, there is an edge case that is not considered. This is when `x == 6`. We can also include an `elseif` statement, which is another conditional we can add:
```
x = 8;
if x < 6
  disp([num2str(x), ' is smaller than 6'])
elseif x == 6
  disp([num2str(x), ' is equal to 6'])
else
  disp([num2str(x), ' is greater than 6'])
end
```
### Task 5a
Create a function that inputs a whole number and displays whether the number is even or odd. Use the MATLAB function `mod(number, base)` with base = 2:
```
mod(5,2)   % returns 1 as odd
mode(4,2)  % returns 0 as even 
```
### Task 5b
Fizz-Buzz is a game for young students whereby numbers are called in ascending order, "1, 2, 3..." except when the number is either a multiple of 3 or 5. If the number is a multiple of 3, we replace the number with `fizz`, and for a multiple of 5, we replace with `buzz`. If the number is both a multiple of 3 and 5, they would call out `fizz buzz`. Using `if` statements, reproduce the output of this game given an input number:
```
function fizzbuzz(number)
% Add your code here.
end
``` 
