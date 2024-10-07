import 'dart:io';

void main() {
  print('Introduce el tamaño N de la matriz NxN:');
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matrizA = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> matrizB = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> suma = List.generate(n, (_) => List.filled(n, 0));

  print('Introduce los elementos de la primera matriz:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print('Elemento [$i][$j]:');
      matrizA[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print('Introduce los elementos de la segunda matriz:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print('Elemento [$i][$j]:');
      matrizB[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      suma[i][j] = matrizA[i][j] + matrizB[i][j];
    }
  }

  print('La suma de las matrices es:');
  for (int i = 0; i < n; i++) {
    print(suma[i]);
  }
}
