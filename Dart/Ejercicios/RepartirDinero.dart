import 'dart:io';

void main() {
 
  stdout.write("Ingrese la cantidad total de dinero a repartir: ");
  double montoTotal = double.parse(stdin.readLineSync()!);


  double josue = 0.27 * montoTotal; 
  double daniel = 0.25 * montoTotal; 
  double tamar = 0.85 * josue; 
  double caleb = 0.23 * (josue + daniel); 
  double david = montoTotal - (josue + daniel + tamar + caleb); 

 
  print("Dinero recibido por cada hijo:");
  print("Tamar: \$${tamar.toStringAsFixed(2)}");
  print("Josué: \$${josue.toStringAsFixed(2)}");
  print("Caleb: \$${caleb.toStringAsFixed(2)}");
  print("Daniel: \$${daniel.toStringAsFixed(2)}");
  print("David: \$${david.toStringAsFixed(2)}");
}