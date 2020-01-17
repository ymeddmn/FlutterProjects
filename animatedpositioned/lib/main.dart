import 'package:flutter/material.dart';
import 'dart:async';

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
  //动画版本的Positioned，每当给定位置的变化，自动在给定的时间内转换孩子的位置。
  //
  //相对于PositionedTransition简单一些, 但是功能相对单一
  double _width = 100;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          AnimatedPositioned(
            curve: Curves.fastOutSlowIn,
            width: _width,
            height: _width,
            top: _width,
            left: _width,
            duration: Duration(seconds: 1),
            child: Container(
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _width = _width == 100 ? 200 : 100;
                  });
                },
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
    );
  }
}
