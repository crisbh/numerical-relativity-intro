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

# **La Gravedad Newtoniana**
## Clase 2

---

## **Plan de la Clase**
- Fuerza y potencial gravitacional.
- Algunas analogías con la electroestática.
- La ecuación de Poisson para el potencial gravitacional y algunas soluciones.
- Gravedad vs aceleración.
- La ecuación de marea y conexión con Relatividad General.

---

## **La fuerza gravitacional de Newton**

Según Newton, la **fuerza** de gravedad hace que los objetos sigan trayectorias curvas. Esta fuerza está dada por:

$$ F_N = m_G g $$

donde $m_G$ es la masa del cuerpo sometido a la fuerza, y $g$ el **campo gravitacional** creado por todas las demás masas.

Es posible describir esta fuerza $g$ mediante un **campo escalar**.

---

## **El Potencial Gravitacional**

El campo gravitacional es un campo conservativo, por lo que se puede escribir como el gradiente de un potencial escalar:

$$ g = -\nabla \Phi $$

O en notación de índices:

$$ g_i = -\partial_i \Phi $$

Así, el **potencial gravitacional** debido una masa puntual $M$ es $\Phi(r) = -\frac{GM}{r}$.

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
- En tal caso, $\Phi$ juega el rol del **potencial eléctrico**:
$$
V = \frac{kQ}{r}
$$
- Por lo tanto, en el caso gravitacional también se cumple la **Ley de Gauss**!
  - *La integral del campo eléctrico sobre una superficie cerrada (flujo) es proporcional a la carga encerrada* 

---

## **Gravedad vs Electromagnetismo**
|  | **Gravedad** | **Electrostática** |
|-------------|-------------|--------------------|
| **Fuerza** | $F = \frac{GMm}{r^2}$ | $F = \frac{k q_1 q_2}{r^2}$|
| **Campo** | $g = \frac{GM}{r^2}$ | $E = \frac{kQ}{r^2}$ |
| **Potencial** | $\Phi = -\frac{GM}{r}$ | $V = \frac{kQ}{r}$ |
  | **Ecuación de Poisson** | $\nabla^2 \Phi = 4\pi G \rho$ | $\nabla^2 V = -\frac{\rho}{\epsilon_0}$ |
  | **Ley de Gauss** | $\oint_S \mathbf{g} \cdot dS = -4\pi G M_{\text{enc}}$ | $\oint_S \mathbf{E} \cdot dS = \frac{Q_{\text{enc}}}{\epsilon_0}$ |

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

Para $r \neq 0$ (cualquier punto fuera de la masa), tenemos:
$$
\frac{1}{r^2} \frac{d}{dr} \left( r^2 \frac{d\Phi}{dr} \right) = 0
$$

Integrando dos veces, encontramos:

$$
\Phi(r) = -\frac{C_1}{r} + C_2
$$

---

## **Ejemplo: Resolver la ecuación de Poisson para una masa puntual**



Ahora aplicamos las condiciones de borde sobre la solución.
1. Físicamente, esperamos una solución *asintóticamente plana*:
   $$
   \Phi(r\to\infty)\to0  \implies C_2=0
   $$

2. Para determinar $C_1$, podemos aplicar la *Ley de Gauss*:
$$
\oint_S \mathbf{g} \cdot dS =-\oint_S \mathbf{\nabla}\Phi \cdot dS = -4\pi G M_{\text{enc}}
$$
---

## **Ejemplo: Resolver la ecuación de Poisson para una masa puntual**

Integrando sobre una esfera pequeña de radio $\epsilon$, con $dS = r^2 d\Omega$, encontramos que:
$$
\left. \frac{d\Phi}{dr} \right|_{r=\epsilon} 4\pi r^2 = 4\pi G M
$$

Por lo que $C_1 = G M$. La solución final es entonces la esperada:

$$
\Phi(r) = -\frac{GM}{r}.
$$

---

## **Comentario sobre la solución** 

- Notar que aplicando la Ley de Gauss desde un comienzo también habría sido posible encontrar la solución.
- Sin embargo, no la usamos ya que el ejercicio nos pedía resolver la ecuación de Poisson.
- En general utilizar la Ley de Gauss requiere menos cálculo.
  - Tiene alguna desvetaja este método de solución?

---

