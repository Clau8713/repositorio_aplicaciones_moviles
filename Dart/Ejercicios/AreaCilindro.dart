import 'dart:io';
import 'dart:math';

void main() {
  
  stdout.write("Ingrese el radio del cilindro (r): ");
  double r = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la altura del cilindro (h): ");
  double h = double.parse(stdin.readLineSync()!);


  double areaTotal = calcularAreaTotal(r, h);
  double volumen = calcularVolumen(r, h);


  print("El área total del cilindro es: $areaTotal");
  print("El volumen del cilindro es: $volumen");
}


double calcularAreaTotal(double r, double h) {
  return 2 * pi * r * (r + h);
}


double calcularVolumen(double r, double h) {
  return pi * pow(r, 2) * h;
}