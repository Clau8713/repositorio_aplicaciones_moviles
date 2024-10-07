import 'dart:io';

void main() {
  print('Ingrese el número de términos de la secuencia de Fibonacci:');
  int? n = int.tryParse(stdin.readLineSync()!);

  if (n == null || n <= 0) {
    print('Por favor, ingrese un número entero positivo.');
    return;
  }

  int a = 0, b = 1;

  print('Secuencia de Fibonacci hasta $n términos:');

  for (int i = 0; i < n; i++) {
    print(a); 
    int temp = a; 
    a = b; 
    b = temp + b; 
  }
}
