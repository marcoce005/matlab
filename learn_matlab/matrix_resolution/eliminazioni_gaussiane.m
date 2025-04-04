%{
Risoluzione di un sistema lineare Ax = b.

Il costo computazionale in termini di moltiplicazioni del metodo delle
eliminazioni di Gauss è essenzialmente n^3 / 3

Il metodo delle eliminazioni di Gauss consta essenzialmente di due fasi:
1. 
    trasformazione, in n − 1 passi, del sistema assegnato Ax = b nel
    sistema Ux = b equivalente a quello assegnato (ovvero che ammette
    la stessa soluzione x), con U matrice triangolare superiore
2.
    risoluzione del sistema Ux = b mediante la tecnica di sostituzione
    all’indietro
%}

function X = backward(A, B)
    n = length(B);
    X = zeros(size(B));
    for i = n : -1 : 1
        X(i) = (B(i) - A(i, i + 1 : n) * X(i + 1 : n)) / A(i, i);
    end
end


function X = elim_gaussiane(A, B)
    n = length(B);
    for k = 1 : n - 1
        for i = k + 1 : n
            m = A(i, k) / A(k, k);
            A(i, :) = A(i, :) - m * A(k, :);
            B(i) = B(i) - m * B(k);
        end
    end
    X = backward(A, B);
end

a = [
    2 -1 1 -2;
    0 2 0 -1;
    1 0 -2 1;
    0 2 1 1
];

b = [0; 1; 0; 4];

x = elim_gaussiane(a, b);

for i = 1 : length(x)
    fprintf("x_%d --> %f\n", i, x(i));
end