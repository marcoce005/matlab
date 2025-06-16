clc;
clear;


x = 0 : 2;
y = 2 .^ x;
polyfit(x, y, 1);


clc;
clear;

x = [-2 -1.3 -1 -0.7 -0.4 -0.1];
y = [0.3 0.5 1.5 1.3 0.8 0.1];
p = polyfit(x, y, 2);
abs(polyval(p, 3) - 1.5);


clc;
clear;

x = linspace(0, 5, 22);
f = @(x) x.^2 .* log(1 + x);
p = polyfit(x, f(x), 4);
polyval(p, 2);


clc;
clear;

n = 30;
x = linspace(0, pi / 2, n);
f = @(x) x .* sin(x);
polyfit(x, f(x), 2)