clc;
clear;

A =  [-111,  -12,  14,   39.5; -12,  33, 17,  18; -11,  -16, 1, 27.5; 19.5,   0,   24.5, -33];
B = [-39,  -24.5,   13.5,  -26; -24.5,  -24.5,  25.5,   55; 13.5,  25.5,  -11,  -8;-26.5,   55,   -8, -36];


[m, n] = size(A);

a = rank(A - 3 * B) ~= m            % rango == m --> è suriettiva

b = (rank(A + B) == n) && (rank(A + B) == m)            % rango == m == n --> è biettiva --> è isomorfismo

c = rank(A + A) ~= n        % rango == n --> è iniettiva
c = null(A + A)    % kernel = insieme vuoto --> f + f è iniettiva

d = (rank(B + B) == m) && (rank(B + B) ~= n)        % è suriettiva ma anche iniettiva