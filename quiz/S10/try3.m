clc;
clear;

x = [0.2 1.14 0.54 0.87 1.25 2.36 0.19 0.54 0.51 0.33];
y = [1.25 2.36 2.58 1.87 2.68 3.41 0.65 0.47 1.36 1.25];

polyfit(x, y, 1);


clc;
clear;

T = [0, 8, 18];
v = [44, 43, 67];

p = polyfit(T, v, 1);
polyval(p, 2);


clc;
clear;

x = linspace(0, 5, 22);
f = @(x) x.^2 .* log(1 + x);
p = polyfit(x, f(x), 4);
polyval(p, 2);


clc;
clear;

M = magic(20);
B = M + eye(20);
A = B(:, 1 : 10);
x = ones(10, 1);
b = A * x;

[Q, R] = qr(A);
y = Q' * b;
x_qr = R \ y;
x_bs = A \ b;
norm(abs(x - x_qr) / x, 2);
norm(abs(x - x_bs) / x, 2);