function values = r(x, h)
    [start stop] = size(h);
    for i = [start : stop]
        values(i) = (sin(x + h(i)) - sin(x)) / h(i);
    end
end


format long;

h = [];
for i = [1 : 50]
    h(i) = 2 ^ (-i);
end

alpha = pi / 4;

my_derivata = r(alpha, h);

derivata = cos(alpha);

relative_err = abs(derivata - my_derivata) / abs(derivata);

plot([1 : 50], relative_err);
saveas(gcf, "es1_relative_error.png");

% Tra 2^-10 e 2^-45 l'errore è molto piccolo tendente a zero dopo 2^-45
% cresce superando 0.05 di errore in 2^-50. Quindi un'approssimazione
% abbastanza affidabile l'abbiamo tra 2^-25 e 2^-30. 

% Per ovviare al problema della cancellazione numerica andiamo a limitare h
% tra 2^-10 e 2^-40. 

h2 = [];
for i = [10 : 40]
    h2(i - 9) = 2 ^ (-i);
end

my_derivata2 = r(alpha, h2);

relative_err2 = abs(derivata - my_derivata2) / abs(derivata);

figure;
plot([10 : 40], relative_err2);
saveas(gcf, "es1_no_castrophic_cancellation.png");