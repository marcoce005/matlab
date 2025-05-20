clc;
clear;

A=toeplitz([1,2,3,4,5]);

[Q R] = qr([A; 2 * A]);

[m, n] = size([A; 2 * A]);

R_tilde = R(1 : n, :)

det(R_tilde) ~= 0