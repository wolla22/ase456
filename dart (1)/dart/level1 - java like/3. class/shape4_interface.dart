import 'dart:math';

// When all the methods don't have a body in an abstract class
// We call it interface
abstract class Shape { // interface
  double area();
}

abstract class Printable {
  String printit(); 
}

// We use implements for interfaces
// We can implement multiple interfaces
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