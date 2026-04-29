```pseint

Algoritmo Tarea2

Dimension nombres[200] Como Caracter;
Dimension edades[200] Como Entero;
Definir i, cantidad, j, maxEdad Como Entero;

Escribir "TAREA 2 - Ingresar nombres y edades (termina con *)";

i <- 1;
Escribir "Ingrese nombre (o * para terminar):";
Leer nombres[i];
Mientras nombres[i] <> "*" Hacer
    Escribir "Ingrese la edad de ", nombres[i], ":";
    Leer edades[i];
    i <- i + 1;
    Escribir "Ingrese nombre (o * para terminar):";
    Leer nombres[i];
FinMientras

cantidad <- i - 1;

Si cantidad = 0 Entonces
    Escribir "No se ingresaron alumnos.";
    FinAlgoritmo
FinSi

Escribir "\nAlumnos mayores de edad (>=18):";
Para j <- 1 Hasta cantidad Hacer
    Si edades[j] >= 18 Entonces
        Escribir nombres[j], " - ", edades[j];
    FinSi
FinPara

// Encontrar la mayor edad
maxEdad <- edades[1];
Para j <- 2 Hasta cantidad Hacer
    Si edades[j] > maxEdad Entonces
        maxEdad <- edades[j];
    FinSi
FinPara

Escribir "\nAlumno(s) con mayor edad (", maxEdad, ") :";
Para j <- 1 Hasta cantidad Hacer
    Si edades[j] = maxEdad Entonces
        Escribir nombres[j], " - ", edades[j];
    FinSi
FinPara

FinAlgoritmo

``` 
