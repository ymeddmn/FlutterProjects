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
        child: LongPressDraggable(
          childWhenDragging: Container(
            //childWhenDragging:控件被拖动的时候，原控件展示的控件，不设置二展示原控件
            child: Text('child when dragging'),
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          feedback: Container(
            //feedback:拖动中的样子
            width: 100,
            height: 100,
            color: Colors.red,
            child: Text(
              '这是被拖动时候的样子',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          onDragStarted: () {
            print('开始拖动');
          },
          onDragEnd: (detail) {
            print('拖动结束：${detail.offset.toString()}');
          },
        ),
      ),
    );
  }
}
