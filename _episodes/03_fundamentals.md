---
layout: page
title: Fundamentals of MATLAB
order: 3
session: 1
length: 30
toc: true
adapted: true
---
## Learning Objectives
- Familiarise with the MATLAB graphical user interface (GUI).
- Perform basic calculations in the command window
- Assign variables
- Write a script with comments  

## Command Window
MATLAB software allows the user to write code, but essentially MATLAB acts like a glorified calculator. If you open up MATLAB, you
will see the screen shown below. If the Editor is not shown, click the yellow ‘+’ circled in red.

![MATLAB graphical user interface shown](../fig/M-interface.png).


The command window can be used to write code and numerical expressions. Let's try adding numbers up:

```
2 + 3
```

You'll notice that MATLAB automatically creates a variable `ans`, which can be viewed in the `Workspace`. If we like, we can create our own variable name by providing a variable name of our choice: 

```
A = 2 + 3
```
It's important to know that MATLAB is case-sensitive, and so if we type: 

```
a = 8-2
```
this will create a new variable in the Workspace. 

We can use the variables saved in the Workspace for further calculations:

```
B = A * a
```
## Editor
We can also make use of the Editor. This space can be used to edit scripts and is much easier to manage multiple lines of code. To begin, you can click the `+` sign where the red circle is located which opens a script file. We can write lines of code and save our work. Let's start by opening a script, then copy and paste the following code: 
```
first_num = 4;
second_num = 8;
sum_num = first_num + second_num
```
and save it as `test_1.m`. You can now run the code by pressing the green triangle on the navigation bar, or by pressing `ctrl + Enter` on Windows machines or `command + Enter` on Mac.

**You may also notice that there is a semicolon (`;`) at the end of the first two lines. Remove these and see how the output differs.**

## Task 1a
Say that a pack of apples is £2, a bunch of bananas is £1, and a punnet of strawberries is £3.50. Write a script named `task_1.m` that: 
1. Assigns the cost of each fruit to a variable of that fruit's name.
2. Calculate the cost for 2 packs of apples, 3 bunches of bananas and a punnet of strawberries, and assign this to the variable `cost`.

Now:
3. Change the cost of apples to £2.50, and bananas to 1.25.
4. Recalculate the new cost of fruit.

**How much easier is it to recalculate the cost of all the fruit in script compared to using the Command Window only?**

## Comments
For more complex code, it can be difficult to interpret what the code is doing. It is good practice to add comments where it is not always obvious. In MATLAB, the syntax used for comments is the percentage sign (`%`). Text or code in the same line after a % is not read, and can be used like so:
```
sum_num = first_num + second_num   % adds first_num and second_num. 
```
**Top tip: if you want to distance the % sign from the code, use the tab button on the keyboard.**

## Task 1b
Add comments to `test_1.m` that describe your code to someone new to coding. 
