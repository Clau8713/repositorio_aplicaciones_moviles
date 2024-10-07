import 'dart:io';

void main() {
  print('Ingrese un número para calcular su factorial:');
  int? numero = int.tryParse(stdin.readLineSync()!);

  if (numero == null || numero < 0) {
    print('Por favor, ingrese un número entero no negativo.');
    return;
  }

  BigInt factorial = BigInt.one; 

  for (int i = 1; i <= numero; i++) {
    factorial *= BigInt.from(i);
  }

  print('El factorial de $numero es: $factorial');
}
