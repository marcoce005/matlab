M = magic(11)/44;

P = tril(M);
Q = triu(M);

det_a = det(P * inv(Q));
a = det_a > 1.1 && det_a < 1.9

det_b = det((P ^ 11) * (Q ^ 9))
b = det_b > 0 && det_b < 1

det_c = det((P ^ 2) * P' * (Q ^ 2));
c = det_c > 11 && det_c < 12

d = det(P * (Q ^ 2) * inv(P)) == 0