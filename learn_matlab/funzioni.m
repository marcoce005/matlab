% lo scope delle function è riservato

%{
function [output1, output2, ...] = name(input1, input2, ...)    % interfaccia della funzione

end
%}


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


a = [
    2 -1 1 -2;
    0 2 0 -1;
    1 0 -2 1;
    0 2 1 1
];

% se salviamo il file con lo stesso nome della funzione la possiamo
% chiamare ovunque