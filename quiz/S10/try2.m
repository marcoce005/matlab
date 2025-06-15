clc;
clear;

x = [0, 1, 2];
y = [1, 2, 4];

polyfit(x, y, 1);


clc;
clear;

x = [-2 -1.3 -1 -0.7 -0.4 -0.1];
y = [0.3 0.5 1.5 1.3 0.8 0.1];

p = polyfit(x, y, 2);
abs(polyval(p, 3) - 1.5);


clc;
clear;

x = 0 : 3;
y = 2 .^ x;


A = [exp(0 * x); exp(x)]';

a = pinv(A) * y';
r = norm(y' - A * a);


clc;
clear;

n = 30;
x = linspace(0, pi / 2, n);
f = @(x) x .* sin(x);
polyfit(x, f(x), 2);