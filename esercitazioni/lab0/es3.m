A = [
    1 2 3 4 5 6;
    5 6 7 8 9 10;
    9 10 11 12 13 14;
    15 16 17 18 19 20
];

%{

oppure 

A = [
    1 : 6;
    5 : 10;
    9 : 14;
    15 : 20
];

%}

B = A(:, end : -1 : 1);       % costruire la matrice B formata dalle colonne di A disposte in ordine inverso (ossia, la prima colonna di B è la sesta di A, la seconda di B è la quinta di A...);

even_row = A(2 : 2 : end, :);       % costruire la matrice formata dalle sole colonne pari di A

odd_row = A(1 : 2 : end, :);        % costruire la matrice formata dalle sole righe dispari di A

C = A([1 4 3], [5 2]);              % costruire la matrice formata dalle righe 1, 4, 3 e dalle colonne 5, 2 di A

diagonal = diag(A)';                % costruire il vettore formato dagli elementi diagonali ak,k , k = 1, . . . , 4 di A.
% oppure
diagonal2 = A(1 : 5 : 4 * 4);           % srotola per colonne