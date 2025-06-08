clc;
clear;

n = 7;
H = hilb(n);
b = (-3 : 1 : 3)';
x = H \ b;
x(1);

clc;
clear;

n = 18;
A = diag(6 * ones(n, 1)) + diag(3 * ones(n - 1, 1), 1) + diag(3 * ones(n - 1, 1), -1);
b = linspace(5, 8, n)';

auto = eig(A);

R = chol(A);

y = R' \ b;
x = R \ y;

norm(x + y, 1);

%{
clc;
clear;

f = @(x) x .* exp(-cos(5 .* x)) - 1

max(f(linspace(0, 1, 100)));

clc;
clear;

n = 10;
A = hilb(n);

lambda_exact = eigs(A, 1, 2);

% potenze inverse
p = 2;
z = ones(n, 1);
w = abs(z) / norm(z, 2);
lambda_old = 0;
[L, U, P] = lu(A - p * eye(n));
for i = 1 : 4
    z = U \ (L \ (P * w));
    lambda_new = p + (1 / (w' * z));
    w = abs(z) / norm(z, 2);
    lambda_old = lambda_new;
end

abs(lambda_exact - lambda_new) / abs(lambda_exact);


clc;
clear;

n = 80;
A = hilb(n);
B = A([2 : 2: n], [7 : 7 : n]);
sum(sum(B));


clc;
clear;

n = 8;
x = linspace(4, 6, n)';
A = vander(x);

[U, S, V] = svd(A);

r = 5;
A_n = U(:, 1 : r) * S(1 : r, 1 : r) * V(:, 1 : r)';
norm(A_n, 1);

%}