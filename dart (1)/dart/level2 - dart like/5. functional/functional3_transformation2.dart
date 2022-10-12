// map is used to transform one value to the other
transform1() {
  // Generate a list of 20 items using a factory (generator)
  final list = List<int>.generate(20, (i) => i);

  // get only the even numbers and transform them into a list
  final List<String> other = list
    .map((int value) => value.toString()) // transform the data into string using map
    .toList(); // make a list from a sequence
  return other;
}

transform2() {
  final list = List<int>.generate(20, (i) => i);

  final List<String> other = list
    .where((int value) => value % 2 == 0) // select the values using where()
    .map((int value) => value.toString()) // 
    .toList(); // 
  return other;
}

// reduce reduces the input by applying the operation recursively
reduce1() {
  final list = <int>[1, 2, 3, 4, 5];
  final sum = list.reduce((int newValue, int sum) => newValue + sum);
  return sum;
}

// fold is similar, and it starts with a initial value
fold1() {
  final list = <int>[1, 2, 3, 4, 5];
  final result = list.fold(0, (int newValue, int sum) => newValue + sum);
  return result;
}

void main() {
  // Return a new list of even numbers
  print(transform1()); // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
  print(transform2()); // [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
  print(reduce1()); // 1+2+3+4+5 -> 15
  print(fold1()); 
}