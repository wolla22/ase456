// forEach similar to Java
void list0() {
  // You can skip the <int> part just like javascript
  List<int> list = [1, 2, 3, 4, 5];
  list.insert(0, 100); // [100, 1, 2, 3, 4, 5]
  list.removeAt(list.length - 1); // [100, 1, 2, 3, 4]
  
  list.forEach((val) {
    print(val);
  });
  // we can use for in loop just like JavaScript/Python
  for (int val in list) {
    print(val);
  }
}

void list1() {
  List<String> cities = <String>['New York', 'London', 'Paris']; // type safe with type annotation

  // Properties
  print(cities.first); 
  print(cities.last);
  print(cities.length); 
  print(cities.isEmpty); 
  
  // Methods
  print(cities.contains('Moscow')); // false
  print(cities.indexOf('London')); // 1 (as it starts with 0)
}

void main() {
  list0();
  list1();
}