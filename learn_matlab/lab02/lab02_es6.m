M = [
    1 2 3 4;
    -1 0 4 1;
    3 5 1 0;
    2 -1 0 1;
    1 1 -1 1;
    2 -1 0 3
];
b = (1 : 6)';
% dobbiamo valuta il rango visto che è sovradeterminato
rank(M);             % M ha rango massimo

[m, n] = size(M);
[Q, R] = qr(M);

R_tilde = R(1 : n, 1: n);

c = Q' * b;

c1 = c(1: n);
c2 = c(n + 1 : m);

x = R_tilde \ c1

x_ref = M \ b;          % \ risolve anche i sistemi sovradeterminati con QR

distance = norm(x - x_ref, inf) / norm(x_ref, inf)      % la distanza relativa è dell'ordine della precisione di macchina => equivalenti

x_n = (M' * M) \ (M' * b);      % sistema delle equazioni normali --> non si usa per problemi grandi per via del condizionamento
distance_n = norm(x_n - x_ref, inf) / norm(x_ref, inf)

res = norm((M * x) - b)             % oppure calcolando la norma di c2  --> occhio che però c2 e il res sono diversi hanno solo la stessa norma 2
norm(c2)