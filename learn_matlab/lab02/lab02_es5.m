clc;
clear;

n = 100;
A = rand(n);

[Q, R] = qr(A);

b = sum(A, 2);

% det di una matrice ortogonale è 1 o -1

% le matrici ortogonali non alterano la norma euclidea di un vettore [norma 2]
% norm(v) == norm(Q' *v)

% Ax = b --> QRx = b --> Q' * QRx = Q' * b --> Rx = Q' * b

x = R \ (Q' * b);

x_ref = A \ b;

dist_sol = norm(x - x_ref, inf)

err_sol = norm(x - ones(n, 1), inf)

% tempo QR vs. tempo PA=LU

for n = [1000 2000 5000]
    A = rand(n);
    b = sum(A, 2);
    
    tic
    x = A \ b;
    t_back_slash = toc;

    tic
    [Q, R] = qr(A);
    x = R \ (Q' * b);
    t_QR = toc;

    r = t_QR / t_back_slash             % mi aspetto che per N grande r sia circa 3 [n^3 / (n^3 / 3)]
end