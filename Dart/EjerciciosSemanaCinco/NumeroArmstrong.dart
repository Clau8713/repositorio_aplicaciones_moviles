import 'dart:io';
import 'dart:math';

void main() {
  print('Introduce un número para verificar si es un número de Armstrong:');
  int numero = int.parse(stdin.readLineSync()!);

  if (esNumeroArmstrong(numero)) {
    print('$numero es un número de Armstrong.');
  } else {
    print('$numero no es un número de Armstrong.');
  }
}

bool esNumeroArmstrong(int numero) {
  String numeroStr = numero.toString();
  int cantidadDigitos = numeroStr.length;
  int suma = 0;

  for (int i = 0; i < cantidadDigitos; i++) {
    int digito = int.parse(numeroStr[i]);
    suma += pow(digito, cantidadDigitos).toInt();
  }

  return suma == numero;
}
