clear;
clc;

disp(fib(10));

function [out] = fib(num)
    if(num ==1 || num==2)
        out=1;
    else 
        out = fib(num-1) + fib(num-2);    
    end
end

