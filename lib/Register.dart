import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '注册',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new RegisterPage(),
  ));
}

class RegisterPage extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('注册'),
      ),
    );
  }
}