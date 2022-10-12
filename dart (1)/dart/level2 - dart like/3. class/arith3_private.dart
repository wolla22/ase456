// Any fields or methods with leading _ are private that cannot be accessed outside.
// When we use getter and setter to make private fields,
// We can use getter and setter to access the private fields
// Also, we can use initialize list 

class Arith {
  var _x, _y;
  set x(_x) {this._x = _x;} set y(_y) {this._y = _y;}
  get x {return _x;} get y {return _y;}
  
  // We can use initialize list
  Arith({required int x, required int y}) : _x = x, _y = y;
}

main() {
  var a = Arith(x:10, y:20);
  a.x = 10; // setter is invoked
  print(a.x); // getter is invoked
}