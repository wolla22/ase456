void string1() {
    String courseName = 'ASE 456';
    print('I like ' + courseName + '.'); 
}

void string2() {
    // String is a class, so it has properties/methods
    String name = 'Sam';
    print(name.isEmpty);  // isEmpty and isNotEmpty are properties
    print(name.isNotEmpty); 
    print(name.length); // length is a property
    print(name.toUpperCase()); // toUpperCase() is a method 
    print(name.toLowerCase()); 
}

void string3() {
  String name = '  Sam   ';
  print(name.trim());
  print(name.trim().length); // all the white spaces are gone
}

void main() {
  string1();
  string2();
  string3();
}