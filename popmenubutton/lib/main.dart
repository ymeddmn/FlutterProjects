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
        leading: PopupMenuButton(
          elevation: 8,
          child: Icon(Icons.star_border),
          tooltip: "长按",//说是长按提示，但是设置后长按并没有反应
          offset: Offset(0, 40),//偏移量
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Container(
                child: Text("哈哈哈"),
                color: Colors.green,
                width: double.infinity,
                height: 40,
                alignment: Alignment.center,
              ),
            ),
            PopupMenuItem(
              child: Container(
                child: Text("哈哈哈"),
                color: Colors.green,
                width: double.infinity,
                height: 40,
                alignment: Alignment.center,
              ),
            ),
            PopupMenuItem(
              child: Container(
                child: Text("哈哈哈"),
                color: Colors.green,
                width: double.infinity,
                height: 40,
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
      body: Center(
      ),
    );
  }
}
