// https://docs.flutter.dev/cookbook/testing/widget/introduction
import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget(title: 'Hello', message: 'World'));
}

class MyWidget extends StatefulWidget {
  MyWidget({
    super.key,
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int count = 0;

  void increase_count() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
              child: Column(children: [
            Text(widget.message),
            Text(count.toString()),
            TextButton(child: Text('Click me'), onPressed: increase_count),
          ])),
        ));
  }
}
