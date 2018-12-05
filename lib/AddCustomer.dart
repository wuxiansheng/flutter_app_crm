import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '添加客户',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new AddCustomerPage(),
  ));
}

class AddCustomerPage extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<AddCustomerPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('添加客户'),
      ),
    );
  }
}