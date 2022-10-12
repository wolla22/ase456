// Bad code, don't use this 
void list0() {
  // Similar to Java, but a bit complicated
  List<int> list = List<int>.empty(growable: true);
  list.add(1); list.add(2); list.add(3); 
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
}

// For loop just like Java
void list1() {
  // Similar to JavaScript
  List<int> list = <int>[1, 2, 3]; 
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
}

// forEach similar to Java
void list2() {
  // You can skip the <int> part just like javascript
  List<int> list = [1, 2, 3];
  list.forEach((val) {
    print(val);
  });
}

void main() {
  list0();
  list1();
  list2();
}