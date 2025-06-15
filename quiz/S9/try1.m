clc;
clear;

n = 4;
A = hilb(n);
[L, U, P] = lu(A);
P;


clc;
clear;

A = [
    2, 0, 1, 0;
    1, 1, 0, 1;
    0, -2, 1, 1;
    2, 1, 0, 1
];
b = [3, 3, 0, 4]';

% eliminazioni gaussiane

n = length(b);
for k = 1 : n -1
    for i = k + 1 : n
        A(i, k) = A(i, k) / A(k, k);
        A(i, k + 1 : n) = A(i, k + 1 : n) - A(i, k) * A(i, k + 1 : n);
        b(i) = b(i)  - A(i, k) * b(k);
    end
    break
end

A
b

%{
clc;
clear;

n = 18;
A = 6 * eye(n) + diag(3 * ones(n - 1, 1), 1) + diag(3 * ones(n - 1, 1), -1);
B = ones(n, 3);
x = B;
tot = 0;
for j = 1 : 3
    B(:, j) = linspace(0, j, n)';
    x(:, j) = A \ B(:, j);
    tot = tot + norm(x(:, j), 2);
end
tot;


clc;
clear;

A = [
    6 * pi, 3, 2, 1;
    3, 7 * pi, 1, 0;
    2, 1, 6, 0;
    1, 0, 0, 4
];
R = chol(A);
R(3, 3);


clc;
clear;

A = [
    6 * pi, 3, 7;
    6, 9, -1;
    -3, -2, 7
];
b = [log(2); 6; -2 * pi];

x = A \ b;
x(2);


clc;
clear;

n = 100;
A = 4 * eye(n) + diag(-ones(n - 1, 1), 1) + diag(-ones(n - 1, 1), -1) + diag(-2 * ones(n - 10, 1), 10) + diag(-2 * ones(n - 10, 1), -10);
cond(A, inf);
%}