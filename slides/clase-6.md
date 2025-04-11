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

# **Espaciotiempo y geometría**
## Clase 5

---

## **Plan de la Clase**
- Repaso notación tensorial.
- El tensor métrico y el elemento de línea.
- La curvatura del espacio(-tiempo).
- Ejemplo: la métrica de Minkowski.

---

# **Formalismo Tensorial: Álgebra y Operaciones Básicas**

---

## **¿Por qué usar tensores?**
- Los tensores son fundamentales en la Relatividad General (RG) y en diversas ramas de la física teórica.
- **Pricipio de Relatividad de Einstein**: las leyes de la Física deben ser las mismas en todos los sistemas de coordenadas.
  - En RG, las coordenadas son simplemente etiquetas para eventos. No tienen sentido físico.
- En RG, permiten escribir ecuaciones en forma **covariante**.

<!-- - Permiten describir propiedades físicas de forma independiente del sistema de coordenadas. -->


---

## **Los Tensores**

- Un **tensor** es un objeto matemático que generaliza **vectores y matrices**.
- Formalmente, se caracterizan por su comportamiento bajo *transformaciones de coordenadas*.
- Se describen usando índices, por ejemplo:
  - Escalar: sin índice, $\Phi$
  - Vector: un índice, $v^a$ o $v_a$
  - Matriz o tensor de rango-2: dos índices, $T^{ab}$, $T_{ab}$, $T^a_{b}$, $\dots$

---

## **Tipos de Tensores**

Los tensores pueden clasificarse de acuerdo a su *rango*:
- **Escalar ($T^0$):** Un número que no cambia con las coordenadas.
- **Vector ($T^1$):** Un objeto con una única fila o columna de componentes.
- **Tensor de rango 2 ($T^2$):** Una matriz que obedece transformaciones tensoriales.
- **Tensor de rango superior ($T^n$):** Generalización a múltiples índices.

---

## **Índices Covariantes y Contravariantes**

- **Índices superiores** $v^a$: denominados **contravariantes**. Representan componentes de un vector.
- **Índices inferiores** $v_a$: denominados **covariantes**. Representan componentes de un covector.

El tipo de índice determina la forma en que los objetos se transforman bajo cambios de coordenadas.

---

## **Notación de Einstein (Suma Implícita)**

- En Física, es muy común utilizar la notación de Einstein:
  - **Índice repetido implica suma sobre ese índice.**
- Por ejemplo, para un vector $v^a$ y un *covector* $w_a$:

$$
v^a w_a \equiv \sum_{a=1}^{n} v^a w_a
$$

- Ejemplo en 3 dimensiones:

$$
v^a w_a = v^1 w_1 + v^2 w_2 + v^3 w_3
$$

<!-- Esta notación simplifica expresiones tensoriales y evita símbolos de suma explícitos. -->


---

## **Operaciones Tensoriales**

**1. Contracción**:

- Reduce el rango del tensor en 2, sumando índices superior e inferior iguales:

$$
T^a_{\ a} = \sum_a T^a_{\ a}
$$

Ejemplo:

$$
R^a_{\ bad} = R_{bd} \quad\text{(Tensor de Ricci)}
$$

---

## **Operaciones Tensoriales**

**2. Producto tensorial (producto exterior)**:

- Combina tensores para aumentar su rango:

$$
A^a B^b = T^{ab}
$$

**3. Producto escalar (producto interno)**:

- Producto de un vector y covector:

$$
v^a w_a
$$

---

## **Ejemplo: Contracción y Producto Escalar**

- Dados $v^a = (1,2,3)$, $w_a = (4,5,6)$:

Producto escalar:

$$
v^a w_a = (1)(4) + (2)(5) + (3)(6) = 32
$$

Contracción del tensor $T^a_{\ b}$:

$$
T^a_{\ b} = 
\begin{pmatrix}
1 & 2 & 3\\
0 & 4 & 5\\
7 & 8 & 9
\end{pmatrix}
$$

---

## **Ejemplo: Contracción y Producto Escalar**

Contracción $T^a_{\ a}$:

$$
T^a_{\ a} = T^1_{\ 1} + T^2_{\ 2} + T^3_{\ 3} = 1 + 4 + 9 = 14
$$

Notar que este tipo de contracción equivale a tomar **la traza** del tensor.

---

## **Ejemplo: Producto Tensorial**
Dado los vectores:

$$ A^\mu = \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}, \quad B^\nu = \begin{bmatrix} 4 \\ 5 \\ 6 \end{bmatrix} $$

El producto tensorial es:

$$ C^{\mu\nu} = A^\mu B^\nu $$

---
## **Ejemplo: Producto Tensorial**

$$
C^{\mu\nu} = \begin{bmatrix} 1 \times 4 & 1 \times 5 & 1 \times 6 \\
2 \times 4 & 2 \times 5 & 2 \times 6 \\
3 \times 4 & 3 \times 5 & 3 \times 6 \end{bmatrix}
= \begin{bmatrix} 4 & 5 & 6 \\
8 & 10 & 12 \\
12 & 15 & 18 \end{bmatrix}
$$

