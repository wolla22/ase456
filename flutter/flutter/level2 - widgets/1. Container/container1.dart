// When we need to draw a box shape, we can use container
import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {return MaterialApp(home: Home());}
} 

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // We need to use Scaffold to display containers
    return Scaffold(
      appBar: AppBar(title: const Text('Container Demo'),),
      // https://api.flutter.dev/flutter/widgets/Container-class.html
      body:  Container(
        height: 80,
        width: 260,
        color: Colors.blueGrey,
        // Child can be any widget
        child: const Text(
          "Text",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25
          ),
        ),
      ),
    );
  }
}


