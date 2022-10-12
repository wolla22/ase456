import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {return MaterialApp(home: ButtonPage());}
} 

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('ElevatedButton'),
              onPressed: () {},
            ),
            TextButton(
              child: const Text('TextButton'),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.add),
              color: Colors.red, 
              iconSize: 100.0, 
              onPressed: () {},
            ),
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

