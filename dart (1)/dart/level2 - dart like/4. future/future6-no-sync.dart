import 'dart:io';

void main() {
  orderAndWaitForCoffee();
  otherWork();
}

// We don't need to use async/await when we use then
// however, prefer to use async/await
void orderAndWaitForCoffee() {
   var future = orderCoffee(); 
   future.then((val) {
       pickupCoffee(val);
       otherWorkAfterCoffee();
  });
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