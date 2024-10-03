import 'dart:io';

void main() {
  double costoMayor18 = 350.0;
  double costoMenor18 = 200.0;

  print('Ingrese la edad del hombre:');
  int edad = int.parse(stdin.readLineSync()!);

  print('Ingrese el nivel del sistema de beneficio (1, 2, 3, otro):');
  int nivel = int.parse(stdin.readLineSync()!);

  double costoFinal;
  double descuento = 0.0;

  if (edad > 18) {
    costoFinal = costoMayor18;
    switch (nivel) {
      case 1:
        descuento = 0.40;
        break;
      case 2:
        descuento = 0.30;
        break;
      case 3:
        descuento = 0.15;
        break;
      default:
        descuento = 0.0;
        break;
    }
  } else if (edad == 18) {
    costoFinal = costoMenor18;
    switch (nivel) {
      case 1:
        descuento = 0.60;
        break;
      case 2:
        descuento = 0.40;
        break;
      case 3:
        descuento = 0.20;
        break;
      default:
        descuento = 0.0;
        break;
    }
  } else {
    print('La edad debe ser 18 o mayor para adquirir la libreta militar.');
    return;
  }

  double montoDescuento = costoFinal * descuento;
  costoFinal -= montoDescuento;

  print('Descuento: S/. ${montoDescuento.toStringAsFixed(2)}');
  print('Valor final a pagar: S/. ${costoFinal.toStringAsFixed(2)}');
}
