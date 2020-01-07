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
        child: Container(
          margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: LinearProgressIndicator(
            backgroundColor: Colors.green,
            //背景颜色
            value: 0.3,
            //进度，0-1
            valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
            //覆盖的进度的颜色
            semanticsLabel: "哈哈哈",
            //没搞懂是干啥的
            semanticsValue: "哈哈哈", //没搞懂是干啥的
          ),
        ),
      ),
    );
  }
}
