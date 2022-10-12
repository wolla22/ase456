// Dart has similar syntax to Java
// It uses class, constructor, and braces just like Java
// Any Java programmers can read Dart code. 

class Arith {
  int x = 0; // Don't forget to initialize values
  int y = 0; 
  
  // this is possible, but bad code 
  Arith(int x, int y) {
     this.x = x;
     this.y = y; 
  }
  int add() {
    // dart knows y is a class variable y
    return (this.x + y);
  }
  int add2(int x, int y) {
    return (x + y);
  }
  int add3() {
      int z = 100; // z is a local variable
      return (x + y + z); 
  }
  int sub() {
    return (this.x - this.y);
  }
  int sub2(int x, int y) {
    return (x - y);
  }
}

// public static void main(String[] arg) <- Java
// See how simple dart is. 
/* 
 * dart arith0.dart to execute this code in command line
 */
void main() {
  // this is possible, but bad code
  Arith a = new Arith(10, 30); // instantiation
  print(a.x); // 10 
  print(a.y); // 30
  print(a.add()); // 10 + 30 -> 40
  print(a.add2(100, 200)); // 300
  print(a.add3()); // 10 + 30 + 100 -> 140
  print(a.sub()); // 10 - 30 -> -20 
  print(a.sub2(100, 200)); // -100
}


