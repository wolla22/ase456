// dartpad (web platform) does not support dart:io
// you should use dart command line tool or VCS to run this

import 'dart:io';

void main() {
   task1();
   // wait 2 seconds
   task2();
   task3();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

// task2 takes two seconds
// all the other tasks cannot be executed 
void task2()  {
 Duration threeSeconds = Duration(seconds: 3);
 sleep(threeSeconds);
 String result = 'task 2 data';
  print('Task 2 complete');
}

void task3() {
 String result = 'task 3 data';
  print('Task 3 complete');
}

/*
Task 1 complete
Task 2 complete
Task 3 complete
*/