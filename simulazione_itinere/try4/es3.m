Q = [sqrt(7), -sqrt(11), -sqrt(13), -11; -2*sqrt(35), sqrt(5)*sqrt(44), 2*sqrt(65), 0;-6*sqrt(7), 5*sqrt(13)+sqrt(11), sqrt(13),-12];

rank_a = rank(Q(:, 1:3))
rank_ab = rank(Q)

rank_a == rank_ab
% rank_a = 2 e rank_ab = 3 --> l'intersezione tra la retta e il piano è un
% insieme vuoto

n_piano = Q(1, 1:3);

n1_retta = Q(2, 1:3);
n2_retta = Q(3, 1:3);

vet_retta = cross(n1_retta, n2_retta);

vet_retta * n_piano' == 0
dot(vet_retta, n_piano) == 0
% se il vettore della retta è perpendicolare la vettore normale del piano
% di conseguenza la retta e il piano sono paralleli