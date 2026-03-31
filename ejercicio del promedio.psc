Proceso CalcularPromedio
    Definir notas, suma, promedio Como Real
    suma <- 0
    Para i <- 1 Hasta 6
        Escribir "Ingrese la nota ", i, ": "
        Leer notas
        suma <- suma + notas
    FinPara
    promedio <- suma / 6
    Escribir "El promedio es: ", promedio
    Si promedio >= 5 Entonces
        Escribir "eximido"
    Sino
        Si promedio >= 2.9 Entonces
            Escribir "examen"
        Sino
            Escribir "reprueba"
        FinSi
    FinSi
FinProceso