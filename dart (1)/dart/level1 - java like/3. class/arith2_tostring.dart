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
  
  // Prints out the object
  @override
  String toString() {
    return 'x: ' + this.x.toString() + ' y: ' + this.y.toString();
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

  // toString test
  print(a); 
}

/*
x: 10 y: 30
*/
