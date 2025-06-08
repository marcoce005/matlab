clc;
clear;

f = @(x) 3 * x .* exp(4 * x .^ 2) .* cos((2 / 3) * pi .* x) + 50 .* (1 + sin(7 .* x));

% fplot(f, [-1, 1])
% yline(40);
% saveas(gcf, "graph.png");


clc;
clear;

x = linspace(0, 1);
% plot(x, exp(x .^ 2))
% saveas(gcf, "graph2.png");


clc;
clear;

x = [3, 0, 5, 4, 5, 5, 8];
y = [2, 4, 6, 4, 8, 6, 8];

x == y;


clc;
clear;

x_0 = 0;
x_1 = 10;
N = 10;

linspace(x_0, x_1, N + 1);