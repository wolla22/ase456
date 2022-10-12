import 'dart:io';

// to resolve this issue, we should teach task3
// to wait unitl the task2 is done
// for this, we should use "await" before the task2()
// when a body has "await", the function should have "async"
void main()  async {
   task1();
   var res = await task2();
   task3(res);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

// We can specify the return value from the future
//Future<String> task2() async  {
// We can just use task2 
Future task2() async  {
 Duration threeSeconds = Duration(seconds: 3);
 String result = '';
 await Future.delayed(threeSeconds, () {
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
Task 2 complete
Task 3 complete with task 2 data
*/