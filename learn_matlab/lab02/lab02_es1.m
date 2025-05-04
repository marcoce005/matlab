A = rand(5);

[L, U] = elleu(A);

% controllo che la funzione sia corretta

norm((L * U) - A) / norm(A, inf);    % < della precisione di macchina => uguali

n = 100;
A = zeros(n);

for i = 1 : n
    for j = 1 : n
        A(i, j) = max(i, j);
    end
end

% Ax = b --> b = A * x   -->    b = A * ones(n, 1);
b = A * ones(n, 1); % b = sum(A, 2)

[L, U] = elleu(A);

% Ax = b  -->  LUx = b
y = L \ b;
x = U \ y;

% risoluzione con LU di MATLAB c'è il pivoting
[L, U, P] = lu(A);

% Ax = b --> PAx = Pb --> LUx = Pb
y = L \ (P * b);        % \ ha priorità su tutte
x_ref = U \ y;

distance = norm(x - x_ref, inf)                % distanza relativa perchè la norma della soluzione esatta è pari a 1

err = norm(x - ones(n, 1), inf)
err_ref = norm(x_ref - ones(n, 1), inf)