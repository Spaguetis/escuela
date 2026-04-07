Algoritmo EjercicioSumativo1
	Definir nota, sumaAprobadas, cantidadAprobadas, promedio Como Real

	sumaAprobadas <- 0
	cantidadAprobadas <- 0

	Escribir "Ingrese una nota entre 1 y 7 (0 para terminar):"
	Leer nota

	Mientras nota <> 0 Hacer
		Si nota >= 1 Y nota <= 7 Entonces
			Si nota >= 4 Entonces
				sumaAprobadas <- sumaAprobadas + nota
				cantidadAprobadas <- cantidadAprobadas + 1
			FinSi
		Sino
			Escribir "Nota invalida. Debe ingresar un valor entre 1 y 7, o 0 para terminar."
		FinSi

		Escribir "Ingrese una nota entre 1 y 7 (0 para terminar):"
		Leer nota
	FinMientras

	Si cantidadAprobadas > 0 Entonces
		promedio <- sumaAprobadas / cantidadAprobadas
		Escribir "Cantidad de notas aprobadas: ", cantidadAprobadas
		Escribir "Promedio de notas aprobadas: ", promedio
	Sino
		Escribir "No hay notas aprobadas para calcular promedio."
	FinSi
FinAlgoritmo
