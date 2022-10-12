// no return type is needed
example1() {
  // a function can be nested
  nested1() {
    nested2() {print("Example1 nested 1 nested 2");}
    nested3() => print("Example1 nested 1 nested 2");
    nested3(); 
    nested2();
  }
  nested1();
}

void main() {
    example1();
}