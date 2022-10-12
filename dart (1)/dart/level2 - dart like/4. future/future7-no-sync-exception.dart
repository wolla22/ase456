import 'dart:io';

void main() {
  orderAndWaitForCoffee();
  otherWork();
}

// when we use then(), the error processing is different.
// we use onError: for processing exceptions
void orderAndWaitForCoffee() {
   var future = orderCoffee(); 
   future.then((val) {
     pickupCoffee(val);
     otherWorkAfterCoffee();
    },
    onError: (Object e, StackTrace stackTrace) {
      print(e.toString());
    }
  );
}

Future<String> orderCoffee() {
  print('Ordering and waiting coffee complete');
  throw Exception("NO COFFEE");
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
Unhandled exception:
Exception: NO COFFEE
#0      orderCoffee (file:///Users/smcho/Desktop/-Now/ASE456/code/dart/level3/future/future7-no-sync-exception.dart:30:3)
#1      orderAndWaitForCoffee (file:///Users/smcho/Desktop/-Now/ASE456/code/dart/level3/future/future7-no-sync-exception.dart:9:17)
#2      main (file:///Users/smcho/Desktop/-Now/ASE456/code/dart/level3/future/future7-no-sync-exception.dart:4:3)
#3      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:297:19)
#4      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)
*/