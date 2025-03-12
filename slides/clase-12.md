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

# **Foliación del espaciotiempo y la descomposición 3+1**
## Clase 12

---

## **Objetivos de la Clase**
- Introducir el concepto de foliaciones del espaciotiempo.
- Definir la descomposición 3+1 y su importancia en relatividad numérica.
- Presentar las ecuaciones de restricción y evolución en la formulación 3+1.
- Analizar ejemplos clave de foliaciones y su aplicación en simulaciones numéricas.

---

# **Motivación para la Descomposición 3+1**
- La Relatividad General describe la geometría del **espacio-tiempo** como un todo.
- Sin embargo, en simulaciones numéricas queremos evolucionar un sistema en el **tiempo**.
- Esto requiere dividir el espacio-tiempo en **rebanadas** (hiper-superficies espaciales) parametrizadas por un tiempo \( t \).

---

# **Motivación para la Descomposición 3+1**

**Ejemplo:**
- En mecánica newtoniana, el estado de un sistema se describe por **posiciones y velocidades** en cada instante de tiempo.
- En RG, debemos definir el "estado" del espacio-tiempo de manera similar, separando lo **espacial** de lo **temporal**.

---

# **Foliaciones del Espaciotiempo**
- Un espaciotiempo $(\mathcal{M}, g_{ab})$ se puede dividir en **hipersuperficies espaciales** $\Sigma_t$ etiquetadas por un parámetro temporal $t$.
- Definimos un vector normal a estas hipersuperficies, $n^a$, tal que $n^a n_a = -1$.
- Cada foliación define un marco de referencia natural para observadores en caída libre.

---

# **Foliaciones del Espaciotiempo**
- **(Placeholder para figura foliacion del espaciotiempo)**

---

# **Descomposición 3+1**
- La métrica del espaciotiempo $g_{ab}$ se descompone en:
  - **Métrica inducida espacial**: $\gamma_{ij} = g_{ij} + n_i n_j$.
  - **Lapse** ($\alpha$) y **shift** ($\beta^i$):

    $$
    ds^2 = -\alpha^2 dt^2 + \gamma_{ij} (dx^i + \beta^i dt)(dx^j + \beta^j dt)
    $$

- Notablemente, esta descomposición permite reescribir las ecuaciones de Einstein en términos de **ecuaciones de evolución y restricciones**.

---

# **La Curvatura Extrínseca**
- Definimos la **curvatura extrínseca** $K_{ij}$ como:

    $$
    K_{ij} = -\frac{1}{2} \mathcal{L}_n \gamma_{ij}
    $$

  donde $\mathcal{L}_n$ es la derivada de Lie en la dirección normal.
- Mide cómo la hipersuperficie $\Sigma_t$ se curva dentro del espacio-tiempo.


---

# **La Curvatura Extrínseca**

**Ejemplo:**
Para un espacio-tiempo plano, $K_{ij} = 0$, mientras que para una estrella de neutrones en colapso, $K_{ij}$ es grande.

---

# **Ecuaciones de Restricción**
- Las EdE se dividen en restricciones y evolución:
  - **Restricción Hamiltoniana**:

    $$
    \mathcal{H} = R + K^2 - K_{ij}K^{ij} - 16\pi\rho = 0
    $$

  - **Restricción de Momento**:

    $$
    \mathcal{M}^i = D_j (K^{ij} - \gamma^{ij} K) - 8\pi S^i = 0
    $$

  donde $R$ es la curvatura escalar inducida y $\rho, S^i$ provienen del tensor energía-momento.

---

# **Ecuaciones de Evolución**
- La evolución de $\gamma_{ij}$ y $K_{ij}$ está dada por:
  - **Evolución de la métrica espacial**:

    $$
    \partial_t \gamma_{ij} = -2\alpha K_{ij} + \mathcal{L}_\beta \gamma_{ij}
    $$

  - **Evolución de la curvatura extrínseca**:

    $$
    \partial_t K_{ij} = -D_i D_j \alpha + \alpha (R_{ij} + K K_{ij} - 2 K_{ik} K^k_j) + \mathcal{L}_\beta K_{ij} - 8\pi \alpha (S_{ij} - \frac{1}{2} \gamma_{ij} (S - \rho))
    $$

**Ejemplo:**
En un espacio-tiempo de Schwarzschild, si $K_{ij} = 0$, obtenemos un espaciotiempo estático.

<!-- --- -->
<!---->
<!-- # **Comparación con Otras Teorías de Campos** -->
<!-- | Teoría               | Variables Dinámicas         | Variables de Calibre    | Ecuaciones de Evolución | Ecuaciones de Restricción | -->
<!-- |----------------------|---------------------------|------------------------|-------------------------|--------------------------| -->
<!-- | **Campo Escalar**    | \( \psi, \kappa \)        | —                      | 2                       | 0                        | -->
<!-- | **Electrodinámica**  | \( A_i, E_i \)            | \( \phi \)             | 6                       | 1                        | -->
<!-- | **Relatividad General** | \( \gamma_{ij}, K_{ij} \) | \( \alpha, \beta^i \) | 12                      | 4                        | -->
<!---->
<!-- > **Interpretación:** -->
<!-- > - La Relatividad General tiene mayor número de ecuaciones y grados de libertad debido a la curvatura del espacio-tiempo. -->
<!-- > - A diferencia de un campo escalar, donde las condiciones iniciales pueden elegirse libremente, en Relatividad General deben satisfacer **restricciones**. -->
<!---->
---

# **Ejercicios Propuestos**
1. Demostrar que la restricción Hamiltoniana se reduce a la ecuación de Poisson en el límite newtoniano.
2. Calcular explícitamente los símbolos de Christoffel para la métrica inducida $\gamma_{ij}$.

---

