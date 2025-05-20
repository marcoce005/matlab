A = ones(6);

for i = 1:7
    for j = 1:7
        A(i, j) = i - max(i, 2 * j) + 2 * min(i, j);
    end
end

b = 7 : -1 : 1;

A_b = [A, b'];

rank(A_b) == rank(A)

[m, n] = size(A);

soluzioni = inf ^ (n - rank(A))

condizionamento = cond(A, 1)