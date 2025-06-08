clc;
clear;

for n = 1 : 14
    h = 10 ^ -n;
    L = (1 - cos(h)) / h^2;
    fprintf("%d --> %d\t%d \n", n, L, L - 0.5);
end


clc;
clear;

y = @(x) sqrt((exp(x) - 1) / x);
x = 1e-8;

abs(1 - y(x));


clc;
clear;

% Numero massimo di iterazioni
N = 40;
x = zeros(N, 1);
err = zeros(N, 1);
x(1) = 2;

% Calcolo usando la forma stabile della ricorrenza
for n = 2:N
    x(n) =  (2^(n - 1/2) * ((4^(1 - n)) * x(n - 1)^2)) / sqrt(1 + sqrt(1 - (4^(1 - n)) * x(n - 1)^2));
    err(n) = abs(pi - x(n)) / pi;
end

min(err(2:N))