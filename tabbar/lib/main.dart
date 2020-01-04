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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController mController;

  @override
  void initState() {
    super.initState();
    mController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar"),
        bottom: _genTabbar(),
      ),
      body: Center(
        child: _genTabbarView(),
      ),
    );
  }

  TabBar _genTabbar() {
    return TabBar(
      isScrollable: false,//设置isScrollable是否可以滑动
      controller: mController,//指示器
      labelColor: Colors.yellow,//选中后的tab颜色
      unselectedLabelColor: Colors.white,//未选中的tab颜色
      labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),//tab文字的大小和样式
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.print),
          child: Text("数码"),
        ),
        Tab(
          icon: Icon(Icons.timer),
          child: Text("科技"),
        ),
        Tab(
          icon: Icon(Icons.favorite),
          child: Text("旅游"),
        ),
        Tab(
          icon: Icon(Icons.accessibility_new),
          child: Text("生活"),
        )
      ],
    );
  }

  Widget _genTabbarView() {
    return TabBarView(controller: mController, children: [
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.pink,
      ),
    ]);
  }
}
