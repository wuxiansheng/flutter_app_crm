import 'package:flutter/material.dart';
import 'Login.dart';
void main() {
  runApp(new MaterialApp(
    title: 'UserInfo',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new UserInfo(),
  ));
}

class UserInfo extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('个人中心'),
        ),
      body: new Center(
        child: new RaisedButton(
          onPressed: (){
          Navigator.push(context, new MaterialPageRoute(builder: (context) => new LoginPage()));
        },
          child: new Text("登陆"),
          color: Colors.blue,
          highlightColor: Colors.lightBlue,
        ),
      ),
    );
  }
}