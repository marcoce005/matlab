clc;                % clean screen and data
clear;

n = 100;

A = rand(n);

b = A * ones(n, 1);             % oppure b=sum(A, 2);           -->soluzione con tutti elementi == 1


x = zeros(n, 30);
B = zeros(n, 30);
B(:, 1) = b;

tic
for p = 1 : 30
    x(:, p) = A \ B(:, p);          %% ogni volta fa la risoluzione complata : costo 30 * (n^3 / 3) --> ~= 10 * n^3 --> ~= 10^7
    B(:, p + 1) = x(:, p);
end
t_backslash = toc;


% usiamo la PA = LU una volta per tutte e non la ricalcoliamo ogni volta con il '\'

x = zeros(n, 30);
B = zeros(n, 30);
B(:, 1) = b;

% Ax = b --> PAx = Pb --> y = L / (Pb), x = U \ y;

% costo n^3 / 3 + 30 * n^2 --> 10^6 / 3 + 3 * 10^5 --> ~= 10^6

tic
[L, U, P] = lu(A);
for p = 1 : 30
    y = L \ P * B(:, p);
    x(:, p) = U \ y;  
    B(:, p + 1) = x(:, p);
end
t_PALU = toc;

r = t_backslash / t_PALU