clc;
clear;

M = [1, -2, -17/3, 9/2, 95/42, 14/3; -2, 4, 34/3, -9, -95/21, -28/3; 1, -3, -49/6, 4, 125/42, 49/6; 0, 1, 5/2, 1/2, -5/7, -7/2];

% la a è sempre vera perchè per essere uno SV deve per forza contenere il vettore nullo

rk_row_M = rank(M);
rk_col_M = rank(M');
b = rk_col_M == rk_row_M && rk_row_M == 4


x = [-191/80, 382/77, -290/77, 9/7, -11/18, 45/9];
rank_M = rank(M);
rank_Mx = rank([M; x]);
c = rank_Mx == rank_M       % non appartiene allo SV generato dalle righe di M


x=[0,14/10, 7/2, 7/10,-10/10,-49/10]; 
rank_Mx = rank([M; x]);
d = rank_Mx == rank_M       % appartiene allo SV generato dalle righe di M