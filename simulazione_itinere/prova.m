A = ones(6);

for i = 1:6
    for j = 1:6
        A(i, j) = (i + j) / (2 * min(i, j));
    end
end

B = (A ^ 5) * inv(A);

AB = A * B;

a = det(AB) > 0

b = det(AB) == -1

c = (det(AB) == (5 * det(A))) && det(AB) < 0

d = det(AB) ~= (det(A) ^ 5) && det(A) < 0 && det(A) > -1