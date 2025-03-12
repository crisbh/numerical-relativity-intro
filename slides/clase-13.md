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
- Introducir la formulación de datos iniciales para agujeros negros binarios.
- Presentar el método de "punctures" para evitar singularidades.
- Explicar cómo resolver las ecuaciones de restricción de Einstein.

---

## **El Problema de los Datos Iniciales**
- Para evolucionar un sistema en relatividad numérica, necesitamos **datos iniciales bien definidos** que satisfagan las ecuaciones de Einstein.
- En el caso de agujeros negros binarios, los datos iniciales deben representar dos agujeros con momentos y spins arbitrarios.
- **Problema:** Las ecuaciones de restricción de Einstein son altamente no lineales.

---

## **Ecuaciones de Einstein en forma 3+1**
La **métrica del espacio-tiempo** se escribe como:

$$
ds^2 = -\alpha^2 dt^2 + \gamma_{ij} (dx^i + \beta^i dt)(dx^j + \beta^j dt)
$$

donde:
- $\alpha$ es el **lapse** (controla la evolución temporal).
- $\beta^i$ es el **shift** (controla el movimiento de las coordenadas espaciales).
- $\gamma_{ij}$ es la **métrica espacial** en la hipersuperficie.

---

## **Ecuaciones de Einstein en forma 3+1**

La **curvatura extrínseca** de la hipersuperficie se define como:

$$
K_{ij} = -\frac{1}{2} \mathcal{L}_n \gamma_{ij}
$$

donde $\mathcal{L}_n$ es la derivada de Lie en la dirección normal $n^a$.

---

## **Ecuaciones de Einstein en forma 3+1**

Las ecuaciones de Einstein proyectadas en la hipersuperficie producen:

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
- Un método para facilitar su solución es descomponer la métrica espacial en términos de un **factor conforme** $\psi$:

$$
\gamma_{ij} = \psi^4 \bar{\gamma}_{ij}
$$

donde:
- $\bar{\gamma}_{ij}$ es la **métrica conforme**, que es libremente especificada.
- $\psi$ es el **factor conforme**, el cual será determinado usando el constraint Hamiltoniano.

---

## **Descomposición Conforme de la Métrica**

![Placeholder: descomposición conforme](fig_placeholder)


---

## **Constraint Hamiltoniano ver. conforme**

La curvatura escalar (Ricci) se reescribe como:

$$
R = \psi^{-4} \bar{R} - 8 \psi^{-5} \bar{D}^2 \psi
$$

donde $\bar{D}$ representa el operador de derivada en el espacio conforme.

Sustituyendo en la restricción Hamiltoniana, tenemos:

$$
\bar{D}^2 \psi - \frac{1}{8} \bar{R} \psi + \frac{1}{8} \psi^5 (K_{ij} K^{ij} - K^2) = -2\pi \psi^5 \rho
$$

---

## **Ejemplo: Solución de Schwarzschild**

Consideremos nuevamente el espacio vacío. Asumamos además que:
- Asumamos además $\beta^i=0$, lo que implica que $K_{ij}=0$.
- Supongamos además que el espacio es conformalmente plano.

En este caso, el constraint Hamiltoniano se reduce a:
$$
\bar{D}^2 \psi = 0
$$

En coordenadas esféricas, la solución radial es $\psi = A + B/r$.

---

## **Ejemplo: Solución de Schwarzschild**

Fijando las condiciones de contorno en $r=0$ y $r\to\infty$:

$$
\psi = 1 + \frac{M}{2r}
$$

Esto corresponde a la solución de Schwarzschild. Simplemente está escrita en otro sistema de coordenadas (gauge).

---

## **Datos iniciales de Brill-Lindsquit**

- El constraint Hamiltoniano en la forma anterior, $\bar{D}^2 \psi = 0$, tiene una propiedad matemática muy importante: es **lineal**.
- Luego, la solución para un conjunto de $N$ agujeros negros estáticos puede escribirse como:

$$
\psi = 1 + \sum_{n} \frac{M_n}{2r_n}
$$

Esto se conoce como la solución **Brill-Lindquist**.

---

## **Datos iniciales de Brill-Lindsquit**

- Notemos que esta solución, si bien es analítica, es válida solo para un instante en el tiempo, e.g. una condición inicial.
- Al dejar correr el tiempo, es necesario resolver las ecuaciones de evolución, y el sistema se vuelve nuevamente no-lineal.

En general, para condiciones iniciales de agujeros negros en movimiento, es necesario también resolver la restricción de momentos.

---

## **Descomposición Conforme de $K_{ij}$**
También descomponemos la curvatura extrínseca $K_{ij}$ como:

$$
K_{ij} = A_{ij} + \frac{1}{3} \gamma_{ij} K
$$

donde:
- $K$ es la traza de $K_{ij}$, usualmente fijada por el sistema de referencia.
- $A_{ij}$ es la parte sin traza, descompuesta como:

---

## **Descomposición Conforme de $K_{ij}$**

A su vez, la parte sin traza se puede descomponer conformalmente como:

$$
A_{ij} = \psi^{-10} \bar{A}_{ij}
$$

La ecuación de momento se reescribe como:

$$
\bar{D}_j \bar{A}^{ij} - \frac{2}{3} \psi^6 \bar{D}^i K = 8\pi \psi^{10} j^i
$$

---

## **Versión conforme de los constraints**

Luego de las transformaciones anteriores, el constraint Hamiltoniano puede escribirse como

$$
\boxed{
\bar{D}^2 \psi + \frac{1}{8} \psi^{-7} \bar{A}^{ij}_L \bar{A}^{L}_{ij} = 0
}
$$

donde:
- $\psi$ es el **factor conforme**.
- $\bar{A}^{ij}_L$ es el **tensor de curvatura extrínseca sin traza**.


---

## **El Método de Punctures**
- Este método permite "evitar" la singularidad en $r=0$.
- Para esto, en vez de trabajar directamente con $\psi$, escribimos:
$$
\psi = 1 + \frac{1}{\alpha} + u
$$
donde:
- $\frac{1}{\alpha} = \sum_n \frac{M_n}{2s_n}$ describe el comportamiento singular de $\psi$.
- $u$ es una **corrección regular** que se resuelve numéricamente.

---

## **El Método de Punctures**

Sustituyendo en la ecuación de Hamilton, obtenemos una ecuación para $u$:

$$
\bar{D}^2 u = -\beta (\alpha + \alpha u + 1)^{-7}
$$

Esto transforma el problema en la resolución de una ecuación **elíptica regular**.

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

