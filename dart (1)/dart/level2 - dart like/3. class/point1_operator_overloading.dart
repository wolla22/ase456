import 'dart:math';
class Point {
    int x = 0, y = 0;
    Point(this.x, this.y);
    Point scale(int factor) => Point(x * factor, y * factor); 
    Point operator +(Point p) => Point(x + p.x, y + p.y); 
    static double distance(Point p1, Point p2) {
        int dx = p1.x - p2.x;
        int dy = p1.y - p2.y;
        return sqrt(dx * dx + dy * dy);
    } 
}

main() {
    var p = Point(10, 20);
    var q = Point(30, 40);
    var q2 = q.scale(10);
    var r = p + q2;
    print(Point.distance(r, q)); 
}

