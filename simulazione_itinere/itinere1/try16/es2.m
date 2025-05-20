A = [5/9, 1/5, 2/5; 3, 8/3, 2/3; 1/9, 4/5, 2/9];
B = [7/9, 1/4, 4/9;2/7, 1, 1/7;3/7, 2, 7/6];

a = [-1, 13, 9];
b = [-3, 3, 11];

A_a = [A, a'];
B_b = [B, b'];

rank(A) == rank(A_a)        % compatibile

rank(B) == rank(B_b)        % compatile

[m_A, n_A] = size(A);
[m_B, n_B] = size(B);

soluzioni_A = inf ^ (n_A - rank(A))
soluzioni_B = inf ^ (n_B - rank(B))

x = A \ a'
y = B \ b'

cos_angolo = dot(x, y) / abs(norm(x)) * abs(norm(y))