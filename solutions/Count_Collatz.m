function Steps = Count_Collatz(number)
Steps = 0;
original = number;
while number ~= 2
    Steps = Steps + 1;
    number = Collatz(number);
end
%disp([num2str(original), ': ', num2str(Steps), ' steps'])