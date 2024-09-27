import 'dart:io';

void main() {

  stdout.write("Ingrese el monto total a invertir: ");
  double montoTotal = double.parse(stdin.readLineSync()!);


  double alquiler = 0.23 * montoTotal; 
  double publicidad = 0.07 * montoTotal; 
  double transporte = 0.26 * montoTotal; 
  double serviciosFeriales = 0.12 * montoTotal; 
  double decoracion = 0.21 * montoTotal;
  double gastosVarios = 0.11 * montoTotal; 


  print("Gastos en cada rubro:");
  print("Alquiler de espacio en la feria: \$${alquiler.toStringAsFixed(2)}");
  print("Publicidad: \$${publicidad.toStringAsFixed(2)}");
  print("Transporte: \$${transporte.toStringAsFixed(2)}");
  print("Servicios feriales: \$${serviciosFeriales.toStringAsFixed(2)}");
  print("Decoración: \$${decoracion.toStringAsFixed(2)}");
  print("Gastos varios: \$${gastosVarios.toStringAsFixed(2)}");
}