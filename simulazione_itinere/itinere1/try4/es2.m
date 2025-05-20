m = magic(11) / 45;

p = tril(m);
q = triu(m);

a = det(p * q * q' * inv(p))

b = det(p * inv(q) * p')

c = det((p * p) * p' * (q * q)) == 0

d = det((p .^ 21) * (q .^ 9));
d >= 10 ^ 4 && d <= 10 ^ 5