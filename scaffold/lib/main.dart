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
      body: Center(),
      drawer: Container(
        color: Colors.green,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
            ),
            Text("哈哈航啊"),
            Text("恒杭钢")
          ],
        ),
      ),
      endDrawer: Container(
        color: Colors.green,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
            ),
            Text("哈哈航啊"),
            Text("恒杭钢")
          ],
        ),
      ),
      backgroundColor: Colors.yellow,
      bottomSheet: Container(
        color: Colors.pink,
        width: double.infinity,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("首页"),
            Text("商城"),
            Text("我的")
          ],
        ),
      ),
      drawerScrimColor: Colors.blue,//抽屉拉出来之后，未被抽屉覆盖部分的颜色
    );
  }
}
