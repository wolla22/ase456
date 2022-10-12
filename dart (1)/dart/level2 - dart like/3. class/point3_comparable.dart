class Point implements Comparable<Point> {
  int x = 0, y = 0; String z;
  Point(this.x, this.y, this.z);

  // We should also provide = operator
  // the == should use operator overloading
  @override
  bool operator ==(Object other) {
    return (this.x == (other as Point).x && this.y == (other as Point).y);
  }
  @override
  int compareTo(Point other) {
    if (this.z == other.z) return 0;
    return 1;
  }
}

void main() {
  // this is possible, but bad code
  var a = new Point(10, 30, 'a'); 
  var b = new Point(10, 30, 'b'); 
  var c = new Point(10, 30, 'b');  
  print(a.compareTo(b)); // 1
  print(c.compareTo(c)); // 0
}

