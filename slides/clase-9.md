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

# **Ondas Gravitacionales**
## Clase 9

---

## **Objetivos de la Clase**
- Derivar las ecuaciones de Einstein en el límite de campo débil.
- Entender la ecuación de onda para las perturbaciones métricas.
- Introducir la fórmula del cuadrupolo para la emisión de ondas gravitacionales.
- Discutir la detección de ondas gravitacionales y su importancia en astrofísica.
- Analizar el proceso de **inspiral** y su relación con el "chirp" de la señal gravitacional.

---

## **La Primera Detección de Ondas Gravitacionales: GW150914**
- **(Placeholder para figura de la señal de GW150914 y su ajuste con predicciones teóricas)**

---

## **Ondas Gravitacionales**
- Consideramos una **pequeña perturbación** $h_{ab}$ sobre la métrica de Minkowski:

  $$
  g_{ab} = \eta_{ab} + h_{ab}, \quad |h_{ab}| \ll 1
  $$

- Linealizando las ecuaciones de Einstein se obtiene la ecuación de onda:

  $$
  \Box \bar{h}_{ab} = -16\pi T_{ab}
  $$

  donde $\bar{h}_{ab} = h_{ab} - \frac{1}{2} \eta_{ab} h$ es la **traza inversa** de la perturbación de la métrica.

---

## **Ondas Gravitacionales**

- Para el **vacío** ($T_{ab} = 0$), se obtiene la ecuación de onda en el espacio-tiempo plano:

  $$
  \Box \bar{h}_{ab} = 0
  $$

  lo que implica la existencia de **ondas gravitacionales**.

---

## **Ondas Gravitacionales en el Vacío**
- La ecuación de onda admite soluciones de tipo **onda plana**:

  $$
  h_{ab} = A_{ab} e^{i k_c x^c}
  $$

  donde $k^c$ es el **vector de onda** y $A_{ab}$ es la **polarización**.

- Las ondas gravitacionales se propagan a la **velocidad de la luz** en el vacío.

- Solo existen **dos grados de polarización** : **plus ($+$) y cruz ($\times$)**.

---

## **Ondas Gravitacionales en el Vacío**

- **(Placeholder para figura de las polarizaciones de onda gravitacional)**

---

## **Fórmula del Cuadrupolo**
- La radiación gravitacional se origina de cambios en el **momento de cuadrupolo** del sistema.
- El perturbador métrico en el límite de campo débil está dado por:

  $$
  h_{ij}^{TT} \approx \frac{2}{d} \ddot{I}_{ij}^{TT}
  $$

  donde:
  - $d$ es la distancia al observador.
  - $\ddot{I}_{ij}^{TT}$ es la **segunda derivada del momento de cuadrupolo reducido**.

---

## **Fórmula del Cuadrupolo**

- El momento de cuadrupolo se define como:

  $$
  I_{ij} = \int \rho x^i x^j d^3x
  $$

  con su versión reducida:

  $$
  I_{ij}^{TT} = I_{ij} - \frac{1}{3} \delta_{ij} I
  $$

---

## **Sistema Binario**
- Consideremos un sistema de dos masas $m_1, m_2$ en **órbita circular** en el plano XY. El **momento cuadrupolar** es:

  $$
  I_{ij} = \frac{1}{2} \mu R^2
  \begin{bmatrix}
  1 + \cos 2\omega t & \sin 2\omega t & 0 \\
  \sin 2\omega t & 1 - \cos 2\omega t & 0 \\
  0 & 0 & 0
  \end{bmatrix}
  $$

  donde:
  - $\mu = \frac{m_1 m_2}{m_1 + m_2}$ es la **masa reducida**.
  - $R$ es la **separación orbital**.
  - $\omega$ es la **frecuencia angular orbital**.

---

## **Pérdida de Energía por Emisión de Ondas Gravitacionales**
- La tasa de emisión de energía se obtiene como:

  $$
  \frac{dE}{dt} = -\frac{1}{5} \langle \dddot{I}_{ij} \dddot{I}_{ij} \rangle
  $$

- Para un **sistema binario**, aplicando la **tercera ley de Kepler**, obtenemos:

  $$
  L_{\text{GW}} = \frac{32}{5} \frac{M^3 \mu^2}{R^5}
  $$

  donde $M = m_1 + m_2$ es la **masa total**.

---

## **El Inspiral y la Señal "Chirp"**
- La pérdida de energía **reduce el radio orbital** y **aumenta la frecuencia de la órbita**.
- Usando la relación energía-radio, obtenemos:

  $$
  \frac{dR}{dt} = - \frac{64}{5} \frac{M^2 \mu}{R^3}
  $$

- Integrando, se obtiene la frecuencia de la onda gravitacional:

  $$
  f_{\text{GW}} = \frac{5^{3/8}}{8\pi} \frac{1}{M^{5/8} (T-t)^{3/8}}
  $$

  donde $T$ es el **tiempo de coalescencia**.

---

## **El Inspiral y la Señal "Chirp"**

- **(Placeholder para figura de la señal gravitacional en forma de "chirp")**

---

## **La Primera Detección de Ondas Gravitacionales: GW150914**
- En 2015, **LIGO** detectó por primera vez ondas gravitacionales de la fusión de dos agujeros negros.
- El evento, llamado **GW150914**, confirmó directamente la predicción de Einstein.

---

## **La Primera Detección de Ondas Gravitacionales: GW150914**
- **(Placeholder para figura de la señal de GW150914 y su ajuste con predicciones teóricas)**

---

## **Ejercicios Propuestos**
1. **Derivación de la fórmula del cuadrupolo:**  
   - Demostrar que la métrica perturbada sigue la ecuación de onda.  
   - Mostrar que la solución general tiene términos de cuadrupolo.

2. **Estimación de la pérdida de energía en un sistema binario:**  
   - Usar la fórmula de cuadrupolo para estimar $\frac{dE}{dt}$.  
   - Calcular la variación del radio orbital en el tiempo.

<!-- 3. **Cálculo de la señal de "chirp":**   -->
<!--    - Derivar la ecuación para $f_{\text{GW}}$ y compararla con los datos de GW150914. -->

---

## **Resumen de la Clase**
- Las ondas gravitacionales surgen de las ecuaciones de Einstein en el régimen de campo débil.
- Su emisión sigue la **fórmula del cuadrupolo** y depende de la segunda derivada del momento de masa.
- **Sistemas binarios** pierden energía por ondas gravitacionales, provocando **inspiral**.
- La **detección de GW150914** confirmó estas predicciones y abrió la era de la **astronomía de ondas gravitacionales**.

