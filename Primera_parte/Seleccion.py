def mostrar(a):
    for elemento in a:
        print('Vector:', elemento)
    print()


def lectura(N):
    a = []
    for p in range(N):
        elemento = input(f"Ingrese elemento [{p+1}]: ")
        a.append(elemento)
    print("El vector es:")
    mostrar(a)
    return a


def intercambio(a, minimo, k):
    a[k], a[minimo] = a[minimo], a[k]


def seleccion(a):
    N = len(a)
    for i in range(N):
        minimo = i
        for j in range(i+1, N):
            if a[j] < a[minimo]:
                minimo = j
        if minimo != i:
            intercambio(a, minimo, i)
            mostrar(a)


def main():
    N = int(input("Ingrese tamaño: "))
    a = lectura(N)
    seleccion(a)


if __name__ == "__main__":
    main()
