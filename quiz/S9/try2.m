clc;
clear;

n = 18;
A = 6 * eye(n) + diag(3 * ones(n - 1, 1), 1) + diag(3 * ones(n - 1, 1), -1);
b = linspace(5, 8, n)';

R = chol(A);
y = R' \ b;
x = R \ y;
norm(x + y, 1);


clc;
clear;

A = hilb(4);
[L, U, P] = lu(A);
P;


clc;
clear;

A = [
    4, 6;
    3/5, 1
];
cond(A, inf)