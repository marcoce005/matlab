u = [-7,11,3];
v = [-6,-5,16];
w = [191,94,101];


a = norm(cross(u, v), 2) == 0

b = (u * v') == 0

c = (w * v') == 0 && (w * u') == 0

d = norm(cross(u, v), 2) / (norm(v) * norm(u)) == 0