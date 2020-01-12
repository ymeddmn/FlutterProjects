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
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String userName;
  String pwd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: "用户名"),
                  onSaved: (text) {//保存表单的时候回调
                    userName = text;
                  },
                  validator: (value) {//保存表单信息
                    print('校验${value}');
                    return value.trim().length > 0
                        ? null
                        : "用户名不能为空"; //校验输入的字符串 如果长度大于0那么错误信息处不展示内容：如果等于零那么提示用户用户名不能未空
                  },
                  initialValue:'mage' ,
                  onFieldSubmitted: (value){//这个方法在点击软键盘的回车键的时候会回调
                      print('内容以及被提交${value}');
                  },

                ),
                RaisedButton(
                  onPressed: () {
                    _submit();
                  },
                  child: Text('提交表单'),
                )
              ],
            )),
      ),
    );
  }

  void _submit() {
    var formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      print("用户名${userName}");
    }
  }
}
