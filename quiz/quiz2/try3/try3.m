clc;
clear;

n = 70;
A = hilb(n);
tot = 0;
for i = 1 : n
    for j = 1 : n
        if A(i, j) < 0.01
            tot = tot + A(i, j);
        end
    end
end
tot;


clc;
clear

f = @(x) exp(-x) .* cos(x.^2);
max(f(linspace(-3, -2, 1000)));


clc;
clear;

n = 10;
H = hilb(n);
b = (2 : 2 : 20)';
x = H \ b;
x(3);


clc;
clear;

n = 6;
x = linspace(1, 2, n);
A = vander(x);

[U, S, V] = svd(A);

rk = 4;
A_n = U(:, 1 : rk) * S(1 : rk, 1 : rk) * V(:, 1 : rk)';
norm(A_n, inf);


clc;
clear;

n = 7;
A = hilb(n);
p = 1;
m_max = 18;

lambda_old = 0;
z = ones(n, 1);
w = z / norm(z);
[L, U, P] = lu(A - p * eye(n));
for m = 1 : m_max
    z = U \ (L \ (P * w));
    lambda_new = p + (1 / (w' * z));
    lambda_old = lambda_new;
    w = z / norm(z);
end

lambda_ref = eigs(A, 1, p);
abs(lambda_ref - lambda_new) / abs(lambda_ref);


clc;
clear;

n = 44;
A = 12 * eye(n) + diag(4 * ones(n - 1, 1), 1) + diag(4 * ones(n - 1, 1), -1);
b = linspace(10, 12, n)';

R = chol(A);
y = R' \ b;
x = R \ y;

norm(x + y, inf);