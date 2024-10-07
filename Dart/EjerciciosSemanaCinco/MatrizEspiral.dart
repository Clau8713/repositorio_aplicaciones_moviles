import 'dart:io';

void main() {
  print('Introduce el tamaño n de la matriz cuadrada (n x n):');
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz = List.generate(n, (_) => List.filled(n, 0));

  llenarMatrizEnEspiral(matriz, n);

  print('Matriz en espiral:');
  imprimirMatriz(matriz);
}

void llenarMatrizEnEspiral(List<List<int>> matriz, int n) {
  int valor = 1;
  int inicioFila = 0;
  int finFila = n - 1;
  int inicioCol = 0;
  int finCol = n - 1;

  while (inicioFila <= finFila && inicioCol <= finCol) {
    for (int i = inicioCol; i <= finCol; i++) {
      matriz[inicioFila][i] = valor++;
    }
    inicioFila++;

    for (int i = inicioFila; i <= finFila; i++) {
      matriz[i][finCol] = valor++;
    }
    finCol--;

    if (inicioFila <= finFila) {
      for (int i = finCol; i >= inicioCol; i--) {
        matriz[finFila][i] = valor++;
      }
      finFila--;
    }

    if (inicioCol <= finCol) {
      for (int i = finFila; i >= inicioFila; i--) {
        matriz[i][inicioCol] = valor++;
      }
      inicioCol++;
    }
  }
}

void imprimirMatriz(List<List<int>> matriz) {
  for (var fila in matriz) {
    print(fila);
  }
}
