// The input of function should be a function reference
// It cannot be null as it is required 
function({required Function f}) {
  return f();
}

function2({required Function(int) f, required int i}) {
  return f(i);
}

void main() {
  // lambda expression returns the function refernce
  function(f: () {print('hello');});
  // we can give any statements in the body of the lambda expression
  function(f: () {
  	for (var i = 0; i < 10; i++) print('hello ${i}');});
  
  print(function2(f: (int i) {return (i + 1);}, i:10));
}