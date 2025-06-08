clc;
clear;

f = @(x) (exp(-cos(5 .* x)) .* x) - 1;

fplot(f, [0, 2]);
saveas(gcf, "graph.png");

clc;
clear;

n = 18;
A = diag(6 * ones(n, 1)) + diag(3 * ones(n - 1, 1), 1) + diag(3 * ones(n - 1, 1), -1);

B = zeros(18, 3);
x = B;
tot = 0;
for j = 1 : 3
    B(:, j) = linspace(0, j, 18);

    x(:, j) = A \ B(:, j);
    tot = tot + norm(x(:, j), 2);
end

tot;

clc;
clear;

A = [
    6 * pi, 3, 2, 1;
    3, 7 * pi, 1, 0;
    2, 1, 6, 0;
    1, 0, 0, 4
];

R = chol(A);
R(3, 3);

clc;
clear;

n = 7;
H = hilb(n);
A = H + 0.001 * eye(n);

x_ref = (1 : 7)';
b = A * x_ref;

x = A \ b;

norm(abs(x - x_ref), inf);

clc;
clear;

y = @(x) 7 - sqrt(49 + x^2);
x = 1e-4;

with_canc = y(x);

y2 = @(x) -(x^2) / (7 + sqrt(49 + x^2));
without_canc = y2(x);

abs(without_canc - with_canc) / abs(without_canc);

clc;
clear;

n = 100;
for i = 1 : n
    for j = 1 : n
        A(i, j) = cos(1 / min(i, j));
    end
end

cond(A, 1);

clc;
clear;

n = 432;
M = magic(n);
A = M + 10 * eye(n);

x_ref = ones(n, 1);
b = A * x_ref;

x = A \ b;
r = b - A * x;
norm(r, inf);

clc;
clear;

v = 1 : 50;
sum(v ./ exp(v));