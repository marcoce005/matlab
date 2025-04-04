% Matrici diagonali

v = 1 : 5;

A = diag(v);             % default index = 0

% matrici con tante diagonali == somma di matrici con 1 diagonale

B = diag(v) + diag(-ones(length(v) - 1, 1), -1);        % occhio che le codiagonali hanno meno elementi

B = B + diag(7, 4) + diag([-2 -5], -3);

% matrice identità

D = pi * eye(4);

% diag può estrarre diagonali da matrici

M = magic(5);

d0 = diag(M, 0);                % estraee la diagonale indicata se il primo valore è una matrice
d3 = diag(M, 3);


% matrici Triangolari

mat_triu = triu(M);             % si può passare il parametri per definire da dove iniziano gli zeri
mat_tril = tril(M);
m1 = tril(M, -2);                   % dalla diagonale -2 (esclusa) in su fa zeri


% Matrici con struttura generica

a = zeros(5, 5);                % inizzializzazione

for i = 1 : 5
    for j = 1: 5
        a(i, j) = max(i, j) / min(i, j);
    end
end

det(a);                     % determinante di a
rank(a);                    % rango di a
cond(a);                    % condizionamento di a


% Risolvere il sistema lineare          Ax = b --> si usa '\'
% => implementa il metodo di risoluzione delle eliminazione gaussiane con
% pivoting parziale e backward sostitution (sostituzione all'indietro)

b = [1; 1; 2; 1; 1];

x = a \ b;

r = (a * x) - b;                     % residuo 
% la norma relativa del residuo mi da l'accuratezza della soluzione

norm(r) / norm(b);              % se è preciso restituisce la precisione di macchina
                                % norma del residuo relativizzata rispetto alla norma dei termini noti
                                % [bisogna sempre relativizzare]


% Matrici speciali

hilb_mat = hilb(10);         % matrice di Hilbert

Kh1 = cond(hilb_mat, 1);            % condizionamento norma 1
Kh2 = cond(hilb_mat, 2);            % condizionamento norma 2
Kh_inf = cond(hilb_mat, inf);       % condizionamento norma infinito

b  = ones(10, 1);

x = hilb_mat \ b;

r = (hilb_mat * x) - b;

norm(r) / norm(b);              % se il sistema è molto malcondizionato --> la norma di x esplode --> usiamo la norma di b


x = linspace(0, 1, 5);
vandermonde_mat = vander(x)          % matrice di Vandermonde       [condizionamento abbastanza alto]
% ogni colonna è x .^ n     --->        con n che decrementa