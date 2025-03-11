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


# **La ecuación geodésica**
## Clase 5

---

## **Objetivos de la Clase**
- Entender la ecuación geodésica y su relación con el movimiento libre.
- Introducir la derivada covariante y los símbolos de Christoffel.
- Definir el tensor de Riemann y su papel en la curvatura del espacio-tiempo.
- Relacionar la ecuación de desviación geodésica con la curvatura.

---

## **Las geodésicas**
- En RG, los cuerpos en **caída libre** siguen **geodésicas**, que son trayectorias que extremizan la acción.
- **Principio de Fermat**: La luz sigue el camino que minimiza el tiempo de viaje.
- **Extensión de Einstein**: Los cuerpos con masa siguen trayectorias que **maximizan el tiempo propio**.
- Ejemplo: **Paradoja de los gemelos** → El gemelo viajero envejece menos.

---

## **La cuadri-velocidad**
- En el espacio tridimensional, la velocidad está definida como $v^i = \frac{dx^i}{dt}$.
- Analogamente, en espacio-tiempo 4D, definimos la **cuadri-velocidad** como:

  $$ u^a = \frac{dx^a}{d\tau} $$

- Donde $\tau$ es el **tiempo propio** del observador.

---

## **La cuadri-velocidad**

**Ejercicio:**  
Demostrar que la norma de la cuatro-velocidad es:

  $$ u^a u_a = -1 $$

---

## **Ecuación Geodésica: La Generalización del Movimiento Rectilíneo**
- En mecánica clásica, una partícula libre sigue:

  $$ \frac{dv^i}{dt} = 0 $$

- En espacio-tiempo curvo, extendemos esto a:

  $$ \frac{Du^a}{D\tau} = 0 $$

  o bien,

  $$ u^b \nabla_b u^a = 0 $$

- Esta es la **ecuación geodésica**, que describe el movimiento de una partícula en caída libre.

---

## **La Derivada Covariante**
- Para un **escalar** $f$, la derivada es simplemente:

  $$ \frac{df}{dx^a} $$

- Para un **vector**, no es suficiente tomar derivadas parciales porque los vectores pueden cambiar su orientación al moverse en un espacio curvo.
---

## **La Derivada Covariante**

- Introducimos la **derivada covariante**:

  $$ \nabla_b u^a $$

- Esta operación toma en cuenta la curvatura del espacio-tiempo.

---

## **Símbolos de Christoffel y la Derivada Covariante**
- Los **símbolos de Christoffel** permiten expresar la derivada covariante:

  $$ \nabla_a V^b = \partial_a V^b + \Gamma^b_{ac} V^c $$

- Donde los símbolos de Christoffel están dados por:

  $$ \Gamma^a_{bc} = \frac{1}{2} g^{ad} (\partial_c g_{db} + \partial_b g_{dc} - \partial_d g_{bc}) $$

- Los símbolos de Christoffel dependen de **las primeras derivadas de la métrica**.

---

## **La Ecuación de Desviación Geodésica**
- Para analizar la curvatura del espacio-tiempo, estudiamos la desviación entre **dos geodésicas cercanas**.
- Esto es análogo al análisis Newtoniano del **tensor de marea**.

El resultato en RG para la **desviación geodésica** es:

$$ \frac{D^2 x^a}{D\tau^2} = - R^a{}_{bcd} u^b u^d x^c $$

Donde $R^a{}_{bcd}$ es el **tensor de Riemann**.

---

## **El Tensor de Riemann y la Curvatura**
- El tensor de Riemann contiene **segundas derivadas de la métrica**:

$$ R^a{}_{bcd} = \partial_c \Gamma^a_{bd} - \partial_d \Gamma^a_{bc} + \Gamma^e_{bd} \Gamma^a_{ec} - \Gamma^e_{bc} \Gamma^a_{ed} $$

- Si $R^a{}_{bcd} = 0$, el espacio-tiempo es **plano**.
- Este tensor es responsable de **las fuerzas de marea** en relatividad general.

---

## **Simetrías del Tensor de Riemann**
El tensor de Riemann satisface las siguientes simetrías:

1. **Antisimetría en los dos últimos índices:**
   $$
   R^a{}_{bcd} = -R^a{}_{bdc}
   $$
2. **Antisimetría en el primer y tercer par de índices:**
   $$
   R_{abcd} = -R_{bacd}
   $$
3. **Identidad de Bianchi (importante en ecuaciones de Einstein):**
   $$
   \nabla_{[e} R^a{}_{|b|cd]} = 0
   $$

---

## **Transporte Paralelo y Curvatura**
- En un espacio plano, un vector **transportado en paralelo** en un lazo cerrado regresa idéntico.
- En un espacio curvo, **cambia su dirección**.
- Esto motiva la **definición geométrica** del tensor de Riemann.

![Placeholder para figura del libro sobre transporte paralelo]

---

## **Ejemplo: Curvatura en la Superficie de una Esfera**
- Sobre una esfera, un vector transportado paralelo **no regresa igual** después de recorrer un lazo cerrado.
- Este cambio es medido por el **tensor de Riemann**.

---

## **Ejercicios Propuestos**
1. Demostrar que el tensor de Riemann tiene 20 componentes independientes en 4D.
2. Calcular explícitamente el tensor de Riemann para la métrica de Minkowski y verificar que es cero.
3. Derivar la ecuación de desviación geodésica a partir de la ecuación de las geodésicas.

---

## **Resumen de la Clase**
- La **ecuación de desviación geodésica** nos da una medida de la curvatura del espacio-tiempo.
- El **tensor de Riemann** contiene toda la información sobre la curvatura.
- Las **identidades de Bianchi** jugarán un papel clave en las ecuaciones de Einstein.
- La curvatura puede visualizarse a través del **transporte paralelo** de vectores en un lazo cerrado.

---

## **Próxima Clase: Introducción a la Conexión de Levi-Civita**
- Propiedades de la conexión.
- Transporte paralelo y símbolos de Christoffel.
- Aplicación a la ecuación geodésica.


