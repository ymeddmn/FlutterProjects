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
  List<int> datas=List();
  @override
  void initState() {
    super.initState();
    for(int i=0;i<20;i++){
      datas.add(i);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key('1'),
            child: Container(
              height: 50,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text('item${datas[index]}'),
            ),
            background: Container(
              height: 50,
              width: 100,
              color: Colors.red,
              child: Text('删除'),
            ),
            secondaryBackground: Container(
              height: 50,
              color: Colors.yellow,
              child: Text('secondaryBackground'),
            ),
            onDismissed: (direction) {
              print('onDismissed');
            },

            onResize: (){
              print('onResize');
            },
            crossAxisEndOffset: 100,
            confirmDismiss: (_) async {
              return confirm(index);
            },
          );
        },
        itemCount: datas.length,

      )),
    );
  }

  Future<bool> confirm(index) async {
    showDialog(
        context: context,
        builder: (builder) {
          return SimpleDialog(
            title: Text('是否确认删除'),
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    datas.removeAt(index);
                  });
                },
                child: Text('确认'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('取消'),
              )
            ],
          );
        });
  }
}
