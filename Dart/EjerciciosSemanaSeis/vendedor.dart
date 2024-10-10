import 'dart:io';

class Vendedor {
  static const double sueldoBasico = 350.75;
  double totalVendido;

  Vendedor(this.totalVendido);

  double calcularComision() {
    return totalVendido * 0.05;
  }

  double calcularSueldoBruto() {
    return sueldoBasico + calcularComision();
  }

  double calcularDescuento() {
    return calcularSueldoBruto() * 0.15;
  }

  double calcularSueldoNeto() {
    return calcularSueldoBruto() - calcularDescuento();
  }

  void imprimirBoleta() {
    print('--- Boleta de Pago ---');
    print('Sueldo Básico: S/. ${sueldoBasico.toStringAsFixed(2)}');
    print('Comisión: S/. ${calcularComision().toStringAsFixed(2)}');
    print('Sueldo Bruto: S/. ${calcularSueldoBruto().toStringAsFixed(2)}');
    print('Descuento: S/. ${calcularDescuento().toStringAsFixed(2)}');
    print('Sueldo Neto: S/. ${calcularSueldoNeto().toStringAsFixed(2)}');
  }
}

void main() {
  print('Ingrese el importe total vendido en el mes:');
  double? totalVendido = double.tryParse(stdin.readLineSync()!);

  if (totalVendido != null && totalVendido >= 0) {
    Vendedor vendedor = Vendedor(totalVendido);
    vendedor.imprimirBoleta();
  } else {
    print('Por favor, ingrese un valor válido para el importe vendido.');
  }
}