import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {return MaterialApp(home: TextPage());}
} 

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: const Center(
        child: Text(
          'Hello World',
          // We can set the style of a text 
          style: TextStyle(
            fontSize: 40.0,               // size
            fontStyle: FontStyle.italic,  // sstyle
            fontWeight: FontWeight.bold,  // weight
            color: Colors.red,            // color
            letterSpacing: 4.0,           // spacing
          ),
        ),
      ),
    );
  }
}

