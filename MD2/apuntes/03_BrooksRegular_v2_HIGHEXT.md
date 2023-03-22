## Cadenas de Kempe

Teniamos los vértices xi, cada uno de color i, y el grafo H = G  $-$  {x} está coloreado con esos ∆ colores.
Deﬁnimos Hi,j = el subgrafo de H = G  $-$  {x} generado por los vertices de color i o j.
Por mas que G sea conexo, no sabemos ni siquiera si H lo es, y mucho menos sabemos si Hi,j lo es.

si i $\neq$  j:

### deﬁnimos,

CCi,j = componente conexa de Hi,j que tiene a xi


### propiedad estructural
Dentro de una cadena de Kempe, dado que los únicos vértices tienen color i o j, y el coloreo es propio, tenemos que:

Todos los vecinos
**en la cadena**
de un vértice coloreado con color i tendrán que tener color j
Todos los vecinos en la cadena de un vértice coloreado con un color j tendrán que tener el color i.
