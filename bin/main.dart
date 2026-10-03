import 'package:oop5/triangle.dart';

void main() {
  // Benannter Konstruktor
  final triangle1 = Triangle.cm(10, 5);

  print('Triangle 1');
  print('Höhe: ${triangle1.heightInCm} cm');
  print('Breite: ${triangle1.widthInCm} cm');
  print('Höhe in mm: ${triangle1.heightInMm} mm');
  print('Breite in mm: ${triangle1.widthInMm} mm');
  print('MeasurementSystem: ${triangle1.measurementSystem}');
  print('Fläche: ${triangle1.area} cm²');
  print('');

  // Getter und Setter
  triangle1.heightInCm = 20;
  triangle1.widthInCm = 10;

  print('Triangle 1 nach Änderung über Setter');
  print('Höhe: ${triangle1.heightInCm} cm');
  print('Breite: ${triangle1.widthInCm} cm');
  print('Fläche: ${triangle1.area} cm²');
  print('');

  // Allgemeiner Konstruktor mit MeasurementSystem
  final triangle2 = Triangle(10, 5, MeasurementSystem.dm);

  print('Triangle 2');
  print('Höhe: ${triangle2.heightInDm} dm');
  print('Breite: ${triangle2.widthInDm} dm');
  print('Höhe in Metern: ${triangle2.heightInMeters} m');
  print('MeasurementSystem: ${triangle2.measurementSystem}');
  print('Fläche: ${triangle2.area} dm²');
  print('');

  // Neue getHeight-Methode
  print('Triangle 2 - Höhe über getHeight');
  print('${triangle2.getHeight(MeasurementSystem.mm)} mm');
  print('${triangle2.getHeight(MeasurementSystem.cm)} cm');
  print('${triangle2.getHeight(MeasurementSystem.dm)} dm');
  print('${triangle2.getHeight(MeasurementSystem.m)} m');
  print('${triangle2.getHeight(MeasurementSystem.inch)} inch');
  print('${triangle2.getHeight(MeasurementSystem.feet)} feet');
  print('');

  // Neue setHeight-Methode
  triangle2.setHeight(MeasurementSystem.cm, 50);

  print('Triangle 2 nach setHeight');
  print('Höhe: ${triangle2.getHeight(MeasurementSystem.cm)} cm');
  print('Höhe intern: ${triangle2.heightInMm} mm');
  print('');

  // Weitere benannte Konstruktoren
  final triangle3 = Triangle.inch(10, 5);
  final triangle4 = Triangle.feet(2, 1);
  final triangle5 = Triangle.mm(100, 50);
  final triangle6 = Triangle.m(2, 1);

  print('Weitere Konstruktoren');
  print('Triangle 3: ${triangle3.heightInInch} inch');
  print('Triangle 4: ${triangle4.heightInFeet} feet');
  print('Triangle 5: ${triangle5.heightInMm} mm');
  print('Triangle 6: ${triangle6.heightInMeters} m');
}
