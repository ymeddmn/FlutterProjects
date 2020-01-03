import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
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
      appBar: AppBar(
        title: Text("raisedbutton"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                print("哈哈哈");
              },
              child: Text("点击打印哈哈哈"),
              color: Colors.green,
              textColor: Colors.black,
            ),
            RaisedButton(
              onPressed: () {},
              splashColor: Colors.yellow,
              child: Text("使用splashColor设置点击时候的水波纹颜色"),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("colorBrightness:dark,必须设置onPressed事件才能展示效果"),
              colorBrightness: Brightness.dark,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("colorBrightness:dark"),
              colorBrightness: Brightness.light,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("哈哈哈哈"),
              elevation: 5,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
