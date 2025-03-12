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

# **Las ecuaciones de campo de Einstein**
## Clase 6

---

## **Objetivos de la Clase**
- Entender la motivación de las ecuaciones de Einstein a partir de la gravedad Newtoniana.
- Definir el tensor de Ricci y el escalar de Ricci.
- Introducir el tensor energía-momento como fuente de la curvatura del espacio-tiempo.
- Construir el tensor de Einstein y explicar su papel en las ecuaciones de campo.
- Discutir la estructura matemática de las ecuaciones de Einstein y su complejidad.

---

## **Motivación: De la gravedad Newtoniana a la Relatividad General**
- En la gravedad Newtoniana, la interacción gravitacional se describe mediante el **potencial (o campo) gravitacional** $\Phi$, el que satisface la **ecuación de Poisson**:

  $$
  \nabla^2 \Phi = 4\pi G \rho
  $$

- Esta ecuación relaciona la **curvatura del potencial** con la densidad de masa $\rho$.
- En RG buscamos una ecuación análoga, pero en términos de la **métrica del espacio-tiempo** $g_{ab}$.

---

## **El Tensor y el Escalar de Ricci**
- El **tensor de Riemann** visto en clases anteriores describe completamente la curvatura del espacio-tiempo, pero existen cantidades derivadas útiles.
- Contrayendo sus índices obtenemos el **tensor de Ricci**:

  $$
  R_{ab} = R^c{}_{acb}
  $$

- El **escalar de Ricci** se obtiene como la traza del tensor de Ricci:

  $$
  R = g^{ab} R_{ab}
  $$


---

## **El Tensor Energía-Momento**
- En RG, la materia y la energía están representadas por el **tensor energía-momento** $T_{ab}$:

  $$
  T^{ab} =
  \begin{bmatrix}
  \text{energía} & \text{momento} \\
  \text{momento} & \text{estrés}
  \end{bmatrix}
  $$

- **Interpretación física**:
  - $T^{tt}$: **Densidad de energía** (ejemplo: $\rho$ para un fluido).
  - $T^{ti}$: **Flujo de energía** o **densidad de momento**.
  - $T^{ij}$: **Tensor de esfuerzos** (e.g.: presión en un fluido $P\delta^{ij}$).

---

## **El Tensor Energía-Momento**

- En el **vacío**, $T^{ab} = 0$, lo que nos da las ecuaciones de Einstein en **vacío**.

---

## **Conservación del Tensor Energía-Momento**
- En RG existe la noción de **conservación local** de la energía y el momento. Esta condición se expresa como:

  $$
  \nabla^b T_{ab} = 0
  $$

- Esto significa que la materia no puede "desaparecer" ni "aparecer" en ninguna región del espacio-tiempo, sino que fluye.
- **Ejemplo:** Un fluido perfecto con densidad $\rho$ y presión $P$ cumple:

  $$
  \frac{d\rho}{dt} + (\rho + P) \nabla \cdot v = 0
  $$

  que describe la conservación de la masa y energía.

---

## **Construcción del Tensor de Einstein**
Al igual que Newton al proponer su teoría de la gravedad, Einstein propuso sus ecuaciones de campo para la RG. Estas:
- Deben relacionar la curvatura con la materia.
- Utilizan una combinación especial del **tensor de Ricci** y el **escalar de Ricci**, la cual nos da el **tensor de Einstein**:

  $$
  G_{ab} \equiv R_{ab} - \frac{1}{2} R g_{ab}
  $$

---

## **Construcción del Tensor de Einstein**

- **Propiedades clave del Tensor de Einstein**:
  - Es **simétrico** ($G_{ab} = G_{ba}$).
  - Su **divergencia es nula** ($\nabla^b G_{ab} = 0$), lo que garantiza la conservación de $T_{ab}$.

---

## **Derivación de las Ecuaciones de Einstein**
1. Partimos de la ecuación de Poisson:

   $$
   \nabla^2 \Phi = 4\pi G \rho
   $$

2. Usamos la relación entre la curvatura y la métrica:

   $$
   R_{ab} - \frac{1}{2} R g_{ab} = 8\pi G T_{ab}
   $$

3. **Requerimos** que la ecuación conserve la energía y el momento:

   $$
   \nabla^b T_{ab} = 0
   $$

---

## **Derivación de las Ecuaciones de Einstein**

4. Finalmente, introducimos la **constante cosmológica** $\Lambda$, que modifica la ecuación:

   $$
   G_{ab} + \Lambda g_{ab} = 8\pi G T_{ab}
   $$

---

## **La Constante Cosmológica $\Lambda$**
- Einstein introdujo $\Lambda$ para obtener un universo **estático**.
- Hubble descubrió la **expansión del universo**, lo que hizo que Einstein descartara $\Lambda$.
- En cosmología moderna, $\Lambda$ se asocia con la **energía oscura**, responsable de la expansión acelerada.

- Para la mayoría de los problemas en **relatividad numérica**, podemos ignorar $\Lambda$, ya que sus efectos son significativos solo a escalas cosmológicas.

---

## **Comparación de las ecuaciones de campo**
| **Característica** | **Ecuación de Poisson** | **Ecuaciones de Einstein** |
|-------------------|----------------------|----------------------|
| Variable fundamental | $\Phi$ (potencial gravitatorio) | $g_{ab}$ (métrica del espacio-tiempo) |
| Fuente | $\rho$ (densidad de masa) | $T_{ab}$ (tensor energía-momento) |
| Tipo de ecuación | Ecuación diferencial parcial (PDE) lineal | Sistema de PDEs no lineales |
| Dimensión | 3D | 4D (espacio-tiempo) |

---

## **Conexión con el principio de minima acción**

- TODO add a couple of slides for this.

---

## **Soluciones de las Ecuaciones de Einstein**

Las ecuaciones de Einstein son **más complejas y no lineales**, lo que hace que resolverlas analíticamente sea difícil.

Se conocen solo algunas soluciones analíticas, tales como:
- Espaciotiempo con un fluido perfectamente homogeneo.
- Una partícula puntual (e.g. agujero negro).

Otras soluciones pueden obtenerse de manera aproximada:
- Campos gravitacionales débiles: ondas gravitacionales.

---

## **Resumen de la Clase**
- Las ecuaciones de Einstein generalizan la ecuación de Poisson para la gravedad relativista.
- La curvatura es descrita por el **tensor de Ricci** y el **escalar de Ricci**.
- La materia y energía están representadas por el **tensor energía-momento**.
- La ecuación de Einstein relaciona curvatura y materia, formando un sistema de **PDEs no lineales**.
- La **relatividad numérica** permite resolver casos físicos complejos como fusiones de agujeros negros.

---

## **Ejercicios Propuestos**
1. Derivar la ecuación de Einstein en **vacío** y mostrar que $R = 0$.
2. Mostrar que en el límite de campo débil y velocidades bajas, Einstein se reduce a Newton.


