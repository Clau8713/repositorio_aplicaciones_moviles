import 'dart:io';

class Dulceria {
  String tipoChocolate;
  int cantidad;

  // Precios por tipo de chocolate
  static const Map precios = {
    'Primor': 8.5,
    'Dulzura': 10.0,
    'Tentación': 7.0,
    'Explosión': 12.5,
  };

  Dulceria(this.tipoChocolate, this.cantidad);

  double calcularImporteCompra() {
    return precios[tipoChocolate]! * cantidad;
  }

  double calcularDescuento(double importe) {
    if (cantidad < 5) {
      return importe * 0.04;
    } else if (cantidad < 10) {
      return importe * 0.065;
    } else if (cantidad < 15) {
      return importe * 0.09;
    } else {
      return importe * 0.115;
    }
  }

  double calcularImportePagar(double importe, double descuento) {
    return importe - descuento;
  }

  int calcularCaramelos(double importePagar) {
    return importePagar >= 250 ? cantidad * 3 : cantidad * 2;
  }
}

void ingresarDatos() {
  stdout.write('Ingrese el tipo de chocolate (Primor, Dulzura, Tentación, Explosión): ');
  String? tipoChocolate = stdin.readLineSync();

  stdout.write('Ingrese la cantidad de chocolates: ');
  String? inputCantidad = stdin.readLineSync();
  int cantidad = int.tryParse(inputCantidad!) ?? 0;

  if (Dulceria.precios.containsKey(tipoChocolate)) {
    Dulceria dulceria = Dulceria(tipoChocolate!, cantidad);

    double importeCompra = dulceria.calcularImporteCompra();
    double descuento = dulceria.calcularDescuento(importeCompra);
    double importePagar = dulceria.calcularImportePagar(importeCompra, descuento);
    int caramelos = dulceria.calcularCaramelos(importePagar);

    print('Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}');
    print('Importe del descuento: S/. ${descuento.toStringAsFixed(2)}');
    print('Importe a pagar: S/. ${importePagar.toStringAsFixed(2)}');
    print('Cantidad de caramelos de obsequio: $caramelos');
  } else {
    print('Tipo de chocolate no válido. Por favor, elija entre: Primor, Dulzura, Tentación, Explosión.');
  }
}

void main() {
  ingresarDatos();
}
