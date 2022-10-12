// scream(5) returns Aaaaaah!
String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 4];
  
  // x.map(f) method maps f each element in a list x
  // map creates a sequence (not a list)
  print(values.map(scream));
  // so we sometimes need to transform the result back to list
  print(values.map(scream).toList()); 
  print('\n');
  
  // scream 1, 2, 3, 4 times
  for (var length in values) {
    print(scream(length));
  }
  // same result, but with a functional approach 
  values.map(scream).forEach(print);
  print('\n');
  
  // we apply skip, take together with many other filters
  // skip(1) -> [2,3,4] take(1) -> [2]
  values.skip(1).take(1).map(scream).forEach(print);
  print('\n');
}