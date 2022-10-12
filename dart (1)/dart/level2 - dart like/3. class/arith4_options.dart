class Arith {
  // dart knows that x and y will be assigned to some values
  // because of the "required" keyword
  int x;
  int y;
  int z = 0; // default value

  // z is optional
  Arith({required this.x, required this.y, this.z = 0});
  
  // optional values in methods/functions
  add({int x = 0, int y = 0}) => (x + y);
}

void main() {
  // We will have an error when we don't give x and y values. 
  var a = Arith(x:10, y:20); 
  print(a.x); // 10
  print(a.y); // 20
  print(a.z); 
  
  a = Arith(x:10, y:20, z:30); 
  print(a.z);
  
  print(a.add());
  print(a.add(x:10));
  print(a.add(y:20));
  print(a.add(x:10, y:20));
}


