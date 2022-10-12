import 'dart:io';

void main() {
  orderAndWaitForCoffee();
  otherWork();
}

// we use try/catch for processing exception
void orderAndWaitForCoffee()  async {
   try {
     // exception will be raised in the future
     var res = await orderCoffee(); 
     // these tasks cannot be executed
     pickupCoffee(res);
     otherWorkAfterCoffee();
   } catch (e) {
       print(e.toString());
   }
}

// OOPS, there is an exception in the future!
Future<String> orderCoffee() {
  print('Ordering and waiting coffee complete');
  
  return Future.error(new Exception('NO COFFEE'), StackTrace.current);
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
Exception: NO COFFEE
*/