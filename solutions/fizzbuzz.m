function fizzbuzz(number)

if mod(number,3)==0 && mod(number,5)==0
    disp('fizzbuzz')
elseif mod(number,3)==0
    disp('fizz')
elseif mod(number,5)==0
    disp('buzz')
else
    disp(num2str(number))
end
end