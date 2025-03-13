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

# **Métodos Numéricos y el Problema de Valor de Frontera**
## Clase 14

---

## **Objetivos de la Clase**
- Revisar la representación numérica de funciones y sus derivadas.
- Comparar diferencias finitas con métodos espectrales.
- Discutir problemas de valores de frontera y ecuaciones no lineales.

---

# **Representación Numérica**

En RN se utilizan principalmente dos métodos para representar funciones numéricamente: diferencias finitas y métodos espectrales.

**Diferencias Finitas**:
- Aproximan derivadas a partir de valores en una malla:
  $$ x_i = x_0 + i \Delta x $$
- Relativamente directos de implementar y robustos.
- **Desventaja**: Convergencia más lenta comparada con métodos espectrales.

---

# **Representación Numérica**


**Métodos Espectrales**
- Expresan una función como una combinación de funciones base:
  $$ f(x) = \sum_k f_k T_k(x) $$
- Se derivan analíticamente a partir de $T_k(x)$.
- Alta precisión en funciones suaves.
- **Desventaja**: Dificultad en tratar discontinuidades.


---

# **Derivadas con Diferencias Finitas**
**Aproximaciones de la primera derivada**

- **Derivada Centrada (Segundo Orden)**
$$
f'_i \approx \frac{f_{i+1} - f_{i-1}}{2 \Delta x} + \mathcal{O}(\Delta x^2)
$$

---

# **Derivadas con Diferencias Finitas**

- **Derivada Adelantada (Primer Orden)**
$$
f'_i \approx \frac{f_{i+1} - f_i}{\Delta x} + \mathcal{O}(\Delta x)
$$

- **Derivada Atrasada (Primer Orden)**
$$
f'_i \approx \frac{f_i - f_{i-1}}{\Delta x} + \mathcal{O}(\Delta x)
$$

---

# **Diferencias Finitas de mayor grado**

Podemos obtener mejores aproximaciones expandiendo en Taylor los valores en puntos cercanos:

$$
f_{i+1} = f_i + \Delta x f'_i + \frac{1}{2} \Delta x^2 f''_i + \mathcal{O}(\Delta x^3)
$$

$$
f_{i-1} = f_i - \Delta x f'_i + \frac{1}{2} \Delta x^2 f''_i + \mathcal{O}(\Delta x^3)
$$

---

# **Diferencias Finitas de mayor grado**

Sumando y restando las ecuaciones adecuadas, podemos obtener por ejemplo para la derivada de segundo grado:

$$
f''_i \approx \frac{f_{i+1} - 2f_i + f_{i-1}}{\Delta x^2} + \mathcal{O}(\Delta x^2)
$$

---

# **Condiciones de Frontera**

Los típos de condiciones de frontera (o borde): 
- **Dirichlet**: Se fija el valor de la función en la frontera.
- **Neumann**: Se fija la derivada en la frontera.
- **Robin**: Relación lineal entre la función y su derivada.

En Relatividad Numérica también es muy útila la denominada condición de borde de **onda de salida**, la que permite que ondas salgan del dominio sin causar problemas numéricos (reflexión).

---

# **Problemas de Valor en la Frontera**
**Ejemplo: Ecuación de Poisson en 1D**

En este caso, buscamos resolver una ecuación de la forma:
$$
\frac{d^2 f}{dx^2} + g(x) f = s(x)
$$

Usando diferencias finitas:
$$
\frac{f_{i+1} - 2 f_i + f_{i-1}}{\Delta x^2} + g_i f_i = s_i
$$

---

# **Problemas de Valor en la Frontera**

Esto puede expresarse en una **forma matricial**
$$
A \cdot f = s
$$

Donde $A$ es una matriz tridiagonal, la cual buscamos invertir para encontrar $f$. Esto puede hacerse con métodos numéricos eficientes.

TODO mencionar métodos para esto.

---

# **Ecuaciones No Lineales**

La ecuación de Poisson es lineal. Sin embargo, a menudo deseamos resolver ecuaciones no lineales como:

$$
D^2 f = h(f)
$$

donde $h$ es una función que en principio depende no-linealmente de $f$.

Una posibilidad es usar el método iterativo de Newton.

---

# **Método iterativo de Newton** 

1. Aproximamos $f^{(n+1)} = f^{(n)} + \delta f$
2. Expandimos en serie de Taylor:
   $$
   D^2 (\delta f) - h'(f^{(n)}) (\delta f) = -R^{(n)}
   $$
3. Resolvemos iterativamente hasta que el residuo sea pequeño.


---

# **Extensión a 3D**
La ecuación de Poisson en 3D con diferencias finitas es:

$$
\frac{f_{i+1,j,k} - 2 f_{i,j,k} + f_{i-1,j,k}}{\Delta x^2} +
\frac{f_{i,j+1,k} - 2 f_{i,j,k} + f_{i,j-1,k}}{\Delta y^2} +
\frac{f_{i,j,k+1} - 2 f_{i,j,k} + f_{i,j,k-1}}{\Delta z^2} = s_{i,j,k}
$$


---

# **Resumen de la Clase**
- Introdujimos métodos de diferencias finitas para aproximar derivadas.
- Discutimos diferentes condiciones de frontera.
- Aprendimos a resolver ecuaciones de Poisson en 1D y 3D con diferencias finitas.
- Introdujimos el método de Newton para resolver ecuaciones no lineales.

---

# **Próxima Clase: Aplicaciones**
- Aplicaciones prácticas de estos métodos en Relatividad Numérica.


