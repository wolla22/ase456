import 'dart:io';

void main() {
   task1();
   // task2 waits for the future value
   // task3 should use the value from the task2, but 
   // it just starts right away.
   // So, the task3 prints the "null" value
   var res = task2();
   task3(res);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

String task2()  {
 Duration threeSeconds = Duration(seconds: 3);
 String result = '';
 Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  
  return result;
}

void task3(String task2Data) {
 String result = 'task 3 data';
  print('Task 3 complete with ${task2Data}');
}

/*
Task 1 complete
Task 3 complete with
Task 2 complete
*/