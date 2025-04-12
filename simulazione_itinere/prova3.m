A = [8, 0, 0];
B = [6 ,4, 0];
C = [0, 2, 0];
P = [0, 0, 0];


A_abc = 0.5 * norm(cross((C - A), (B - A)), 2);

A_pca = 0.5 * norm(cross((C - A), (P - A)), 2);

A_tot = A_pca + A_abc