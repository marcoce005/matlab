clc;
clear;

n = 14;
A = hilb(n);
m_max = 7;
lambda_old = 0;
z = ones(n, 1);
w = z / norm(z);
for m = 1 : m_max
    z = A * w;
    lambda_new = w' * z;
    w = z / norm(z);
    lambda_old = lambda_new;
end

lambda_exact = max(abs(eig(A)));
abs(lambda_new - lambda_exact) / abs(lambda_exact);


clc;
clear;

f = @(x) exp(-(x.^ 2)) .* sin(5 * x);
% fplot(f, [-1, 1]);
% yline(0);
% saveas(gcf, "graph.png");


clc;
clear;

n = 5;
H = hilb(n);
b = 13 * (1 : 5)';
x = H \ b;
x(2);


clc;
clear;

n = 100;
A = zeros(n);
for i = 1 : n
    for j = 1 : n
        A(i, j) = max(i, j);
    end
end
B = A' * A;
R = chol(B);
R(52, 64);


clc;
clear;

x = linspace(4, 6, 8);
A = vander(x);
rk = 5;

[U, S, V] = svd(A);
A_n = U(:, 1 : rk) * S(1 : rk, 1 : rk) * V(:, 1 : rk)';
norm(A_n, 1);


clc;
clear;

n = 42;
A = 20 * eye(n) + diag(4 * ones(n - 1, 1), 1) + diag(4 * ones(n - 1, 1), -1);
b = linspace(-1, 1, n)';

R = chol(A);
y = R' \ b;
x = R \ y;

norm(x + y, inf);


clc;
clear;

n = 40;
A = hilb(n);
sum(sum(log(A) < -3));