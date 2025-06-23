---
marp: true
paginate: true
math: katex
html: true
style: |
  section {
    font-size: 2.2em !important;
    font-family: 'Arial', sans-serif;
    overflow: hidden;
  }
  img {
    display: block;
    margin: auto;
    width: 60%;
    max-width: 100%;
  }
  .video-container {
    position: relative;
    padding-bottom: 56.25%; /* 16:9 aspect ratio */
    height: 0;
    overflow: hidden;
    max-width: 100%;
    background: black;
  }
  .video-container iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
  }
---

# **Foliación del espaciotiempo y la descomposición 3+1**
## Clase 16

---

## **Objetivos de la Clase**
- El concepto de foliaciones del espaciotiempo.
- La descomposición 3+1 y su importancia en relatividad numérica.
- Ecuaciones de restricción y evolución en la formulación 3+1.

---

# **Motivación para el formalismo 3+1**
- La RG unifica el concepto de espacio y tiempo para describir la geometría del **espacio-tiempo** mediante su métrica $g_{\mu\nu}$.
- Sin embargo, en simulaciones numéricas buscamos evolucionar **un sistema en el tiempo**.
  - Por ejemplo, como orbitan dos agujeros negros en el tiempo.
- En cierto sentido, esto requiere 'dar un paso atrás' y conectar RG con una descripción de espacio y tiempo 'separados'.

---

# **Motivación para el formalismo 3+1**

- Notar que esto no quiere decir volver al régimen Newtoniano del tiempo absoluto.
  - Debemos hacerlo de forma 100% con RG.
- Esto puede hacerse mediante el **formalismo 3+1** para reescribir las EdE en una
forma conveniente.
  - Dividiremos el espacio-tiempo en **rebanadas** (hiper-superficies espaciales) parametrizadas por un tiempo $t$.
  - Describiremos como se conectan dichas rebanadas (slices).

---

# **Motivación para el formalismo 3+1**

**Una analogía:**
- En mecánica newtoniana, el estado de un sistema se describe completamente mediante **posiciones y velocidades** en cada instante de tiempo.
- En RG, podemos definir el "estado" del espacio-tiempo de manera similar.
  - Las variables básicas serán una **métrica espacial** y su respectiva 'velocidad' (la **curvatura extrínseca**).
- Esto equivale a una **descripción Hamiltoniana** de la RG.


---

# **Foliación del Espaciotiempo**

![spacetime-foliation](images/spacetime-foliation.png)

- Un espaciotiempo se puede dividir en **hipersuperficies espaciales** $\Sigma_t$ etiquetadas por un parámetro temporal $t$.
- Definimos un vector normal a estas hipersuperficies, $n^a$, tal que $n^a n_a = -1$.

---

# **Conectando dos slices vecinas**

![spacetime-foliation](images/adm-pitagoras.png)


---
# **Descomposición 3+1**
- La métrica del espaciotiempo $g_{ab}$ se descompone en:
  - **Métrica espacial inducida**: $\gamma_{ij} = g_{ij} + n_i n_j$.
    - Esta mide distancias en cada hipersuperficie **espacial**.
  - **Lapso** ($\alpha$) y **shift** ($\beta^i$):

    $$
    ds^2 = -\alpha^2 dt^2 + \gamma_{ij} (dx^i + \beta^i dt)(dx^j + \beta^j dt)
    $$

- Notablemente, esta descomposición permite reescribir las ecuaciones de Einstein en términos de dos tipos de ecuaciones: **evolución y restricción**.

---

# **La Curvatura Extrínseca**

- La **métrica inducida** $\gamma_{ij}$ juega el papel de la 'posición' en
la descripción Hamiltoniana.
- La **curvatura extrínseca** $K_{ij}$ será el análogo de la variable 'velocidad' en este formalismo. Se define como:

    $$
    K_{ij} = -\frac{1}{2} \mathcal{L}_n \gamma_{ij}
    $$

  donde $\mathcal{L}_n$ es la *derivada de Lie* en la dirección normal.
- Esta mide cómo la hipersuperficie $\Sigma_t$ se curva dentro del espacio-tiempo (como una esfera dentro del espacio 3D).


---

# **La Curvatura Extrínseca**

- Para un espacio-tiempo plano, $K_{ij} = 0$
- Para un espacio-tiempo curvo, $K_{ij} \neq 0$

---

# **Ecuaciones de RG en 3+1**
- Con este formalismo, las EdE se dividen en dos categorías: ecuaciones de restricción, y ecuaciones de evolución:
  - **Restricción**: no contienen derivadas temporales de $\gamma_{ij}$ o $K_{ij}$.
    - Son análogas a la Ec. de Poisson de la gravedad Newtoniana. Se satisfacen en cada instante de tiempo.
  - **Evolución**: sí contienen derivadas temporales de $\gamma_{ij}$ o $K_{ij}$.
    - Son análogas a la Ec. de onda para las ondas gravitacionales.

