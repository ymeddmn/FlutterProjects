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
  double width = 200;
  double height = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          color: Colors.green,
          width: width,
          height: height,
          curve: Curves.elasticIn,
          child: RaisedButton(
            color: Colors.green,
            onPressed: () {
              startAnim();
            },
            child: Text('点击开始动画',style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }

  void startAnim() {
    setState(() {
      height=height==200?100:200;
      width=width==200?100:200;
    });
  }
}
