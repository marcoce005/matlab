clc;
clear;

A=toeplitz([1,2,3,4]);

[m, n] = size(A);

[Q, R] = qr([A; -A]);

R

R_tilde = R(1 : n, :)

det(R_tilde)