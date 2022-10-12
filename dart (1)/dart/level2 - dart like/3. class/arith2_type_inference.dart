/*
  Dart compiler is smart. So, we don't need to specify types; dart will guess as much as possible
*/
class Arith {
  // we can use var, and dart knows that the var is int because 
  // 0 (int) value is assigned
  var x = 0; var y = 0;
  
  Arith(x, y) {
     this.x = x; this.y = y; 
  }
  
  // dart can guess the output type, but it also has the dynamic type, so it's better to specify the output type
  // int add(x, y) // this is better though
  add(x, y) {
    return (x + y);
  }
  sub(x, y) {
    return (x - y);
  }
}

void main() {
  // We don't need to use "new" and we don't need to specify variable type Arith
  var a = Arith(10, 30); // 
  print(a.add(10, 30)); // 10 + 30 -> 40
  print(a.sub(10, 30)); // 10 - 30 -> -20 
}

