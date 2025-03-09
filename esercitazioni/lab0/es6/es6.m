%  Utilizzare il comando plot di Matlab per rappresentare graficamente le seguenti funzioni:

x = linspace(-pi, pi, 1000);
y = sin(x);
plot(x, y);             % f (x) = sin(x)    x ∈ [−π, π]
saveas(gcf, "es6_plot1.png");

x = linspace(-1, 1, 1000);
y = exp(x);             % f (x) = e^x       x ∈ [−1, 1]
plot(x, y);
saveas(gcf, "es6_plot2.png");

x = linspace(-5, 5, 1000);
y = exp(-x .^ 2);             % f (x) = e^-(x^2)       x ∈ [−5, 5]
plot(x, y);
saveas(gcf, "es6_plot3.png");

x = linspace(0, 4 * pi, 1000);
x(1) = [];                   % escludo il primo valore
y = sin(x) ./ x;             % f(x) = sin(x) / x         x ∈ (0, 4π]
plot(x, y);
saveas(gcf, "es6_plot4.png");

x = linspace(0, 2, 1000);
x(1) = [];                  % escludo il primo valore
y = x .* sin(1 ./ x);             % f(x) = x * sin(1 / x)         x ∈ (0, 4]
plot(x, y);
saveas(gcf, "es6_plot5.png");