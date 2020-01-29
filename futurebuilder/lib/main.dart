import 'package:flutter/material.dart';
import 'dart:async';

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
        child: getWidget(),
      ),
    );
  }

  getWidget() {
    return FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<int> snap) {
          print(snap.data);
          return Container(
            width: 300,
            height: 300,
            color: Colors.green,
            child: Text(snap.data.toString()),
          );
        });
  }

  getData() {
    return Future<int>.delayed(Duration(milliseconds: 4000), () {
      return 300;
    });
  }
}
