import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
  //AspectRatio 一个widget，试图将子widget的大小指定为某个特定的长宽比
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.green,
              child: AspectRatio(
                //改变的是父widget的长宽
                aspectRatio: 3, //长宽比
                child: Container(
                  child: Text("长宽3比1"),
                ),
              ),
            ),
            Container(
              width: 100,
              color: Colors.green,
              child: AspectRatio(
                //改变的是父widget的长宽
                aspectRatio: 1/3, //长宽比
                child: Container(
                  child: Text("长宽1比3"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
