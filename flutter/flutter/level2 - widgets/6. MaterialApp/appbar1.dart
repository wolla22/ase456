import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        // appBar can have actions
        appBar: AppBar(
          title: const Text('AppBar Demo'),
          actions: [
            IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {} // action when the icon is clicked
            ),
          ],
        ),
    );
  }
}



