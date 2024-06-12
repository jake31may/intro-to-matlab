---
layout: page
title: Functions
order: 6
session: 1
length: 30
toc: true
adapted: true
---
# Learning Objectives
- Create and save simple functions
- Understand the differences between inputs and outputs.

# Functions
We have used so far in-built MATLAB functions. In this episode, we will learn to code our own functions, allowing us to repeat code more readily, and make our code more readable. Functions are input-output machines, and with coding, they can be extremely flexible. and allow us to customise with a high degree of control.  

Let's create with an example - a function that calculates the circumference of a circle, $c = 2 \pi r$, where $c$ is the circumference and $r$ is the circle's radius.
First, open up a new `m-file`.Then, copy the following code:
```
function circumference = calculate_circumference(radius)
% Function that calculates the circumference of a circle given the radius

circumference = 2*pi*radius;
end
```
We use `function` to let MATLAB know this is a function which we can use to call later, and `end` to designate when we have finished. This function uses one input argument, radius, and has one output argument, circumference.

You must save the `m-file` before it can be used. It will automatically suggest the function name `calculate_circumference.m`, allowing us to call it in the command window or other scripts or functions. Once saved, try the function out in the command window:
```
calculate_circumference(1)
```
**It is always useful to save variables with descriptive names, particularly if sharing your code with others. For example, `radius` could be shortened to `r` however it can be difficult to understand what `r` is without additional context.**

### Task 4a
Using the last function as a template, now create a function `calculate_area` that calculates the area of the circle given the radius: $a = \pi r^2$.

### Task 4b
Create a function `calculate_volume` that uses `calculate_area` and a length, $L$, to calculate the volume of a cylinder: $V = a L$. The function will need to take two *arguments* like: `calculate_volume(radius, length)`.

