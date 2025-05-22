clc;
clear;

M = [1, -2, -17/3, 9/2, 95/42, 14/3; -2, 4, 34/3, -9, -95/21, -28/3; 1, -3, -49/6, 4, 125/42, 49/6; 0, 1, 5/2, 1/2, -5/7, -7/2];

% la C appartiene sempre al SV

rk_row_M = rank(M);
rk_col_M = rank(M');

x = [11/7; -19/46; 111/3; -63/25];
rk_Mx = rank([M x]);
a = rk_Mx == rk_row_M

b = (rk_col_M == rk_row_M) && (rk_row_M == 3)

x = [-191/77; 382/77; -290/77; 9/7]; 
rk_Mx = rank([M x]);
d = rk_Mx == rk_row_M