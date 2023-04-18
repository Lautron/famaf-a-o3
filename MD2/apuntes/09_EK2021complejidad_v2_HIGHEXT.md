## Complejidad de Edmonds-Karp


### Teorema de Edmonds-Karp

La complejidad del algoritmo de Edmonds-Karp es O(nm2)


### Lados críticos


#### Deﬁnición
\

\
![6a](./imgs/09_EK2021complejidad_v2/6a.png){ width=250px }

Diremos que un llado
**se vuelve crítico**
durante la construcción de uno de los ﬂujos intermedios (digamos, fk+1) si para la construcción de

\
![6b](./imgs/09_EK2021complejidad_v2/6b.png){ width=250px }

pasa una de las dos cosas siguientes:

1 Se usa el lado en forma forward, saturandolo (es decir

\
![6c](./imgs/09_EK2021complejidad_v2/6c.png){ width=250px }
\
![6d](./imgs/09_EK2021complejidad_v2/6d.png){ width=250px }

pero luego

2 O se usa el lado en forma backward, vaciandolo (es decir

\
![6e](./imgs/09_EK2021complejidad_v2/6e.png){ width=250px }
\
![6f](./imgs/09_EK2021complejidad_v2/6f.png){ width=250px }

pero


### distancias


#### Deﬁnición
\
Dados vértices x, z y ﬂujo f deﬁnimos a
**la distancia entre x y z relativa a f**
como la longitud del menor f-camino aumentante entre x y z, si es que existe tal camino, o inﬁnito si no existe o 0 si x = z.
**La denotaremos como df(x, z).**


#### Notación
\
Dado un vértice x denotamos

\
![8a](./imgs/09_EK2021complejidad_v2/8a.png){ width=250px }

y

\
![8b](./imgs/09_EK2021complejidad_v2/8b.png){ width=250px }


#### Es decir,
\
 dk(x) es la longitud del menor fk-camino aumentante entre s y x y bk(x) es la longitud del menor fk-camino aumentante entre x y t.

### Deﬁnición
Dado un ﬂujo f y un vértice x, diremos que un vértice z es un vécino fFF de x si pasa alguna de las siguientes condiciones:

\
![10a](./imgs/09_EK2021complejidad_v2/10a.png){ width=250px }
\
![10b](./imgs/09_EK2021complejidad_v2/10b.png){ width=250px }


### Observación trivial:
Si z es un fkFF vécino de x, entonces dk(z)  $\leq$  dk(x) + 1


### Lema de las distancias
Las distancias deﬁnidas anteriormente no disminuyen a medida que k crece.

\
![13a](./imgs/09_EK2021complejidad_v2/13a.png){ width=250px }

Es decir,


## Existencia de ﬂujos maximales

Dado que hemos probado que Edmonds-Karp siempre termina, y dado que produce un ﬂujo maximal,

entonces tambien hemos probado que
en todo network siempre existe al menos un ﬂujo maximal.