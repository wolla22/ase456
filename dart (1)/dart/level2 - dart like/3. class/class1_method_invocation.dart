import 'dart:math';

class Test {
  void randomize() {
    var rng = Random();
    for (var i = 0; i < 10; i++) {
      print(rng.nextInt(100));
    }
  }
  int randomNumber() {
    int val = Random().nextInt(10);
    print("Random! ${val}");
    return val;
  } 
}

void main()
{
  // return 10 random numbers from 0 to 99
  Test().randomize();
  
  // We can use .. to execute methods sequentially
  Test()..randomNumber()
        ..randomNumber()
        ..randomNumber();
}