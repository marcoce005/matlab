%{ 
Per matrici triangolari superiori [algoritmo di sostituzione all'indietro]

Costo computazionale --> (n ^ 2) / 2

ex:
    17    24     1     8    15
     0     5     7    14    16
     0     0    13    20    22
     0     0     0    21     3
     0     0     0     0     9
%}

function X = backward(A, B)
    n = length(B);
    X = zeros(size(B));
    
    % il primo x(n) = ... è tralasciabile se si itera tutto da n a 1
    for i = n : -1 : 1
        X(i) = (B(i) - A(i, i + 1 : n) * X(i + 1 : n)) / A(i, i);
    end
    
    %{          
    X(n) = B(n) / A(n, n);

    for i = n - 1 : -1 : 1
        X(i) = (B(i) - A(i, i + 1 : n) * X(i + 1 : n)) / A(i, i);
    end
    %}
end


a = [
    2 3 1 4;
    0 6 2 5;
    0 0 7 3;
    0 0 0 8
];

b = [33; 40; 27; 16];

x = backward(a, b);
for i = 1 : length(b)
    fprintf("x_%d --> %.2f\n", i, x(i));
end