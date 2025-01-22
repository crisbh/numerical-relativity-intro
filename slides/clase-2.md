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

# **Relatividad Especial y el Espaciotiempo de Minkowski**
## Clase 2

---

## **Objetivos de la Clase**

- Repaso de la Relatividad Especial.
- Introducir el concepto de espaciotiempo de Minkowski.
- Analizar la estructura matemática de la métrica de Minkowski.
- Entender el Principio de Equivalencia y su relación con la curvatura del espaciotiempo.
- Diferenciar entre espaciotiempos planos y curvos.
- Conectar la Relatividad Especial con la Relatividad General en términos de curvatura.

---

## **Historia y Contexto**

Hermann Minkowski formalizó el concepto de espaciotiempo en 1908, unificando el tiempo y el espacio en una estructura geométrica única.

- La Relatividad Especial reformula la física clásica en términos de una geometría cuadridimensional.
- Este marco permite comprender la transformación del tiempo y el espacio bajo diferentes sistemas de referencia.

**Retrato de Minkowski (Placeholder)**

![Imagen de Hermann Minkowski] <!-- TODO: Agregar imagen real -->

---

## **Concepto de Espaciotiempo**

- En la mecánica clásica, el espacio y el tiempo son entidades separadas.
- En Relatividad Especial, están unificados en una única estructura: el espaciotiempo.
- Cada *evento* en el universo se representa con cuatro coordenadas $(t, x, y, z)$.

---

## **Diferencia entre Espaciotiempo Plano y Curvo**

De acuerdo a la Relatividad General, la gravedad **no es una fuerza**, si no el resultado de la deformación del espaciotiempo.

- **Espaciotiempo plano**: Sin gravedad, descrito por la métrica de Minkowski.
- **Espaciotiempo curvo**: Con gravedad, debido a que la presencia de masa-energía deforma su geometría.

---

## **Métrica del Espaciotiempo de Minkowski**

La **métrica** permite definir la distancia entre dos eventos en el espaciotiempo:

$$
 ds^2 = -c^2 dt^2 + dx^2 + dy^2 + dz^2
$$

donde
- $ds^2$: **intervalo espaciotemporal**.
- $dt, dx, dy, dz$: diferencias de coordenadas temporales y espaciales.
- $c$: velocidad de la luz.

---

## **Representación Gráfica del Espaciotiempo**

- Los diagramas espacio-tiempo muestran la trayectoria de partículas y eventos.
- Se utilizan conos de luz para representar las regiones causalmente conectadas.

**Ejemplo de diagrama de espaciotiempo (Placeholder)**

![Inserte diagrama aquí] <!-- TODO: Agregar imagen real -->

---

## **Interpretación del Intervalo Espaciotemporal**

El intervalo espaciotemporal define la relación causal entre eventos:

- **Tipo tiempo** ($ds^2 < 0$): Puede existir una conexión causal entre eventos.
- **Tipo luz** ($ds^2 = 0$): Eventos en el cono de luz.
- **Tipo espacio** ($ds^2 > 0$): No hay conexión causal posible.

---

**Ejemplo de diagrama de espaciotiempo (Placeholder)**

![Inserte diagrama aquí] <!-- TODO: Agregar imagen real -->


---

## **Transformaciones de Lorentz**

Las transformaciones de Lorentz permiten conectar coordenadas en diferentes sistemas inerciales:

$$
\begin{aligned}
    t' &= \gamma (t - \frac{vx}{c^2}) \\
    x' &= \gamma (x - vt) \\
    y' &= y \\
    z' &= z
\end{aligned}
$$

Con el factor de Lorentz $\gamma \equiv \frac{1}{\sqrt{1 - \frac{v^2}{c^2}}}$.

---

<!-- ## **Ejemplo Numérico: Transformación de Lorentz** -->
<!---->
<!-- ```python -->
<!-- import numpy as np -->
<!---->
<!-- def gamma(v, c=1): -->
<!--     return 1 / np.sqrt(1 - v**2 / c**2) -->
<!---->
<!-- def transformacion_lorentz(t, x, v, c=1): -->
<!--     g = gamma(v, c) -->
<!--     t_prime = g * (t - v*x/c**2) -->
<!--     x_prime = g * (x - v*t) -->
<!--     return t_prime, x_prime -->
<!---->
<!-- t, x = 1, 1  # Evento en el sistema original -->
<!-- v = 0.5  # Velocidad relativa -->
<!---->
<!-- t_prime, x_prime = transformacion_lorentz(t, x, v) -->
<!-- print(f"Coordenadas transformadas: t'={t_prime}, x'={x_prime}") -->
<!-- ``` -->
<!---->
<!-- --- -->

