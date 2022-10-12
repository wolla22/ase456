import 'package:flutter/material.dart';

// When you cannot use MaterialApp in the runApp()
void main() => runApp(DialogPage()); 

class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AlertDialogPage'),
        ),
        body: Builder(
          builder: (context2) {
            return ElevatedButton(
              // click the button to display dialog
              onPressed: () {
                showDialog(
                  context: context2, 
                  builder: (context) {
                    return const Dialog(
                      child: Text('Dialog Title'),
                    );
                  },
                );
              },
            );
          },
          child: const Text('Alert Dialog'),
        ),
      ),
    );
  }
}

