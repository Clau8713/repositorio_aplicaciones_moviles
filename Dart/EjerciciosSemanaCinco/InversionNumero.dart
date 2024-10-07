import 'dart:io';

void main() {
  print('Ingrese un número entero:');
  String? input = stdin.readLineSync();

  if (input != null && int.tryParse(input) != null) {
    int number = int.parse(input);
    int invertedNumber = 0;

    while (number != 0) {
      int digit = number % 10; 
      invertedNumber = invertedNumber * 10 + digit; 
      number ~/= 10; 
    }

    print('El número invertido es: $invertedNumber');
  } else {
    print('Por favor, ingrese un número entero válido.');
  }
}
