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
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellow,
        child: Container(
          width: 300,
          height: 300,
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          //设置Container内部child的位置
          decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.red),
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(image: NetworkImage("https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2032467668,2180843216&fm=26&gp=0.jpg"))
          ),

        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
