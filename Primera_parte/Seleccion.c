#include <stdio.h>

void mostrar(char a[], int N) {
    for(int i = 0; i < N; i++) {
        printf("Vector: %c\n", a[i]);
    }
    printf("\n");
}

void lectura(char a[], int N) {
    for(int p = 0; p < N; p++) {
        printf("Ingrese elemento [%d]: ", p+1);
        scanf(" %c", &a[p]);
    }
    printf("El vector es:\n");
    mostrar(a, N);
}

void intercambio(char a[], int minimo, int k) {
    char temp = a[k];
    a[k] = a[minimo];
    a[minimo] = temp;
}

void seleccion(char a[], int N) {
    for(int i = 0; i < N - 1; i++) {
        int minimo = i;
        for(int j = i + 1; j < N; j++) {
            if(a[j] < a[minimo]) {
                minimo = j;
            }
        }
        if(minimo != i) {
            intercambio(a, minimo, i);
            mostrar(a, N);
        }
    }
}

int main() {
    int N;
    printf("Ingrese tamaño: ");
    scanf("%d", &N);
    char a[300];
    lectura(a, N);
    seleccion(a, N);
    return 0;
}
