import 'dart:io';

void main() {
  // Solicitar la base y el exponente al usuario
  print('Introduce la base:');
  int base = int.parse(stdin.readLineSync()!);

  print('Introduce el exponente:');
  int exponente = int.parse(stdin.readLineSync()!);

  // Calcular la potencia usando multiplicación repetida
  int resultado = calcularPotencia(base, exponente);

  // Mostrar el resultado
  print('$base elevado a la $exponente es: $resultado');
}

int calcularPotencia(int base, int exponente) {
  int resultado = 1;

  for (int i = 0; i < exponente; i++) {
    resultado *= base; // Multiplicación repetida
  }

  return resultado;
}
