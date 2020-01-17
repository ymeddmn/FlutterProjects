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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  //动画widget，当给定的孩子的大小变化时，它自动地在给定时间内转换它的大小。
  double width=100;
  double height=100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedSize(
          duration: Duration(milliseconds: 500),
          reverseDuration: Duration(milliseconds: 500),
          vsync: this,
          child: Container(
            width: width,
            height: height,
            child: RaisedButton(
              color: Colors.green,
              onPressed: () {
                setState(() {
                  width=width==100?300:100;
                  height=height==100?300:100;
                });
              },
              child: Text('点击改变widget尺寸'),
            ),
          ),
        ),
      ),
    );
  }
}
