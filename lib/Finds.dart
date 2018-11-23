import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Find',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new FindsPage (),
  ));
}

class FindsPage extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<FindsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Find'),
      ),
    );
  }
}

