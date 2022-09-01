clear;clc;

disp(getFibonacci(input("Please enter the number of Fibonacci numbers you need : ")));

function obj = getFibonacci(n)
    vec(1) = 1;
    vec(2) = 1;
    for i =3:n
        vec(i) = vec(i-1) + vec(i-2);
    end
    obj = vec;
end