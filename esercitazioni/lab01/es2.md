# QUIZ

Sia assegnata un’aritmetica floating point in base N = 10 con t cifre di mantissa.
Sia $y = f (x)$ un problema numerico assegnato. È noto il condizionamento $K = 2 × 10^9$ del problema. Sia inoltre $\overline{x}$ un dato affetto da errore di arrotondamento e sia $\overline{y} = f(\overline{x})$. 
Se $\frac{|y - \overline{y}|}{|y|} = 10^-5$, quante sono al massimo le cifre di mantissa di t?

Risposte:
 - a. 14
 - b. 15
 - c. 13
 - d. 16

## Risoluzione

Data la formula:
$$
\frac{|y - \overline{y}|}{|y|} <= K(y, x) \frac{|x - \overline{x}|}{|x|}
$$

Sostiuisco ed impongo la distanza relativa di x >= ...

$$
\frac{10^{-5}}{2 \cdot 10^9} \leq \frac{|x - \overline{x}|}{|x|}
$$

$$
\frac{1}{2} \cdot 10^{-14} \leq \frac{|x - \overline{x}|}{|x|}
$$

Dato che la distanza relativa può essere anche rappresentata da $\frac{1}{2} \cdot N^{1 - t}$, ed $N = 10$

$$
\frac{1}{2} \cdot 10^{-14} \leq \frac{1}{2} \cdot N^{1 - t}
$$


$$
10^{-14} \leq  N^{1 - t} \implies t = 15
$$