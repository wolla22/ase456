class Point {
  int x = 0, y = 0;
  Point(this.x, this.y);

  // We should also provide = operator
  // the == should use operator overloading
  @override
  bool operator ==(Object other) {
    return (this.x == (other as Point).x && this.y == (other as Point).y);
  }
}

class PointWithoutEqual {
  int x = 0, y = 0;
  PointWithoutEqual(this.x, this.y);
}

void main() {
  // this is possible, but bad code
  var a = new Point(10, 30); 
  var b = new Point(10, 30); 
  print (a == b); // check if they have the same value
  
  var a2 = new PointWithoutEqual(10,20);
  var b2 = new PointWithoutEqual(10,20);
  print(a2 == b2); // they don't reference the same object, so false
  print(a2 == a2); 
  print(b2 == b2); 
}