## **Consecuencias Físicas de la Relatividad Especial**

1. **Dilatación del tiempo**: Un reloj en movimiento mide intervalos de tiempo más largos.
2. **Contracción de la longitud**: Una vara en movimiento se mide como más corta en la dirección del movimiento.
3. **Simultaneidad relativa**: Dos eventos simultáneos en un marco pueden no serlo en otro.

---

## **Principio de Equivalencia**

El **Principio de Equivalencia** establece que la gravedad y la aceleración pueden ser indistinguibles en ciertos marcos de referencia.

---
## **Experimento Mental del Ascensor de Einstein**

- Si un observador dentro de un ascensor cerrado siente una fuerza hacia el suelo, podría deberse a la gravedad o a una aceleración.
- En ausencia de fuerzas externas, un objeto dentro del ascensor caerá exactamente como lo haría en un campo gravitacional.
- Esto sugiere que la gravedad puede entenderse como una aceleración.

**Imagen ilustrativa del experimento del ascensor (Placeholder)**

![Inserte imagen del experimento aquí] <!-- TODO: Agregar imagen real -->

---
## **Principio de Equivalencia**

Según el Principio de Equivalencia de Einstein:

- No es posible distinguir entre un campo gravitatorio uniforme y un sistema de referencia acelerado.
- Un observador en caída libre no experimenta gravedad.
- La gravedad es una manifestación de la curvatura del espaciotiempo.

---

## **Principio de Equivalencia**

**Imagen de un experimento de caída libre (Placeholder)**

![Inserte imagen aquí] <!-- TODO: Agregar imagen real -->

---

## **De la Relatividad Especial a la Relatividad General**

- En Relatividad Especial, los objetos siguen trayectorias rectas en el espaciotiempo de Minkowski.
- En presencia de gravedad, estas trayectorias se curvan debido a la geometría del espaciotiempo.
- La Relatividad General describe la gravedad como una deformación de la métrica espaciotemporal.

---

**Comparación de trayectorias en espacios planos y curvos (Placeholder)**

![Inserte imagen aquí] <!-- TODO: Agregar imagen real -->

---

## **Tensor de Curvatura de Riemann**

El **tensor de curvatura de Riemann** cuantifica la curvatura del espaciotiempo:

$$
R^{\rho}_{\sigma\mu\nu} = \partial_{\mu} \Gamma^{\rho}_{\nu\sigma} - \partial_{\nu} \Gamma^{\rho}_{\mu\sigma} + \Gamma^{\rho}_{\mu\lambda} \Gamma^{\lambda}_{\nu\sigma} - \Gamma^{\rho}_{\nu\lambda} \Gamma^{\lambda}_{\mu\sigma}
$$

- Si $R^{\rho}_{\sigma\mu\nu} = 0$, el espaciotiempo es plano.
- Si es distinto de cero, hay curvatura, y por lo tanto gravedad.

Más detalles dentro de las próximas clases.

---

## **Pruebas Experimentales de la Relatividad General**

- **Desviación de la luz por el Sol** (Eddington, 1919).
- **Corrimiento gravitacional al rojo** (Pound-Rebka, 1959).
- **Correcciones relativistas en el GPS**.

**Imagen de una prueba experimental (Placeholder)**

![Inserte imagen aquí] <!-- TODO: Agregar imagen real -->

---

## **Efecto de la Gravedad en el Tiempo**

La Relatividad General predice que el tiempo transcurre más lentamente en presencia de un campo gravitacional, i.e. existe una dilatación temporal gravitacional:

$$
\Delta t' = \Delta t \sqrt{1 - \frac{2GM}{rc^2}}
$$

---

Ejemplo: en el caso de la Tierra:

```python
import numpy as np

def dilatacion_gravitacional(t, M, r, G=6.674e-11, c=3e8):
    factor = np.sqrt(1 - (2 * G * M) / (r * c**2))
    return t * factor

# Tiempo en reposo y en presencia de gravedad
t = 1  # segundo
M = 5.972e24  # masa de la Tierra en kg
r = 6.371e6  # radio de la Tierra en metros

print(f"Tiempo medido cerca de la Tierra: {dilatacion_gravitacional(t, M, r)} segundos")
```

---

## **Conclusión**

- El Principio de Equivalencia conecta la gravedad con la aceleración.
- La Relatividad General describe la gravedad como curvatura del espaciotiempo.
- Las ecuaciones de Einstein permiten modelar la influencia de la masa y energía en la geometría del universo.


