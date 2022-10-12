// How to give arguments \to the route

import 'package:flutter/material.dart';

class Arguments {
  final String message;
  final int value;

  Arguments(this.message, this.value);
}

void main() {
  runApp(
    MaterialApp(
      title: 'Navigation with Arguments',
      home: const MyPage(),
      debugShowCheckedModeBanner: false,

      onGenerateRoute: (settings) {
        final args = settings.arguments as Arguments;
        if (settings.name == Page1.route) {
          return MaterialPageRoute(
            builder: (context) {
              return Page1(
                message: args.message,
                value: args.value,
              );
            },
          );
        }
        else {
          return MaterialPageRoute(
            builder: (context) {
              return Page2(
                message: args.message,
                value: args.value,
              );
            },
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
    )
  );
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () async {
              var res = await Navigator.pushNamed(
                context,
                Page1.route,
                arguments: Arguments(
                  'calling page1',
                  10
                ),
              );
              print(res);
            },
            child: Text('Page1'),
          ),
          TextButton(
            onPressed: () async {
              var res = await Navigator.pushNamed(
                context,
                Page2.route,
                arguments: Arguments(
                  'calling page2',
                  20
                ),
              );
              print(res);
            },
            child: Text('Page2'),
          ),
        ],                   
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  static String route = '/page1';
  String message; 
  int value;

  Page1({
    // super.key,
    required this.message,
    required this.value,
  });
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Page1 ${message} ${value}"), // + ${this.message} ${this.value}"),
          IconButton(
            onPressed: () {
              Navigator.pop(context, value);
            },
            icon: const Icon(Icons.close)
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  static String route = '/page2';
   
  String message; 
  int value;
  Page2({
    // super.key,
    required this.message,
    required this.value,
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Page2 ${message} ${value}'), 
          IconButton(
            onPressed: () {
              Navigator.pop(context, value);
            },
            icon: const Icon(Icons.close)
          ),
        ],
      ),
    );
  }
}