is_test() {
  var x = 20;
  var y = 3.4; 
    
  print(x is int); 
  print(y is double);
  print(x is num);
  print(y is num);
  print('x' is String);   
  print(x is! String);
}

as_test() {
  num value = 12;

  double doubleValue = value as double;
  int intValue = value as int; 

  print(doubleValue);
  print(intValue);
}

void main()
{
  is_test();
  as_test();
}