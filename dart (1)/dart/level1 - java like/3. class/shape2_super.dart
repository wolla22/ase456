import 'dart:math';

// Dart doesn't have interface, so we should use abstract instead
abstract class Shape {
  double area();
}

abstract class Printable {
  String printit(); 
}

class Circle implements Shape, Printable {
  double radius;
  Circle(this.radius);
  @override
  double area() {return pi * pow(radius, 2).toDouble();}
  @override
  String printit() {return "Print!";}
}

main() {
  Circle c = new Circle(10);
  print(c.printit());
}