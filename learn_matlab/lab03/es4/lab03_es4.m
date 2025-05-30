clc;
clear;

n = 100;
A = zeros(n);

for i = 1 : n
    for j = 1 : n
        if i == j
            A(i, j) = 1;
        elseif i < j
            A(i, j)  = -1;
        end
    end
end

spy(A);           % per vedere la matrice sotto forma di grafico con pallini dove c'è un valore diverso da 0
saveas(gcf, "spy_A.png");

det_A = det(A)
rk_A = rank(A)              % è == 99 

S = svd(A);          % vettori dei valori singolari

figure;

semilogy(S, 'o');
saveas(gcf, "valori_singolari_A.png");

% la matrice non è singolare de è malcondizionata

condizionamento = cond(A)

% norma == al massimo dei valori singolari
% max(S) / min(s) == norma(..., 2)
