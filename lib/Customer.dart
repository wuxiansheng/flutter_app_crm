import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '客户管理',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new CustomerPage(),
  ));
}

class  CustomerPage extends StatefulWidget {
  @override
  _CustomerPageState createState() => new _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  final username= 'wuxiansheng';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('客户管理'),
      ),
    );
  }
}