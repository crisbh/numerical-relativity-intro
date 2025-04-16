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
## Clase 6

---

## **Plan de la Clase**
- El tensor métrico y el elemento de línea.
- La curvatura del espacio(-tiempo).
- Ejemplo: la métrica de Minkowski.

---

## **Hacia la Relatividad General**

- En la gravedad Newtoniana, la equivalencia entre masa inercial y gravitacional es un **hecho experimental**, sin una justificación fundamental.
- **Einstein** vio esto como un indicio de una estructura más profunda.
- En lugar de depender de las propiedades individuales de los objetos, la gravedad debe ser una propiedad del **espacio-tiempo mismo**.
   - En particular, en una manifestación de su **curvatura**.

---

## **La métrica**

- Una **métrica** es una herramienta para medir **distancias** en un espacio.
- En coordenadas, se representa por el **elemento de línea**:

$$
ds^2 = g_{ij} dx^i dx^j
$$

- $g_{ij}$ son las **componentes del tensor métrico**.
- El espacio puede ser **plano o curvo** dependiendo de cómo se comporta $g_{ij}$.

---

## **Ejemplo: Plano Euclideano 2D**

- En coordenadas cartesianas $(x, y)$:

$$
ds^2 = dx^2 + dy^2
$$

- En coordenadas polares $(r, \theta)$:

$$
ds^2 = dr^2 + r^2 d\theta^2
$$

- Aunque la forma cambia, el espacio sigue siendo plano!
  - Es posible mostra que la curvatura es 0 en ambos casos.

---

## **Geometría curva**

Consideremos ahora una esfera. Notar que hablamos de una *superficie*, i.e. un espacio 2D. Usamos coordenadas $(\theta, \phi)$:

- $\theta$: ángulo polar (de $0$ a $\pi$)
- $\phi$: ángulo azimutal (de $0$ a $2\pi$)

La métrica en la superficie de la esfera de radio $R$ es:

$$
ds^2 = R^2 \left( d\theta^2 + \sin^2 \theta \, d\phi^2 \right)
$$


---

## **Geometría curva**

Un ejemplo de geometría curva es la superficie de una esfera:

![esfera](images/sphere_curvature.png)

---

## **Geometría curva**

- Si recorremos imaginariamente la superficie, podemos darnos cuenta que el espacio es curvo:
  - En el camino mostrado en la figura, podemos verificar que no se respeta la relación $C=2\pi S$.
  - Alternativamente, podemos trazar una trayectoria "triangular", y verificar que la suma de los ángulos internos de dicho triángulo es mayor que $180°$.

Notar que, *localmente*, la superficie de la esfera **parece plana** en vez de curva (como en el caso de la Tierra). 

---

## **La curvatura en la esfera**

- Notemos que, según la dirección (ángulo) en que nos movamos sobre la esfera, la distancia recorrida es distinta:

$$
ds^2 = R^2 d\theta^2 + R^2 \sin^2 \theta d\phi^2
$$

- A lo largo de una línea de $\theta = \text{const}$:

$$
ds = R \sin \theta d\phi \quad \text{(círculo de latitud)}
$$

- A lo largo de una línea de $\phi = \text{const}$:

$$
ds = R d\theta \quad \text{(de polo a polo)}
$$

---

## **La curvatura en la esfera**

- Es posible mostrar que la **curvatura escalar** (curvatura Gaussiana) $K$ en la esfera es:

$$
K = \frac{1}{R^2}
$$

- Esta curvatura es **constante y positiva**. En general:
- En espacios planos, $K = 0$.
- En espacios hiperbólicos, $K < 0$.
- En espacios parabólicos, $K > 0$.

---

## **Espacio vs espaciotiempo**

- Hasta ahora, hemos descrito **espacios puramente espaciales**.
- Para describir eventos en física, necesitamos agregar una **coordenada temporal** $t$.
- Antes de esto, notemos que las métricas anteriores siempre fueron tales que las distancias medidas son **positivas** .

Al agregar una coordenada temporal, esto último ya no será cierto.

---

## **Espacio vs espaciotiempo**
- Por convención, $g_{00}$ será **negativa**.

$$ ds^2 = g_{\mu\nu} dx^\mu dx^\nu $$

- Entonces, $ds^2$ podrá ser positivo, negativo, o cero.

---

## **El Espaciotiempo de Minkowski**

- Un caso particular es el espaciotiempo **plano**, que se asocia a la Relatividad Especial, y se denomina la **métrica de Minkowski**:

$$ g_{\mu\nu} = \eta_{\mu\nu} = \begin{bmatrix} -1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix} $$

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

