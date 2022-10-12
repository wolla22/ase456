variable1() {
    // num is super type of int and float
    num x0 = 20;
    num y0 = 3.4;
    // Dart can deduct type
    var x = x0;
    var y = y0;
    var b = true;
    
    // automatic type deduction
    print('x * y is ${x*y}'
          ' and b is $b'); // x * y is 68 and b is true
          
    // type can be deducted at runtime and compile time
    print('type of x0 is ${x0.runtimeType}'); // type of x0 is int
    print('type of y0 is ${y0.runtimeType}'); // type of y0 is double    
    print('type of x is ${x.runtimeType}'); // type of x is int
    print('type of y is ${y.runtimeType}'); // type of y is double
    print('type of b is ${b.runtimeType}'); type of b is bool
    print('type of String is ${'String'.runtimeType}'); type of String is String
}

void main()
{
    variable1();
}