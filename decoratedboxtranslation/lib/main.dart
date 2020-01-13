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
  Animation<Decoration> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _animation = DecorationTween(
            begin: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.all(Radius.circular(100))),
            end: BoxDecoration(color: Colors.green))
        .animate(_controller);
//    _controller..repeat();//不停的重复动画
    _controller
      ..addStatusListener((AnimationStatus state) {
        if (state == AnimationStatus.completed) {
          _controller.reverse(); //结束的时候反转动画
        } else if (state == AnimationStatus.dismissed) {
          _controller.forward(); //动画结束的时候重新开始动画
        }
      });
    _controller.forward(); //开始动画
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          child: DecoratedBoxTransition(
              decoration: _animation,
              position: DecorationPosition.background,
              child: Container(
                width: 200,
                height: 200,
              ))),
    );
  }
}
