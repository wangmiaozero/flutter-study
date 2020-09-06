import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title:"导航演示",
    home: new FirstScreen()
  ));
}

// 父页面
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text('Flutter 导航页面')
        ),
        body: Center(child: RaisedButton(
          child: Text('查看商品详情页'),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(
                builder: (context)=> new SecondScreed()
            )
            );
          },
        ))
      );
  }
}
// 子页面
class SecondScreed extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text("详情页"),),
      body: Center(
        child: RaisedButton(
          child: new Text('返回'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}