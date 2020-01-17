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
  //静态的效果，看不到动画
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: AnimatedPhysicalModel(
            curve: Curves.fastOutSlowIn,
            color: Colors.grey.withOpacity(0.2),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            borderRadius: BorderRadius.circular(12.0),
            animateColor: true,
            animateShadowColor: true,
            shape: BoxShape.rectangle,
            shadowColor: Colors.green,
            elevation: 20.0,
            duration: Duration(seconds: 1),
            child: FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 200,
            ),
          ),
        ));
  }
}
