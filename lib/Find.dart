import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Find',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new FindPage(),
  ));
}

class FindPage extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('发现'),
        ),
        body: new Center(
          child: new Text('发现'),
        )
    );
  }
}