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
        child: Wrap(
          children:List.generate(30, (index)=>item(index)),
        ),
      ),
    );
  }

  item(int index) {
    return CustomItem(index);
  }
}

class CustomItem extends StatelessWidget {
  int index;

  CustomItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        height: 40,
        width: 90,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Text(
          "哈哈哈${index}",
          style: TextStyle(),
        ),
      ),
    );
  }
}
