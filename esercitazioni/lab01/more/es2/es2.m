clc;
clear;

n = 1 : 40;

x = zeros(size(n));
x(1) = 2;

for i = 2 : length(n)
    x(i) = 2 ^ ((i - 1) / 2) * sqrt(1 - sqrt(1 - (4 ^ (1 - i))* x(i - 1) ^ 2));
end

pi_approx = 1 ./ x;
err_pi = abs(pi_approx - pi) / pi;

loglog(n, err_pi);
% saveas(gcf, "err_with_cancellation.png");

x = zeros(size(n));
x(1) = 2;

for i = 2:length(n)
    eps = 4^(1 - i) * x(i - 1)^2;
    denom = sqrt(1 + sqrt(1 - eps));
    x(i) = sqrt(2) * x(i - 1) / denom;
end

pi_approx = 1 ./ x;
err_pi = abs(pi_approx - pi) / pi;

hold on;
loglog(n, err_pi, "red");
saveas(gcf, "errors.png");