import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math';

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
  double alpha=0.1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: alpha,
          duration: Duration(milliseconds: 500),
          child: Container(
            width: 300,
            height: 300,
            child: RaisedButton(
              color: Colors.red,
              child: Text('点击随机改变透明度'),
              onPressed: () {
                var random = Random();
                setState(() {
                  alpha = random.nextDouble();
                  print('透明度是${alpha}');
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
