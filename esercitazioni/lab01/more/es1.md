# Es. 1

I seguenti numeri vengono introdotti in un calcolatore che opera in aritmetica floating-point con base $N = 10$, $t = 5$ cifre riservate alla mantissa e tecnica di arrotondamento:

$$
a = 1.483593
$$

$$
b = 1.484111
$$

Determinare il risultato $\overline{s} = \overline{a} \ominus \overline{b}$, ove $\overline{x}$ indica il numero di macchina corrispondente a $x$ nella suddetta aritmetica $\ominus$ e denota l’operazione di macchina corrispondente all’operazione aritmetica della sottrazione.
Confrontare $\overline{s}$ con $c = a − b$ e calcolare l’errore relativo associato a $\overline{s}$.

## Soluzione

Eseguimo l'operazione in aritmetica esatta:

$$
c = a - b \qquad \implies \qquad c = 0.1483593 - 0.1484111 = −0,0000518
$$

Convertiamo i numeri reali in aritmetica di macchina:

$$
\overline{a} = 0.14836 \cdot 10
\\
\overline{b} = 0.14841 \cdot 10
$$

Eseguimo l'operazione di macchina:

$$
s = \overline{a} - \overline{b} \, = \, 0.14836 \cdot 10 - 0.14841 \cdot 10 \, = \, −0,00005
\\
\overline{s} = -0,50000 \cdot 10^{-4}
$$

Errore relativo di $\overline{s}$ rispetto a $c$ :

$$
\frac {| c - \overline{s} |} {| c |} \, \approx \, 0,03474903475 \, \approx \, 0,3474903475 \cdot 10^{-1}
$$

Un errore relativo del $3.47$ %. 