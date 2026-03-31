Algoritmo CalculadoraCompleta
	Definir opcion Como Entero
	Definir n1, n2 Como Real
	Definir resultado Como Real
	Definir base, altura, area Como Real
	Definir e1, e2, rmod Como Entero
	Definir cantidad, i Como Entero
	Definir numero Como Real

	Repetir
		Escribir "---------------------------------------------"
		Escribir "          CALCULADORA EN PSEINT"
		Escribir "---------------------------------------------"
		Escribir "1. Suma"
		Escribir "2. Resta"
		Escribir "3. Multiplicacion"
		Escribir "4. Division"
		Escribir "5. Potencia"
		Escribir "6. Modulo (residuo)"
		Escribir "7. Raiz cuadrada"
		Escribir "8. Area de un triangulo"
		Escribir "9. Area de un rectangulo"
		Escribir "0. Salir"
		Escribir "Seleccione una opcion:"
		Leer opcion

		Segun opcion Hacer
			1:
				Escribir "¿Cuantos numeros desea sumar?"
				Leer cantidad
				resultado <- 0
				Para i <- 1 Hasta cantidad Con Paso 1 Hacer
					Escribir "Ingrese el numero ", i, ":"
					Leer numero
					resultado <- resultado + numero
				FinPara
				Escribir "Resultado de la suma: ", resultado

			2:
				Escribir "¿Cuantos numeros desea restar?"
				Leer cantidad
				Si cantidad > 0 Entonces
					Escribir "Ingrese el numero 1:"
					Leer resultado
					Para i <- 2 Hasta cantidad Con Paso 1 Hacer
						Escribir "Ingrese el numero ", i, ":"
						Leer numero
						resultado <- resultado - numero
					FinPara
					Escribir "Resultado de la resta: ", resultado
				SiNo
					Escribir "Debe ingresar al menos un numero."
				FinSi

			3:
				Escribir "¿Cuantos numeros desea multiplicar?"
				Leer cantidad
				Si cantidad > 0 Entonces
					Escribir "Ingrese el numero 1:"
					Leer resultado
					Para i <- 2 Hasta cantidad Con Paso 1 Hacer
						Escribir "Ingrese el numero ", i, ":"
						Leer numero
						resultado <- resultado * numero
					FinPara
					Escribir "Resultado de la multiplicacion: ", resultado
				SiNo
					Escribir "Debe ingresar al menos un numero."
				FinSi

			4:
				Escribir "Ingrese el dividendo:"
				Leer n1
				Escribir "Ingrese el divisor:"
				Leer n2

				Si n2 <> 0 Entonces
					resultado <- n1 / n2
					Escribir "Resultado de la division: ", resultado
				SiNo
					Escribir "Error: no se puede dividir entre cero."
				FinSi

			5:
				Escribir "Ingrese la base:"
				Leer n1
				Escribir "Ingrese el exponente:"
				Leer n2
				resultado <- n1 ^ n2
				Escribir "Resultado de la potencia: ", resultado

			6:
				Escribir "Ingrese el primer entero:"
				Leer e1
				Escribir "Ingrese el segundo entero:"
				Leer e2

				Si e2 <> 0 Entonces
					rmod <- e1 MOD e2
					Escribir "Resultado del modulo: ", rmod
				SiNo
					Escribir "Error: no se puede calcular modulo con cero."
				FinSi

			7:
				Escribir "Ingrese el numero:"
				Leer n1

				Si n1 >= 0 Entonces
					resultado <- RC(n1)
					Escribir "Raiz cuadrada: ", resultado
				SiNo
					Escribir "Error: no existe raiz real para un numero negativo."
				FinSi

			8:
				Escribir "Ingrese la base del triangulo:"
				Leer base
				Escribir "Ingrese la altura del triangulo:"
				Leer altura
				area <- (base * altura) / 2
				Escribir "Area del triangulo: ", area

			9:
				Escribir "Ingrese la base del rectangulo:"
				Leer base
				Escribir "Ingrese la altura del rectangulo:"
				Leer altura
				area <- base * altura
				Escribir "Area del rectangulo: ", area

			0:
				Escribir "Gracias por usar la calculadora."

			De Otro Modo:
				Escribir "Opcion invalida. Intente nuevamente."
		FinSegun

		Escribir ""
	Hasta Que opcion = 0
FinAlgoritmo
