function values = r(x, h)
    [start, stop] = size(h);
    for i = start : stop
        values(i) = (sin(x + h(i)) - sin(x)) / h(i);
    end
end


format long;

h = 2 .^ -(1 : 50);

alpha = pi / 4;

my_derivata = r(alpha, h);

derivata = cos(alpha);

relative_err = abs(derivata - my_derivata) / abs(derivata);

plot(1 : 50, relative_err);
saveas(gcf, "es1_relative_error.png");

% Tra 2^-10 e 2^-45 l'errore è molto piccolo tendente a zero dopo 2^-45
% cresce superando 0.05 di errore in 2^-50. Quindi un'approssimazione
% abbastanza affidabile l'abbiamo tra 2^-25 e 2^-30. 

% Per ovviare al problema della cancellazione numerica usando la formula
% della differenza centrale

function values = r2(x, h)
    [start, stop] = size(h);
    for i = start : stop
        values(i) = (sin(x + h(i)) - sin(x - h(i))) / (2 * h(i));
    end
end

my_derivata2 = r2(alpha, h);

relative_err2 = abs(derivata - my_derivata2) / abs(derivata);

figure;
plot(1 : 50, relative_err2);
saveas(gcf, "es1_no_castrophic_cancellation.png");