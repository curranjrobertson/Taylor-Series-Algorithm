% Curran Robertson
% Taylor Series Algorithm

clear all; clc; close all
syms f(x) x
N = 10; % Number of iterations
f(x) = cos(x); % function
a = 5; % x location

fa = f(a) % function value at a
i = 1 % init
while i < N
    sum = fa + diff(f(x), x, i)*(x-a)/(factorial(i));
    i = i + 1;
    fa = sum;
end

pretty(fa);

fplot(fa, [a-5, a+5]);
hold on
fplot(f(x),[a-5, a+5], 'r');