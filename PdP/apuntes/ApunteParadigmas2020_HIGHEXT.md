---
title: Resumen PdP
author: Lautaro Bachmann
documentclass: scrartcl
---
\tableofcontents
\newpage

# Qué es y qué puede hacer un lenguaje de programación

Un lenguaje de programación es un lenguaje formal dise˜nado para realizar procesos que pueden ser llevados a cabo por máquinas
Pueden usarse para crear programas que controlen el comportamiento físico y lógico de una máquina o para expresar algoritmos con precisión


## Sintaxis y semántica


#### Los lenguajes\
son sistemas que se sirven de una
**forma**
para comunicar un
**signiﬁcado.**
Lo que tiene que ver con la forma recibe el nombre de

#### sintaxis\
lo que tiene que ver con el signiﬁcado recibe el nombre de

#### semántica.\

#### la forma\
son los programas

#### el signiﬁcado\
es lo que los programas hacen,

#### Un lenguaje de programación\
se describe con su
**sintaxis**
(qué es lo que se puede escribir legalmente en ese lenguaje) y su
**semántica**
(qué efectos tiene en la máquina lo que se escribe en ese lenguaje).


## Alcance de los lenguajes de programación


### algoritmos,
conjunto de instrucciones bien deﬁnidas, ordenadas y ﬁnitas que permite realizar algo de forma inambigua mediante pasos.


### funciones computables
una función es computable si existe un algoritmo que puede hacer el trabajo de la función, es decir, dada una entrada del dominio de la función puede devolver la salida correspondiente.

### tesis de Church-Turing1
las funciones computables son exactamente las funciones que se pueden calcular utilizando un dispositivo de cálculo mecánico dada una cantidad ilimitada de tiempo y espacio de almacenamiento.
De manera equivalente, esta tesis establece que cualquier función que tiene un algoritmo es computable.

### función no computable famosas
Halting problem o calcular la Complejidad de Kolmogorov.


## Sintaxis a través de gramáticas


### objetivo con respecto a la sintaxis
es describir de forma compacta e inambigua el conjunto de los programas válidos

### gramáticas independientes de contexto.
El estándar
para gramáticas independientes de contexto de lenguajes de programación es EBNF.
Sin embargo, las gramáticas independientes de contexto no son suﬁcientemente expresivas para describir adecuadamente la mayor parte de lenguajes de programación.
Por ejemplo es difícil expresar la obligación de que una variable sea declarada antes de ser usada, o bien describir la asignación múltiple de variables,


## Semántica operacional vs. lambda cálculo


### La semántica operacional
describe formalmente cómo se llevan a cabo cada uno de los pasos de un cálculo en un sistema computacional.
Para eso se suele trabajar sobre un modelo simpliﬁcado de la máquina.
Cuando describimos la semántica de un programa mediante semántica operacional, describimos cómo un programa válido se interpreta como secuencias de pasos computacionales. Estas secuencias son el signiﬁcado del programa.


# Cómo funcionan los lenguajes de programación


## Estructura de un compilador

Mitchell 4.1.1.


## Estructuras de datos de bajo nivel


### Variables


# Estructura en bloques


## Código estructurado vs. código spaghetti


## Estructura de bloque


## Activation records


### Detalle de ejecución de un activation record