---

## **Simetría y Antisimetría**

- Existen ciertos tensores que satisfacen propiedades de simetría:

**Tensor simétrico**:

$$
S_{ab} = S_{ba}
$$

**Tensor antisimétrico**:

$$
A_{ab} = -A_{ba}, \quad A_{aa} = 0
$$

---

## **Los tensores y la geometría**

- Los tensores (escalares, campos vectoriales, campos tensoriales) son en general funciones de las coordenadas:
   - Sus valores pueden variar de punto a punto en el espacio y tiempo, e.g., $\Phi$, $\vec{g}$, $\vec{E}$, $\vec{x}$, $\vec{v}$ ...
- Por lo tanto, los tensores no son objetos abstractos que "viven en el vacío": están definidos sobre un *espacio(-tiempo)*.

   Además de tensores que representan "cantidades físicas", la geometría del espacio(-tiempo) tiene sus propios tensores.

---

## **El tensor métrico**

- Existe un tensor muy especial, el **tensor métrico**: $g_{ab}$.
- Dado un tensor métrico $g_{ab}$, podemos bajar índices:

$$
v_a = g_{ab} v^b
$$

- Con el tensor métrico inverso $g^{ab}$, podemos subir índices:

$$
w^a = g^{ab} w_b
$$

El tensor métrico es **simétrico** , y actúa como un **mapa entre vectores y covectores**.


---

## **Resumen: Operaciones Tensoriales**

| Operación | Notación | Resultado |
|-----------|----------|---------|
| Producto tensorial | $A^a B^b$  | aumenta rango |
| Contracción |  $T^a_{\ a}$ | reduce rango en 2 |
| Producto escalar | $v^a w_a$ | resultado escalar |
| Subir/Bajar índices | $v_a = g_{ab} v^b$ | índice cambia posición |

<!-- --- -->
<!---->
<!-- ## **Ejercicio** -->
<!---->
<!-- Dado el tensor $T^{ab}$: -->
<!-- $$ -->
<!-- T^{ab} =  -->
<!-- \begin{pmatrix} -->
<!-- 1 & 2 & 3 \\ -->
<!-- 4 & 5 & 6 \\ -->
<!-- 7 & 8 & 9 -->
<!-- \end{pmatrix} -->
<!-- $$ -->
<!---->
<!-- y el tensor métrico plano $g_{ab} = \text{diag}(1,1,1)$: -->
<!---->
<!-- - Calcular la contracción $T^a_{\ a}$. -->
<!-- - Calcular $T_{ab}$ bajando ambos índices con $g_{ab}$. -->
<!-- - Verificar si $T_{ab}$ es simétrico, antisimétrico o ninguno. -->

<!-- --- -->
<!---->
<!-- ## **La Métrica del Espaciotiempo** -->
<!-- Un tensor fundamental en Relatidad es la **métrica del espaciotiempo** $g_{\mu\nu}$. -->
<!---->
<!-- - Define la distancia entre eventos en el espaciotiempo. -->
<!-- - En Relatividad Especial, en coordenadas cartesianas: -->
<!--   $$ g_{\mu\nu} \equiv \eta_{\mu\nu} = \begin{bmatrix} -1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix} $$ -->
<!---->
<!-- --- -->
<!---->
<!-- ## **La Métrica del Espaciotiempo** -->
<!-- - Permite calcular productos escalares en espacio-tiempo: -->
<!--   $$ ds^2 = g_{\mu\nu} dx^{\mu} dx^{\nu} $$ -->
<!-- - En próximas clases, veremos su papel en la Relatividad General. -->
<!---->
<!---->
<!---->
<!-- --- -->
<!---->
<!-- ## **Conclusión** -->
<!-- - El formalismo tensorial es esencial en la Física. -->
<!-- - La notación de Einstein simplifica las expresiones tensoriales -->
<!-- - Subir y bajar índices requiere el uso del tensor métrico. -->
<!-- - La contracción permite reducir el rango del tensor. -->
<!---->
<!---->
---

## **Hacia la Relatividad General**

- En la gravedad Newtoniana, la equivalencia entre masa inercial y gravitacional es un **hecho experimental**, sin una justificación fundamental.
- **Einstein** vio esto como un indicio de una estructura más profunda.
- En lugar de depender de las propiedades individuales de los objetos, la gravedad debe ser una propiedad del **espacio-tiempo mismo**.
   - En particular, en una manifestación de su **curvatura**.

---

## **Geometría curva**

![Experimento del ascensor](images/sphere_curvature.png)

---

## **Curvatura y Geodésicas**

- En Relatividad General, **la gravedad no es una fuerza**.
- Los objetos siguen las trayectorias **más rectas posibles** en un espacio-tiempo curvo.
   - Estas trayectorias se llaman **geodésicas**.

**En el ejemplo anterior:**
- En la Tierra, la ruta más corta entre dos puntos no es una línea recta en un mapa plano, sino un arco de un círculo máximo.
<!-- - De manera similar, los objetos siguen geodésicas en el espacio-tiempo curvo. -->

---

