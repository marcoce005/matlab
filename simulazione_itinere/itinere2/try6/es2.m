clc;
clear;

isomorfismi = zeros(4, 1);
non_inet = zeros(4, 1);
non_suriet = zeros(4, 1);

for k = 1 : 4
    A_k = [1, k, -1, 1; 0, 2, -1, -1; k, -1, 1, 1; 2, -2, 1, -1];
    [m, n] = size(A_k);

    isomorfismi(k) = rank(A_k) == m && m == n;
    non_inet(k) = rank(A_k) ~= n;
    non_suriet(k) = rank(A_k) ~= m;
end

a = sum(isomorfismi) == 4

b = sum(non_inet) == 4

c = sum(non_suriet) == 1

d = sum(isomorfismi) == 2