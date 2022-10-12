// x, y, and return values are dynamic
add(x, y) {
  return (x + y);
}

// Compiler checks the input and output value types
int add2(int x, int y) {
  return (x + y);
}

// Dart way of making a function
// Dart knows that return value type is int (int + int -> int)
// so, we don't have to specify it 
// But we should be sure that input types should be int types
addDart(int x, int y) {
  return (x + y); 
}
// Positional argument 
addDart2(int x, [int? y]) { // optional parameters
  return (x + (y ?? 0)); // if y is null, use 0
}
// No types
// addDart2d(x, [y]) // dangerous as y can be null 
addDart2d(x, [y = 0]) {
  return (x + y); // y will be 0 when not given a value
}
// Named argument
addDart3({int x = 0, int y = 0}) { // optional parameters
  return (x + y);
}
addDart3d({x = 0, y = 0}) { // named and optional parameters
  return (x + y);
}

void main() {
  // This is convenient but inefficient and dangerous 
  // This is Python/JavaScript way of programming
  print(add(10, 20));
  print(add(10.0, 20.0));
  print(add("hello", "world"));

  // Dart compiler checks only int inputs are allowed
  print(add2(10, 20));
  
  // Dart way of programming
  print(addDart(10, 20));
  print(addDart2(10, 20));
  print(addDart2d(10, 20));
  print(addDart2(10));  
  print(addDart2d(10));    
  print(addDart3(x:10, y:20));  
  print(addDart3d(x:10));     
}