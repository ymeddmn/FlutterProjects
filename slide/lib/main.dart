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
  double slide=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Slider(
              value: slide,
              max: 100,
              min: 0,
              onChanged: (double value) {
                setState(() {
                  slide = value;
                });
              },
              onChangeStart: (double value) {
                print("进度条开始时候的进度${value}");
              },
              onChangeEnd: (double value) {
                print("进度条结束时候的进度${value}");
              },
            ),
            Slider(
              value: slide,
              //进度条进度
              onChanged: (double value) {
                setState(() {
                  slide = value;
                });
              },
              divisions: 20,
              //可以将进度条设置成多个等分
              max: 100,
              //进度条最大值
              min: 0, //进度条最小值
            )
          ],
        ),
      ),
    );
  }
}
