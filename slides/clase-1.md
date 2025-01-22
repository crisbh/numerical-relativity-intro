---
marp: true
paginate: true
math: katex
theme: gaia
size: 16:9
paginate: true
html: true
style: |
  section {
    font-size: 2.2em !important;
    font-family: 'Arial', sans-serif;
    overflow: hidden;
  }
---

# **Introducción a la Relatividad Numérica**
## Clase 1: Motivación y Aplicaciones

---

## **Objetivos del curso**

- Comprender la motivación detrás de la Relatividad Numérica.
- Explorar las aplicaciones principales en astrofísica y gravitación.
- Introducir los desafíos computacionales en la solución de las ecuaciones de Einstein.
- Familiarizarse con el papel de las simulaciones numéricas en la exploración de fenómenos gravitacionales extremos.

---

## **¿Qué es la Relatividad Numérica?**

La **Relatividad Numérica** es el campo de la física computacional que estudia la resolución de las ecuaciones de Einstein mediante técnicas numéricas. Permite explorar fenómenos gravitacionales altamente dinámicos donde los métodos analíticos no son suficientes.

$$
G_{\mu \nu} + \Lambda g_{\mu \nu} = \frac{8 \pi G}{c^4} T_{\mu \nu}
$$

Donde:
- $G_{\mu \nu}$ es el tensor de Einstein, que describe la curvatura del espaciotiempo.
- $g_{\mu \nu}$ es la métrica del espaciotiempo, la función que define la geometría del mismo.
- $T_{\mu \nu}$ es el tensor energía-momento, que representa la distribución de materia y energía.
- $\Lambda$ es la constante cosmológica, que puede influir en la evolución a gran escala del universo.

---

## **Motivación: Por qué estudiar Relatividad Numérica**

- **Ondas gravitacionales:** Permite predecir y analizar señales detectadas por observatorios como LIGO y Virgo.
- **Colisión de agujeros negros y estrellas de neutrones:** La Relatividad Numérica es esencial para modelar estos eventos y predecir sus efectos observacionales.
- **Colapso gravitacional y formación de agujeros negros:** Ayuda a comprender cómo se forman estos objetos en eventos como el colapso de supernovas.
- **Cosmología computacional:** Se pueden simular modelos de evolución del universo y probar teorías alternativas de gravedad.

---

## **Ejemplo: La primera detección de ondas gravitacionales (2015)**

En 2015, LIGO detectó por primera vez una señal de ondas gravitacionales generadas por la fusión de dos agujeros negros. Este evento confirmó la predicción de la Relatividad General de Einstein y abrió una nueva era en la astronomía.

**Imagen de la detección de ondas gravitacionales (Placeholder)**

![Inserte imagen de la señal detectada por LIGO aquí] <!-- TODO: Agregar imagen real -->

**Simulación de una fusión de agujeros negros:**

---

## **Señal de ondas gravitacionales**

```python
import matplotlib.pyplot as plt
import numpy as np

t = np.linspace(0, 1, 1000)
gw_signal = np.sin(20 * np.pi * t) * np.exp(-5 * (t - 0.5)**2)

plt.plot(t, gw_signal)
plt.xlabel("Tiempo")
plt.ylabel("Amplitud de onda gravitacional")
plt.title("Ejemplo de señal de onda gravitacional")
plt.show()
```

---

## **Desafíos Computacionales en Relatividad Numérica**

1. **Ecuaciones altamente no lineales:** Las ecuaciones de Einstein son un sistema de ecuaciones en derivadas parciales no lineales, lo que dificulta su solución numérica.
2. **Condiciones de frontera y estabilidad numérica:** Se deben diseñar algoritmos que garanticen estabilidad y precisión en la simulación de espaciotiempos curvados.
3. **Altos requerimientos computacionales:** La simulación de escenarios relativistas requiere un gran poder computacional, incluyendo el uso de supercomputadoras.

---
**Ejemplo de simulación numérica (Placeholder)**

![Inserte imagen de una simulación de agujeros negros aquí] <!-- TODO: Agregar imagen real -->

---

## **Impacto en la Ciencia y la Tecnología**

La Relatividad Numérica no solo es relevante en la investigación teórica, sino que ha tenido un impacto profundo en áreas como:

- **Astronomía de ondas gravitacionales:** Interpretación de datos obtenidos de observatorios como LIGO y Virgo.
- **Exploración de nuevas físicas:** Prueba de teorías alternativas de gravedad y materia exótica.
- **Desarrollo de algoritmos computacionales avanzados:** Métodos de integración numérica y técnicas de análisis de datos.

---

## Evaluaciones del curso
## Fechas importantes
## Reglas del curso
