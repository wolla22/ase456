// dart stream.dart
import 'dart:io';
import 'dart:math';

Stream<int> randomNumbers() async* { // 1. 
  final random = Random();
  for(var i = 0; i < 100; ++i) { // 2. 
    await Future.delayed(Duration(seconds: 1)); // 3. 
    yield random.nextInt(50) + 1; // 4.
  }
}

// subscirber
void main() async {
  final stream = randomNumbers();
  await for (var value in stream) {
    print(value);
  }
  print("Async stream!");
}