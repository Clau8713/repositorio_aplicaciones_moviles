import 'dart:io';

void main() {
  double sueldoBasico = 600.0;

  print('Ingrese el importe total vendido:');
  double importeVendido = double.parse(stdin.readLineSync()!);

  print('Ingrese el número de hijos:');
  int numeroHijos = int.parse(stdin.readLineSync()!);

  double comision = (importeVendido > 15000) ? (importeVendido * 0.07) : (importeVendido * 0.05);

  double bonificacion = (numeroHijos < 5) ? (numeroHijos * 25) : (numeroHijos * 22);

  double sueldoBruto = sueldoBasico + comision + bonificacion;

  double descuento = (sueldoBruto > 3500) ? (sueldoBruto * 0.15) : (sueldoBruto * 0.11);

  double sueldoNeto = sueldoBruto - descuento;

  print('Sueldo básico: S/. ${sueldoBasico.toStringAsFixed(2)}');
  print('Comisión: S/. ${comision.toStringAsFixed(2)}');
  print('Bonificación: S/. ${bonificacion.toStringAsFixed(2)}');
  print('Sueldo bruto: S/. ${sueldoBruto.toStringAsFixed(2)}');
  print('Descuento: S/. ${descuento.toStringAsFixed(2)}');
  print('Sueldo neto: S/. ${sueldoNeto.toStringAsFixed(2)}');
}
