clc;
clear;

non_suriet = 0;
ismorf = 0;
non_inet = 0;

for k = 1 : 4;
    A = [1, k, -1, 1; 0, 2, -1, -1; k, -1, 1, 1; 2, -2, 1, -1];
    [m, n] = size(A);

    rk = rank(A);

    non_suriet = non_suriet + (rk ~= m);
    ismorf = ismorf + (rk == m && rk == n);
    non_inet = non_inet + (rk ~= n);
    
end

a = non_suriet == 1
b = ismorf == 4
c = non_inet == 4
d = ismorf == 2