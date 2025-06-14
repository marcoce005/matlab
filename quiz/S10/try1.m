clc;
clear;

x = [0.2 1.14 0.54 0.87 1.25 2.36 0.19 0.54 0.51 0.33];
y = [1.25 2.36 2.58 1.87 2.68 3.41 0.65 0.47 1.36 1.25];

p = polyfit(x, y, 1);


clc;
clear;

v = [44, 43, 67];
T = [0, 8, 18];

p = polyfit(T, v, 1);
polyval(p, 2)


clc;
clear;

 x = [0.34 0.19 0.25 0.61 0.47 0.35 0.83];
 y = [0.58 0.54 0.91 0.28 0.75 1.17 0.38];

 z = exp(x)';
 A = [z.^2, z, ones(size(z))];
 pinv(A) * y';


 clc;
 clear;

n = 15;
M = pascal(n);
C = M + eye(n);
A = C(:, 1 : 10);
x = ones(10, 1);
b = A * x;

[Q, R] = qr(A);
x_qr = R \ (Q' * b);

R = chol(A' * A);
y = R' \ (A' * b);
x_chol = R \ y;

e_qr = norm(abs(x_qr - x) / abs(x), 2);
e_chol = norm(abs(x_chol - x) / abs(x), 2);