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
        child: Flow(
            delegate: CustomDelegate(),
            children: List.generate(100, (index) {
              return Box(index);
            })),
      ),
    );
  }

  Widget Box(index) => Container(
        width: boxSize,
        height: boxSize,
        color: Colors.green,
      );
}

double boxSize = 50;

class CustomDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    var screenWidth = context.size.width;
    double padding = 10;
    double offsetX = padding;
    double offsetY = padding;
    for (int i = 0; i < context.childCount; i++) {
      if (offsetX + boxSize < screenWidth) {
        context.paintChild(i,
            transform: Matrix4.translationValues(offsetX, offsetY, 0));
        offsetX = offsetX + padding + boxSize;
      } else {
        offsetX = padding;
        offsetY = offsetY + boxSize + padding;
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return true;
  }
}
