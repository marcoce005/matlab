A = magic(3);

% Calcolare il determinante di A.

% Trucco [metodo Sarrus]
B = [A A(:, 1) A(:, 2)];
C = B(:, 5 : -1 : 1);

sum_diag_primary = prod(diag(B)) + prod(diag(B, 1)) + prod(diag(B, 2));
sum_diag_secondary = prod(diag(C)) + prod(diag(C, 1)) + prod(diag(C, 2));

determinante = sum_diag_primary - sum_diag_secondary;

% Build-in function
det(A);

% Metodo delle sotto matrici [con funzione ricorsiva] (sviluppo di Laplace)

function detA = my_det(A)
    [n, m] = size(A);       % Ottieni la dimensione della matrice
    if n ~= m               % n diverso da m
        error('La matrice deve essere quadrata.');
    end
    
    if n == 1
        detA = A(1, 1);            % Caso base: determinante di una matrice 1x1
    elseif n == 2
        detA = A(1, 1) * A(2, 2) - A(1, 2) * A(2, 1);       % Caso base per 2x2
    else
        detA = 0;
        for j = 1 : n
            subMatrix = A(2 : end, [1 : j - 1, j + 1 : end]);             % Rimuove prima riga e j-esima colonna
            cofactor = (-1)^(1 + j) * A(1, j) * my_det(subMatrix);         % Calcola il cofattore
            detA = detA + cofactor;                     % Somma il contributo della colonna j
        end
    end
end

my_det(A);

% Calcolare il prodotto scalare tra la prima riga di A e la terza riga di A.

sum(A(1, :) .* A(3, :));            % DIY 
dot(A(1, :), A(3, :));              % Built-in function

% Calcolare il prodotto vettoriale tra le prime due colonne di A.

function prod_vet = my_cross(a, b)              % funziona solo per vettori di lunghezza 3
    if size(a) ~= size(b)
        error("Impossibile fare il prodotto vettoriale controllare i vettori.")
    end

    [r, c] = size(a);

    if r ~= 1 && c ~= 1
        error("Argomento sbagliato, passare 2 vettori.")
    end

    if c == 1
        a = a';
        b = b';
    end

    len = max(size(a));
    prod_vet = zeros(len, 1);
    for i = 1 : len
        first_row = circshift([1 zeros(1, len - 1)], i - 1);
        prod_vet(i) = det([first_row; a; b]);
    end
end

my_cross(A(:, 1), A(:, 2));

b = det([1 0 0; A(:, 1)'; A(:, 2)']);               % metodo manuale
b = [b; det([0 1 0; A(:, 1)'; A(:, 2)'])];
b = [b; det([0 0 1; A(:, 1)'; A(:, 2)'])];

cross(A(:, 1), A(:, 2));             % Built-in function, funziona solo per vettori di lunghezza 3