class Arith {
  int? x; int? y;
  // z is optional
  Arith({this.x, this.y});
  
  // named constructors are special constructors for various purposes
  Arith.zero() {
    x = 0; y = 0;
  }
  // different way of making named constructors
  Arith.zero2() : this.x = 0, this.y = 0;
  
  // We can use redirecting constructors
  Arith.zero3(): this(x:0, y:0); // invokes Arith({...}) constructor
}

void main() {
  // We will have an error when we don't give x and y values. 
  var a = Arith.zero();
  print(a.x); print(a.y);
  
  var a2 = Arith.zero2();
  print(a2.x); print(a2.y);  
  
  var a3 = Arith.zero3();
  print(a3.x); print(a3.y); 
}
