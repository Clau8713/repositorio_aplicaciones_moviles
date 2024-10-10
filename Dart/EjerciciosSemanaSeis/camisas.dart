import 'dart:io';

class Camisa {
  double precio;
  int cantidad;

  Camisa(this.precio, this.cantidad);

  double calcularImporteCompra() {
    return precio * cantidad;
  }

  double calcularPrimerDescuento(double importeCompra) {
    return importeCompra * 0.07;
  }

  double calcularSegundoDescuento(double importeCompra, double primerDescuento) {
    double importeRestante = importeCompra - primerDescuento;
    return importeRestante * 0.07;
  }

  double calcularDescuentoTotal(double primerDescuento, double segundoDescuento) {
    return primerDescuento + segundoDescuento;
  }

  double calcularImporteAPagar(double importeCompra, double descuentoTotal) {
    return importeCompra - descuentoTotal;
  }

  void imprimirDetalles() {
    double importeCompra = calcularImporteCompra();
    double primerDescuento = calcularPrimerDescuento(importeCompra);
    double segundoDescuento = calcularSegundoDescuento(importeCompra, primerDescuento);
    double descuentoTotal = calcularDescuentoTotal(primerDescuento, segundoDescuento);
    double importeAPagar = calcularImporteAPagar(importeCompra, descuentoTotal);

    print('--- Detalles de la Compra ---');
    print('Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}');
    print('Importe del primer descuento: S/. ${primerDescuento.toStringAsFixed(2)}');
    print('Importe del segundo descuento: S/. ${segundoDescuento.toStringAsFixed(2)}');
    print('Importe del descuento total: S/. ${descuentoTotal.toStringAsFixed(2)}');
    print('Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}');
  }
}

void main() {
  print('Ingrese el precio de la camisa:');
  double? precio = double.tryParse(stdin.readLineSync()!);

  print('Ingrese la cantidad de camisas adquiridas:');
  int? cantidad = int.tryParse(stdin.readLineSync()!);

  if (precio != null && precio >= 0 && cantidad != null && cantidad > 0) {
    Camisa camisa = Camisa(precio, cantidad);
    camisa.imprimirDetalles();
  } else {
    print('Por favor, ingrese valores válidos para el precio y la cantidad.');
  }
}
