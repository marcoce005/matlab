M = magic(11)/77;

P = tril(M);
Q = triu(M);

det_a = det((P ^ 11) * (Q ^ 9));
a = det_a > -1 && det_a < 0

det_b = det(P * (Q ^ 2) * inv(P));
b = det_a > 0 && det_a < 1

det_c = det(inv(P) * inv(Q));
c = det_c == 1

det_d = det(P' * inv(Q));
d = det_d > 1.1 && det_d < 1.9