M = magic(11)/45;

P = tril(M);
Q = triu(M);

det_a = det(P * inv(Q) * P');
a = det_a > 0 && det_a < 1

det_b = det((P ^ 21) * (Q ^ 9));
b = det_b > 1E4 && det_b < 1E5

det_c = det(P * Q * Q' * inv(P))
c = det_c > 1 && det_c < 2

d = det((P ^ 2) * P' * (Q ^ 2)) == 0