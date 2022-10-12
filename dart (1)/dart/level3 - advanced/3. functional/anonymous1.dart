typedef p = bool Function(int);

void anon1() {
  // One liner
  // bool Function(int) is function type (a function that has a int parameter and returns bool)
  bool Function(int) isEven = (int value) => value % 2 == 0;
  print(isEven(19)); //false 
  
  // Simpler and easier to read
  final isEven2 = (int value) => value % 2 == 0;
  print(isEven2(19));
}

void anon2() {
  p isEven = (int value) => value % 2 == 0;
  print(isEven(20)); //true 
  
  // We ignore any given argument
  p p2 = (_) {return true;};
  print(p2(3));
  print(p2);
}  

void main() {
  anon1();
  anon2();

}