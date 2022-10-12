import 'dart:math';

class Shape {
  double area() {return 0.0;}
}

// Circle should inherit from only one Parent class
class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double area() {return pi * pow(radius, 2).toDouble();}
  String identity() {return "Circle";}
}

class Square extends Shape {
  double side;
  Square(this.side);
  @override
  double area() {return pow(side, 2).toDouble();}
}

main() {
  Circle c1 = new Circle(10);
  Shape c2 = new Circle(10);
  
  Square s1 = new Square(10);
  Shape s2 = new Square(10);
  
  print(c1.area()); print(c2.area()); 
  print(s1.area()); print(s2.area());
  
  print(c1 is Circle); print(c2 is Circle);
  print(c1 is Shape); print(c2 is Shape);
  
  print(s1 is Square); print(s2 is Square);
  print(s1 is Shape); print(s2 is Shape);
  
  print(c1.identity());
  // print(c2.identity()); // Error!
  print((c2 as Circle).identity()); // OK
  
}