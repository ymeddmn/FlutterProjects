import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: GestureDetector(
          child: RaisedButton(
            color: Colors.green,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("点击回退到上级页面"),
          ),
        ),
      ),
    );
  }
}
