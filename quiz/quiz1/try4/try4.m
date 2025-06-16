clc;
clear;

n = 12;
H = hilb(n);
A = H + 0.001 * eye(n);
x_ref = (24 : -2 : 2)';
b = A * x_ref;

x = A \ b;
norm(abs(x_ref - x), inf);


clc;
clear;

v = linspace(-1, 0, 22);
w = linspace(1, 2, 22);
v * w';


clc;
clear;

y = @(x) 5 - sqrt(25 + x^2);
y2 = @(x) -x^2 / (5 + sqrt(25 + x^2));
x = 1e-6;
abs(y2(x) - y(x)) / abs(y2(x));


clc;
clear;

n = 100;
A = zeros(n);
for i = 1 : n
    for j = 1 : n
        A(i, j) = sin(min(i, j));
    end
end
cond(A, inf);


clc;
clear;

n = 765;
M = magic(n);
A = M + 10 * eye(n);
x_ref = ones(n, 1);
b = A * x_ref;

x = A \ b;
r = b - A * x;
norm(r, inf);


clc;
clear;

n = 12;
A = 16 * eye(n) + diag(2 * ones(n - 1, 1), 1) + diag(2 * ones(n - 1, 1), -1);
B = zeros(n, 5);
x = B;
tot = 0;
for j = 1 : 5
    B(:, j) = linspace(1, j, n)';
    x(:, j) = A \ B(:, j);
    tot = tot + norm(x(:, j), 1);
end
tot;