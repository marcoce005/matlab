clc;
clear;

n = 8;
A = hilb(n);
m_max = 6;
p = 1.5;

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

lambda_exact = eigs(A, 1, p);
abs(lambda_exact - lambda_new) / abs(lambda_exact);


clc;
clear;

x = linspace(0, 1, 10);
A = vander(x);
rk = 7;


[U, S, V] = svd(A);
A_n = U(:, 1 : rk) * S(1 : rk, 1 : rk) * V(:, 1 : rk)';
norm(A_n, inf);


clc;
clear;

n = 32;
A = 16 * eye(n)  + diag(8 * ones(n - 1, 1), 1) + diag(8 * ones(n - 1, 1), -1);
b = linspace(-5, 1, n)';

R = chol(A);
y = R' \ b;
x = R \ y;
norm(x + y, 1);


clc;
clear;

n = 7;
H = hilb(n);
b = (-3 : 3)';
x = H \ b;
x(1);


clc;
clear;

n = 90;
A = hilb(n);
tot = 0;

for i = 1 : n
    for j = 1 : n
        if A(i, j) < 0.07
            tot = tot + A(i,j);
        end
    end
end
tot;


clc;
clear;

f = @(x) x .* exp(-cos(2 * x));
max(f(linspace(0, 3)));