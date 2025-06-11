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

n = 42;
A = 20 * eye(n) + diag(4 * ones(n - 1, 1), 1) + diag(4 * ones(n - 1, 1), -1);
b = linspace(-1, 1, n)';

R = chol(A);
y = R' \ b;
x = R \ y;
norm(x + y, inf);


clc;
clear;

n = 11;
H = hilb(n);
b = (1 : 2 : 21)';
x = H \ b;
x(4);


clc;
clear;

n = 6;
A = hilb(n);
m_max = 4;
p = 0.2;

lambda_old = 0;
z = ones(n, 1);
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


clc;
clear;

n = 40;
A = hilb(n);
sum(sum(log(A) < -3));


clc;
clear;

f = @(x) -exp(-x) .* x.^3;
min(f(linspace(1, 5)));