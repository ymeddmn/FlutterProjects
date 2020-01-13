import 'package:flutter/material.dart';
import 'dart:math' as math;
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
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
    AnimationController(vsync: this, duration: Duration(seconds: 5))
      ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200.0,
          width: 200.0,
          color: Colors.indigo,
          child: AnimatedBuilder(
            animation: _animationController,
            child: Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.green,
              ),
            ),
            builder: (context, child) => Transform.rotate(
              angle: _animationController.value * 3.0 * math.pi,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
