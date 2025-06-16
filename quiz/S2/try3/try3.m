clc;
clear;

f1 = @(x) (exp(3 * x) - 1) ./ x;
f2 = @(x) 3 + (9 * x) / factorial(2) + (27 * (x.^2)) / factorial(3) + (81 * (x.^3)) / factorial(4) + (243 * (x.^4)) / factorial(5);
x = 1e-12;
abs(f2(x) - f1(x)) / abs(f2(x));


clc;
clear;

y = @(x) 7 - sqrt(49 + x^2);
y2 = @(x) -(x^2) / (7 + sqrt(49 + x^2));
x= 1e-4;
abs(y2(x) - y(x)) / abs(y2(x));