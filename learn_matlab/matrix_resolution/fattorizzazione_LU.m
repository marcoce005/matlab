function A = elim_gaussiane(A, B)
    n = length(B);
    for k = 1 : n - 1
        for i = k + 1 : n
            A(i, k) = A(i, k) / A(k, k);
            A(i, k + 1 : n) = A(i, k + 1 : n) - A(i, k) * A(k, k + 1 : n);
            B(i) = B(i) - A(i, k) * B(k);
        end
    end
end

function [L, U] = LU(A, b)
    A = elim_gaussiane(A, b);
    U = triu(A);
    L = eye(length(A)) + tril(A, -1);
end

a = [
    2 -1 1 -2;
    0 2 0 -1;
    1 0 -2 1;
    0 2 1 1
];

b = [0; 1; 0; 4];

[L, U] = LU(a, b);

a == L * U