## **Ejemplo: Potencial Gravitacional de una Esfera Uniforme**
Considere una esfera uniforme de radio $R$ y densidad $\rho$ constante. 
Resolver la ecuación de Poisson $\nabla^2 \Phi = 4 \pi G \rho$ y encontrar el potencial asociado a dicha esfera.

---

## **Ejemplo: Potencial Gravitacional de una Esfera Uniforme**

- En coordenadas esféricas, la solución es una función radial.
- Solución interior ($r<R$):

$$ \Phi(r) = -\frac{2\pi G \rho}{3} r^2 + C $$

- Solución exterior ($r>R$):

$$ \Phi(r) = -G \frac{M}{r} $$

<!-- - ¿Cómo fijar la constante de integración $C$? -->
---

## **Gravedad vs Aceleración**

- Galileo Galileo estudió la gravedad lanzando objetos desde la torre de Pisa y observando su movimiento.
  - Concluyó que todos los cuerpos caen con la **misma aceleración**, independiente de cual sea su masa.

- Einstein propuso el "experimento mental" de un ascensor para analizar esto en mayor detalle.
---

## **Experimento del ascensor**

![width:60%](images/ascensor-exp.webp)

---

## **Experimento del ascensor**

Ahora, extendamos el análisis anterior al caso de un rayo de luz:

![Experimento del ascensor](images/luz-ascensor.jpg)

---

## **El Principio de Equivalencia de Einstein**

En base a este experimento mental, Einstein postuló que:

*Localmente, no hay experimento físico que pueda distinguir entre un campo gravitacional, y un sistema de referencia acelerado en ausencia de gravedad.*

- Según esto, **no se puede diferenciar** entre estar en un campo gravitatorio o en un sistema acelerado.
- La **gravedad afecta la trayectoria de la luz**.

Esto motiva el entender que la **gravedad puede ser interpretada como un efecto geométrico** en el espacio-tiempo.

<!-- --- -->
<!---->
<!-- ## **Gravedad vs Aceleración** -->
<!---->
<!-- - De lo anterior, podríamos concluir que podemos siempre utilizar la aceleración para detectar un campo gravitacional. -->
<!-- - Esto no es cierto en general.  -->
<!---->
<!-- --- -->
<!---->
<!-- ## **Experimento del ascensor** -->
<!---->
<!-- Imaginemos un observador dentro de un ascensor en caída libre en presencia de un campo gravitacional. Como tanto el ascensor como el observador están sujetos a la misma aceleración gravitacional: -->
<!---->
<!-- $$ a = -\nabla \Phi $$ -->
<!---->
<!-- En tal caso, el observador no siente ninguna fuerza y experimenta un entorno "sin gravedad". Este es el **Principio de Equivalencia** en su forma más básica. -->

---

## **Experimento del ascensor**

- Se puede llegar a detectar de alguna forma el campo gravitacional en el experimento del ascensor?
- **Sí es posible medirlo**, pero se requiere realizar una medición **en un entorno** (región) dentro del ascensor.
    - No hay contradicción con lo concluido en el experimento anterior vale de forma **local**.

Consideremos, en el mismo ascensor, dos partículas muy cercanas con posiciones $x^i$ y $x^i + \Delta x^i$.

---

![Tidal forces](images/elevator-tidal-forces.png)

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
| Ecuación de movimiento | $\partial_i \Phi$ | Símbolos de Christoffel $\Gamma^\mu_{\alpha\beta}(g_{\mu\nu},\partial g_{\mu\nu}$) |
| Tensor de marea | $\partial_i \partial_j \Phi$ | Tensor de Riemann $R^\rho_{\sigma\mu\nu}$ |
| Ecuación de campo | $\nabla^2 \Phi = 4\pi G \rho$ | $G_{\mu\nu} = 8\pi G T_{\mu\nu}$ |

---

## **Limitaciones de la Gravedad Newtoniana**
- No explica experimentos tales como:
  - La desviación de la luz debido a la presencia de objetos masivos.
  - La precesión del perihelio de Mercurio.
- No es relativista (incompatible con la Relatividad Especial).
- No describe correctamente objetos compactos como agujeros negros.
- No predice las ondas gravitacionales.

---

## **Ejercicios Propuestos**
1. Derivar la ecuación de Poisson para el campo gravitacional a partir de las leyes de la gravedad Newtoniana.
2. Calcular el tensor de marea para una masa puntual.
<!-- 3. Comparar la aceleración de caída libre en diferentes marcos de referencia. -->


