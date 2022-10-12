/*
  In Dart you can append the const keyword in front of a constructor only if you’re going to initialize a series of final (immutable) variables.
*/  
class Constants {
  final int a;
  final int b;
  // const constructors is possible because all the fields are final
  const Constants(this.a, this.b);
}

class NonConstants {
  int a; int b;
  // const constructors is possible because all the fields are final
  NonConstants(this.a, this.b);  
}

void test1() {
  final e = const Constants(10, 20); // object e cannot be modified
  print(e.a);
  print(e.b);
}    

void test2() {
  // const list is possible because of the constant constructor
  const listConst = [Constants(1,1), Constants(2,2)];
  // we cannot change listFinal variable, but any class can be used  
  final listFinal = [NonConstants(1,1), NonConstants(2,2)];
  print(listConst[0].a);
  print(listFinal[1].b);
}

void main()
{
  test1();
  test2(); 
}