import 'package:flutter/material.dart';
import 'Home.dart';
import 'Find.dart';
import 'UserInfo.dart';
void main() {
  runApp(new MaterialApp(
    title: 'Tabs',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new TabPage(),
  ));
}

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => new _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin{
  TabController controller;
  // 定义底部导航项目

  // 定义底部导航Tab

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
          controller: controller,
          children: [
            new HomePage(),
            new FindPage(),
            new UserInfo(),
          ]),
      bottomNavigationBar: new Material(
        color: Colors.blueAccent,
        child: new TabBar(
          controller: controller,
          tabs:[
            new Tab(
              text: "首页",
              icon: new Icon(Icons.home),),
            new Tab(
              text: "发现",
              icon: new Icon(Icons.search,),),
            new Tab(
              text: "个人中心",
              icon: new Icon(Icons.perm_contact_calendar,),),
          ],
        ),
      ),
    );
  }
}