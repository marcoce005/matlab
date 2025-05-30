clc;
clear;

% calcolare:
% soluzione di minima norma
% soluzione più sparsa
% residui
% x(t) = [x_1(t); .....; x_n(t)]


A = [
    3, -2, 1, 2;
    -1, 0, 2, 1;
    0, 5, -6, 1;
    1, 1, -1, 1;
    1, -1, -1, -1;
    8, -1, -5, 2
    ];
b = [1, -3, 7 ,0, -6, 2];

% A è di rango deficitario --> più piccolo rispetto alle incognite

[m, n] = size(A);

r = rank(A);

[U, S, V] = svd(A);
S_tilde = S(1 : r, 1 : r);
c = U' * b';
c_1 = c(1 : r);

y_1 = S_tilde \ c_1;             % uguale a scrivere y_1 = [U(:, 1)' * b / S(1,1); U(:, 2)' * b / S(2,2); U(:, 3)' * b / S(3, 3);]

y_a = [y_1; zeros(n - r, 1)];             % completando con zeri
y_b = [y_1; 1];
y_c = [y_1; -pi];

x_a = V * y_a;
% x_b = V * y_b;
% x_c = V * y_c;

res_a = norm(A * x_a - b)
% res_b = norm(A * x_b - b)
% res_c = norm(A * x_c - b)

norm(x_a)
% norm(x_b)
% norm(x_c)

x_bs = A \ b'

norm(x_bs)

res_xbs = norm(A*x_bs - b')

norm_c2 = norm(U(:, r + 1 : m)' * b')

% Quale parametro restituisce la soluzione più sparsa?

y_bs = V' * x_bs

% ----------------------- se non richiesti i passaggi
x= pinv(A) * b'