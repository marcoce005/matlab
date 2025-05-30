clc;
clear;

n = 15;
H = hilb(n);

b = sum(H, 2);          % soluzione di tutti elemtenti unitari

cond(H);           % pessimo condizionamento

tol = 1e-12;

r = rank(H, tol);           % numero valori singolari maggiori di tol


% risolvo come se fosse un sistema sovradeterminato di rango deficitario --> nel senso del minimi quadrati con la SVD

[U, S, V] = svd(H);

S_tilde = S(1 : r, 1: r);

y1 = S_tilde \ (U(:, 1 : r)' * b);

y = [y1; zeros(n - r, 1)];

x = V * y;

x_bs = H \ b;

err_x = norm(x - ones(n, 1), inf)

err_xbs = norm(x_bs - ones(n, 1), inf)

% -----------

x_pinv = pinv(H, tol) * b;