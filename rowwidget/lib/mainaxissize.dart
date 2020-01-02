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
      body: Center(

        child: Container(
          color: Colors.black,
          child: Row(
          mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                child: Text("124"),
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 50,
                child: Text("124"),
                color: Colors.green,
              ),
              Container(
                width: 50,
                height: 50,
                child: Text("124"),
                color: Colors.yellow,
              )
            ],
          ),
        ),
      ),
    );
  }
}
