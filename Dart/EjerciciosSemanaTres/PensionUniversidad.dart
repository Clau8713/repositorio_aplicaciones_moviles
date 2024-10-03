import 'dart:io';

void main() {
  Map<String, double> pensiones = {
    'A': 550.0,
    'B': 500.0,
    'C': 460.0,
    'D': 400.0,
  };

  print('Ingrese la categoría del estudiante (A, B, C, D):');
  String categoria = stdin.readLineSync()!.toUpperCase();

  if (!pensiones.containsKey(categoria)) {
    print('Categoría inválida.');
    return;
  }

  print('Ingrese el promedio ponderado del ciclo anterior:');
  double promedio = double.parse(stdin.readLineSync()!);

  double descuentoPorcentaje = 0.0;

  if (promedio >= 0 && promedio < 14.00) {
    descuentoPorcentaje = 0.0;
  } else if (promedio >= 14.00 && promedio < 16.00) {
    descuentoPorcentaje = 10.0;
  } else if (promedio >= 16.00 && promedio < 18.00) {
    descuentoPorcentaje = 12.0;
  } else if (promedio >= 18.00 && promedio <= 20.00) {
    descuentoPorcentaje = 15.0;
  } else {
    print('Promedio inválido.');
    return;
  }

  double pensionActual = pensiones[categoria]!;
  double descuento = pensionActual * (descuentoPorcentaje / 100);
  double nuevaPension = pensionActual - descuento;

  print('Pensión actual: S/. ${pensionActual.toStringAsFixed(2)}');
  print('Descuento: S/. ${descuento.toStringAsFixed(2)}');
  print('Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}');
}
