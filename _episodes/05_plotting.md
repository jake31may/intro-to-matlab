---
layout: page
title: Plots 1
order: 5
session: 1
length: 30
toc: true
adapted: true
---
## First Graph
Plotting in MATLAB is relatively straight forward once you are aware of the basics. Let's start with line graphs and plotting $y = x^2-2$ between -1 and 1.

Use the code below to create the data for the plot:
```
x = -1:0.2:1;  % Create a row vector of the input numbers we wish to evaluate
y = x.^2-2;    % Create a row vector of the output numbers we wish to plot
```

Now we can use the `plot` function in MATLAB to sort the rest:
```
figure(1)  % this line isn't necessary
plot(x,y)  % plots x and y data
```
You should get a graph that looks like this:
![Plot1](plot1.png)
As you can see, the points are a bit jagged. **Adjust the step size in $x$ so that the line becomes smoother**

## Graph settings
MATLAB offers plenty of customisation which can help improve how our graphs look. For example, within the `plot` function, we can change the appearance of the line:
```
plot(x,y,'r--',LineWidth=2)   % creates dashed red line with thicker line width.
```
We can also add a grid and label the axes and title, but ensure that the text is in apostrophes(`'`):
```
grid on                                    % adds a grid to background
xlabel('x')                                % labels bottom axes
ylabel('y')                                % labels side axes
title('$y = x^2 -2$',Interpreter='latex')  % adds title using a LaTeX interpreter
```
**Top Tip: If using a latex iinterpreter, use the dollar sign (`$`) either side of the maths.**

![Plot2](plot2.png)

## Task 3a
Try to replicate the following graph for $y = 4x^2 -x +5$:

![plot3](plot3.png)

## Multiple plots

### Subplots

### Two-on-one


**Check out the MATLAB ![plot](https://www.mathworks.com/help/matlab/ref/plot.html) page for more information.**

The MATLAB website provides a comprehensive guide to its in-built functions which is extremely helpful when stating out coding.

We

## Task 3a
