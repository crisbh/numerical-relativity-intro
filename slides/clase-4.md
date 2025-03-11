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


# **La Gravedad de Einstein**
## Clase 4

---

## **Objetivos de la Clase**
- Comprender la motivación para reformular la gravedad Newtoniana.
- Introducir la idea de la curvatura del espacio-tiempo.
- Definir la métrica como el objeto fundamental en la Relatividad General.
- Explorar el intervalo espaciotemporal y la métrica de Minkowski.

---

## **Más allá de la Gravedad Newtoniana**

- En la gravedad Newtoniana, la equivalencia entre masa inercial y gravitacional es un **hecho experimental**, sin una justificación fundamental.
- **Einstein** vio esto como un indicio de una estructura más profunda.
- En lugar de depender de las propiedades individuales de los objetos, la gravedad debe ser una propiedad del **espacio-tiempo mismo**.

---

## **El Experimento Mental de Einstein**

- Consideremos dejar caer simultáneamente un **algodón** y una **bola de billar**.
- A pesar de sus masas muy diferentes, ambos caen exactamente a la misma velocidad.
- ¿Qué tienen en común? **El espacio-tiempo a través del cual caen.**
- Einstein propuso que la **curvatura del espacio-tiempo** es lo que afecta el movimiento de los objetos, no una fuerza gravitacional en sí misma.

---

## **Curvatura y Geodésicas**

- En la Relatividad General, la gravedad no es una fuerza.
- En cambio, los objetos siguen las trayectorias **más rectas posibles** en un espacio-tiempo curvo.
- Estas trayectorias se llaman **geodésicas**.

**Ejemplo:**
- En la Tierra, la ruta más corta entre dos puntos no es una línea recta en un mapa plano, sino un arco de un círculo máximo.
- De manera similar, los objetos siguen geodésicas en el espacio-tiempo curvo.

---

## **La Métrica del Espacio-Tiempo**

- Para medir la curvatura, primero debemos definir **cómo medir distancias.**
- La métrica es una herramienta que traduce diferencias en coordenadas a distancias físicas.
- En general, el **elemento de línea** se expresa como:

$$ ds^2 = g_{ab} dx^a dx^b $$

donde $g_{ab}$ es el **tensor métrico**, que define la geometría del espacio-tiempo. En RG, la métrica juega el mismo papel que el potencial gravitacional en la teoría de Newton.

---

## **El Espaciotiempo de Minkowski**

- Un caso especial es el espacio-tiempo **plano**, descrito por la métrica de Minkowski:

$$ g_{ab} = \eta_{ab} = \begin{bmatrix} -1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix} $$

- En coordenadas cartesianas $(t, x, y, z)$, tenemos:

$$ ds^2 = -dt^2 + dx^2 + dy^2 + dz^2 $$

<!-- - Es la versión relativista del **Teorema de Pitágoras**. -->

---

## **Tipos de Intervalos en Espaciotiempo**

Dependiendo del signo de $ds^2$, tenemos diferentes tipos de separación entre eventos:

1. **Intervalo Espacial ($ds^2 > 0$)**
   - Predomina la separación en espacio.
   - Puede medirse con **reglas o metros.**

---

## **Tipos de Intervalos en Espaciotiempo**

2. **Intervalo Temporal ($ds^2 < 0$)**
   - Predomina la separación en tiempo.
   - Puede medirse con **relojes.**
   - Solo objetos con masa pueden seguir trayectorias de este tipo.

3. **Intervalo Nulo ($ds^2 = 0$)**
   - Separación seguida por la luz.
   - Define los **conos de luz**, fundamentales en la causalidad.

---

## **Cono de Luz y Causalidad**

- En un diagrama espacio-tiempo, los eventos que pueden estar causalmente conectados deben estar dentro del **cono de luz**.
- Los eventos **fuera del cono de luz** no pueden afectarse mutuamente.
- Esto define el concepto de **causalidad en Relatividad Especial y General**.

---

## **Cono de Luz y Causalidad**

**Ejemplo:**
- Dos eventos separados por un intervalo **espacial** no pueden afectarse entre sí, ya que ningún objeto con masa puede viajar más rápido que la luz.

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

---

## **Ejercicios Propuestos**
1. Partiendo de la métrica de Minkowski, derivar la expresión del intervalo espaciotemporal en coordenadas esféricas.
2. Mostrar que el intervalo es **invariante bajo transformaciones de coordenadas**.

---

## **Próxima Clase: Curvatura y la Relatividad General**

- Introducción a la conexión de Levi-Civita y la derivada covariante.
- Concepto de transporte paralelo.
- Cálculo de los símbolos de Christoffel.

---
