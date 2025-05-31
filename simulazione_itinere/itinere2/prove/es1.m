clc;
clear;

n = 6;
A = zeros(n);

for i = 1 : n
    for j = 1 : n
        A(i, j) = cos(i + j) - 3;
    end
end

x = [2; -4; 6; -8; 10; -12];
B = A - 6 * eye(n);

a = x' * B * x > 0

b = sum(B * x == 0) == n

auto = eig(B);
c = sum(real(auto) < 0) == n

d = sum(diag(B)) > 0