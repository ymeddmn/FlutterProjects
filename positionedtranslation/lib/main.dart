import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

import 'package:flutter/cupertino.dart';
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<RelativeRect> _animation;

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: 3000), vsync: this);
    var tween = RelativeRectTween(
        begin: RelativeRect.fromLTRB(100, 300, 100, 300),
        end: RelativeRect.fromLTRB(150, 200, 150, 200));
//    RelativeReact.fromLTRB的四个参数分别是边框距离左上右下的距离
    _animation = tween.animate(_controller);
    _controller
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("day13"),
      ),
      body: Center(
        child: _buildColumn(),
      ),
    );
  }

  _buildColumn() {
    return Stack(
      children: <Widget>[
        PositionedTransition(
          rect: _animation,
          child: Container(
            child: RaisedButton(
              color: Colors.green,
              onPressed: () {
                _controller.forward();
              },
              child: Text(''),
            ),
          ),
        )
      ],
    );
  }
}

class AnimatorTransition extends StatelessWidget {
  final Widget child;
  final Animation<RelativeRect> animation;

  AnimatorTransition({this.child, this.animation});

  @override
  Widget build(BuildContext context) {
    //绝对定位的动画实现, 需要Stack包裹
    return Stack(
      children: <Widget>[
        PositionedTransition(
          rect: animation,
          child: this.child,
        ),
      ],
    );
  }
}
