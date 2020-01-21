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
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.only(left: 40),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
