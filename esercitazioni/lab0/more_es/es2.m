function tot = my_exp(x, tol)
    i = 0;
    tot = 0;
    while (x ^ i) / factorial(i) > tol
        tot = tot + (x ^ i) / factorial(i);
        i = i + 1;
    end
end


exp1 = my_exp(1, 1.0e-10);
exp2 = exp(1);

out1 = ['My exp:        ', num2str(exp1, '%.20f')];
disp(out1);

out2 = ['Bult-in exp:   ', num2str(exp2, '%.20f')];
disp(out2);

% errore relativo

err = abs(exp1 - exp2) / exp2;
out3 = ['Errore relativo:   ', num2str(err, '%e')];
disp(out3);