clc;
clear;

biet = zeros(4, 1);
suriet = zeros(4, 1);
non_iniet = zeros(4, 1);

for k = 1 : 4
    A = [-3, 4, 1, 0; 1, -16, 2, 0; k, -k, 1, 2; 0, 1, 0, -1];
    [m, n] = size(A);

    biet(k) = rank(A) == m && m == n;
    suriet(k) = rank(A) == m;
    non_iniet(k) = rank(A) ~= n;
end

a = sum(biet) == 2

b = sum(suriet) == 1

c = sum(non_iniet) > 0

d = sum(biet) == 4