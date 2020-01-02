import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "row mainaxisalignment",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,//关键代码
          children: <Widget>[
            Container(
              color: Colors.red,
              child: Text("红色"),
              height: 100,
            ),
            Container(
              color: Colors.yellow,
              child: Text("黄色"),
              height: 100,
            ),
            Container(
              color: Colors.green,
              child: Text("绿色"),
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
