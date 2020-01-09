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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Align(
                alignment: Alignment.bottomLeft,//显示在左下角
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.green,
                ),
              ),
            ), Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Align(
                alignment:Alignment(0.5, 0.5),//从控件的中心开始算（0，0），想右下便宜0.5的距离
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.green,
                ),
              ),
            ),Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Align(
                alignment: FractionalOffset(0.1, 0.3),//从控件的左上角开始算（0，0）向右下偏移0.3
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
