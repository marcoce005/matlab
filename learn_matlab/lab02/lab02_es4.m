clear;
clc;

n = 100;

B = 10 * eye(n) + diag(-5 * ones(n - 1, 1), -1) + diag(5 * ones(n - 1, 1), 1);
% B = hilb(15);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% parte in più

% calcolare il rango di b sensa usare rank()
% calcolando i valori singolari maggiori di una tolleranza

tol = 1e-16;

% [U, S, V] = svd(B);
% s = diag(S);

% oppure

s = svd(B);
rango = sum(s > tol)                % controllo chi è > tol [restituisce 0/1] sommo e ottengo il rango

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


A = B' * B;

R = chol(A);        % A = R'*R      con R triangolare superiore

% calcoliamo l'inversa di A


R_inv = R^-1;            % oppure inv(R)

A_inv = R_inv * R_inv';

% Ax = b --> R'Rx = b --> y = R' \ b, x = R \ y

b = sum(A, 2);

y = R' \ b;
x = R \ y;

A_inv_ref = inv(A);
x_ref = A \ b;


dist_A_inv = norm(A_inv - A_inv_ref) / norm(A_inv_ref)

dist_sol = norm(x - x_ref) / norm(x_ref)            % 0 perchè la 2 quantità di macchina sono le stesse 

err_sol = norm(x - ones(n, 1), inf)

% calcolare il det(A)

det_A = prod(diag(R)) ^ 2

det(A)

% d = norm(det_A - det(A)) / norm(det(A))