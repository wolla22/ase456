class Example {
  int a; // Ok - 'a' initialized by the constructor 
  Example(this.a);
}

// Use final and const when we don't update the object
// Dart will optimize code based on this const information
class ExampleBetter {
  final int a; // Ok - 'a' initialized by the constructor 
  const ExampleBetter(this.a);
}

class Example2 {
  // int _a; // Error - 'a' not initialized, 
  // so we should make it nullable
  int? _a;
  Example2(int a) {
    _a = a; 
  }
}

class Example3 {
  // int _a; // Error - 'a' not initialized, 
  // so we should teach Dart it will be assigned later
  late int _a;
  Example3(int a) {
    _a = a; 
  }
}

void main() {
  var ex = Example(10); print(ex.a);
  // exBetter2 will not reference other objects at runtime
  final exBetter2 = ExampleBetter(10); print(exBetter2.a);
  // exBetter will be optimzed at compile-time
  const exBetter = ExampleBetter(10); print(exBetter.a);
  var ex2 = Example(10); print(ex2.a);
  var ex3 = Example(10); print(ex3.a);  
}