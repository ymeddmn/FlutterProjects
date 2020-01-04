import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.print),
              onPressed: () {},
              color: Colors.green,
              iconSize: 80,
              focusColor: Colors.red,//在ios模拟器上没有见到效果，可能移动端不可用的
              hoverColor: Colors.yellow,//在ios模拟器上没有见到效果，可能移动端不可用的
              splashColor: Colors.pink,//点击后水波纹效果
              disabledColor: Colors.black,//如果不设置onPressed属性，就会展示这个颜色
            ),
          ],
        ),
      ),
    );
  }
}
