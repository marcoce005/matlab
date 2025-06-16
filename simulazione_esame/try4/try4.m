clc;
clear;

n = 7;
H = hilb(n);
A = H + 0.001 * eye(n);
x_ref = (1 : 7)';
b = A * x_ref;

x = A \ b;
norm(abs(x - x_ref), inf);


clc;
clear;

n = 100;
for i = 1 : n
    for j = 1 : n
        A(i, j) = max(i, j);
    end
end
B = A' * A;

R = chol(B);
R(52, 64);


clc;
clear;

n = 100;
for i = 1 : n
    for j = 1 : n
        A(i, j) = max(i, j);
    end
end
B = A' * A;

R = chol(B);
R(52, 64);


clc;
clear;

n = 14;
A = hilb(n);
m_max = 7;
lambda_old = 0;
z = ones(n, 1);
w = z / norm(z);
for m = 1 : m_max
    z = A * w;
    lambda_new = w' * z;
    w = z / norm(z);
    lambda_old = lambda_new;
end

lambda_exact = max(abs(eig(A)));
abs(lambda_exact - lambda_new) / abs(lambda_exact);


clc;
clear;

n = 50;
A = hilb(n);
B = A(1 : 2 : n, 3 : 3 : n);
sum(sum(B));


clc;
clear;

n = 7;
A = hilb(n);
m_max = 4;
p = 0.3;
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


clc;
clear;

f = @(x) exp(-cos(5 * x)) .* x - 1;
fplot(f, [0, 2]);
yline(0);
saveas(gcf, "graph.png");