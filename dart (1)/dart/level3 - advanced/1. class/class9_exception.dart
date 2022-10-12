class TestException implements Exception {
  final String  message;
  const TestException(this.message);
  @override
  String toString() => message; 
}

class Test {
  a() {
    throw TestException("Test Error!");
  }
}

void main() {
  try {
    var a = Test();
    a.a(); 
  } on TestException catch (e) {
    print('what? $e');
  }
}


