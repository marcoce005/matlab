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
abs(lambda_exact - lambda_new) / abs(lambda_exact);


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

x = linspace(8, 10, 9);
A = vander(x);
rk = 6;

[U, S, V] = svd(A);
A_n = U(:, 1 : rk) * S(1 : rk, 1 : rk) * V(:, 1 : rk)';
norm(A_n, 1);


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
    w = z / norm(z);
    lambda_old = lambda_new;
end

lambda_exact = eigs(A, 1, p);
abs(lambda_exact - lambda_new) / abs(lambda_exact);


clc;
clear;

n = 100;
A = zeros(n);
for i = 1 : n
    for j = 1 : n
        A(i, j) = cos(max(i, j));
    end
end
cond(A, 1)