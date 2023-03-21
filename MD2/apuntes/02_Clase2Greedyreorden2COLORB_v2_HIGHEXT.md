---
title: Resumen MD2 Filmina 2
author: Lautaro Bachmann
documentclass: scrartcl
---
\tableofcontents
\newpage

## Cotas para Greedy

χ(G)  $\leq$  ∆ + 1


## Teorema de Brooks

Si G es conexo, entonces χ(G)  $\leq$  ∆, a menos que G sea un ciclo impar o un grafo completo.


### Propiedad

Si G es conexo, entonces existe un ordenamiento de los vértices tal que Greeedy colorea todos los vértices, salvo uno, con ∆ colores o menos.


## VIT


### Very Important Theorem

Sea G = (V, E) un grafo cuyos vértices estan coloreados con un coloreo propio c con r colores {0, 1, ..., r  $-$  1}.
{0,  $-$  1}. Sea π una permutación de los números 0, 1, ..., r  $-$  1, es decir,  $-$  π : {0, 1, ..., r  $-$  1} �→ {0, 1, ..., r  $-$  1} es una biyección.
{0, Sea Vi =  $-$  1} �→ {0,  $-$  1} {x  $\in$  V : c(x) = i}, i = 0, 1, ..., r  $-$  1.
{x  $\in$  i},  $-$  Ordenemos los vértices poniendo primero los vértices de Vπ(0), luego los de Vπ(1),etc, hasta Vπ(r $-$ 1).
(el orden interno de los vértices dentro de cada Vπ(i) es irrelevante)

Entonces Greedy en ese orden coloreará G con r colores o menos.


### Corolario
Existe un ordenamiento de los vértices de G tal que Greedy colorea G con χ(G) colores.

### Consecuencia

si no podemos obtener χ(G) polinomialmente, usaremos el VIT para tratar de obtener una aproximación a χ(G).

No siempre se puede,
pero en la practica suele funcionar bastante bien, dependiendo de cuales permutaciones π se usen.


## Grafos bipartitos

Un grafo se dice bipartito si χ(G) = 2.

Es decir, si G = (V, E) entonces existen X, Y  $\subseteq$  V tales que:

1 V = X ∪ Y.
∪ 2 X ∩ Y = ∅

∩ ∅ 3 wv  $\in$  E ⇒ (w  $\in$  X, v  $\in$  Y) ∨ (w  $\in$  Y, v  $\in$  X)


## El problema 2COLOR

Dado un grafo G, ¿es χ(G)  $\leq$  2?


### Teorema

2COLOR es polinomial


## Algoritmo 2COLOR para G conexo.

Elegir un vértice x cualquiera.

Correr BFS(x), creando un arbol.

Para cada vértice z, sea N(z) el nivel de z en el arbol BFS(x).

Colorear c(z) = (N(z) mod 2).

Chequear si el colorario dado en [4] es propio.

Si lo es, retornar “χ(G)  $\leq$  2”

Si no lo es, retornar “χ(G) > 2”


### Complejidad

la complejidad total es O(m) + O(m) = O(m).


### Corolario

Sea G un grafo con χ(G)  $\geq$  3.

Como χ(G)  $\geq$  3, el coloreo de 2 colores dado en el algoritmo no  $\geq$  puede ser propio.

**Conclusión:**

χ(G)  $\geq$  3 si y solo si existe un ciclo impar en G.
