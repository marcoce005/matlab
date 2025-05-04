% fattorizzazione LU
function [L, U] = elleu(A)
    [m, n] = size(A);
    
    if m ~= n
        error("Matrix must be square");
    end

    for k = 1 : n - 1
        for i = k + 1 : n
            % verifica che A(k, k) sia non nullo
            A(i, k) = A(i, k) / A(k, k);
            A(i, k + 1 : n) = A(i, k + 1 : n) - A(i, k) * A(k, k + 1 : n);
        end
    end
    U = triu(A);
    L = eye(n) + tril(A, -1);
end