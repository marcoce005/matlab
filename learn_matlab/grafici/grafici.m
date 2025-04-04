% Grafica

% Rappresentare graficamente e ^ (-x^2) su [-5 5]

x = linspace(-5 ,5, 1000);

y = exp(-x .^ 2);

plot(x, y);     % default color

plot(x, y, 'r--');      % colore rosso tratteggiato

plot(x, y, 'm', 'LineWidth', 3);        % colore magenta spessore 3

saveas(gcf, "exp.png");


% 2 grafici su 1 sola finestra

figure;

plot(x, sin(x), 'r');
hold on;
plot(x, cos(x));

saveas(gcf, "sin_cos.png");


% Funzioni Custom       [function_handle]
figure;

my_fun = @(x) sin(x) .* x .^ 2 + x;             % @(val) --> variabile della funzione [qualsiasi nome prende il valore di quella passata]

t = linspace(-1, 1, 1000);
z = my_fun(t);

plot(t, z);             
saveas(gcf, "my_funct.png");

% oppure usando fplot(my_fun, [-1, 1])


% Scale logaritmiche
figure;

my_fun1 = @(x) sqrt(100 * (1 - 1e-2 * x .^ 2) .^ 2 + 2e-2 * x .^ 2) ./ ((1 - x .^ 2) .^ 2 + 0.1);

x = linspace(0.1, 100, 1000);

y = my_fun1(x);
loglog(x, y);
saveas(gcf, "log_scale.png");

% similogx  --> scala logaritmica solo sulle x
% similogy  --> scala logaritmica solo sulle y