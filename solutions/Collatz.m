function result = Collatz(number)
if mod(number,2) == 0
    result = number/2;
else
    result = 3*number + 1;
end
