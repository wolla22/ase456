list0() {
  var list = [1, 2, 3, 4, 5];
  list.forEach((val) => print(val));
}

void list1() {
  // We can help dart to guess the type with <String>
  // We call it ensuring type safe with type annotation
  var cities = <String>['New York', 'London', 'Paris']; 
  cities.forEach((val) => print(val)); 
}

void main() {
  list0();
  list1();
}