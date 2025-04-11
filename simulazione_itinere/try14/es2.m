N=[sqrt(3),-sqrt(5),sqrt(7), 0; -3, 3*sqrt(5), 3*sqrt(5), sqrt(3); -4*sqrt(3),3*sqrt(7)+sqrt(5), sqrt(7),-1];

A = N(:, 1 : 3);

rank(A) == rank(N)          % sistema compatibile [si intersecano]

[m, n] = size(A)

soluzioni = inf ^ (n - rank(A))