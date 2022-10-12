class Example {
  final a;
  // Private constructor
  Example._(this.a);
  factory Example(int value) {
    final c = value * 3;
    return Example._(c);
  }
}

void main() {
  final ex = Example(10); // a becomes 10 * 3
  print(ex.a); // 30
}