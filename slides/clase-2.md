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
- Revisión de la teoría de la gravedad Newtoniana como punto de partida para la
teoría de la Relatividad General.

---

## **La fuerza gravitacional de Newton**

Según Newton, la gravedad hace que los objetos sigan trayectorias curvas. La fuerza gravitacional sobre un objeto de masa $m_G$ es:

$$ F_N = m_G g $$

Donde $g$ es el campo gravitacional creado por todas las demás masas.

Es posible describir esta fuerza mediante un **campo escalar**.

---

## **El Potencial Gravitacional**

El campo gravitacional es un campo conservativo, por lo que se puede escribir como el gradiente de un potencial escalar:

$$ g = -\nabla \Phi $$

O en notación de índices:

$$ g_i = -\partial_i \Phi $$

Así, el potencial gravitacional de una masa puntual $M$ es $\Phi(r) = -\frac{GM}{r}$.

---

## **Masa gravitacional vs. Masa inercial**

La ecuación de movimiento en mecánica newtoniana es:

$$ m_I a = F_N = -m_G \nabla \Phi $$

Si la masa gravitacional y la inercial son iguales ($m_G = m_I$), la aceleración de caída libre es:

$$ a = -\nabla \Phi $$

Esto explica la observación de Galileo de que todos los cuerpos caen con la misma aceleración en ausencia de resistencia del aire.

---

## **Ecuación de Poisson**

A partir de la 2da ley de Newton, se puede derivar la ecuación de Poisson para el campo gravitacional:

$$ \nabla^2 \Phi = 4\pi G \rho $$

Donde $\rho$ es la densidad de masa. Esta ecuación es la base de la teoría newtoniana de la gravedad.

---

## **Principio de Superposición**

- Notar que ecuación de Poisson es una EDP **lineal**.
- Luego, para un sistema de múltiples masas, el potencial total es la suma de los potenciales individuales:

$$ \Phi(\mathbf{r}) = -G \sum_i \frac{m_i}{|\mathbf{r} - \mathbf{r}_i|} $$

---

## **Ejemplo: Potencial Gravitacional de una Esfera Uniforme**
- Densidad constante $\rho$.
- Resolver $\nabla^2 \Phi = 4 \pi G \rho$.

---

## **Ejemplo: Potencial Gravitacional de una Esfera Uniforme**

- En coordenadas esféricas, la solución es una función radial .
- Solución (interior):

$$ \Phi(r) = -\frac{2\pi G \rho}{3} r^2 + C $$

- Solución (exterior):

$$ \Phi(r) = -G \frac{M}{r} $$

<!-- - ¿Cómo fijar la constante de integración $C$? -->
---

## **Gravedad vs Aceleración**

- En base a los experimentos de Galileo, podríamos concluir que podemos siempre utilizar la aceleración para detectar un campo gravitacional.
- Esto no es cierto en general. Consideremos el denominado experimento mental del ascensor.


---

## **Experimento del ascensor**

Imaginemos un observador dentro de un ascensor en caída libre en presencia de un campo gravitacional. Como tanto el ascensor como el observador están sujetos a la misma aceleración gravitacional:

$$ a = -\nabla \Phi $$

el observador no siente ninguna fuerza y experimenta un entorno "sin gravedad". Este es el principio de equivalencia en su forma más básica.

---

## **Experimento del ascensor**

- Significa esto que no es posible medir el gravitacional en este escenario?
- Sí es posible medirlo, pero se requiere realizar una medición en un entorno dentro del ascensor (en principio infinitesimal).
- Consideremos dos partículas cercanas con posiciones $x^i$ y $x^i + \xi^i$.
---

## **[FIGURA AQUÍ]**
<!-- Placeholder para la figura del libro sobre el tensor de marea -->

---

## **El tensor de marea**

Las ecuaciones de movimiento difieren debido a las variaciones en el campo gravitacional:

$$ \frac{d^2 x^i}{dt^2} = -\partial^i \Phi $$

Para la separación $\xi^i$ entre las partículas:

$$ \frac{d^2 \xi^i}{dt^2} = -\partial^i \partial^j \Phi \xi^j $$

---

## **El Tensor de Marea**

Este efecto es conocido como **fuerza de marea**, y su intensidad está caracterizada por el **tensor de marea**:

$$ R_{ij} \equiv \partial_i \partial_j \Phi $$

El cual se asocia a la **ecuación de marea**:

$$ \frac{d^2 \xi^i}{dt^2} = -R^i_{\ j} \xi^j $$

Físicamente, este tensor mide cómo la gravedad estira y comprime los objetos en caída libre.

---

## **Relación con la Ecuación de Poisson**

Notar que, en coordenadas cartesianas:

$$ \nabla^2 \Phi = \partial^x\partial_x \Phi + \partial^x\partial_x \Phi +  \partial^x\partial_x \Phi = R^{i}_{i}$$

Luego, podemos reescribir la ecuación de Poisson como:

$$  R^{i}_{i} = 4\pi G \rho $$

Esta forma alternativa de la ecuación de Poisson será más cercana en forma a las ecuaciones de la relatividad general.

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
- No explica la precesión del perihelio de Mercurio.
- No predice ondas gravitacionales.

---

## **Ejercicios Propuestos**
1. Derivar la ecuación de Poisson a partir de la 2da ley de Newton y el
   principio de conservación de la masa.
2. Calcular el tensor de marea para una masa puntual.
3. Comparar la aceleración de caída libre en diferentes marcos de referencia.


