---
title: Filmina 4 MD2
author: Lautaro Bachmann
documentclass: scrartcl
toc: true
toc-depth: 4
---
\newpage

# Flujos Y Networks.

## Grafos Dirigidos


### Deﬁnición:
Un Grafo dirigido es un par G = (V, E) donde V es un conjunto cualquiera (ﬁnito para nosotros) y E  $\subseteq$  V  $\times$  V


#### diferencia con un grafo no dirigido\
E  $\subseteq$  V  $\times$  V

ahora los lados son pares ordenados en vez de conjuntos.

no es lo mismo (x, y) que (y, x)


### Notación:

 $-$ → xy
Denotaremos el lado (x, y) como  $-$ → xy .


### Vecinos

Pero ahora como podemos tener lados tanto (x, y) como (y, x) deberiamos diferenciar entre “vécinos hacia adelante” y “vécinos hacia atras”


#### Notación:\

 $-$ → xy
 Γ+(x) = {y  $\in$  V|  $-$ → xy  $\in$  E}

 $-$ → yx
Γ $-$ (x) = {y  $\in$  V|  $-$ → yx  $\in$  E}


## Network


### Deﬁnición:
Un Network es un grafo dirigido con pesos positivos en los lados, es decir, un triple (V, E, c) donde (V, E) es un grafo dirigido y c : E �→ R>0


### “capacidad”
En este contexto, c(  $-$ → xy ) se llamará la “capacidad” del lado  $-$ → xy  $-$ → xy .


## Flujos

### Notación para agilizar lecturas de sumatorias


#### P\
Si P es una propiedad que puede ser verdadera o falsa, [P] denota el número 1 si P es verdadera, y 0 si P es falsa.

Supongamos que tenemos una variable x, y queremos sumar una función f(x) sobre todos los x que satisfagan una propiedad P(x)

podemos simplemente escribir �
� x f(x)[P(x)]

� o incluso � f(x)[P(x)] si queda claro que sumamos sobre x.


### Notación para funciones sobre lados

Si g es una función deﬁnida en los lados y A y B son subconjuntos de vertices, entonces g(A, B) denotará la suma:

g(A, B) = � [x  $\in$  A][y  $\in$  B][  $-$ → xy  $\in$  E]g(  $-$ → xy )
� x,y


### in y out

Dada una función g sobre lados y un vértice x, deﬁnimos:

 outg(x) es todo lo que “sale” de x por medio de g.

 ing(x) es todo lo que “entra” a x por medio de g.

 outg(x) = � y[y  $\in$  Γ+(x)]g(  $-$ → xy )= g({x}, Γ+(x))

 ing(x) = � y[y  $\in$  Γ $-$ (x)]g(  $-$ → yx )= g(Γ $-$ (x), {x})


### Deﬁnición
Dado un network (V, E, c), y un par de vertices s, t  $\in$  V, un  $\in$  ﬂujo de s a t es una función f : E �→ R con las siguientes

### propiedades:

0  $\leq$  f(  $-$ → xy )  $\leq$  c(  $-$ → xy )  $\forall$   $-$ → xy  $\in$  E. (“feasability”) 2 inf(x) = outf(x)  $\forall$ x  $\in$  V  $-$  {s, t}. (“conservación”) 3 outf(s)  $\geq$  inf(s). (s es productor) 4 inf(t)  $\geq$  outf(t). (t es consumidor)


#### Explicación\

la primera propiedad dice que no vamos a transportar una cantidad negativa de un bien

ni vamos a tranportar por encima de la capacidad de transporte de un lado.

La segunda propiedad dice que el network no tiene “pérdidas” .

La tercera especiﬁca que s es un vértice donde hay una producción neta de bienes, pues produce mas de lo que consume.

y la cuarta que t es un vértice donde se consumen los bienes pues consume mas de lo que produce.

En algunos libros en vez de 3) se pide directamente  inf(s) = 0 y en vez de 4) se pide outf(t) = 0.

en todos los ejemplos que usaremos,  Γ $-$ (s) = Γ+(t) = ∅

s se llama tradicionalmente la “fuente”(source)

y t el “resumidero”(sink).


### Valor de un ﬂujo


#### Deﬁnición\
Dado un network (V, E, c) el
**valor**
de un ﬂujo f de s a t es:

v(f) = outf(s)  $-$  inf(s)

el valor de un ﬂujo es la cantidad neta de bienes producidos.


### Flujos maximales


#### Deﬁnición\
Dado un network N y vertices s, t,
**un ﬂujo maximal de s a t**
es un ﬂujo f de s a t tal que v(g)  $\leq$  v(f) para todo ﬂujo g de s a t.

#### Propiedad\

Propiedades 1,2 y 3 implican la 4), y v(f) = inf(t)  $-$  outf(t).
