import 'dart:io';

class Tienda {
  String tipoProducto;
  int cantidad;

  // Precios por tipo de producto
  static const Map<String, double> precios = {
    'P1': 15.0,
    'P2': 17.5,
    'P3': 20.0,
  };

  Tienda(this.tipoProducto, this.cantidad);

  double calcularImporte() {
    return precios[tipoProducto]! * cantidad;
  }

  String determinarRegalo() {
    if (cantidad < 26) {
      return 'Un lapicero';
    } else if (cantidad <= 50) {
      return 'Un cuaderno';
    } else {
      return 'Una agenda';
    }
  }
}

void main() {
  stdout.write('Ingrese el tipo de producto (P1, P2, P3): ');
  String? tipoProducto = stdin.readLineSync();

  stdout.write('Ingrese la cantidad de unidades adquiridas: ');
  String? inputCantidad = stdin.readLineSync();
  int cantidad = int.tryParse(inputCantidad!) ?? 0;

  if (Tienda.precios.containsKey(tipoProducto)) {
    Tienda tienda = Tienda(tipoProducto!, cantidad);

    double importe = tienda.calcularImporte();
    String regalo = tienda.determinarRegalo();

    print('Importe a pagar: S/. ${importe.toStringAsFixed(2)}');
    print('Regalo: $regalo');
  } else {
    print('Tipo de producto no válido. Por favor, elija entre: P1, P2, P3.');
  }
}
