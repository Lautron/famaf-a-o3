# Flujos Y Networks.

## Grafos Dirigidos


### Deﬁnición:
Un Grafo dirigido es un par G = (V, E) donde V es un conjunto cualquiera (ﬁnito para nosotros) y E  $\subseteq$  V  $\times$  V


#### diferencia con un grafo no dirigido\
E  $\subseteq$  V  $\times$  V

ahora los lados son pares ordenados en vez de conjuntos.

no es lo mismo (x, y) que (y, x)


### Notación:

\
![8a](./imgs/03_flujos2021_v2/8a.png){ width=250px }

Denotaremos el lado (x, y) como


### Vecinos

Pero ahora como podemos tener lados tanto (x, y) como (y, x) deberiamos diferenciar entre “vécinos hacia adelante” y “vécinos hacia atras”


#### Notación:\

\
![9a](./imgs/03_flujos2021_v2/9a.png){ width=250px }
\
![9b](./imgs/03_flujos2021_v2/9b.png){ width=250px }


## Network


### Deﬁnición:
Un Network es un grafo dirigido con pesos positivos en los lados, es decir, un triple (V, E, c) donde (V, E) es un grafo dirigido y

\
![11a](./imgs/03_flujos2021_v2/11a.png){ width=250px }
\
![11b](./imgs/03_flujos2021_v2/11b.png){ width=250px }

En este contexto,
se llamará la

### “capacidad”
del lado

\
![11c](./imgs/03_flujos2021_v2/11c.png){ width=250px }


## Flujos

### Notación para agilizar lecturas de sumatorias


#### P\
Si P es una propiedad que puede ser verdadera o falsa, [P] denota el número 1 si P es verdadera, y 0 si P es falsa.

Supongamos que tenemos una variable x, y queremos sumar una función f(x) sobre todos los x que satisfagan una propiedad P(x)

podemos simplemente escribir 
 x f(x)[P(x)]

\
![15a](./imgs/03_flujos2021_v2/15a.png){ width=250px }

 o incluso

\
![15b](./imgs/03_flujos2021_v2/15b.png){ width=250px }

si queda claro que sumamos sobre x.


### Notación para funciones sobre lados

Si g es una función deﬁnida en los lados y A y B son subconjuntos de vertices, entonces g(A, B) denotará la suma:

\
![16a](./imgs/03_flujos2021_v2/16a.png){ width=250px }


### in y out

Dada una función g sobre lados y un vértice x, deﬁnimos:

 outg(x) es todo lo que “sale” de x por medio de g.

 ing(x) es todo lo que “entra” a x por medio de g.

\
![19a](./imgs/03_flujos2021_v2/19a.png){ width=250px }
\
![19b](./imgs/03_flujos2021_v2/19b.png){ width=250px }


### Deﬁnición
Dado un network (V, E, c), y un par de vertices s, t  $\in$  V, un  $\in$  ﬂujo de s a t es una función f : E → R con las siguientes

### propiedades:

\
![20a](./imgs/03_flujos2021_v2/20a.png){ width=250px }

(“feasability”)

 inf(x) = outf(x)  $\forall$ x  $\in$  V  $-$  {s, t}. (“conservación”)

\
![20b](./imgs/03_flujos2021_v2/20b.png){ width=250px }

(s es productor)

(t es consumidor)

\
![20c](./imgs/03_flujos2021_v2/20c.png){ width=250px }


#### Explicación\

la primera propiedad dice que no vamos a transportar una cantidad negativa de un bien

ni vamos a tranportar por encima de la capacidad de transporte de un lado.

La segunda propiedad dice que el network no tiene “pérdidas” .

La tercera especiﬁca que s es un vértice donde hay una producción neta de bienes, pues produce mas de lo que consume.

y la cuarta que t es un vértice donde se consumen los bienes pues consume mas de lo que produce.

En algunos libros en vez de 3) se pide directamente

\
![22a](./imgs/03_flujos2021_v2/22a.png){ width=250px }

y en vez de 4) se pide

\
![22b](./imgs/03_flujos2021_v2/22b.png){ width=250px }

en todos los ejemplos que usaremos,

\
![22c](./imgs/03_flujos2021_v2/22c.png){ width=250px }

s se llama tradicionalmente la “fuente”(source)

y t el “resumidero”(sink).


### Valor de un ﬂujo


#### Deﬁnición\
Dado un network (V, E, c) el
**valor**
de un ﬂujo f de s a t es:

\
![24a](./imgs/03_flujos2021_v2/24a.png){ width=250px }

el valor de un ﬂujo es la cantidad neta de bienes producidos.


### Flujos maximales


#### Deﬁnición\
Dado un network N y vertices s, t,
**un ﬂujo maximal de s a t**
(o “Max ﬂow”)
es un ﬂujo f de s a t tal que v(g)  $\leq$  v(f) para todo ﬂujo g de s a t.

#### Propiedad\

Propiedades 1,2 y 3 implican la 4), y v(f) = inf(t)  $-$  outf(t).