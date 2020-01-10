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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: <Widget>[
                Container(width: 100,height: 100,color: Colors.green,),
                Container(width: 80,height: 80,color: Colors.red,),
                Container(width: 60,height: 60,color: Colors.deepPurple,),
                Container(width: 40,height: 40,color: Colors.yellow,),
              ],
            ),Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Container(width: 100,height: 100,color: Colors.green,),
                Container(width: 80,height: 80,color: Colors.red,),
                Container(width: 60,height: 60,color: Colors.deepPurple,),
                Container(width: 40,height: 40,color: Colors.yellow,),
              ],
            ),Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                Container(width: 100,height: 100,color: Colors.green,),
                Container(width: 80,height: 80,color: Colors.red,),
                Container(width: 60,height: 60,color: Colors.deepPurple,),
                Container(width: 40,height: 40,color: Colors.yellow,),
              ],
            ),Stack(
              alignment: AlignmentDirectional.centerStart,
              children: <Widget>[
                Container(width: 100,height: 100,color: Colors.green,),
                Container(width: 80,height: 80,color: Colors.red,),
                Container(width: 60,height: 60,color: Colors.deepPurple,),
                Container(width: 40,height: 40,color: Colors.yellow,),
              ],
            ),Stack(
              alignment: AlignmentDirectional.topStart,
              children: <Widget>[
                Container(width: 100,height: 100,color: Colors.green,),
                Container(width: 80,height: 80,color: Colors.red,),
                Container(width: 60,height: 60,color: Colors.deepPurple,),
                Container(width: 40,height: 40,color: Colors.yellow,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
