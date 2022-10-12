import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {return MaterialApp(home: Home());}
} 

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisSize specifies the length (mainAxis)
      // choose MainAxisSize.max or MainAxisSize.min
      mainAxisSize: MainAxisSize.max,
      children: const <Widget>[
          Text("Hello"),
          Text("Flutter"),
      ],
    );
  }
}

