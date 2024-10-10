import 'dart:io';

class Empresa {
  double montoTotal;

  // Porcentajes de los rubros
  static const double porcentajeAlquiler = 0.23;
  static const double porcentajePublicidad = 0.07;
  static const double porcentajeTransporte = 0.26;
  static const double porcentajeServiciosFeriales = 0.12;
  static const double porcentajeDecoracion = 0.21;
  static const double porcentajeGastosVarios = 0.11;

  Empresa(this.montoTotal);

  double calcularGasto(double porcentaje) {
    return montoTotal * porcentaje;
  }

  void imprimirGastos() {
    print('--- Gastos de la Empresa en la Feria ---');
    print('Alquiler de espacio en la feria: S/. ${calcularGasto(porcentajeAlquiler).toStringAsFixed(2)}');
    print('Publicidad: S/. ${calcularGasto(porcentajePublicidad).toStringAsFixed(2)}');
    print('Transporte: S/. ${calcularGasto(porcentajeTransporte).toStringAsFixed(2)}');
    print('Servicios feriales: S/. ${calcularGasto(porcentajeServiciosFeriales).toStringAsFixed(2)}');
    print('Decoración: S/. ${calcularGasto(porcentajeDecoracion).toStringAsFixed(2)}');
    print('Gastos varios: S/. ${calcularGasto(porcentajeGastosVarios).toStringAsFixed(2)}');
  }
}

void main() {
  print('Ingrese el monto total a invertir en la feria:');
  double? montoTotal = double.tryParse(stdin.readLineSync()!);

  if (montoTotal != null && montoTotal >= 0) {
    Empresa empresa = Empresa(montoTotal);
    empresa.imprimirGastos();
  } else {
    print('Por favor, ingrese un valor válido para el monto total.');
  }
}
