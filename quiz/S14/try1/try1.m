clc;
clear;

n = 12;

for i = 1 : n
    for j = 1 : n
        if i == j
            A(i, j) = 2 * i;
        elseif i < j
            A(i, j) = -2 / j;
        else
            A(i, j) = 2 / j;
        end
    end
end

max(abs(eig(A)));


clc;
clear;

n = 12;
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
abs(lambda_exact - lambda_new) / abs(lambda_exact);


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

A = pascal(8);
rk = 5;

[U, S, V] = svd(A);
A_n = U(:, 1 : rk) * S(1 : rk, 1 : rk) * V(:, 1 : rk)';
norm(A - A_n, 2);


clc;
clear;

n = 16;
A = 5 * eye(n) + diag(7 * ones(n - 1, 1), 1) + diag(-7 * ones(n - 1, 1), -1);
b = linspace(0, 1, n)';

[U, S, V] = svd(A);
y = (U * S) \ b;
x = V * y;
norm(x, 2) + norm(y, 2)