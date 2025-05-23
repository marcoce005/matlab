clc;
clear;

A = toeplitz([1,0,1,0,1]);
[m, n] = size(A);

[Q, R] = qr([A; 2 * A]);


R_tilde = R(1 : n, :);

R

det(R_tilde)           % OCCHIO è dell'ordine di 10^-62 quinid per il calcolatore è zero