import 'dart:math';

// a class is abstract when any of the method is not implemented
abstract class Shape {
  double area();
  String printit() {return "Hello";}
}

// We use extends to inherit from Shape
class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double area() {return pi * pow(radius, 2).toDouble();}
}

main() {
  Circle c = new Circle(10);
  print(c.printit());
}