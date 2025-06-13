clc;
clear;

A = magic(3);
[Q, R] = qr(A);
b = (1 : 3)';
x = R \ b;


clc;
clear;

y = @(x) sqrt((exp(x) - 1) / x);
x = 1e-11;

y2 = @(x) sqrt(x / x);
abs(y2(x) - y(x));


clc;
clear;

n = 567;
M = magic(n);
A = M + 10 * eye(n);
x_ref = ones(n, 1);
b = A * x_ref;

x = A \ b;
r = b - A * x;
norm(r, inf);


clc;
clear;

f = @(x) exp(x) .* cos(10 * x);
% yline(0);
% fplot(f, [0, 1]);
% saveas(gcf, "graph.png");


clc;
clear;

n = 15;
v = linspace(1, 3, n);
w = linspace(0, 5, n);
v * w';


clc;
clear;

n = 7;
A = hilb(n);
p = 1;
m_max = 18;

lambda_old = 0;
z = ones(n, 1);
w = z / norm(z);
[L, U, P] = lu(A - p * eye(n));

for m = 1 : m_max
    z = U \ (L \ (P * w));
    lambda_new = p + (1 / (w' * z));
    w = z / norm(z);
    lambda_old = lambda_new;
end

lambda_exact = eigs(A, 1, p);
abs(lambda_exact - lambda_new) / abs(lambda_exact);