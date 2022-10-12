class Person {
  late final String name;
  late final int age;
  Person(this.name,this.age);
  
  Person.fromJson(Map<String,dynamic> json){
    this.name = json['name'];
    this.age = json['age'] as int;
  }
  @override
  toString() => "${this.name}/${this.age}";
}

void main() {
  var p = Person.fromJson({'name':'Sam', 'age':10});
  print(p);
}