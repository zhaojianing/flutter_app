import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '易山',
        home: Scaffold(
            appBar: AppBar(title: Text('易山bar')),
            body: Center(
              child: Text('hello shan_yi debugger热更新'),
            )));
  }
}
