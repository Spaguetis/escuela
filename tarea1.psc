

Algoritmo Tarea1

Definir n, i, j Como Entero;
Definir aux Como Caracter;
Dimension nombres[100] Como Caracter;

Escribir "TAREA 1 - Ingresar nombres y apellidos";
Escribir "Ingrese la cantidad de nombres a guardar:";
Leer n;
Para i <- 1 Hasta n Hacer
    Escribir "Ingrese nombre y apellido (pos ", i, ") :";
    Leer nombres[i];
FinPara

Escribir "\nDatos ingresados:";
Para i <- 1 Hasta n Hacer
    Escribir nombres[i];
FinPara

// Ordenar descendente (de la Z a la A)
Para i <- 1 Hasta n-1 Hacer
    Para j <- i+1 Hasta n Hacer
        Si nombres[i] < nombres[j] Entonces
            aux <- nombres[i];
            nombres[i] <- nombres[j];
            nombres[j] <- aux;
        FinSi
    FinPara
FinPara

Escribir "\nDatos ordenados (descendente) mostrados horizontalmente:";
Para i <- 1 Hasta n Hacer
    Escribir Sin Saltar nombres[i], "  ";
FinPara

FinAlgoritmo
