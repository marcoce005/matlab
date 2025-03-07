% il ';' alla fine dell'espressione sopprime l'output a command window

a = 1;

c = a + 3;

m = [];     % matrice vuota

s_a = size(a);
s_m = size(m);

m1 = [2 3 -1; 0 9 7; 2 3 1];        % ; per cambiare riga
s_m1 = size(m1);

% mat_error = [2 3 -1; 0 9; 2 3 1]        % matrice sbagliata

vet_col = [1; -1; 0];           % vettore colonna
vet_riga = [1 2 3 4];           % vettore riga

mat = [m1 vet_col];     % concatena una matrice e una colonna
size_mat = size(mat);

mat = [vet_riga; mat];      % aggiungo la riga

% ' si fa la trasposizione

vet_riga_trasposto = vet_riga';

% concatena il vettore trasposto ad una matrice:
b = [1 2 3; 4 5 6; 7 8 9; 0 0 0];
b = [b vet_riga_trasposto];

mat_ones = ones(3, 2);          % matrice con 3 righe e 2 colonne di 1

mat_zeros = zeros(2, 4);         % matrice 2x4 di 0

mat_identity = eye(4, 4);        % matrice identita' 4x4 (può essere anche non quadrata)
mat_identity_not_square = eye(2, 4);

% se a ones(), zeros(), eye()   passi un solo paramentro diventa quadrata di defualt
mat_squadre = zeros(3);

vet_custom = 69 * ones(1, 4);           % vettore di 4 elementi tutti 69

vet_like_for = (0 : 0.1 : 1)';          % (start : step : end)
vet_decrescente = (10 : -1 : 0);
vet_crescente = (0 : 10);                 % il passo == 1 può essere omesso

vet_equidistante = linspace(0, 1, 5);   % il passo è calcolato automaticamente
                                        % linspace(start, end, elements)

vet_log = logspace(-1, 3, 5);            % elementi equidistanti in scala logartmica in base 10
                                        % a partire da 10^-1 a 10^3 contente 5 elementi

mat_concat = [zeros(2, 3); ones(1, 3)];         % matrice di 2x3 di zero + vettore di 1x3 di 1


% clc            pulisce lo schermo ma non la memoria
% clear          pulisce la memoria ma non lo schermo
% eps            contiene l'epsilon di macchina --> eps / 2 e' la precisione di macchina
% realmax        massimo valore, se gli aggiungi anche pochissimo --> inf --> overflow
% realmin        minimo valore --> per andare in underflow dobbiamo arrivare fino a 10^-324
                 % realmin / 2^52 --> numero più piccolo possibile in notazione non normalizzata