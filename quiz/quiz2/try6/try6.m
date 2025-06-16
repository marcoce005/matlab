clc;
clear;

f  = @(x) x .* exp(-cos(5 * x)) - 1;
max(f(linspace(0, 1, 1000)));


clc;
clear;

n = 44;
A = 12 * eye(n) + diag(4 * ones(n - 1, 1), 1) + diag(4 * ones(n - 1, 1), -1);
b = linspace(10, 12, n)';

R = chol(A);
y = R' \ b;
x = R \ y;
norm(x + y, inf);


clc;
clear;

n = 5;
H = hilb(n);
b = (13 * (1 : 5))';
x = H \ b;
x(2);


clc;
clear;

n = 50;
A = hilb(n);
sum(sum(cos(A) > 0.999));


clc;
clear;

x = linspace(0, 1, 6);
A = vander(x);
rk = 4;

[U, S, V] = svd(A);
A_n = U(:, 1 : rk) * S(1 : rk, 1 : rk) * V(:, 1 : rk)';
norm(A_n, inf);


clc;
clear;

n = 10;
A = hilb(n);
m_max = 4;
p = 2;
z = ones(n, 1);
lambda_old = 0;
w = z / norm(z);
[L, U, P] = lu(A - p * eye(n));
for m = 1 : m_max
    z = U \ (L \ (P * w));
    lambda_new = p + (1 / (w' * z));
    w = z / norm(z);
    lambda_old = lambda_new;
end
lambda_exact = eigs(A, 1, p);
abs(lambda_exact - lambda_new) / abs(lambda_exact);