import 'package:flutter/material.dart';
void main(){
  runApp(HomePage());
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
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Draggable(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                  feedback:
                  Container(width: 100, height: 100, color: Colors.red)),
              DragTarget(
                onWillAccept:(data){
                  return true;
                },
                builder: (context, data, rejectData) {
                  return Container(width: 300, height: 300, color: Colors.blue,);
                },
                onAccept: (data) {
                  print('哈哈哈航啊');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
