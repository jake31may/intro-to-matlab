---
layout: page
title: Challenge
order: 12
session: 2
length: 30
toc: true
adapted: true
---
# Learning Objectives
- Explore MATLAB functions with an open problem
- Develop problem-solving skills

# The Challenge
Fitbit is a wearable device which tracks and stores data of the user. Data has been collected over 5 years, between 2016-2020. Each year has been split into a separate `csv` file, although the year is unknown:

|Year label| File link  |
|--------|------------|
|A       |[Year_A.csv][1]|
|B       |[Year_B.csv][2]|
|C       |[Year_C.csv][3]|
|D       |[Year_D.csv][4]|
|E       |[Year_E.csv][5]|

[1]:../downloads/year_A.csv
[2]:../downloads/year_B.csv
[3]:../downloads/year_C.csv
[4]:../downloads/year_D.csv
[5]:../downloads/year_E.csv

The primary challenge is to determine which year is 2020, the first year of the COVID-19 pandemic. What other information can you deduce from the data? It may be   possible for example to predict an age range, but justify your reasons. 

You are encouraged to work in groups and communicate with each other.

Some useful ways to manage data in MATLAB:
- You may find it helpful to import the data as a table first:
```
T = readable('Year_A.csv')
Date = table2array(T(:,1));
```
- Plot the data using the date and another variable.
- You may also find the following function useful for plotting monthly average data. Feel free to adapt!
```
function plot_average_month(dates,variable,graph_type)
% plots average for month. 
% graph types are: 'bar', 'line' or 'scatter'


months = month(dates);  % extracts month from date

month_mean = zeros([1,12]);

for m = 1:12
    month_data = variable(months==m);
    month_mean(m) = mean(month_data);
end


switch graph_type
    case 'bar'
        X = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
        bar(X,month_mean)
        xlabel('Month')
        grid on

    case 'line'
        plot(1:12,month_mean,'-',LineWidth=2)
        xlabel('Month')
        grid on

    case 'scatter'
        scatter(1:12,month_mean,'o')
        xlabel('Month')
        grid on

end
end
```
