x = [1 : -0.1 : 0];         % inizializzo il vettore da 1 a 0 decrementado di 0.1

x([1 4 3]);                  % prende il primo, quarto e terzo numero del vettore

x([1 : 2 : 7 10]) = zeros(1, 5);         % azzera i numeri di indice dispari ma anche il decimo numero

x([1 2 5]) = [0.5 * ones(1, 3) - 0.3];           % mette 0.2 nel primo, secondo e quinto elemento

y = x(end : -1 : 1);             % leggo il vettore al contrario