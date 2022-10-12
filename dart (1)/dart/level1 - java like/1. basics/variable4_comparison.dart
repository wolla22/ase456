void comparison1() {
  int x = 10; 
  int y = 10; 
  print(x == y); // true
  print(x++ == ++x); // false as x++ makes x 11 
    
  /* It's dangerous to compare double */
  double xd = 1.2345678901234567890123456789012;
  double yd = 1.234567890123456789012345678901;
  print(xd == yd); // true as double type values are approximate
  
  String s1 = "Hello World";
  String s2 = "Hello" + " World";
  print(s1 == s2); // String comparison with == is not reference comparision
}

void main()
{
  comparison1();
}