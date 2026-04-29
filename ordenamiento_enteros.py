def bubble_sort(arr, reverse=False):
    n = len(arr)
    swaps = 0
    for i in range(n-1):
        for j in range(n-1-i):
            if (not reverse and arr[j] > arr[j+1]) or (reverse and arr[j] < arr[j+1]):
                arr[j], arr[j+1] = arr[j+1], arr[j]
                swaps += 1
    return arr, swaps


def main():
    try:
        n = int(input("Cantidad de elementos: "))
    except ValueError:
        print("Entrada invalida. Debe ingresar un entero.")
        return
    if n <= 0:
        print("La cantidad debe ser mayor que 0.")
        return

    arr = []
    for i in range(1, n+1):
        try:
            x = int(input(f"Ingrese elemento {i}: "))
        except ValueError:
            print("Entrada invalida. Se toma 0 como valor.")
            x = 0
        arr.append(x)

    print("\nVector antes de ordenar:", arr)
    # Mostrar ambos ordenamientos: ascendente y descendente
    sorted_asc, swaps_asc = bubble_sort(arr.copy(), reverse=False)
    sorted_desc, swaps_desc = bubble_sort(arr.copy(), reverse=True)
    print("Vector ordenado (ascendente):", sorted_asc)
    print("Intercambios realizados (ascendente):", swaps_asc)
    print("Vector ordenado (descendente):", sorted_desc)
    print("Intercambios realizados (descendente):", swaps_desc)


if __name__ == '__main__':
    main()
