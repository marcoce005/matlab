clc;
clear;

A = toeplitz([1,2,3,4,5]);
[m, n] = size(A);

[Q, R] = qr([A; 2 * A]);

R_tilde = R(1 : n, :);

R
det(R_tilde)