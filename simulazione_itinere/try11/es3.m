A = [1,4,9,16;-4/7,-13/2,3/11,7/9];
b = [-5, 11];

A_b = [A b'];

rank(A) == rank(A_b)        % è compatibile

[m, n] = size(A);

soluzioni = inf ^ (n - rank(A))