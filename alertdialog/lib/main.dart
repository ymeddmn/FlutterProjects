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
        child: RaisedButton(
          onPressed: () {
            showAlert();
          },
          child: Text(
            "点击弹出AlertDialog",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.green,
        ),
      ),
    );
  }

  void showAlert() {
    showDialog(
        context: context,
        barrierDismissible: false,//false点击外部区域不会消失  true：会消失
        builder: (context) {
          return AlertDialog(
            contentTextStyle:TextStyle(color: Colors.white) ,
            title: Text("确认还是取消"),//标题
            content: Container(//中间内容区域
              width: double.infinity,
              height: 20,
              color: Colors.green,
              child: Center(
                child: Text("这是内容"),
              ),
            ),
            actions: <Widget>[//下半部分内容
              FlatButton(
                child: Text("确认"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("取消"))
            ],
          );
        });
  }
}
