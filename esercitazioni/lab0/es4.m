%{
Utilizzare il comando diag di Matlab per definire la matrice tridiagonale B di dimensione 
10 × 10, i cui elementi della diagonale principale sono tutti uguali a 5 e quelli delle codiagonali
inferiore e superiore sono rispettivamente uguali a −1 e a 3. Quindi porre uguale a 2 gli
elementi appartenenti all’intersezione delle colonne 6 e 9 e delle righe 5 e 8.
%}

B = diag(5 * ones(1, 10));          % matrice con diagonale tutti 5

C = diag(-1 * ones(1, 9), -1);       % matrice con diagonale a livello -1 con tutti -1 [bisogna decrementare le colonne]
D = diag(3 * ones(1, 9), 1);         % matrice con diagonale a livello +1 con tutti 3 [bisogna decrementare le colonne]

B = B + C + D;

B([5 8], [6 9]) = 2 * ones(2, 2);