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
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int index, isExpand) {//expansionpanellist点击回调
                setState(() {
                  this.isExpand = !isExpand;
                });
              },
              children: [
                ExpansionPanel(
                    canTapOnHeader: true,
                    //true:可以通过点击title打开关闭，false：只能点击箭头打开或者关闭
                    isExpanded: this.isExpand,
                    //展开或者关闭状态
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        color: Colors.green,
                        height: 30,
                        child: Center(
                          child: Text("点击打开或者管理列表"),
                        ),
                      );
                    },
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            child: Text("哈哈"),
                            color: Colors.pink,
                            width: double.infinity,
                            height: 40),
                        Container(
                          child: Text("嘿嘿"),
                          color: Colors.red,
                          width: double.infinity,
                          height: 40,
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
