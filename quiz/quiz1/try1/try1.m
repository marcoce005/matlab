clc;
clear;

f = @(x) sin(3 .* cos(x)) .* log(x);

min(f(linspace(1, 5, 100)));



clc;
clear;

n = 100;
A = zeros(100);

for i = 1 : n
    for j = 1 : n
        A(i, j) = sin(max(i, j));
    end
end

cond(A, 1);


clc;
clear;

x = 10^-5;
y = 3 - sqrt(9 + x^2);
y_ok =  - (x^2) / (3 + sqrt(9 + x^2));

err = norm(y - y_ok) / norm(y_ok);

clc;
clear;

x = linspace(1, 100, 1000);
y = x;
% plot(x, y, 'r-');         % rossa spezzata continua  con -- è tratteggiata
% saveas(gcf, "plot.png");


clc;
clear;

M = magic(357);
A = M + 10*eye(size(M));
b = A * ones(length(M), 1);

x = A \ b;
r = b - A*x;
N_r = norm(r, inf)


clc;
clear;

n = 42;

A = diag(20 * ones(n, 1)) + diag(4 * ones(n - 1, 1), 1) + diag(ones(n - 1, 1)* 4, -1);


B = zeros(n, 3);
x = zeros(n, 1);
% x_tot = zeros(n, 1);

for j = 1 : 3;
    B(:, j) = linspace(1, j, n);
    x(:, j) = A \ B(:, j);
    % x_tot = x_tot + x(:, j);
end

norm(sum(x, 1), 1);              % sum(vet, 1) somma ogni colonna, sum(vet, 2) somma ogni riga



clc;
clear;

H = hilb(10);
A = H + 0.001 * eye(size(H));
x = -2 : -2 : -20;
b = A * x';

x_cal = A \ b;

err_ass = x_cal - x';
N_e = norm(err_ass, inf)


clc;
clear;

n = 100;
A = diag(4 * ones(n, 1)) + diag(-1 * ones(n - 1, 1), 1) + diag(-1 * ones(n - 1, 1), -1) + diag(-2 * ones(n - 10, 1), 10) + diag(-2 * ones(n - 10, 1), -10);

cond(A, inf);