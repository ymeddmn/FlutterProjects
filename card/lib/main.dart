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
          children: <Widget>[
            Card(
              elevation: 8,
              //设置阴影
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  //设置radius
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              clipBehavior: Clip.antiAlias,
              //抗锯齿
              child: Container(
                width: 100,
                height: 100,
              ),
              semanticContainer: true,
            )
          ],
        ),
      ),
    );
  }
}