---

# **Ecuaciones de Restricción**
  - **Restricción Hamiltoniana**:

    $$
    \mathcal{H} \equiv R + K^2 - K_{ij}K^{ij} - 16\pi\rho = 0
    $$

  - **Restricción de Momento**:

    $$
    \mathcal{M}^i \equiv D_j (K^{ij} - \gamma^{ij} K) - 8\pi S^i = 0
    $$

  donde $R$ y $D_i$ son el escalar de curvatura de Ricci y la derivada
  covariante asociadas a la métrica $\gamma_{ij}$, $\rho$ la densidad, y $S^i$ el momentum (provienen de $T_{\mu\nu}$).

---

# **Ecuaciones de Evolución**
- Por otra parte, la evolución de $\gamma_{ij}$ y $K_{ij}$ está dada por:
  - **Evolución de la métrica espacial**:

    $$
    \partial_t \gamma_{ij} = -2\alpha K_{ij} + \mathcal{L}_\beta \gamma_{ij}
    $$

  - **Evolución de la curvatura extrínseca**:

    $$
    \partial_t K_{ij} = -D_i D_j \alpha + \alpha (R_{ij} + K K_{ij} - 2 K_{ik} K^k_j) + \mathcal{L}_\beta K_{ij} - 8\pi \alpha (S_{ij} - \frac{1}{2} \gamma_{ij} (S - \rho))
    $$

---

# **Relatividad Numérica en 3+1**

- En RN se suelen resolver las ecuaciones en la forma 3+1.
- Ecuaciones de evolución se modifican un poco para tener mejores propiedades numéricas.
  - Ejemplo: las formulaciones de BSSN, Z4, CCZ4, ...
- Las Ecuaciones de Restricción **no suelen resolverse durante una simulación**. Más bien:
  - Se resuelven en $t=0 \implies$ una condición inicial válida.
  - En $t>0$, se reemplazan en estas las soluciones obtenidas y se evalua su precisión (numéricamente, $\mathcal{H}\neq0$ y $\mathcal{M}^i\neq0$).


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
- Mostrar que, en el límite Newtoniano ($v/c\ll1$, $\Phi/c^2\ll1$), la restricción Hamiltoniana $\mathcal{H}=0$ se reduce a la ecuación de Poisson (puede usar cálculos simbólicos).
  - Hint: es necesario *linealizar* las expresiones, dada las condiciones del límite Newtoniano.

---

# **Ecuaciones elípticas y condiciones iniciales**
## Clase 17

---

## **Construcción de datos iniciales**
- En RG, no es trivial definir condiciones iniciales.
  - Esto en sí mismo require buscar una solución de las EdE en $t=0$.
- Ahora veremos como construir datos iniciales para agujeros negros.
- El método utiliza transformaciones conformes para la solución de la ecuaciones de restricción.

---

## **El Problema de los Datos Iniciales**
- Para evolucionar un sistema en RN (al igual que en otras áreas) necesitamos **datos iniciales válidos**.
  - Las condiciones iniciales no son totalmente "libres": deben satisfacer las EdE.
- **Problema:** Las ecuaciones de restricción de Einstein son altamente no lineales.

- Veremos un método para generar CI para **agujeros negros binarios**.

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

La proyección de las EdE en cada hipersuperficie producen:

- Restricción Hamiltoniana:
$$
R + K^2 - K_{ij} K^{ij} = 16\pi \rho
$$

- Restricción de Momentos:
$$
D_j (K^{ij} - \gamma^{ij} K) = 8\pi j^i
$$

donde $j^i$ es el momento lineal (antes utilizamos $S^i$).

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

## **Constraint Hamiltoniano ver. conforme**

Con esto, la curvatura escalar (Ricci) se reescribe como:

$$
R = \psi^{-4} \bar{R} - 8 \psi^{-5} \bar{D}^2 \psi
$$

  - $\bar{D}=\bar{\gamma}_{ij}\bar{D}_i\bar{D}_j$, donde $\bar{D}_i$ es la derivada covariante en el espacio conforme.
- $\bar{R}$ es el escalar de Ricci en el espacio conforme.

Luego, sustituyendo en la restricción Hamiltoniana, tenemos:

$$
\bar{D}^2 \psi - \frac{1}{8} \bar{R} \psi + \frac{1}{8} \psi^5 (K_{ij} K^{ij} - K^2) = -2\pi \psi^5 \rho
$$

---

## **Ejemplo: Solución de Schwarzschild**

Consideremos nuevamente el espacio vacío. Además, asumamos:
- $\beta^i=0$ (corresponde a una *elección* de coordenadas espaciales), lo que implica que $K_{ij}=0$.
- El espacio es **conformalmente plano**: $\bar{\gamma}_{ij}=\delta_{ij}$.

En este caso, el constraint Hamiltoniano se reduce a:
$$
\bar{D}^2 \psi = \nabla^2 \psi = 0
$$

