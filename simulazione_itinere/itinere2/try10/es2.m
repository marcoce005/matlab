clc;
clear;

A = [5, 1, 2; 1, 6, 0; 2, 0, 7];
B = [-2, -1, 2; -1, -1, -3; 2, -3, 2];

C = A + B;
D = A * B;

a = sum(sum(A == A')) == 9
b = sum(sum(B == A')) == 9
c = sum(sum(C == C')) == 9
d = sum(sum(D == D')) == 9

R_a = chol(A);
R_c = chol(C);

prod(diag(R_a)) > 5
prod(diag(R_c)) > 5