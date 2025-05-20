u = [-7,11,3];
v = [-6,-5,16];
w = [191,94,101];

a = norm(cross(u, v)) / (norm(u) * norm(v)) == 0

b = norm(cross(u, v)) == 0

c = (u * v') == 0

d = (w * v') == 0 && (w * u') == 0