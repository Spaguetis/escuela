Algoritmo Tarea4

	Dimension nombres[100] ;
	definir nombre Como Caracter;
Dimension km[100,7] Como Real;
Dimension total_km[100] Como Real;
Definir n, i, d Como Entero;

Escribir "TAREA 4 - Conductores y kilometros por dia";
Escribir "Ingrese la cantidad de conductores:";
Leer n;

Para i <- 1 Hasta n Hacer
    Escribir "Nombre del conductor (", i, ") :";
    Leer nombres[i];
    total_km[i] <- 0;
    Para d <- 1 Hasta 7 Hacer
        Escribir "  Kilometros del dia ", d, ":";
        Leer km[i,d];
        total_km[i] <- total_km[i] + km[i,d];
    FinPara
FinPara

Escribir "\nResumen de kilometros por conductor:";
Para i <- 1 Hasta n Hacer
    Escribir nombres[i], " - Total kilometros: ", total_km[i];
FinPara

FinAlgoritmo
