% si usi il rapporto incrementale per calcolare la derivata sin(x) nel
% punto x = pi / 4

x = pi / 4;

r = @(h) (sin(x + h) - sin(x)) ./ h;                 % function handle con variabile h e parametro x = pi / 4

k = 1 : 50;

h = 2 .^ (-k);          % h = [2 ^(-1), 2 ^ (-2), ... , 2 ^ (-50)]

r_val = r(h);               % valuto la funzione r nei valori h definiti sopra

relativ_error = abs(r_val - cos(x)) / abs(cos(x));      % errore rispetto alla derivata esatta pari a cos(x)

loglog(h, relativ_error)
saveas(gcf, "relative_error.png");              % c'è cancellazione numerica dopo 10^-8

% dobbiamo eliminare la cancellazione numerica
% sin(a) - sin(b) = 2 * sin((a - b) / 2) * cos((a + b) / 2)
% => 2 * sin(h / 2) * cos(x + h / 2)

r_mod = @(h) (2 .* sin(h / 2) .* cos(x + h / 2)) ./ h;

r_val_mod = r_mod(h);

err_rel_mod = abs(r_val_mod - cos(x)) / abs(cos(x));

hold on
loglog(h, err_rel_mod);
saveas(gcf, "relative_error_without_numerici_canc.png");

% il minimo è 10^-8 non è casuale per la derivata prima è fisso