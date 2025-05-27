clc;
clear;

A = toeplitz([1,0,1,0]);

[m, n] = size(A);

[Q, R] = qr([A; -7 * A]);

R_tilde = R(1 : n, :);

R

det(R_tilde) > eps