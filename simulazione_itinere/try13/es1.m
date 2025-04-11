A = [1,2,3,4;-4/7,11/2,3/8,1/9];
b = [-3, 7];

A_b = [A, b'];

rank(A) == rank(A_b)        % sistema compatibile

[m, n] = size(A);

soluzioni = inf ^ (n - rank(A))

esponente = n - rank(A)