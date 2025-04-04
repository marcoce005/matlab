%{ 
Per matrici triangolari inferiori [algoritmo di sostituzione in avanti]

Costo computazionale --> (n ^ 2) / 2

ex:
    17     0     0     0     0
    23     5     0     0     0
     4     6    13     0     0
    10    12    19    21     0
    11    18    25     2     9
%}

function X = forward(A, B)
    n = length(B);
    X = zeros(size(B));

    % il primo x(1) = ... è tralasciabile se si itera tutto da 1 a n
    for i = 1 : n
        X(i) = (B(i) - A(i, 1 : i - 1) * X(1 : i - 1)) / A(i, i);
    end

    %{
    X(1) = B(1) / A(1, 1);

    for i = 2 : n
        X(i) = (B(i) - A(i, 1 : i - 1) * X(1 : i - 1)) / A(i, i);
    end
    %}
end


a = [
    2 0 0 0;
    3 5 0 0;
    1 2 7 0;
    4 5 3 8
];

b = [10; 35; 34; 65];

x = forward(a, b);
for i = 1 : length(b)
    fprintf("x_%d --> %.2f\n", i, x(i));
end