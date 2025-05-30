clc;
clear;

n = 20;
A = diag(12 * ones(n, 1)) + diag(4 * ones(n - 1, 1), 1) + diag(4 * ones(n - 1, 1), -1);
b = linspace(0, 1, n)';

R = chol(A);

y = R' \ b;
x = R \ y;

norm(x + y, inf);


clc;
clear;

n = 50;
A = hilb(n);
B = A(1: 2 : n, 3 : 3 : n);

sum(sum(B))


clc;
clear;

x = linspace(8 ,10, 9);
A = vander(x);
                                    % riduzione rango con SVD
[U, S, V] = svd(A);

A_n = U(:, 1 : 6) * S(1 : 6, 1 : 6) * V(:, 1 : 6)';
norm(A_n, 1);


clc;
clear;

n = 5;
H = hilb(n);
b = (13 * (1 : 5))';

x = H \ b;
x(2);


clc;
clear

n = 7;
p = 0.3;
A = hilb(n);
I = eye(n);

x = ones(n,1);
x = x / norm(x);

for k = 1:4
    y = (A - p*I) \ x;  % Risolvo sistema lineare
    x = y / norm(y);    % Normalizzo vettore
end

lambda_approx = x' * A * x;  % Rayleigh quotient per l'autovalore approssimato

% Calcolo valore esatto con eigs, autovalore più vicino a p
[vec_exact, val_exact] = eigs(A, 1, p);
lambda_exact = val_exact(1,1);

rel_error = abs(lambda_exact - lambda_approx) / abs(lambda_exact);

fprintf('Errore relativo: %.4e\n', rel_error);


clc;
clear;

f = @(x) exp(-(x .^ 2)) .* sin(x);
x = linspace(0, 1, 100);
max(f(x));
