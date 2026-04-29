```pseint

Algoritmo Tarea3

Dimension v1[5] Como Entero;
Dimension v2[5] Como Entero;
Dimension v3[5] Como Entero;
Definir i Como Entero;

Escribir "TAREA 3 - Ingresar 5 enteros en dos vectores y sumar en el tercero";

Para i <- 1 Hasta 5 Hacer
    Escribir "Ingrese v1[", i, "]:";
    Leer v1[i];
FinPara

Para i <- 1 Hasta 5 Hacer
    Escribir "Ingrese v2[", i, "]:";
    Leer v2[i];
FinPara

Para i <- 1 Hasta 5 Hacer
    v3[i] <- v1[i] + v2[i];
FinPara

Escribir "\nVector 1:";
Para i <- 1 Hasta 5 Hacer
    Escribir v1[i];
FinPara

Escribir "\nVector 2:";
Para i <- 1 Hasta 5 Hacer
    Escribir v2[i];
FinPara

Escribir "\nVector 3 (suma v1+v2):";
Para i <- 1 Hasta 5 Hacer
    Escribir v3[i];
FinPara

FinAlgoritmo

``` 
