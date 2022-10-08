import 'package:flutter/material.dart';
import './text_control.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _mainText = 'This is the first assignment';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Assignment 1'),
          ),
          body: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _mainText = 'This changed';
                  });
                },
                child: const Text('Change Text'),
              ),
              Text(_mainText)
            ],
          )),
    );
  }
}
