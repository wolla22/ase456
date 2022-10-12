class Circle {
  double radius;
  Circle(this.radius);
  a() {throw Exception("hello exception occurred!");}
}

main() {
  Circle c = new Circle(10);
  try {
    c.a();
  } catch (e) {
    print("Error: $e");
  } finally { // this is optional
    print("Done");
  }
}