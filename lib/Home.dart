import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '首页',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new HomePage(),
  ));
}

class HomePage  extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('首页'),
      ),
    );
  }
}