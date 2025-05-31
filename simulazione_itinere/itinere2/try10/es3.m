clc;
clear;

v1 = [1; 2; -1; 0; 3];
v2 = [0; 3; 1; -1; 5];
v3 = [-2; 1; 0; 2; -1];

w1 = v1 + 2 * v3;
w2 = 2 * v1 - v2;
w3 = 3 * v2 + 4 * v3;
w4 = -v1 + 5 * v2 + v3;

V = [w1 w2 w3 w4];

a = rank(V) == 4

b = rank([w1, w2, w3]) == rank(V)

c = rank([v1, v2, v3]) ~= rank(V)

d = rank([w2, w4]) == rank(V)