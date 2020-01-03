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
        title: Text("icon"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Icon(Icons.favorite,color: Colors.red,size: 200,semanticLabel: "哈哈哈",)
          ],
        ),
      ),
    );
  }
}
