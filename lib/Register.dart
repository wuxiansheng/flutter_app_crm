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
  var leftRightPadding = 30.0;
  var topBottomPadding = 3.0;
  var textTips = new TextStyle(fontSize: 16.0, color: Colors.black);
  var hintTips = new TextStyle(fontSize: 15.0, color: Colors.black26);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('注册'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Padding(padding: new EdgeInsets.fromLTRB(leftRightPadding, 50.0, leftRightPadding, 10.0),
          child: new TextField(
            style: textTips,
            decoration: new InputDecoration(hintText: "手机号码"),
          ),),
          new Padding(padding: new EdgeInsets.fromLTRB(leftRightPadding, 50.0, leftRightPadding, topBottomPadding),
          child: new TextField(
            style: textTips,
            decoration: new InputDecoration(hintText: "验证码"),
          ),),
          new Padding(padding: new EdgeInsets.fromLTRB(leftRightPadding, 50, leftRightPadding, topBottomPadding),
            child: new TextField(
              style: textTips,
              decoration: new InputDecoration(hintText: "密码"),
            ),),
          new Padding(padding: new EdgeInsets.fromLTRB(leftRightPadding, 50, leftRightPadding, topBottomPadding,),),
          new Padding(padding: new EdgeInsets.fromLTRB(leftRightPadding, 50, leftRightPadding, topBottomPadding),
            child: new TextField(
              style: textTips,
              decoration: new InputDecoration(hintText: "确认密码"),
            ),),
        ],
      ),
    );
  }
}