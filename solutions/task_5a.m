function task_5a(number)
% displays whether number is odd or even

if mod(number,2) ==0
    disp([num2str(number), ' is even.'])
else
    disp([num2str(number), ' is odd.'])
end
end