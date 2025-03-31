u = [-7; 11; 3];
v = [-6; -5; 16];
w = [191; 94; 101];

a = cross(u, v)             % facendo il prodotto vettoriale tra u e v otteniamo w --> w è ortogonale a v e u per definizione del prodotto vettoriale

b = (w' * v) + (w' * u) == 0