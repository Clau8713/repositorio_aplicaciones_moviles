import 'dart:io';

class Empleado {
  int minutosTardanza;
  int observaciones;

  Empleado(this.minutosTardanza, this.observaciones);

  int obtenerPuntajePuntualidad() {
    if (minutosTardanza == 0) return 10;
    if (minutosTardanza >= 1 && minutosTardanza <= 2) return 8;
    if (minutosTardanza >= 3 && minutosTardanza <= 5) return 6;
    if (minutosTardanza >= 6 && minutosTardanza <= 9) return 4;
    return 0; // Más de 9 minutos
  }

  int obtenerPuntajeRendimiento() {
    if (observaciones == 0) return 10;
    if (observaciones == 1) return 8;
    if (observaciones == 2) return 5;
    if (observaciones == 3) return 1;
    return 0; // Más de 3 observaciones
  }

  int calcularPuntajeTotal() {
    return obtenerPuntajePuntualidad() + obtenerPuntajeRendimiento();
  }

  double calcularBonificacion() {
    int puntajeTotal = calcularPuntajeTotal();
    if (puntajeTotal < 11) {
      return puntajeTotal * 2.5;
    } else if (puntajeTotal <= 13) {
      return puntajeTotal * 5.0;
    } else if (puntajeTotal <= 16) {
      return puntajeTotal * 7.5;
    } else if (puntajeTotal <= 19) {
      return puntajeTotal * 10.0;
    } else {
      return puntajeTotal * 12.5;
    }
  }
}

void ingresarDatos() {
  stdout.write('Ingrese los minutos de tardanza: ');
  String? inputMinutos = stdin.readLineSync();
  int minutosTardanza = int.tryParse(inputMinutos!) ?? 0;

  stdout.write('Ingrese el número de observaciones: ');
  String? inputObservaciones = stdin.readLineSync();
  int observaciones = int.tryParse(inputObservaciones!) ?? 0;

  Empleado empleado = Empleado(minutosTardanza, observaciones);

  int puntajePuntualidad = empleado.obtenerPuntajePuntualidad();
  int puntajeRendimiento = empleado.obtenerPuntajeRendimiento();
  int puntajeTotal = empleado.calcularPuntajeTotal();
  double bonificacion = empleado.calcularBonificacion();

  print('Puntaje por puntualidad: $puntajePuntualidad');
  print('Puntaje por rendimiento: $puntajeRendimiento');
  print('Puntaje total: $puntajeTotal');
  print('Bonificación: S/. ${bonificacion.toStringAsFixed(2)}');
}

void main() {
  ingresarDatos();
}
