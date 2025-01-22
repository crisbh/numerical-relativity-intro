---
marp: true
paginate: true
math: katex
html: true
---

# **Formalismo Tensorial: Álgebra y Operaciones Básicas**
## Clase 3

---

## **Objetivos de la Clase**
- Introducir el uso de tensores en física.
- Definir las operaciones básicas con tensores.
- Explorar el uso del formalismo tensorial en la Relatividad General.
- Resolver ejercicios prácticos sobre manipulación de tensores.

---

## **Motivación: ¿Por qué usar tensores?**
Los tensores son fundamentales en la Relatividad General y en diversas ramas de la física teórica.

**Pricipio de Relatividad de Einstein**: las leyes de la Física deben ser las mismas en todos los sistemas de
coordenadas.

En RG, las coordenadas son simplemente etiquetas para eventos. No tienen sentido físico.

- Permiten describir propiedades físicas de forma independiente del sistema de coordenadas.
  - En RG, permiten escribir ecuaciones en forma **covariante**.

---
## **Notación de indices**

En el curso de MMFII, vieron la notación de indices para vectores y matrices.

$$
V_i, M_{ij}, ...
$$

Convenciones de RG (y de este curso):
- Índices Latinos ($i$, $j$, $k$, ...) pueden tomar valores 1, 2, 3.
- Índices Griegos ($\alpha$, $\beta$, $\gamma$, ...) pueden tomar valores 0, 1, 2, 3.
- El índice 0 corresponde al tiempo.
- Los índices 1, 2, 3 corresponden a las coordenadas espaciales.

---
## **Convención de suma de Einstein**

En cualquier expresión, términos con índices repetidos están sumados.
**Nota**: Además, un índice debe estar "arriba" y otro "abajo".

$$
\sum_1^3 A^i B_i = A^i B_i = A^1B_1 + A^2B_2 + A^3B_3
$$

---
## **Ejemplos**

Producto interno.
Producto matricial.

---

## **Definición de Tensor**
Un tensor es un objeto matemático que transforma según reglas específicas bajo cambios de coordenadas.

Los tensores generalizan los conceptos de escalares, vectores y matrices.

Ejemplo de un tensor de segundo orden:

$$ T'^{\mu \nu} = \Lambda^\mu_{\,\alpha} \Lambda^\nu_{\,\beta} T^{\alpha \beta} $$

donde $\Lambda^\mu_{\,\alpha}$ representa la transformación de coordenadas.

---

## **Tipos de Tensores**

Los tensores pueden clasificarse de acuerdo a su *rango*:
- **Escalar ($T^0$):** Un número que no cambia con las coordenadas.
- **Vector ($T^1$):** Un objeto con una única fila o columna de componentes.
- **Tensor de rango 2 ($T^2$):** Una matriz que obedece transformaciones tensoriales.
- **Tensor de rango superior ($T^n$):** Generalización a múltiples índices.

---

## **La Métrica del Espaciotiempo**
Uno de los tensores más importantes en relatividad es la **métrica del espaciotiempo** $g_{\mu\nu}$.

- Define la distancia entre eventos en el espaciotiempo.
- En coordenadas cartesianas en Relatividad Especial:
  $$ g_{\mu\nu} = \begin{bmatrix} -1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix} $$
- Permite calcular productos escalares en espacio-tiempo:
  $$ ds^2 = g_{\mu\nu} dx^{\mu} dx^{\nu} $$
- En próximas clases, veremos su papel en la Relatividad General.


---

## **Operaciones Básicas con Tensores**
1. **Suma de tensores** (misma estructura):
   $$ C^{\mu\nu} = A^{\mu\nu} + B^{\mu\nu} $$

2. **Producto tensorial:**
   $$ (A \otimes B)^{\mu \nu} = A^{\mu} B^{\nu} $$

3. **Contracción de índices:**
   $$ T^\mu_{\,\mu} = g^{\mu \nu} T_{\mu \nu} $$

4. **Cambio de base:**
   $$ T'^{\mu \nu} = \Lambda^\mu_{\,\alpha} \Lambda^\nu_{\,\beta} T^{\alpha \beta} $$

---

## **Ejemplo: Producto Tensorial**
Dado los vectores:

$$ A^\mu = \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}, \quad B^\nu = \begin{bmatrix} 4 \\ 5 \\ 6 \end{bmatrix} $$

El producto tensorial es:

$$ C^{\mu\nu} = A^\mu B^\nu $$

---
Cálculo paso a paso:

$$
C^{\mu\nu} = \begin{bmatrix} 1 \times 4 & 1 \times 5 & 1 \times 6 \\
2 \times 4 & 2 \times 5 & 2 \times 6 \\
3 \times 4 & 3 \times 5 & 3 \times 6 \end{bmatrix}
= \begin{bmatrix} 4 & 5 & 6 \\
8 & 10 & 12 \\
12 & 15 & 18 \end{bmatrix}
$$

---

## **Ejemplo: Contracción de Tensores**
Dado el tensor:

$$ T^{\mu\nu} = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{bmatrix} $$

Y la métrica identidad $g^{\mu\nu} = \delta^{\mu\nu}$, la contracción es:

$$ T^\mu_{\,\mu} = \sum_{\mu} T^{\mu\mu}= 1 + 5 + 9 = 15 $$

---

## **Ejercicios Propuestos**
1. **Contracción**: Calcular la contracción del siguiente tensor:
   $$ T^{\mu\nu} = \begin{bmatrix} 3 & 1 \\ 4 & 2 \end{bmatrix} $$
2. **Transformación de Coordenadas**: Aplicar la transformación:
   $$ T'^{\mu\nu} = \Lambda^\mu_{\,\alpha} \Lambda^\nu_{\,\beta} T^{\alpha \beta} $$
   con $\Lambda = \begin{bmatrix} 0 & 1 \\ -1 & 0 \end{bmatrix}$ y $T$ dado anteriormente.
3. **Cálculo de la inversa de un tensor**: Determinar $T^{-1}$.

---

## **Conclusión**
- El formalismo tensorial es esencial en física teórica y relatividad.
- Operaciones como la suma, producto tensorial y contracción permiten manipular tensores de forma estructurada.
- En las próximas clases, estudiaremos la métrica y conexiones en espacios curvos.
- Veremos también módulos de Python para manipulación de tensores.

