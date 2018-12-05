import 'package:flutter/material.dart';
import 'AddCustomer.dart';
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
  List list = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Future getData() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        list = List.generate(15, (i) => '原始数据 $i');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('客户管理'),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.add, color: Colors.white,),
            onPressed: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new AddCustomerPage()));
            }, tooltip: '添加客户',)
        ],
      ),
    );
  }
}