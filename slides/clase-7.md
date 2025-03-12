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

# **La solución de agujero negro**
## Clase 7

---

## **Objetivos de la Clase**
- Derivar la solución exacta de Schwarzschild en RG.
- Interpretación física del espaciotiempo de Schwarzschild.
- Analizar propiedades geométricas como el radio areal y la curvatura.
- Introducir los diagramas de embedding para visualizar la curvatura del espaciotiempo.
- Estudiar el concepto de horizontes de agujeros negros y sus propiedades.

---

## **La Solución de Schwarzschild**
- Poco después de la publicación de la RG, **Karl Schwarzschild** encontró una solución exacta para un objeto **esféricamente simétrico** en el **vacío**.
- La **métrica de Schwarzschild** se expresa como:

  $$
  ds^2 = - \left( 1 - \frac{2M}{R} \right) dt^2 + \left( 1 - \frac{2M}{R} \right)^{-1} dR^2 + R^2 d\Omega^2
  $$

  donde $M$ representa la **masa** del objeto y $d\Omega^2 = d\theta^2 + \sin^2\theta d\phi^2$.

- Para $M = 0$, recuperamos la **métrica de Minkowski**.

---

## **Propiedades de la Solución de Schwarzschild**
- La coordenada **$R$** en la métrica tiene significado físico:  
  - La **circunferencia** de un círculo de radio $R$ es **$C = 2\pi R$**.
  - La **área** de una esfera de radio $R$ es **$A = 4\pi R^2$**.

- Estas propiedades **son invariantes en cualquier sistema de coordenadas**.
- Se denomina **radio areal** porque se relaciona directamente con medidas físicas.

---

## **Curvatura y Singularidad en Schwarzschild**
- El tensor de Riemann $R^a{}_{bcd}$ para la métrica de Schwarzschild muestra que:
  - Para **$R \to 0$**, la curvatura diverge: **singularidad espaciotemporal**.
  - Para **$R \gg M$**, el espacio-tiempo se vuelve **asintóticamente plano**.

- Schwarzschild describe una **solución de vacío**, lo que significa que no hay materia en el dominio de la solución, pero sí curvatura.

---

## **Visualización de la Curvatura: Diagramas de Embebimiento**
- Se puede visualizar la curvatura de una **sección espacial** ($t = \text{const}$) de Schwarzschild embebiéndola en un espacio tridimensional.
- Se toma la sección ecuatorial ($\theta = \pi/2$) y se define una función de altura $z(R)$:

  $$
  (2)ds^2 = \left( 1 - \frac{2M}{R} \right)^{-1} dR^2 + R^2 d\phi^2
  $$

- Comparando con la métrica de un espacio tridimensional en coordenadas cilíndricas:

  $$
  (3)ds^2 = dR^2 + R^2 d\phi^2 + dz^2
  $$

  se obtiene la ecuación diferencial para $z(R)$:

  $$
  ( 1 - \frac{2M}{R} )^{-1} = 1 + \left( \frac{dz}{dR} \right)^2
  $$

- **(Placeholder para la figura del diagrama de embebimiento)**

---

## **Solución para el Diagrama de Embebimiento**
- Integrando la ecuación diferencial se obtiene:

  $$
  z = \pm \sqrt{8M(R - 2M)}
  $$

- El resultado es un **diagrama de embebimiento en forma de garganta**, que representa cómo se curva la sección espacial en un espacio tridimensional.

- La región $R < 2M$ **no tiene solución real**, lo que indica la presencia de un **horizonte** en $R = 2M$.

- **(Placeholder para la figura del diagrama de embebimiento de Schwarzschild)**

---

## **Horizontes de Agujeros Negros**
- **Definición de horizonte:**  
  - Es una superficie que separa las regiones desde las cuales **la luz aún puede escapar** de aquellas desde las cuales **no puede escapar**.

- Para un **agujero negro de Schwarzschild**, el horizonte se encuentra en:

  $$
  R = 2M
  $$

- Se pueden definir dos tipos de horizontes:
  1. **Horizonte de eventos**: Define el límite absoluto para la causalidad.
  2. **Horizonte aparente**: Superficie donde la expansión de los rayos de luz es cero.

---

## **Transformaciones de Coordenadas en Schwarzschild**
- La métrica de Schwarzschild en su forma original presenta una **singularidad de coordenadas** en $R = 2M$.
- Se pueden hacer transformaciones de coordenadas para **remover esta singularidad**.
  
**Ejemplo: Coordenadas Isotrópicas**
- Se introduce una nueva coordenada radial $r$ definida por:

  $$
  R = r \left( 1 + \frac{M}{2r} \right)^2
  $$

- Bajo esta transformación, la métrica toma la forma:

  $$
  ds^2 = - \left( \frac{1 - M/(2r)}{1 + M/(2r)} \right)^2 dt^2 + \psi^4 (dr^2 + r^2 d\Omega^2)
  $$

  donde $\psi$ es un **factor conforme**.

---

## **Horizonte en Diferentes Coordenadas**
- En coordenadas isotrópicas, el horizonte no aparece en $R = 2M$ sino en un valor diferente de $r$.
- Esto muestra que **el horizonte es una propiedad geométrica del espacio-tiempo**, no de un sistema de coordenadas en particular.

- **(Placeholder para la figura del horizonte en diferentes coordenadas)**

---

## **Ejercicios Propuestos**
1. **Calcular la curvatura de Schwarzschild**:  
   - Demostrar que el tensor de Riemann $R^a{}_{bcd}$ diverge en $R \to 0$.
   - Mostrar que $R_{ab} = 0$ en toda la solución.

2. **Diagramas de Embebimiento**:  
   - Resolver la ecuación diferencial de $z(R)$ para construir el diagrama de embebimiento.
   - Interpretar la geometría del agujero negro.

3. **Transformaciones de coordenadas**:  
   - Aplicar la transformación $dt = dt - f(R)dR$ para eliminar la singularidad en $R = 2M$.
   - Mostrar que la nueva métrica describe el mismo espacio-tiempo en coordenadas regulares.

---

## **Resumen de la Clase**
- La **solución de Schwarzschild** describe un agujero negro estático y esféricamente simétrico.
- La **coordenada $R$** es el **radio areal**, con significado físico bien definido.
- La curvatura **diverge en $R \to 0$**, indicando una **singularidad**.
- **Diagramas de embebimiento** nos permiten visualizar la curvatura del espacio-tiempo.
- El **horizonte en $R = 2M$** marca el límite de la región desde la cual la luz no puede escapar.

---

## **Próxima Clase: Agujeros Negros Rotantes y el Espaciotiempo de Kerr**
- Generalización de Schwarzschild para rotación.
- Propiedades del horizonte y ergosfera.
- Interpretación física y aplicaciones astrofísicas.

---