Esto ya lo sabemos resolver: es la ecuación de Poisson.

<!-- --- -->
<!---->
<!-- ## **Ejemplo: Solución de Schwarzschild** -->
<!---->
<!-- En coordenadas esféricas, con simetría esférica, esto se reduce a: -->
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

- ¿Qué pasa si queremos que inicialmente los agujeros negros estén en movimiento?

Para condiciones iniciales de agujeros negros en **movimiento**, es necesario también resolver la **restricción de Momento**. Ilustraremos esto a continuación.

---

## **Descomposición Conforme de $K_{ij}$**
Ahora, descomponemos la curvatura extrínseca $K_{ij}$ como:

$$
K_{ij} = A_{ij} + \frac{1}{3} \gamma_{ij} K
$$

- $K=\gamma^{ij}K_{ij}$ es la traza de $K_{ij}$. 
  - Típicamente es fijada por la variable temporal de nuestro sistema de coordenadas (slicing).
- $A_{ij}$ es la parte sin traza de $K_{ij}$.

---

## **Descomposición Conforme de $K_{ij}$**

La parte sin traza se puede descomponer conformalmente como:

$$
A_{ij} = \psi^{-10} \bar{A}_{ij}
$$

Con esto, la restricción de Momentos se reescribe como:

$$
\bar{D}_j \bar{A}^{ij} - \frac{2}{3} \psi^6 \bar{D}^i K = 8\pi \psi^{10} j^i
$$

A su vez, es posible descomponer $\bar{A}_{ij}$ en términos de dos componentes: $\bar{A}^{ij}_L$ (longitdutinal) y $\bar{A}^{ij}_{TT}$ (transverse-traceless).

---

## **Descomposición Conforme de $K_{ij}$**

Si bien no discutiremos en detalle, cualitativamente:

- $\bar{A}^{ij}_{TT}$ es la curvatura asociada a la presencia de **ondas gravitacionales**.
- Luego, **podemos escoger** $\bar{A}^{ij}_{TT}=0$ por simplicidad.
- $\bar{A}^{ij}_{L}$ típicamente será calculada mediante la restricción de
Momento.


---

## **Constraint Hamiltoniano ver. full conforme**

- Con todo lo anterior, el constraint Hamiltoniano puede escribirse **totalmente** en términos de variables conformes.
- En el caso del espaciotiempo vacío y conformalmente plano:

$$
\boxed{
\bar{D}^2 \psi + \frac{1}{8} \psi^{-7} \bar{A}^{ij}_L \bar{A}^{L}_{ij} = 0
}
$$

- Si el (o los) agujeros negros están en movimiento, el segundo término es en general $\neq0$, y $\bar{A}^{ij}_L$ debe determinarse a partir del constraint de Momento.

---

## **Constraint de Momento ver. conforme**

- Por su parte, resolver el constraint de momento para determinar $\bar{A}^{ij}_L$ tampoco es trivial.
- De hecho, hasta ahora solo hemos discutido soluciones conformes del constraint Hamiltoniano.
- No discutiremos esta parte, pero existe una solución para $\bar{A}^{ij}_L$, conocida como **solución de Bowen-York** .

---

## **El Método de Punctures**
- Conocido $\bar{A}^{ij}_L$, nos queda por determinar $\psi$. Podemos "evitar" la singularidad en $r=0$ en la solución con el siguiente método.
- En vez de trabajar directamente con $\psi$, escribimos:
$$
\psi = 1 + \frac{1}{\alpha} + u
$$
donde:
- $\frac{1}{\alpha} = \sum_n \frac{M_n}{2s_n}$ describe el comportamiento singular de $\psi$.
- $u$ es una **corrección regular** que se resuelve numéricamente.

---

## **El Método de Punctures**

Sustituyendo en la restricción Hamiltona, obtenemos una ecuación no-lineal para $u$:

$$
\bar{D}^2 u = -\beta (\alpha + \alpha u + 1)^{-7}
$$

- Esto transforma el problema en la resolución de una ecuación **elíptica regular**, i.e. sin singularidades en su dominio.
  - Puede resolverse de forma numérica.

---

## **El Método de Punctures**

![Placeholder: Fig 3.1 from the book](images/puncture_solution.png)

---

## **Resumen de la Clase**
- Para modelar agujeros negros binarios en relatividad numérica, necesitamos resolver ecuaciones de restricción.
- El **método de punctures** evita la singularidad dividiendo la solución en una parte singular y una corrección regular.
- Se obtiene una ecuación elíptica para $u$, que puede resolverse numéricamente.
- Este método es la base de muchas simulaciones actuales de agujeros negros.


---

## **Taller: Ecuaciones de Restricción**

- Ver apéndice B.2.3 del libro "Numerical Relativity: starting from scratch".
  - Utilizar el código `puncture.py`.
- Ver parte 4 del tutorial de NRPy+.
  - Utilizar los códigos de la sección "Initial data notebooks".



