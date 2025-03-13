---
marp: true
math: katex
paginate: true
html: true
style: |
  section {
    font-size: 2.2em !important;
    font-family: 'Arial', sans-serif;
    overflow: hidden;
  }
---

# **Construcción de datos iniciales**
## Clase 13


---

## **Objetivos de la Clase**
- Describir la construcción de datos iniciales para agujeros negros.
- Discutir transformaciones conformes para la solución de la ecuaciones de restricción.
- Presentar el método de "punctures" para evitar singularidades.

---

## **El Problema de los Datos Iniciales**
- Para evolucionar un sistema en relatividad numérica (al igual que en otras áreas) necesitamos **datos iniciales bien definidos** 
- En el caso de agujeros negros binarios, los datos iniciales deben representar dos agujeros con momentos y spins arbitrarios.
- Las condiciones iniciales no son totalmente "libres": deben satisfacer las ecuaciones de Einstein.
- **Problema:** Las ecuaciones de restricción de Einstein son altamente no lineales.

---

## **Ecuaciones de Einstein en forma 3+1**
Recordemos que la **métrica del espacio-tiempo** se escribe como:

$$
ds^2 = -\alpha^2 dt^2 + \gamma_{ij} (dx^i + \beta^i dt)(dx^j + \beta^j dt)
$$

donde:
- $\alpha$ es el **lapso** (controla la evolución temporal).
- $\beta^i$ es el vector de **shift** (controla el movimiento de las coordenadas espaciales entre las hipersuperficies 3D).
- $\gamma_{ij}$ es la **métrica espacial** en cada hipersuperficie 3D.

---

## **Ecuaciones de Einstein en forma 3+1**

La **curvatura extrínseca** de la hipersuperficie se define como:

$$
K_{ij} = -\frac{1}{2} \mathcal{L}_n \gamma_{ij}
$$

donde $\mathcal{L}_n$ es la **derivada de Lie** en la dirección normal $n^a$
(dirección temporal).

---

## **Ecuaciones de Einstein en forma 3+1**

La proyección de las EdE en cada hipersuperficie producen:

- Restricción Hamiltoniano:
$$
R + K^2 - K_{ij} K^{ij} = 16\pi \rho
$$

- Restricción de Momento:
$$
D_j (K^{ij} - \gamma^{ij} K) = 8\pi j^i
$$

---

## **Descomposición Conforme de la Métrica**

- No es trivial resolver las ecuaciones de restricción anteriores.
- Un método para facilitar su solución realizar una descomponer la métrica espacial en términos de un **factor conforme** $\psi$, tal que:

$$
\gamma_{ij} = \psi^4 \bar{\gamma}_{ij}
$$

donde:
- $\psi$ será determinado usando el constraint Hamiltoniano.
- $\bar{\gamma}_{ij}$ es la **métrica conforme**, que es libremente especificada.

---

## **Descomposición Conforme de la Métrica**

![Placeholder: descomposición conforme](fig_placeholder)


---

## **Constraint Hamiltoniano ver. conforme**

Con esta descomposición conforme, la curvatura escalar (Ricci) se reescribe como:

$$
R = \psi^{-4} \bar{R} - 8 \psi^{-5} \bar{D}^2 \psi
$$

donde $\bar{D}$ representa el operador de derivada en el espacio conforme, y $\bar{R}$ el escalar de Ricci en dicho espacio.

Luego, sustituyendo en la restricción Hamiltoniana, tenemos:

$$
\bar{D}^2 \psi - \frac{1}{8} \bar{R} \psi + \frac{1}{8} \psi^5 (K_{ij} K^{ij} - K^2) = -2\pi \psi^5 \rho
$$

---

## **Ejemplo: Solución de Schwarzschild**

Consideremos nuevamente el espacio vacío. Además:
- Asumamos $\beta^i=0$, lo que implica que $K_{ij}=0$.
- Asumamos además que el espacio es conformalmente plano.

En este caso, el constraint Hamiltoniano se reduce a:
$$
\bar{D}^2 \psi = \nabla^2 \psi = 0
$$

En coordenadas esféricas, con simetría esférica, esto se reduce a:
<!-- $$ -->
<!-- \left(\frac{1}{r^2}\frac{d(r\psi)}{dr}\right) = 0 -->
<!-- $$ -->

---

## **Ejemplo: Solución de Schwarzschild**

Luego, la solución radial es de la forma $\psi = A + B/r$.

Exigiendo que la solución decaiga en $r\to\infty$ hacia un espacio asintóticamente plano, y reescribiendo la constante $B=M/2$:

$$
\psi = 1 + \frac{M}{2r}
$$

Esto corresponde a la solución de Schwarzschild. Simplemente está escrita en otro sistema de coordenadas (gauge).

---

## **Datos iniciales de Brill-Lindsquit**

- En el caso anterior, el constraint Hamiltoniano, $\bar{D}^2 \psi = 0$, tiene una propiedad matemática muy importante: es **lineal**.
- Luego, la condición inicial que representa un conjunto de $N$ agujeros negros de Schwarzschild (estáticos) puede escribirse como:

