import  'package:flutter/material.dart';
import 'Register.dart';
import 'ForgetPsw.dart';
void main() {
  runApp(new MaterialApp(
    title: '登录',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new LoginPage (),
    routes: <String, WidgetBuilder>{
      '/register':(BuildContext context) => RegisterPage(),
      '/forgetPsw': (BuildContext context) => ForgetPswPage()
    },
  ));
}

class LoginPage  extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  @override
  _State createState() => new _State( );
}

class _State extends State<LoginPage> {
  var leftRightPadding = 30.0;
  var topBottomPadding = 4.0;
  var textTips = new TextStyle(fontSize: 16.0, color: Colors.black);
  var hintTips = new TextStyle(fontSize: 15.0, color: Colors.black26);
  static const LOGO = "images/timg.jpg";
  var _userPassController = new TextEditingController();
  var _userNameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('登陆'),
      ),
      body: new Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Padding(
              padding: new EdgeInsets.fromLTRB(leftRightPadding, 50.0, leftRightPadding, 10.0),
          child:  new Image.asset(LOGO),
          ),
          new Padding(
              padding: new EdgeInsets.fromLTRB(leftRightPadding, 50.0, leftRightPadding, topBottomPadding ),
          child: new TextField(
            style: hintTips,
              controller: _userNameController,
            decoration: new InputDecoration(hintText: "用户名|邮箱|手机号码"),
            obscureText: false,
          ),
          ),
          new Padding(
              padding: new EdgeInsets.fromLTRB(leftRightPadding, 30.0, leftRightPadding, topBottomPadding),
          child: new TextField(
            style: hintTips,
            controller: _userPassController,
            decoration: new InputDecoration(hintText: "密码"),
            obscureText: true,
          ),
          ),
          buildForgetPasswordText(context),
          new Container(
            width: 360.0,
            margin: new EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
            padding: new EdgeInsets.fromLTRB(leftRightPadding, topBottomPadding, leftRightPadding, topBottomPadding),
            child: new Card(
              color: Colors.lightBlue,
              elevation: 6.0,
              child: new FlatButton(
                  onPressed: (){
                    print("密码是"+ _userNameController.text);
                  },
                  child: new Padding(padding: new EdgeInsets.all(10.0),
                  child: new Text('登录', style: new TextStyle(color: Colors.white, fontSize: 16.0),),)),
            ),
          ),

          buildRegisterText(context),
        ],
      ),
    );
  }
}
Align buildRegisterText(BuildContext context) {
  return Align(
    alignment: Alignment.center,
    child: Padding(padding: EdgeInsets.only(top: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('没有账户?'),
        GestureDetector(
          child: Text(
            '点击注册',
            style: TextStyle(color: Colors.green),
          ),
          onTap: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new RegisterPage()));
          },
        )
      ],
    ),),
  );
}
Padding buildForgetPasswordText(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Align(
      alignment: Alignment.centerRight,
      child: FlatButton(
        child: Text(
          '忘记密码？',
          style: TextStyle(fontSize: 14.0, color: Colors.grey),
        ),
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(builder: (context) => new ForgetPswPage()));
        },
      ),
    ),
  );
}