u = [1057; 1218; 91];
v = [-151; -174; -13];
w = [-6; -5; 16];

a = (u' * v) == 0               % prodotto scalare != 0 --> non sono perpendicolari

c = norm(cross(u, v), 2) == 0           % il prodotto vettoriale == 0 --> u e v sono paralleli
