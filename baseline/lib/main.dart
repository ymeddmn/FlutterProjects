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
  //根据子项的基线对它们的位置进行定位的widget。
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          height: 100,
          color: Colors.green,
          child: Row(
            children: <Widget>[
              Baseline(baseline: 50, baselineType: TextBaseline.alphabetic,child: Text("哈哈哈   "),),
              Baseline(baseline: 50, baselineType: TextBaseline.alphabetic,child: Text("哈哈哈   ",style: TextStyle(fontSize: 30),),),
              Baseline(baseline: 50, baselineType: TextBaseline.alphabetic,child: Text("哈哈哈   ",style: TextStyle(fontSize: 50)),),
            ],
          ),
        ),
      ),
    );
  }
}
