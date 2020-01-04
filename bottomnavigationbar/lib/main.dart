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
  List<BottomNavigationBarItem> items = List();
  List<Offstage> bodys = List();
  int currentPosition = 0;
  @override
  void initState() {
    super.initState();
    createBody(0);
    setBottomItem();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        bottomNavigationBar: BottomNavigationBar(

          items: items,
          onTap: (int position) {
            select(position);
          },
          currentIndex: currentPosition,
        ),
        body: Stack(children: bodys));
  }

  void setBottomItem() {
    items.clear();
    items.add(
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("首页")));
    items.add(
        BottomNavigationBarItem(icon: Icon(Icons.timer), title: Text("时钟")));
    items.add(BottomNavigationBarItem(
        icon: Icon(Icons.accessibility), title: Text("我的")));
  }

  void createBody(int position) {
    bodys.clear();
    bodys.add(Offstage(offstage: position!=0, child: BodyPage("首页")));
    bodys.add(Offstage(offstage: position !=1, child: BodyPage("时钟")));
    bodys.add(Offstage(offstage: position!=2, child: BodyPage("我的")));
  }

  void select(int position) {
    print(position);
    setState(() {
      currentPosition=position;
      createBody(position);
    });
  }
}

class BodyPage extends StatefulWidget {
  String content;

  BodyPage(this.content);

  @override
  State<StatefulWidget> createState() {
    return BodyState();
  }
}

class BodyState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        widget.content,
        style: TextStyle(color: Colors.green, fontSize: 100),
      ),
    );
  }
}
