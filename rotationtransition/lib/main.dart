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
  AnimationController _controller;
  CurvedAnimation curve;

  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 5000),
    );
    curve = CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
    var tween = Tween<double>(begin: 0, end: 3.14/18);//这里的begin和end是一帧动画移动的角度
    animation = tween.animate(_controller);//顺时针移动，按照tween设置的参数进行旋转
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RotationTransition(
              turns: animation,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
            ),
            RaisedButton(
              onPressed: () {
                _controller.reset();
                _controller.forward();
              },
              child: Text('点击开始动画'),
            )
          ],
        ),
      ),
    );
  }
}
