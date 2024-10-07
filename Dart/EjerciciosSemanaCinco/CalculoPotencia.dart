import 'dart:io';

void main() {
  
  print('Introduce la base:');
  int base = int.parse(stdin.readLineSync()!);

  print('Introduce el exponente:');
  int exponente = int.parse(stdin.readLineSync()!);

  
  int resultado = calcularPotencia(base, exponente);

  
  print('$base elevado a la $exponente es: $resultado');
}

int calcularPotencia(int base, int exponente) {
  int resultado = 1;

  for (int i = 0; i < exponente; i++) {
    resultado *= base; 
  }

  return resultado;
}
