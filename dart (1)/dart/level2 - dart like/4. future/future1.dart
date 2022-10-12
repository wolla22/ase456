import 'dart:io';

void main() {
   task1();
   task2(); // It waits the future results
   task3(); // task3 is executed right away
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

// task2 uses Future, so task2() waits the future results
// other tasks can run
void task2()  {
 Duration threeSeconds = Duration(seconds: 3);
 Future.delayed(threeSeconds, () {
   String result = 'task 2 data';
    print('Task 2 complete');
  });
}

void task3() {
 String result = 'task 3 data';
  print('Task 3 complete');
}
/*
Task 1 complete
Task 3 complete
Task 2 complete
*/