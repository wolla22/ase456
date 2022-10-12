import 'dart:io';

void main() {
  orderAndWaitForCoffee();
  otherWork();
}

void orderAndWaitForCoffee()  async {
   // res is Future<String>, so we cannot use it. 
   var res = await orderCoffee(); 
   // when the orderCoffee() returns res, it is String.   
   pickupCoffee(res);
   otherWorkAfterCoffee();
}

Future<String> orderCoffee() {
  print('Ordering and waiting coffee complete');
  
  Duration threeSeconds = Duration(seconds: 3);
  return Future.delayed(threeSeconds, () {
     print('Coffee is ready');
     return '<COFFEE>';
  });
}

void pickupCoffee(String order1) {
  print('OK my coffee is ready - ${order1}, so I pick it up');
}

void otherWork() {
  print(">>> I am doing my other work.");
}

void otherWorkAfterCoffee() {
  print("Now I can do the work as I have the coffee");
}

/*
Ordering and waiting coffee complete
>>> I am doing my other work.
Coffee is ready
OK my coffee is ready - <COFFEE>, so I pick it up
Now I can do the work as I have the coffee
*/