clc;
clear;

x = [3, 6, 1, 9, 9, 8];
y = [8, 4, 5, 2, 1, 5];
(x >= y) | (x > y);


clc;
clear;

f = @(x) sqrt(x + 1);
f2 = @(x) x.^2 - x + 1;
% fplot(f, [-10, 10]);
% hold on;
% fplot(f2, [-5, 5]);
% saveas(gcf, "graph.png");


clc;
clear;

x = [7, 9, 3, 0, 0, 0];
y =[ 7, 5, 8, 7, 3, 1];

x & (~y);


clc;
clear;

f = @(x) sin(1 ./ x);
x = linspace(0.01, 1, 1000);
y = f(x);
% semilogx(y);
% saveas(gcf, "graph2.png");


clc;
clear;

v = linspace(-1, 1, 20);
w = linspace(1, 2, 20);
v * w';


clc;
clear;

x = log(1 : 100) + sqrt(1 : 100);
y = (1 : 100) ./ (6 * pi);
x * y';