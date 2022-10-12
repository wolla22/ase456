void map0() {
  var m = {"x":1, "y":2};

  // keys, values, and entries to access map contents
  for (var key in m.keys) print(key); 
  for (var value in m.values) print(value); 
  for (var entry in m.entries) {
    print(entry.key); print(entry.value);
  }
}

void main() {
  map0(); print('\n');
}