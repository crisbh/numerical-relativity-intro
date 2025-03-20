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

# **La Gravedad Newtoniana**
## Clase 2

---

## **Objetivos de la Clase**
- Revisión de la teoría de la gravedad Newtoniana como punto de partida para conectar con la teoría de la Relatividad General.

---

## **La fuerza gravitacional de Newton**

Según Newton, la **fuerza** de gravedad hace que los objetos sigan trayectorias curvas. Esta fuerza está dada por:

$$ F_N = m_G g $$

donde $m_G$ es la masa del cuerpo sometido a la fuerza, y $g$ el **campo de fuerza gravitacional** creado por todas las demás masas.

Es posible describir esta fuerza $g$ mediante un **campo escalar**.

---

## **El Potencial Gravitacional**

El campo gravitacional es un campo conservativo, por lo que se puede escribir como el gradiente de un potencial escalar:

$$ g = -\nabla \Phi $$

O en notación de índices:

$$ g_i = -\partial_i \Phi $$

Así, el potencial gravitacional debido una masa puntual $M$ es $\Phi(r) = -\frac{GM}{r}$.

---

## **Masa gravitacional vs. Masa inercial**

La ecuación de movimiento en mecánica newtoniana es:

$$ m_I a = F_N = -m_G \nabla \Phi $$

Si la masa gravitacional y la masa inercial son iguales ($m_G = m_I$), la aceleración de caída libre es:

$$ a = -\nabla \Phi $$

Esto explica la observación de Galileo de que todos los cuerpos caen con la misma aceleración (en ausencia del roce del aire).

---

## **Ecuación de Poisson**

A partir de la 2da ley de Newton es posible derivar la **ecuación de Poisson** para el campo gravitacional:

$$ \nabla^2 \Phi = 4\pi G \rho $$

donde $\rho(x)$ es la densidad de masa. 

Esta es la **ecuación de campo** para la gravedad en la teoría de Newton. En este sentido, es el equivalente Newtoniano a las Ecuaciones de Einstein de la Relatividad General.

---

## **Ecuación de Poisson**

- Notar que la ecuación anterior ya la ha encontrado en el curso de electromagnetismo.
- En tal caso, $\Phi$ juega el rol del **campo eléctrico**.
- Por lo tanto, en el caso gravitacional también se cumple la **Ley de Gauss**!
  - *La integral del campo eléctrico en sobre una superficie cerrada (flujo) es proporcional a la carga encerrada* 

---

## **Principio de Superposición**

- Notar que ecuación de Poisson es una ecuación en derivadas parciales (EDP) de tipo **lineal**.
- Luego, para un sistema de múltiples masas, el potencial total es la suma de los potenciales individuales:

$$ \Phi(\mathbf{r}) = -G \sum_i \frac{m_i}{|\mathbf{r} - \mathbf{r}_i|} $$

Qué $\rho$ se asocia a una masa puntual, y a un conjunto de ellas?

---

## **Ejemplo: Resolver la ecuación de Poisson para una masa puntual**

Resuelva la ecuación de Poisson 

$$
\nabla^2 \Phi = 4\pi G \rho
$$

para encontrar el campo producido por una masa puntual.

---

## **Ejemplo: Resolver la ecuación de Poisson para una masa puntual**

Para una masa puntual $M$ ubicada en el origen, la densidad de masa está dada por una función Delta de Dirac
$$
\rho(\mathbf{r}) = M \delta^3(\mathbf{r})
$$

Debido a la simetría esférica del problema, la ecuación de Poisson en coordinadas esféricas toma la forma:
$$
\nabla^2 \Phi = \frac{1}{r^2} \frac{d}{dr} \left( r^2 \frac{d\Phi}{dr} \right) = 4\pi G M \delta^3(\mathbf{r})
$$

---

## **Ejemplo: Resolver la ecuación de Poisson para una masa puntual**

Para $r \neq 0$ (cualquier punto del espacio fuera de la masa), tenemos:
$$
\frac{1}{r^2} \frac{d}{dr} \left( r^2 \frac{d\Phi}{dr} \right) = 0
$$

---

## **Ejemplo: Resolver la ecuación de Poisson para una masa puntual**


Integrando dos veces, encontramos:

$$
\Phi(r) = -\frac{C_1}{r} + C_2
$$

Ahora aplicamos las condiciones de borde sobre la solución.
1. Físicamente, esperamos que la solución sea *asintóticamente plana*:
   $$
   Phi\to0
   $$

---

## **Ejemplo: Resolver la ecuación de Poisson para una masa puntual**

2. Podemos aplicar un análogo de la *Ley de Gauss* 




---

