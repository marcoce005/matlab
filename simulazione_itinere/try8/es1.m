M = magic(11)/77;

P = tril(M);
Q = triu(M);

a = det((P ^ 11) * (Q ^ 9))

b = det(P' * inv(Q))

c = det(P * (Q ^ 2) * inv(P))

d = det(inv(P) * inv(Q))