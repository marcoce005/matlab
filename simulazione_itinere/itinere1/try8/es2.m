M=[sqrt(2), -sqrt(3), sqrt(6), pi; -2, 2*sqrt(3), 2*sqrt(3), sqrt(2)*pi; -3*sqrt(2), 2*sqrt(6)+sqrt(3), sqrt(6), pi];

A = M(:, 1 : 3);

rank(A) == rank(M)

soluzioni = inf ^ (length(A) - rank(A))