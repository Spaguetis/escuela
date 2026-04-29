import math


def main():
    while True:
        print("---------------------------------------------")
        print("          CALCULADORA EN PYTHON")
        print("---------------------------------------------")
        print("1. Suma")
        print("2. Resta")
        print("3. Multiplicacion")
        print("4. Division")
        print("5. Potencia")
        print("6. Modulo (residuo)")
        print("7. Raiz cuadrada")
        print("8. Area de un triangulo")
        print("9. Area de un rectangulo")
        print("10. Area de una circunferencia")
        print("0. Salir")

        try:
            opcion = int(input("Seleccione una opcion: "))
        except ValueError:
            print("Opcion invalida. Intente nuevamente.")
            continue

        if opcion == 1:
            seguir = 'S'
            while seguir == 'S' or seguir == 's':
                try:
                    cantidad = int(input("¿Cuantos numeros desea sumar?: "))
                except ValueError:
                    print("Cantidad invalida.")
                    continue
                resultado = 0.0
                for i in range(1, cantidad + 1):
                    try:
                        numero = float(input(f"Ingrese el numero {i}: "))
                    except ValueError:
                        print("Numero invalido, se considera 0.")
                        numero = 0.0
                    resultado += numero
                print("Resultado de la suma:", resultado)
                seguir = input("¿Desea realizar otra suma? (S/N): ")

        elif opcion == 2:
            seguir = 'S'
            while seguir == 'S' or seguir == 's':
                try:
                    cantidad = int(input("¿Cuantos numeros desea restar?: "))
                except ValueError:
                    print("Cantidad invalida.")
                    continue
                if cantidad > 0:
                    try:
                        resultado = float(input("Ingrese el numero 1: "))
                    except ValueError:
                        print("Numero invalido. Se toma 0.")
                        resultado = 0.0
                    for i in range(2, cantidad + 1):
                        try:
                            numero = float(input(f"Ingrese el numero {i}: "))
                        except ValueError:
                            print("Numero invalido. Se toma 0.")
                            numero = 0.0
                        resultado -= numero
                    print("Resultado de la resta:", resultado)
                else:
                    print("Debe ingresar al menos un numero.")
                seguir = input("¿Desea realizar otra resta? (S/N): ")

        elif opcion == 3:
            seguir = 'S'
            while seguir == 'S' or seguir == 's':
                try:
                    cantidad = int(input("¿Cuantos numeros desea multiplicar?: "))
                except ValueError:
                    print("Cantidad invalida.")
                    continue
                if cantidad > 0:
                    try:
                        resultado = float(input("Ingrese el numero 1: "))
                    except ValueError:
                        print("Numero invalido. Se toma 0.")
                        resultado = 0.0
                    for i in range(2, cantidad + 1):
                        try:
                            numero = float(input(f"Ingrese el numero {i}: "))
                        except ValueError:
                            print("Numero invalido. Se toma 1.")
                            numero = 1.0
                        resultado *= numero
                    print("Resultado de la multiplicacion:", resultado)
                else:
                    print("Debe ingresar al menos un numero.")
                seguir = input("¿Desea realizar otra multiplicacion? (S/N): ")

        elif opcion == 4:
            try:
                n1 = float(input("Ingrese el dividendo: "))
                n2 = float(input("Ingrese el divisor: "))
            except ValueError:
                print("Entrada invalida.")
                continue
            if n2 != 0:
                resultado = n1 / n2
                print("Resultado de la division:", resultado)
            else:
                print("Error: no se puede dividir entre cero.")

        elif opcion == 5:
            try:
                n1 = float(input("Ingrese la base: "))
                n2 = float(input("Ingrese el exponente: "))
            except ValueError:
                print("Entrada invalida.")
                continue
            resultado = n1 ** n2
            print("Resultado de la potencia:", resultado)

        elif opcion == 6:
            try:
                e1 = int(input("Ingrese el primer entero: "))
                e2 = int(input("Ingrese el segundo entero: "))
            except ValueError:
                print("Entrada invalida. Deben ser enteros.")
                continue
            if e2 != 0:
                rmod = e1 % e2
                print("Resultado del modulo:", rmod)
            else:
                print("Error: no se puede calcular modulo con cero.")

        elif opcion == 7:
            try:
                n1 = float(input("Ingrese el numero: "))
            except ValueError:
                print("Entrada invalida.")
                continue
            if n1 >= 0:
                resultado = math.sqrt(n1)
                print("Raiz cuadrada:", resultado)
            else:
                print("Error: no existe raiz real para un numero negativo.")

        elif opcion == 8:
            try:
                base = float(input("Ingrese la base del triangulo: "))
                altura = float(input("Ingrese la altura del triangulo: "))
            except ValueError:
                print("Entrada invalida.")
                continue
            area = (base * altura) / 2
            print("Area del triangulo:", area)

        elif opcion == 9:
            try:
                base = float(input("Ingrese la base del rectangulo: "))
                altura = float(input("Ingrese la altura del rectangulo: "))
            except ValueError:
                print("Entrada invalida.")
                continue
            area = base * altura
            print("Area del rectangulo:", area)

        elif opcion == 10:
            try:
                radio = float(input("Ingrese el radio de la circunferencia: "))
            except ValueError:
                print("Entrada invalida.")
                continue
            if radio >= 0:
                area = 3.1416 * (radio ** 2)
                print("Area de la circunferencia:", area)
            else:
                print("Error: el radio no puede ser negativo.")

        elif opcion == 0:
            print("Gracias por usar la calculadora.")
            break

        else:
            print("Opcion invalida. Intente nuevamente.")

        print("")


if __name__ == '__main__':
    main()
