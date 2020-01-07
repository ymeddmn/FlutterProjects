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
        child: Stepper(steps: [
          Step(title: Text("步骤：1"), content: Text("好好学习")),
          Step(title: Text("步骤：1"), content: Text("好好学习"),subtitle: Text("sub标题")),
          Step(title: Text("步骤：1"), content: Text("好好学习"),isActive: true),
          Step(title: Text("步骤：1"), content: Text("好好学习")),
          Step(title: Text("步骤：1"), content: Text("好好学习")),
          Step(title: Text("步骤：1"), content: Text("好好学习")),
        ]),
      ),
    );
  }
}
