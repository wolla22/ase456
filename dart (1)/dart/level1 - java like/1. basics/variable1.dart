// Hello world and function call
// Unlike Java, Dart can have functions

void variable1() {
  int x = 10;
  double y = 20.0;
  bool b = true;
  print('x * y is ' + (x*y).toString() + ' and b is ' + b.toString());
}

void variable2() {
  int x = 10;
  x = 20;
  final int x2 = 30;
  // x2 = 40; // Error
  const int x3 = 40; 
  print(x++ + x2 + x3); // x++ is x = x + 1
}

// We need the main() method like Java
void main() {
    variable1();
    variable2();
}