clc;
clear;

x = linspace(0, 2);
y = 3 .* x.^2 .* log(x);
% plot(x, y);
% saveas(gcf, "graph.png");


clc;
clear;

n = 567;
M = magic(n);
A = M + 10 * eye(n);
x_ref = ones(n, 1);
b = A * x_ref;

x = A \ b;
r = b - A * x;
norm(r, inf);


clc;
clear;

v = 1 : 30;
sum(1 ./ sqrt(v));


clc;
clear;

n = 15;
H = hilb(n);
A = H + 0.01 * eye(n);
x_ref = (-1 : -2 : -30)';
b = A * x_ref;

x = A \ b;
N_e = abs(x_ref - x);
norm(N_e, inf);


clc;
clear;

n = 100;
A = ones(n);
for i = 1 : n
    for j = 1 : n
        A(i, j) = sin(1 / min(i, j));
    end
end
cond(A, inf);


clc;
clear;

y = @(x) 4 - sqrt(16 + x^2);
x = 1e-7;

y2 = @(x) -(x^2) / (4 + sqrt(16 + x^2));
abs(y2(x) - y(x)) / abs(y2(x));


clc;
clear;

n = 20;
A = 12 * eye(n) + diag(4 * ones(n - 1, 1), 1) + diag(4 * ones(n - 1, 1), -1);

B = ones(n, 4);
x = B;
for j = 1 : 4
    B(:, j) = linspace(0, j, n);
    x(:, j) = A \ B(:, j);
end
norm(sum(x, 2), 2);