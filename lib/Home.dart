import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main() {
  runApp(new MaterialApp(
    title: '首页',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new HomePage(),
  ));
}

class HomePage  extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('首页'),
        ),
        body:new CarouselSlider(
            items: [1,2,3,4,5].map((i){
              return new Builder(builder: (BuildContext context){
                return new Container(
                  width: MediaQuery.of(context).size.width,
                  margin: new EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: new BoxDecoration(
                    color: Colors.amber
                  ),
                  child: new Image.network(
                    'http://i2.yeyou.itc.cn/2014/huoying/hd_20140925/hyimage06.jpg',
                    fit: BoxFit.fill,
                  )
                );
              },
              );
            }).toList(), height: 180.0, autoPlay: true,)
    );
  }
}