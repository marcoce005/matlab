M = magic(11) / 44;

P = tril(M)
Q = triu(M)

a = det((P * P) * P' * (Q * Q))
b = det(P * inv(Q))
c = det((P .^ 11) * (Q .^ 9))
d = det(P * (Q * Q) * inv(P))
