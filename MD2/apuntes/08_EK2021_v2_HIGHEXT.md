## Ford-Fulkerson con DFS

1 Creamos una pila con s.

2 Si la pila es vacia, terminamos, no hay camino. Si no es vacia,
tomamos x =el primer elemento de la pila y buscamos algún vécino de x que satisfaga las condiciones de Ford-Fulkerson.

3 Si no hay, sacamos a x de la pila y repetimos 2).
4 Si hay tal vécino, tomamos z uno de ellos.
5 Si z = t encontramos nuestro camino.

6 Si no, agregamos z a la pila y repetimos 2).


### ventaja
DFS es O(m) asi que la búsqueda de caminos es polinomial.

### desventaja
con DFS Ford-Fulkerson puede no terminar nunca,


# Edmonds y Karp


### propusieron estas dos alternativas.

aumentar eligiendo caminos de longitud mínima, y aumentar eligiendo caminos de aumento máximo.

### Algunos libros lo llaman “heurística”
porque no es un nuevo algoritmo, sino que
es Ford-Fulkerson con la especiﬁcación de usar BFS para la búsqueda.


#### buena forma de recordarlo\
es que EK=FF+BFS.


### Otra cosa que tienen que hacer
siempre veriﬁcar que v(f) sea igual a cap(S), calculando ambos en forma independiente.
