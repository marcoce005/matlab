A = [1,9,14,21;-4/7,-36/7,-8,-12];
b = [-7, 3];

A_b = [A b'];

rank(A) == rank(A_b)        % sistema incompatibile