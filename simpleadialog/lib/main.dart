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
        child: RaisedButton(
          onPressed: () {
            show();
          },
          child: Text("点击弹出弹出框"),
          color: Colors.green,
        ),
      ),
    );
  }

  void show() {
    showDialog(
        context: context,
        builder: (BuildContext build) {
          return SimpleDialog(
            title: Text("选择"),
            backgroundColor: Colors.pink,
            elevation: 10,

            children: <Widget>[
              SimpleDialogOption(
                child: Text("生活"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SimpleDialogOption(
                child: Text("科技"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SimpleDialogOption(
                child: Text("数码"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