## **Ejemplo: Potencial Gravitacional de una Esfera Uniforme**
Considere una esfera uniforme de radio $R$ y densidad uniforme $\rho$. 
Resolver $\nabla^2 \Phi = 4 \pi G \rho$ y encontrar el potencial asociado a dicha esfera.

---

## **Ejemplo: Potencial Gravitacional de una Esfera Uniforme**

- En coordenadas esféricas, la solución es una función radial .
- Solución (interior, $r<R$):

$$ \Phi(r) = -\frac{2\pi G \rho}{3} r^2 + C $$

- Solución (exterior, $r>R$):

$$ \Phi(r) = -G \frac{M}{r} $$

<!-- - ¿Cómo fijar la constante de integración $C$? -->
---

## **Gravedad vs Aceleración**

- En base a los experimentos de Galileo, podríamos concluir que podemos siempre utilizar la aceleración para detectar un campo gravitacional.
- Esto no es cierto en general. Consideremos el denominado experimento mental del ascensor.

---

## **Experimento del ascensor**

![Experimento del ascensor](fig)

---

## **Experimento del ascensor**

Imaginemos un observador dentro de un ascensor en caída libre en presencia de un campo gravitacional. Como tanto el ascensor como el observador están sujetos a la misma aceleración gravitacional:

$$ a = -\nabla \Phi $$

En tal caso, el observador no siente ninguna fuerza y experimenta un entorno "sin gravedad". Este es el **Principio de Equivalencia** en su forma más básica.

---

## **Experimento del ascensor**

- Significa esto que no es posible medir el campo gravitacional en este escenario?
- **Sí es posible medirlo**, pero se requiere realizar una medición **en un entorno**  dentro del ascensor (en principio, una región infinitesimal).
- Consideremos dos partículas muy cercanas, con posiciones $x^i$ y $x^i + \Delta x^i$.

---

## **[FIGURA AQUÍ]**
<!-- Placeholder para la figura del libro sobre el tensor de marea -->

---

## **El Tensor de Marea**

Las ecuaciones de movimiento difieren debido a las variaciones en el campo gravitacional:

$$ \frac{d^2 x^i}{dt^2} = -\partial^i \Phi $$

Luego, para la separación $\Delta x^i$ entre las partículas tenemos:

$$ \frac{d^2 \Delta x_i}{dt^2} = -\Delta x^j (\partial_j \partial_i \Phi)$$

---

## **El Tensor de Marea**

Este efecto es conocido como **fuerza de marea**, y su intensidad está caracterizada por el **tensor de marea**:

$$ R_{ij} \equiv \partial_i \partial_j \Phi $$

El cual se asocia a la **ecuación de marea**:

$$ \frac{d^2 \Delta x^i}{dt^2} = -R^i_{\ j} \Delta x^j $$

Físicamente, este tensor **mide cómo la gravedad estira y comprime** los objetos en caída libre.

---

## **Relación con la Ecuación de Poisson**

Notar que, en coordenadas cartesianas:

$$ \nabla^2 \Phi = \partial^x\partial_x \Phi + \partial^y\partial_y \Phi +  \partial^z\partial_z \Phi = R^{i}_{i}$$

Luego, podemos reescribir la ecuación de Poisson como:

$$  R^{i}_{i} = 4\pi G \rho $$

Esta forma alternativa de la ecuación de Poisson será más cercana en forma a las ecuaciones de la Relatividad General.

---

## **Analogía con la Relatividad General**

| Cantidad | Gravedad Newtoniana | Relatividad General |
|---|---|---|
| Campo fundamental | Potencial $\Phi$ | Métrica $g_{\mu\nu}$ |
| Ecuación de movimiento | $\partial_i \Phi$ | Símbolos de Christoffel $\Gamma^\mu_{\alpha\beta}$ |
| Tensor de marea | $\partial_i \partial_j \Phi$ | Tensor de Riemann $R^\rho_{\sigma\mu\nu}$ |
| Ecuación de campo | $\nabla^2 \Phi = 4\pi G \rho$ | $G_{\mu\nu} = 8\pi G T_{\mu\nu}$ |

---

## **Limitaciones de la Gravedad Newtoniana**
- No es relativista (incompatible con la Relatividad Especial).
- No describe correctamente objetos compactos como agujeros negros.
- No explica experimentos tales como:
  - La precesión del perihelio de Mercurio.
  - La desviación de la luz debido a la presencia de objetos masivos.
- No predice las ondas gravitacionales.

---

## **Ejercicios Propuestos**
1. Derivar la ecuación de Poisson a partir de la 2da ley de Newton y el principio de conservación de la masa.
2. Calcular el tensor de marea para una masa puntual.
<!-- 3. Comparar la aceleración de caída libre en diferentes marcos de referencia. -->


