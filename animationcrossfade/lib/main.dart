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
  bool showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedCrossFade(
                firstChild: Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                ),
                secondChild:
                    Container(color: Colors.red, width: 100, height: 100),
                crossFadeState: showFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(milliseconds: 500)),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Container(
                width: 200,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      showFirst = !showFirst;
                    });
                  },
                  child: Text('切换显示的 widget'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
