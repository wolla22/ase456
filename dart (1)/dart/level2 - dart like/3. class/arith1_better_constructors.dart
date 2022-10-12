// This is Dart way of making a constructor
class Arith0 {
  // dart knows the type of x and y
  var x = 0; var y = 0;

  // when we use this in the parameters,
  // dart knows the x is assigned to this.x and y is assigned to this.y
  Arith0(this.x, this.y);
  
  // When we have only one statement, and the statement returns a value,
  // we can use => to simplify it.
  int add(int x, int y) => (x + y);
  int sub(int x, int y) => (x - y);
}

// This allows us to specify the parameter name when we instantiate an object
// x and y can be null, so we should use int? not int
class Arith1 {
  int? x; int? y; 
  Arith1({this.x, this.y});
  
  int add(int x, int y) => (x + y);
  int sub(int x, int y) => (x - y);
}

// Good example
class Arith {
  // You should specify type (int in this case), don't use dynamic if possible
  int x; int y;
  // Use required and {} for constructors
  Arith({required this.x, required this.y});
  
  // Use => operator
  int add(int x, int y) => (x + y);
  int sub(int x, int y) => (x - y);
}

void main() {
  print("Testing Arith0");  
  var a0 = Arith0(10, 30); // instantiation
  print(a0.add(10, 30)); // 10 + 30 -> 40
  print(a0.sub(10, 30)); // 10 - 30 -> -20 
  
  print("Testing Arith1");
  var a1 = Arith1(x:10, y:30); // specify the variable
  print(a1.add(10, 30));
  print(a1.sub(10, 30));   
  
  a1 = Arith1(x:10); // y becomes null
  print(a1.x); // 10
  print(a1.y); // null 
  
  print("Testing Arith");
  var a = Arith(x:10, y:30); // error when we don't give x and y
  print(a.add(10, 30));
  print(a.sub(10, 30));
}