## **Curvatura y Geodésicas**
- Formalmente, las **geodésicas** son trayectorias que extremizan la *acción* que describe una partícula en la RG.
   - **Principio de Fermat**: La luz sigue el camino que minimiza el tiempo de viaje.
   - **Extensión de Einstein**: Los cuerpos con masa siguen trayectorias que **maximizan el tiempo propio**.
<!-- - Ejemplo: **Paradoja de los gemelos** → El gemelo viajero envejece menos. -->



---

## **La Métrica del Espacio-Tiempo**

- Para medir curvatura, debemos definir **cómo medir distancias.**
- El tensor métrico (*la métrica*) es una herramienta que traduce diferencias en coordenadas a distancias físicas.
- El **elemento de línea** nos da una distancia infinitesimal:

$$ ds^2 = g_{ab} dx^a dx^b $$

donde $g_{ab}$ es el **tensor métrico**, que define la geometría del espacio-tiempo. En RG, la métrica juega el mismo papel que el potencial gravitacional en la teoría de Newton.

---

## **El Espaciotiempo de Minkowski**

- Un caso particular es el espaciotiempo **plano**, que se asocia a la Relatividad Especial, y se denomina la **métrica de Minkowski**:

$$ g_{ab} = \eta_{ab} = \begin{bmatrix} -1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix} $$

- En coordenadas cartesianas $(t, x, y, z)$, tenemos:

$$ ds^2 = -dt^2 + dx^2 + dy^2 + dz^2 $$

<!-- - Es la versión relativista del **Teorema de Pitágoras**. -->

---
## **Cono de luz y causalidad**


![diagrama](images/lightcone_diagram.png)

---

## **Tipos de Intervalos en Espaciotiempo**

Dependiendo del signo de $ds^2$, tenemos diferentes tipos de separación entre eventos:

1. **Intervalo Espacial ($ds^2 > 0$)**
   - Predomina la separación en espacio.
   - Puede medirse con **reglas**.

---

## **Tipos de Intervalos en Espaciotiempo**

2. **Intervalo Temporal ($ds^2 < 0$)**
   - Predomina la separación en tiempo.
   - Puede medirse con **relojes.**
   - Los objetos con masa solo pueden seguir trayectorias de este tipo.

3. **Intervalo Nulo ($ds^2 = 0$)**
   - Trayectoria seguida por la luz.
   - Define los **conos de luz**, lo cuales definen la **causalidad** .

---

## **Cono de Luz y Causalidad**

- En un diagrama espacio-tiempo, los eventos que pueden estar causalmente conectados deben estar dentro del **cono de luz**.
- Los eventos **fuera del cono de luz** no pueden afectarse mutuamente.
- Esto define la **causalidad en Relatividad Especial y General**.

**Ejemplo:**
- Dos eventos separados por un intervalo **espacial** no pueden afectarse entre sí, ya que ningún objeto puede viajar más rápido que la luz.


---

## **Coordenadas Esféricas**

Podemos transformar la métrica de Minkowski a coordenadas esféricas $(t, R, \theta, \phi)$, obteniendo:

$$ g_{ab} = \begin{bmatrix} -1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & R^2 & 0 \\ 0 & 0 & 0 & R^2 \sin^2\theta \end{bmatrix} $$

El elemento de línea asociado es:

$$ ds^2 = -dt^2 + dR^2 + R^2 d\theta^2 + R^2 \sin^2\theta d\phi^2 $$

O usando el ángulo sólido $d\Omega^2$:

$$ ds^2 = -dt^2 + dR^2 + R^2 d\Omega^2, $$

con:

$$ d\Omega^2 = d\theta^2 + \sin^2\theta d\phi^2. $$

---

## **Coordenadas Esféricas**

Podemos medir la distancia propia desde el origen hasta un punto con coordenada radial $R$:

- Elegimos un camino a **tiempo constante** y sin cambios angulares ($dt = d\theta = d\phi = 0$).
- A partir de la métrica:

$$ dl = \sqrt{ds^2} = dR $$

---

## **Coordenadas Esféricas**

- Integrando:

$$ l = \int_0^R dR' = R. $$

Este resultado es consistente con nuestra intuición de la distancia en coordenadas esféricas.


---

## **Resumen de la Clase**

- La equivalencia entre masas inercial y gravitacional llevó a Einstein a considerar que la gravedad es una propiedad del **espacio-tiempo**.
- En lugar de fuerzas, los objetos se mueven en **geodésicas** dentro del espacio-tiempo curvo.
- El **tensor métrico** define la geometría del espacio-tiempo y reemplaza al potencial gravitacional de Newton.
- La métrica de Minkowski describe un espacio-tiempo plano y define intervalos espacio-temporales.
- Los **conos de luz** delimitan la causalidad en Relatividad.

<!-- --- -->
<!---->
<!-- ## **Ejercicios Propuestos** -->
<!-- 1. Partiendo de la métrica de Minkowski, derivar la expresión del intervalo espaciotemporal en coordenadas esféricas. -->
<!-- 2. Mostrar que el intervalo es **invariante bajo transformaciones de coordenadas**. -->

