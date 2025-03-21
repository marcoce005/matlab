% AND ,OR, NOT (~), >, <, <=, >=

% && --> per gli scalari                        & --> per i vettori
% || --> per gli scalari                        | --> per i vettori

x = rand(5, 1);             % rand(rows, coloums)
x >= 0.5;                % restituisce il vettore dei boolenani del risultati della condizione

y = rand(3, 2);
y <= 0.5;

x >= 0.2 & x<= 0.8;
x >= 0.2 | x<= 0.8;

a = [3 -1 9];
b = [1 -5];

%a > 0 & b < 2;         % ERROR --> i vettori hanno dimensioni non campatibili


% Blocco Condizionale
%{

if condizione
    .......
end

            oppure

if condizione
    .....
else if condizione
    ......
.......
else
    ......
end

%}

x = [1 2 3];
%{
if x > 1           % bisogna usare una variabile scalare
    .....
end
%}

if all(x > 1)                   % all --> tutti devono rispettare la condizione
    disp("sono tutti maggiori di 1\n");
end

if any(x > 1)                   % any --> tutti devono rispettare la condizione
    disp("ce n'è uno maggiore di 1");
end


% Ciclo iterativo WHILE
%{
while condizione
    .......
end
%}

i = 0;
while i < 10
    i;
    i = i + 1;
end


% Ciclo iterativo FOR

for k = 1 : 5
    k;
end

for k = [-3 9 0.5 pi]
    k;
end

A = [1 0 1; -1 -1 -1];
for k = A                   % gira nelle COLONNE
    k;
end

vet_col = [1; 2; 3; 4];
for k = vet_col                 % fa una solo iterazione perchè è una sola colonna
    k;
end


% Operazioni Aritmetiche

a = rand(3, 2);
b = rand(2, 4);

% a + b             % somma/differenza tra matrici --> error perchè non hanno le stesse dimensioni
% a - b

c = a * b;                   % prodotto tra matrici [devono rispettare la regola del prodotto tra matrici]

a = [1 2 3];
b = [4; 5; 6];

c = a * b;              % prodotto scalare [riga per colonna]

a = rand(5);

a_2 = a ^ 2;             % a * a --> quadrato di una matrice [ovviamente deve essere quadrata]

det(a);                 % determinante di una matrice quadrata

inv(a);                 % inversa di A (non si usa mai, solo per matrici piccolissime)

rank(a);                % calcola il rango di una matrice


% Funzioni Matematiche Elementari
x = 0.7;
y = sin(log(x)) * cos(x);

x = [0.1 1.12 0.75];
% y = sin(log(x)) * cos(x);           % le funzioni sono matrix based [occhio al che * in questo caso farebbe il prodtto scalare]
y = sin(log(x)) .* cos(x);          % .*, .+, .-, ./, operazione elemento per elemento

y = x .^ 2;         % il quadrato di ciascun elemeto di x

y = 3 .^ x;          % [3^a, 3^b, 3^c, ...]

w = [1 -4 0-3];
s = w ./ x                  % rapporto tra ciascun elemento di w con l'elementi di x

% le operazioni '.qualcosa' --> solo se si hanno le STESSE DIMENSIONI
% --> a ^ 2 != a .^ 2