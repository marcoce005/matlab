M = magic(11)/45;

P = tril(M);
Q = triu(M);

a = det(P * Q * Q' * inv(P))

b = det((P ^ 21) * (Q ^ 9))

c = det(P * inv(Q) *P')

d = det((P ^ 2) * P' * (Q ^ 2))