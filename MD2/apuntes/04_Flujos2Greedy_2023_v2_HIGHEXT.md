# Flujos: Greedy.

## notación g(A, B)

g es una función sobre los lados y A, B  $\subseteq$  V

\
![8a](./imgs/04_Flujos2Greedy_2023_v2/8a.png){ width=250px }

g(A, B) = � x,y[x  $\in$  A][y  $\in$  B][  $-$ → xy  $\in$  E]g(  $-$ → xy )


### Propiedad:

Sean f, g funciones sobre los lados tales que

g(  $-$ → xy )  $\leq$  f(  $-$ → xy )  $\forall$   $-$ → xy  $\in$  E

\
![8b](./imgs/04_Flujos2Greedy_2023_v2/8b.png){ width=250px }

Entonces

g(A, B)  $\leq$  f(A, B)  $\forall$ A, B  $\subseteq$  V


## Criterio simple para maximalidad


### Propiedad:

Sea f ﬂujo en un network N tal que v(f) = c({s}, V). Entonces f es maximal.


## Existencia

de la deﬁnición no es claro que EXISTA un ﬂujo maximal.


### ﬂujo sea “entero”,
es decir que las capacidades y el ﬂujo en cada lado deben ser números enteros,


### entonces,
como hay una cantidad ﬁnita de ﬂujos enteros, es claro que existe un ﬂujo entero maximal.


## Greedy


### Algoritmo

\
![21a](./imgs/04_Flujos2Greedy_2023_v2/21a.png){ width=250px }

Comenzar con f = 0 (es decir, f(  $-$ → xy ) = 0 $\forall$   $-$ → xy  $\in$  E).

Buscar un camino dirigido s = x0, x1, ..., xr = t, con

\
![21b](./imgs/04_Flujos2Greedy_2023_v2/21b.png){ width=250px }
\
![21c](./imgs/04_Flujos2Greedy_2023_v2/21c.png){ width=250px }

  $-$ → xixi+1  $\in$  E tal que f(  $-$ → xixi+1) < c(  $-$ → xixi+1) para todo
 $\in$  i = 0, ..., r  $-$  1.

(llamaremos a un tal camino un camino dirigido “no saturado” .)

\
![21d](./imgs/04_Flujos2Greedy_2023_v2/21d.png){ width=250px }

Calcular  $\epsilon$  = min{c(  $-$ → xixi+1)  $-$  f(xixi+1)}.

Aumentar f a lo largo del camino de 2. en  $\epsilon$ , como se explicó antes.

Repetir 2 hasta que no se puedan hallar mas caminos con esas condiciones.


### Conclusiones sobre Greedy

este Greedy no necesariamente va a encontrar un ﬂujo maximal.

eligiendo inteligentemente los caminos encontramos un ﬂujo maximal.

el Greedy de caminos puede ser modiﬁcado para encontrar un ﬂujo maximal en tiempo polinomial


### Not Greedy

En el caso de ﬂujos, se puede construir un algoritmo que corre Greedy y cuando llega a un cierto punto, “SE DA CUENTA” que se equivocó en la elección de los caminos

y CORREGIR los errores.


### Deﬁnición de Corte

Un Corte es un subconjunto de los vertices que tiene a s pero no tiene a t.


### Capacidad de un Corte

La capacidad de un corte es cap(S) = c(S, S), donde S = V  $-$  S


### Deﬁnición:
Un corte es MINIMAL si su capacidad es la menor de las capacidades de todos los cortes.