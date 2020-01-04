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
  TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      print(controller.text);
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              controller: controller,
              //文字改变后返回所有文字
              maxLength: 300,
              //设置后右下显示已经输入的字数和总字数
              maxLines: 3,
              //最高显示三行，并非只展示三行
              obscureText: false,
              //是否显示密码
              onChanged: (text) {
                //文字改变回调
                print("文字改变${text}");
              },
              onSubmitted: (text) {
                //点击软键盘的提交的时候回调
                print("点击提交的时候输入框内的文字${text}");
              },
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.green,
                  filled: true,
                  labelText:
                      "哈哈哈哈"), //设置TextField颜色，fillColor、filled：true一起设置的时候才能显示
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.pink,
                  filled: true,
                  hintText: "嘿嘿嘿"), //没有输入的时候显示的内容，有输入就会消失
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.star), //prefixIcon输入框签名展示一个图标，
                  suffixText:
                      "尾巴"),//suffixText：输入框获取焦点后输入框后面展示的文字
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.green,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pink,
                      ),
                      borderRadius: BorderRadius.all(//borderRadius设置输入框圆角
                        Radius.circular(16),
                      ))
                  ),
            )
          ],
        ),
      ),
    );
  }
}
