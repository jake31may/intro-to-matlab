---
layout: page
title: Loops
order: 8
session: 1
length: 30
toc: true
adapted: true
---
## For Loops
Loops help to automate code, executing many similar actions. From the previous example, we may want to calculate the circumference of multiple circles. We could run the `calculate_circumference` function each time, however, this can be time-consuming if we want to do this many times:
```
calculate_circumference(1)
calculate_circumference(2)
calculate_circumference(3)
...
calculate_circumference(100)
```
Instead we can use a `for` loop:
```
for radius = 1:100
  calculate_circumference(radius)
end
```
Let's dissect this code first:
1. We use `for` and `end` to let MATLAB know where the for loop begins and ends.
2. Code in-between will be ran as many times as the loop is defined for. In the above example, this will be 100 times.
3. In the first loop, radius will equal 1, and in the second two **remember that `1:100` will create a list of numbers 1 to 100**.
4. The loop will continue until radius = 100, then will continue to run code beyond the `end`.

To get a better idea, let's try a simpler loop to get used to the idea:
```
for loop = [1,5,9,100]
  disp(['Loop number: ', num2str(loop)])
end
```

You don't necessarily need to use the variable in the loop either:
```
for random_variable = 1:3
  disp('Loop')
end
```

## Task
Using what we have learnt already, create a loop which prints multiples of 3.

## Nested Loops
Within a loop, we can also include other loops. This is called **nested loops** and these can be helpful when considering multiple variables of differing values:
```
for big_loop = ['A','B','C']
  for little_loop = 1:3
    disp([big_loop,num2str(little_loop)])
  end
end
```
**What do you expect the output of the above code to be?**

## Task
Try calculating the volume of a cylinder for radii between 0.1 and 1 in 0.1 steps, and lengths from 0.05 to 0.2 in 0.04 steps using nested `for` loops. What challenges can you see when loops get very large?

## While Loops
Sometimes we may not know how many loops are required. Instead, we may want to break the loop when a condition has been met. Try this countdown:
```
number = 5;
while number >= 0
  disp(number)       
  number = number -1;
end
```
If we perhaps forgot to include `number = number -1` this code would run infinitely.

**You do have to be careful with these loops to make sure they stop. Otherwise, they will continue to run - if this happens, click the red square in the toolbar to stop the execution.**

We can combine conditions to prevent this. A step counter is one popular way to limit the number of loops.

```
step = 0;
number = 10;
while number >=0 && step < 5
  disp(number)
  number = number -1;
  step = step + 1;
end
```
**We will use a `while` loop in the next episode** 
