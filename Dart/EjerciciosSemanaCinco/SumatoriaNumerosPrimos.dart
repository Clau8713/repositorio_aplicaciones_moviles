import 'dart:io';

bool esPrimo(int numero) {
  if (numero <= 1) return false;
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) return false;
  }
  return true;
}

void main() {
  print('Ingrese el primer número:');
  int? inicio = int.tryParse(stdin.readLineSync()!);
  
  print('Ingrese el segundo número:');
  int? fin = int.tryParse(stdin.readLineSync()!);
  
  if (inicio == null || fin == null || inicio > fin) {
    print('Por favor, ingrese dos números válidos y asegúrese de que el primero sea menor o igual al segundo.');
    return;
  }

  int sumatoria = 0;

  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      sumatoria += i;
    }
  }

  print('La sumatoria de los números primos entre $inicio y $fin es: $sumatoria');
}
