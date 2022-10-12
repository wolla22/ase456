void map0() {
  Map<String, int> m = new Map<String, int>();
  m['x'] = 1; m['y'] = 2;

  // keys, values, and entries to access map contents
  for (MapEntry<String, int> entry in m.entries) {
    print(entry.key); print(entry.value);
  }
}

void map1() {
  // Better way to instantiate a map object
  Map<String, int> m = <String, int>{
  	"x":1, "y":2
  };
  
  for (MapEntry<String, int> entry in m.entries) {
    print(entry.key); print(entry.value);
  }  
}

void map2() {
  // Instantiate just like JavaScript/Python
  Map<String, int> m = {"x":1, "y":2};
  
  for (MapEntry<String, int> entry in m.entries) {
    print(entry.key); print(entry.value);
  } 
}

void main() {
  map0(); print('\n');
  map1(); print('\n');
  map2();
}