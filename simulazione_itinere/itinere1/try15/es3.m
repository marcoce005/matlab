Q = [sqrt(7), -sqrt(11), -sqrt(13), -11; -2*sqrt(35), sqrt(5)*sqrt(44), 2*sqrt(65), 0;-6*sqrt(7), 5*sqrt(13)+sqrt(11), sqrt(13),-12];

A = Q(:, 1 : 3);

rank(A) == rank(Q)          % sistema incomaptivile [no intersezione]

n_piano = A(1, :);

n1_retta = A(2, :);
n2_retta = A(3, :);
v_retta = cross(n1_retta, n2_retta);

(n_piano * v_retta') == 0       % se i vettore normale del piano è perpendicolare al versore retta => retta è parallela al piano