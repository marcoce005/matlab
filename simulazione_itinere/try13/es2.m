M = magic(11)/33;

P = tril(M);
Q = triu(M);

a = det(P * (Q ^ 2) * inv(P)) == 1

b = det((P ^ 2) * inv(Q) * (Q ^ 9)) > 1E18

c = det((P ^ 2) * P' * (Q ^ 2)) == 0

det_d = det(inv(P) * Q' * inv(Q));
d = det_d > 0 && det_d < 1