$$
\psi = 1 + \sum_{n} \frac{M_n}{2r_n}
$$

Esto se conoce como la solución de **Brill-Lindquist**.

---

## **Datos iniciales de Brill-Lindsquit**

- Notemos que esta solución, si bien es analítica, es válida solo para **un instante** en el tiempo, e.g. una condición inicial.
- Al dejar correr el tiempo, es necesario resolver las ecuaciones de evolución, y el sistema se vuelve nuevamente no-lineal.

En general, para condiciones iniciales de agujeros negros en **movimiento**, es necesario también resolver la **restricción de Momento**. Ilustraremos esto a continuación.

---

## **Descomposición Conforme de $K_{ij}$**
Ahora, descomponemos la curvatura extrínseca $K_{ij}$ como:

$$
K_{ij} = A_{ij} + \frac{1}{3} \gamma_{ij} K
$$

donde:
- $K$ es la traza de $K_{ij}$. Típicamente es fijada por la variable temporal de nuestro sistema de coordenadas (slicing).
- $A_{ij}$ es la parte sin traza de $K_{ij}$.

---

## **Descomposición Conforme de $K_{ij}$**

La parte sin traza se puede descomponer conformalmente como:

$$
A_{ij} = \psi^{-10} \bar{A}_{ij}
$$

Con esto, la restricción de Momemto se reescribe como:

$$
\bar{D}_j \bar{A}^{ij} - \frac{2}{3} \psi^6 \bar{D}^i K = 8\pi \psi^{10} j^i
$$

A su vez, es posible descomponer $\bar{A}_{ij}$ en términos de dos componentes: $\bar{A}^{ij}_L$ (longitdutinal) y $\bar{A}^{ij}_{TT}$ (transverse-traceless).

---

## **Descomposición Conforme de $K_{ij}$**

Si bien no discutiremos en detalle, cualitativamente:

- $\bar{A}^{ij}_{TT}$ es la curvatura asociada a la presencia de **ondas gravitacionales**.
- Luego, existe **libertad en escoger** $\bar{A}^{ij}_{TT}$ como parte de las condiciones iniciales.
- $\bar{A}^{ij}_{L}$ típicamente será calculada mediante la restricción de
Momento.


---

## **Constraint Hamiltoniano ver. full conforme**

- Con todo lo anterior, el constraint Hamiltoniano puede escribirse **totalmente** en términos de variables conformes.
- Para el caso anterior del espaciotiempo vacío y conformalmente plano:

$$
\boxed{
\bar{D}^2 \psi + \frac{1}{8} \psi^{-7} \bar{A}^{ij}_L \bar{A}^{L}_{ij} = 0
}
$$

- Si el (o los) agujeros negros están en movimiento, el segundo término es en general $\neq0$, y $\bar{A}^{ij}_L$ debe determinarse a partir del constraint de Momento.

---

## **Constraint de Momento ver. conforme**

- Por su parte, resolver el constraint de momento para determinar $\bar{A}^{ij}_L$tampoco es trivial.
- De hecho, hasta ahora solo hemos discutido soluciones conformes del constraint Hamiltoniano.

---

## **La solución de Bowen-York**

- Puede mostrarse que la solución para agujeros negros está dada por:

- Estas se conocen como soluciones de Bowen-York.


---

## **El Método de Punctures**
- Este método permite "evitar" la singularidad en $r=0$ en la solución, incluso si el agujero negro está en movimiento.
- Para esto, en vez de trabajar directamente con $\psi$, escribimos:
$$
\psi = 1 + \frac{1}{\alpha} + u
$$
donde:
- $\frac{1}{\alpha} = \sum_n \frac{M_n}{2s_n}$ describe el comportamiento singular de $\psi$.
- $u$ es una **corrección regular** que se resuelve numéricamente.

---

## **El Método de Punctures**

Sustituyendo en la ecuación de Hamilton, obtenemos una ecuación no-lineal para $u$:

$$
\bar{D}^2 u = -\beta (\alpha + \alpha u + 1)^{-7}
$$

Esto transforma el problema en la resolución de una ecuación **elíptica regular**, i.e. sin singularidades en su dominio.

---

## **El Método de Punctures**

![Placeholder: Fig 3.1 from the book](fig_placeholder)

---

## **Extensión a Agujeros Negros Binarios**
- Para sistemas binarios, combinamos dos soluciones de Bowen-York, cada una con momento lineal $P^i$ y spin $S^i$.
- Se resuelve la ecuación elíptica para $u$ en todo el dominio.
- La elección de $P^i$ determina si la órbita es circular o excéntrica.

Ejemplo: En el **Einstein Toolkit**, el thorn *TwoPunctures* resuelve esta ecuación usando el método de Ansorg et al. (2004).

---

## **Resumen de la Clase**
- Para modelar agujeros negros binarios en relatividad numérica, necesitamos resolver ecuaciones de restricción.
- El **método de punctures** evita la singularidad dividiendo la solución en una parte singular y una corrección regular.
- Se obtiene una ecuación elíptica para $u$, que puede resolverse numéricamente.
- Este método es la base de muchas simulaciones actuales de agujeros negros.

