import 'dart:io';

class Estudiante {
  String categoria;
  double promedio;

  Estudiante(this.categoria, this.promedio);

  double obtenerPensionBase() {
    switch (categoria) {
      case 'A':
        return 550.0;
      case 'B':
        return 500.0;
      case 'C':
        return 460.0;
      case 'D':
        return 400.0;
      default:
        throw Exception('Categoría no válida');
    }
  }

  double obtenerDescuento() {
    if (promedio < 14.00) {
      return 0.0;
    } else if (promedio < 16.00) {
      return 0.10; // 10%
    } else if (promedio < 18.00) {
      return 0.12; // 12%
    } else {
      return 0.15; // 15%
    }
  }

  double calcularRebaja() {
    double pensionBase = obtenerPensionBase();
    double descuento = obtenerDescuento();
    return pensionBase * descuento;
  }

  double calcularNuevaPension() {
    double pensionBase = obtenerPensionBase();
    double rebaja = calcularRebaja();
    return pensionBase - rebaja;
  }
}

void main() {
  stdout.write('Ingrese la categoría (A, B, C, D): ');
  String? categoria = stdin.readLineSync();

  stdout.write('Ingrese el promedio ponderado: ');
  String? inputPromedio = stdin.readLineSync();
  double promedio = double.tryParse(inputPromedio!) ?? 0.0;

  Estudiante estudiante = Estudiante(categoria!, promedio);

  double rebaja = estudiante.calcularRebaja();
  double nuevaPension = estudiante.calcularNuevaPension();

  print('Rebaja sobre la pensión: S/. ${rebaja.toStringAsFixed(2)}');
  print('Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}');
}
