import 'dart:io';

class Empleado {
  String categoria;
  int horasTrabajadas;
  int numeroHijos;

  static const Map<String, double> tarifasHorarias = {
    'A': 45.0,
    'B': 37.5,
  };

  static const double bonificacionHijoHasta3 = 40.5;
  static const double bonificacionHijoMas3 = 35.0;

  Empleado(this.categoria, this.horasTrabajadas, this.numeroHijos);

  double calcularSueldoBasico() {
    double tarifa = tarifasHorarias[categoria] ?? 0.0;
    return tarifa * horasTrabajadas;
  }

  double calcularBonificacion() {
    if (numeroHijos <= 3) {
      return numeroHijos * bonificacionHijoHasta3;
    } else {
      return (3 * bonificacionHijoHasta3) + ((numeroHijos - 3) * bonificacionHijoMas3);
    }
  }

  double calcularSueldoBruto() {
    return calcularSueldoBasico() + calcularBonificacion();
  }

  double calcularDescuento(double sueldoBruto) {
    if (sueldoBruto >= 3500) {
      return sueldoBruto * 0.135;
    } else {
      return sueldoBruto * 0.10;
    }
  }

  double calcularSueldoNeto() {
    double sueldoBruto = calcularSueldoBruto();
    double descuento = calcularDescuento(sueldoBruto);
    return sueldoBruto - descuento;
  }

  void imprimirDetalles() {
    double sueldoBasico = calcularSueldoBasico();
    double sueldoBruto = calcularSueldoBruto();
    double descuento = calcularDescuento(sueldoBruto);
    double sueldoNeto = calcularSueldoNeto();

    print('--- Detalles del Sueldo del Empleado ---');
    print('Sueldo Básico: S/. ${sueldoBasico.toStringAsFixed(2)}');
    print('Sueldo Bruto: S/. ${sueldoBruto.toStringAsFixed(2)}');
    print('Descuento: S/. ${descuento.toStringAsFixed(2)}');
    print('Sueldo Neto: S/. ${sueldoNeto.toStringAsFixed(2)}');
  }
}

void main() {
  print('Ingrese la categoría del empleado (A/B):');
  String? categoria = stdin.readLineSync()?.toUpperCase();

  print('Ingrese las horas trabajadas:');
  int? horasTrabajadas = int.tryParse(stdin.readLineSync()!);

  print('Ingrese el número de hijos:');
  int? numeroHijos = int.tryParse(stdin.readLineSync()!);

  if (categoria != null && (categoria == 'A' || categoria == 'B') && 
      horasTrabajadas != null && horasTrabajadas >= 0 && 
      numeroHijos != null && numeroHijos >= 0) {
      
    Empleado empleado = Empleado(categoria, horasTrabajadas, numeroHijos);
    empleado.imprimirDetalles();
  } else {
    print('Por favor, ingrese valores válidos.');
  }
}
