% Indicizzazione 

% usiamo la matrice magic --> somma delle righe e uguale e la somma delle colonne e uguale

magic_mat = magic(4);       % magic(value)      -->     matrice quadrata

first_value = magic_mat(1, 1);           % matrice(righe, colonne)       righe e colonne partono da 1 !!!
magic_mat(4, 4) = 69;                % metto 69 nell'ultimo numero in basso a destra

mat_multi_index = magic_mat([2 1], [2 3]);       % sotto matrice della magic
                                                % 2 righe e 2 colonne --> 4x4
% la matrice risultate sara'
% mat(2, 2) mat(2, 3)
% mat(1, 2) mat(1, 3)

multi_index_2 = magic_mat([2 1], [2 3 4]);
% la matrice risultate sara'
% mat(2, 2) mat(2, 3) mat(2, 4)
% mat(1, 2) mat(1, 3) mat(1, 4)

flip_colon = magic_mat(1 : 4, 4 : -1 : 1);           % arg vettore da 1 a 4 e vettore da 4 a 1
flip_row = magic_mat(4 : -1:  1, 1 : 4);