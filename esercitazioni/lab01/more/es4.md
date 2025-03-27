# Quiz

La quantità

$$
\frac {(x!)^2 \: + \: (y!)^2} {z!}
$$

con $x = 121$, $y = 122$, $z = 150$ vale circa:

Risposte:
 - a) &emsp; $1.71e+143$ 
 - b) &emsp; $5.32e+201$
 - c) &emsp; $2.18e+175$
 - d) &emsp; $9.21e+132$

## Soluzione

Date le grandi dimensioni dei numeri l'esecuzione dell'espressione in matlab andrebbe in overflow già all'elevamento a potenza di $x!$.
Dunque procediamo lavorando in scala logaritmica. 

```matlab
    x = 121; y = 122; z = 150;

    fact_x = factorial(x);
    fact_y = factorial(y);
    fact_z = factorial(z);

    log_fact_x = log(fact_x);
    log_fact_y = log(fact_y);
    log_fact_z = log(fact_z);
```

Avendo ora i fattoriali in scala logaritmica non bastano ad aggirare l'overflow dell'operazione così come ci è data. Dobbiamo svolgere dei riarrangiamenti matematici per evitare gli elevamenti al quadrato. 
Ora ci troviamo nel seguente stato:

$$
    \frac {(e ^ {log(x!)}) ^ 2 \: + \: (e ^ {log(y!)}) ^ 2} {e ^ {log(z!)}}
$$

$$
    \frac {e ^ {2 \cdot log(x!)} \: + \: e ^ {2 \cdot log(y!)}} {e ^ {log(z!)}}
$$

$$
    \frac {e ^ {2 \cdot log(x!)}} {e ^ {log(z!)}} \: + \: \frac {e ^ {2 \cdot log(y!)}} {e ^ {log(z!)}}
$$

$$
    {e ^ {2 \cdot log(x!) - log(z!)}} \: + \: {e ^ {2 \cdot log(y!) - log(z!)}}
$$

Ora questi 2 esponenziali sono calcolabili senza andare in overflow. 

```matlab
    exp1 = exp((2 * log_fact_x) - log_fact_z);
    exp2 = exp((2 * log_fact_y) - log_fact_z);

    answer = exp1 + exp2;
```

Abbiamo che ```answer = 1.7069e+143```. La risposta corretta è la 'a)'.