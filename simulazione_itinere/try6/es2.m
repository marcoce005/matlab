Q = [sqrt(7), -sqrt(11), -sqrt(13), -11; -2*sqrt(35), sqrt(5)*sqrt(44), 2*sqrt(65), 0;-6*sqrt(7), 5*sqrt(13)+sqrt(11), sqrt(13),-12];

n_piano = Q(1, 1:3);
n1_retta = Q(2, 1:3);
n2_retta = Q(3, 1:3);

v_r = cross(n1_retta, n2_retta);

a = dot(v_r, n_piano) == 0

rank(Q) == rank(Q(:, 1:3))