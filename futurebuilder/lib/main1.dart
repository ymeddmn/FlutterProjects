import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'main.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutterbuilder'),
        ),
        body: HomePage(),
      ),
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
    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot snap) {
        print(snap.data);
        return Container();
      },
      future: getData(),
    );
  }

  Future getData() async {
    var httpClient = HttpClient();
    var future =
        httpClient.get("http://api.douban.com/", 8080, "v2/movie/top250");
    print(future.toString());
    return future;
  }
}
