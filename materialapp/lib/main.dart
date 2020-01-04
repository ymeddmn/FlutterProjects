import 'package:flutter/material.dart';
import 'package:materialapp/First.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //任务管理器中显示的名字
//      debugShowMaterialGrid: true,
      //显示基础部件栅格，方便调试
//      showPerformanceOverlay: true,
      //显示性能标签
      theme: ThemeData(
        //应用主题色
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder>{
        "first": (BuildContext context) => FirstPage(),
      },
      navigatorObservers: [FirstObserver()],//可以监听路由跳转
    );
  }
}

class FirstObserver extends NavigatorObserver{
  @override
  void didPush(Route route, Route previousRoute) {
      super.didPush(route, previousRoute);
    print(route.settings.name);
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
          children: <Widget>[
            RaisedButton(

              child: Text("显示跳转"),
              color: Colors.green,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FirstPage();
                }));
              },
            ),
            RaisedButton(
              child: Text("隐式跳转（根据route名字）"),
              color: Colors.green,
              onPressed: () {
                Navigator.pushNamed(context, "first");
              },
            )
          ],
        ),
      ),
    );
  }
}
