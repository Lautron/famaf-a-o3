---
title: Resumen segunda filmina Discreta 2
author: Lautaro Bachmann
documentclass: scrartcl
---
\tableofcontents
\newpage

## Cotas para Greedy

$\chi$(G) \le $\Delta$ + 1


## Teorema de Brooks

Si G es conexo, entonces $\chi$(G) \le $\Delta$, a menos que G sea un ciclo impar o un grafo completo.


### Propiedad

Si G es conexo, entonces existe un ordenamiento de los vértices tal que Greeedy colorea todos los vértices, salvo uno, con $\Delta$ colores o menos.


## VIT


### Very Important Theorem

Sea G = (V, E) un grafo cuyos vértices estan coloreados con un coloreo propio c con r colores 1, ..., r
Sea $\pi$ una permutación de los números 0, 1, ..., r 1, es decir, $\pi$ : 1, ..., r 1, ..., r es una biyección.
Sea Vi = V : c(x) = i = 0, 1, ..., r 1.
Ordenemos los vértices poniendo primero los vértices de V$\pi$(0), luego los de V$\pi$(1),etc, hasta
(el orden interno de los vértices dentro de cada V$\pi$(i) es irrelevante)

Entonces Greedy en ese orden coloreará G con r colores o menos.


### Corolario
Existe un ordenamiento de los vértices de G tal que Greedy colorea G con $\chi$(G) colores.

### Consecuencia

si no podemos obtener $\chi$(G) polinomialmente, usaremos el VIT para tratar de obtener una aproximación a $\chi$(G).

No siempre se puede,
pero en la practica suele funcionar bastante bien, dependiendo de cuales permutaciones $\pi$ se usen.


## Grafos bipartitos

Un grafo se dice bipartito si $\chi$(G) = 2.

Es decir, si G = (V, E) entonces existen X, Y V tales que:

1 V = X Y.
2 X Y =

3 wv E (w X, v Y) (w Y, v X)


## El problema 2COLOR

Dado un grafo G, ¿es $\chi$(G) 2?


### Teorema

2COLOR es polinomial


## Algoritmo 2COLOR para G conexo.

Elegir un vértice x cualquiera.

Correr BFS(x), creando un arbol.

Para cada vértice z, sea N(z) el nivel de z en el arbol BFS(x).

Colorear c(z) = (N(z) mod 2).

Chequear si el colorario dado en [4] es propio.

Si lo es, retornar “$\chi$(G) 2”

Si no lo es, retornar “$\chi$(G) > 2”


### Complejidad

la complejidad total es O(m) + O(m) = O(m).


### Corolario

Sea G un grafo con $\chi$(G) 3.

Como $\chi$(G) 3, el coloreo de 2 colores dado en el algoritmo no puede ser propio.

**Conclusión:**

$\chi$(G) 3 si y solo si existe un ciclo impar en G.
