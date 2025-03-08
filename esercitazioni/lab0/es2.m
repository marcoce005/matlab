A = [1 2 3 4; 5 6 7 8; 9 10 11 12];

size(A);                         % 3x4

A(1 : 2, 4);                % restituisce gli elementi alle posizioni: (1, 4)   (2, 4) [va da 1 a 2 per le righe e 4 per le colonne]

A(:, 3);                    % restituisce tutti i valori della terza colonna [: gira in tutti i valori e gli associa la colonna 3]

A(1 : 2, :);                 % gira tra le righe 1 e 2 e prende tutti gli elementi

A(:, [2 4]);                % prende le colonne 2 e 4

A([2 3 3], :);              % prende tutte le colonne abbinate con le righe 2 3 3

A(3, 2) = A(1, 1);           % alla riga 3 colonna 2 mette il valore della matrice in posizione (1, 1)

A(1 : 2, 4) = zeros(2, 1);     % azzera gli elementi della riga 1 e 2 alla quarta colonna

A(2, :) = A(2, :) - A(2, 1) / A(1, 1) * A(1, :);         % R2 -> R2 - 5 * R1