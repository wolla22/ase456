import 'dart:io';

void main() {
  // this task waits for coffee order to be done
  orderAndWaitForCoffee();
  // this task will start right away
  otherWork();
}

void orderAndWaitForCoffee() async {
   // waits for the coffee to be finished
   await orderCoffee(); // check with or without await 
   // these tasks wait until orderCoffee is done.
   pickupCoffee();
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
void pickupCoffee() {
  print('OK my coffee is ready, so I pick it up');
}

void otherWork() {
  print(">>> I am doing my other work.");
}

void otherWorkAfterCoffee() {
  print("Now I can do the work as I have the coffee");
}

/* with await
Ordering and waiting coffee complete
>>> I am doing my other work.
Coffee is ready
OK my coffee is ready, so I pick it up
Now I can do the work as I have the coffee
*/

/* without await
Ordering and waiting coffee complete
OK my coffee is ready, so I pick it up
Now I can do the work as I have the coffee
>>> I am doing my other work.
Coffee is ready
*/