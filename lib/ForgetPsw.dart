import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '找回密码',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new ForgetPswPage(),
  ));
}

class ForgetPswPage extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<ForgetPswPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('找回密码'),
      ),
    );
  }
}