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

n = 100;
for i = 1 : n
    for j = 1 : n
        A(i, j) = sin(1 / min(i, j));
    end
end
cond(A, inf);


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
    lambda_old = lambda_new;
    w = z / norm(z);
end

lambda_exact = max(abs(eig(A)));
abs(lambda_exact - lambda_new) / abs(lambda_exact);


clc;
clear;

n = 9;
x = linspace(8, 10, n);
A = vander(x);
rk = 6;

[U, S, V] = svd(A);
A_n = U(:, 1 : rk) * S(1 : rk, 1 : rk) * V(:, 1 : rk)';
norm(A_n, 1);


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

n = 7;
H = hilb(n);
b = (-3 : 3)';

x = H \ b;
x(1);


clc;
clear;

n = 100;
A = hilb(n);
B = A(1 : 2 : n, 2 : 2 : n);
sum(sum(B));