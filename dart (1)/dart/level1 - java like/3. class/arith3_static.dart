class Arith {
  static int staticValue = 0;
  int x = 0; int y = 0; 
  
  Arith(int x, int y) {
     this.x = x; this.y = y; 
  }
}

void main() {
  // this is possible, but bad code
  Arith a = new Arith(10, 30); 
  Arith.staticValue = 20;
  
  print(a.x);
  print(Arith.staticValue);
}

