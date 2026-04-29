Algoritmo VentaPasajes
	
definir v1, v2, v3 como entero;
Dimension v1[5];
Dimension v2[5];
Dimension v3[5];
Definir i, asiento, vendidos, encontrado Como Entero;
vendidos <- 0;

// Inicializar vectores con numeracion 1..12
Para i <- 1 Hasta 4 Hacer
    v1[i] <- i;
    v2[i] <- i + 4;
    v3[i] <- i + 8;
FinPara


Mientras vendidos < 12 Hacer
    // Mostrar disposicion de los asientos
    Escribir "Distribucion de asientos (99 = VENDIDO):";
    Para i <- 1 Hasta 4 Hacer
        Escribir v1[i], "  ", v2[i], "  ", v3[i];
    FinPara

    // Mostrar disponibilidad antes de la venta
    Escribir "Disponibilidad antes de la venta (99 = vendido):";
    Para i <- 1 Hasta 4 Hacer
        Escribir "[", v1[i], "] [", v2[i], "] [", v3[i], "]";
    FinPara

    // Solicitar nro. de asiento al cliente
    Escribir "Ingrese el numero de asiento que desea comprar (1-12):";
    Leer asiento;

// Buscar y marcar asiento con 99 si esta disponible
encontrado <- 0;
i <- 1;
Mientras i <= 4 Y encontrado = 0 Hacer
    Si v1[i] = asiento Entonces
        Si v1[i] = 99 Entonces
            Escribir "El asiento ", asiento, " ya fue vendido.";
            encontrado <- 1;
        Sino
            v1[i] <- 99;
            Escribir "Asiento ", asiento, " vendido. Se asigno el numero 99.";
            encontrado <- 1;
        FinSi
    FinSi

    Si encontrado = 0 Entonces
        Si v2[i] = asiento Entonces
            Si v2[i] = 99 Entonces
                Escribir "El asiento ", asiento, " ya fue vendido.";
                encontrado <- 1;
            Sino
                v2[i] <- 99;
                Escribir "Asiento ", asiento, " vendido. Se asigno el numero 99.";
                encontrado <- 1;
            FinSi
        FinSi
    FinSi

    Si encontrado = 0 Entonces
        Si v3[i] = asiento Entonces
            Si v3[i] = 99 Entonces
                Escribir "El asiento ", asiento, " ya fue vendido.";
                encontrado <- 1;
            Sino
                v3[i] <- 99;
                Escribir "Asiento ", asiento, " vendido. Se asigno el numero 99.";
                encontrado <- 1;
            FinSi
        FinSi
    FinSi

    i <- i + 1;
FinMientras

// Si no encontro el numero ingresado
Si encontrado = 0 Entonces
    Escribir "Numero de asiento invalido. Debe ser entre 1 y 12.";
FinSi

// Contar asientos vendidos
vendidos <- 0;
Para i <- 1 Hasta 4 Hacer
    Si v1[i] = 99 Entonces
        vendidos <- vendidos + 1;
    FinSi
    Si v2[i] = 99 Entonces
        vendidos <- vendidos + 1;
    FinSi
    Si v3[i] = 99 Entonces
        vendidos <- vendidos + 1;
    FinSi
FinPara

    Escribir "Cantidad de asientos vendidos: ", vendidos;
    Si vendidos = 12 Entonces
        Escribir "Todos los cupos se han vendido.";
    FinSi

FinMientras

FinAlgoritmo
