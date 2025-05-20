A = [1,9,14,21;-4/7,-36/7,-8,-12];
b = [-7, 4];

A_b = [A, b'];

rank(A) == rank(A_b)        % sistema compatibile

[m, n] = size(A);

soluzioni = inf ^ (n - rank(A))

esponente = n - rank(A)