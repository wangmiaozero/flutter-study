/*
 * @Description: Flutter StatefulWidget 有状态组件 、 页面上绑定数据、改变页面数据
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-19 17:57:18
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-19 19:03:00
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Flutter Demo')),
            body: Column(
              children: <Widget>[HomePage(), HomePageFulWidget()],
            )));
  }
}

// 无状态组件
class HomePage extends StatelessWidget {
  int countNum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200),
        Text("${this.countNum}"),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            // setState()   //错误写法       没法改变页面里面的数据
            this.countNum++;
            print(this.countNum);
          },
        )
      ],
    );
  }
}

//自定义有状态组件  StatefulWidget
class HomePageFulWidget extends StatefulWidget {
  HomePageFulWidget({Key? key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageFulWidget> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Chip(label: Text('${this.countNum}')),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("加"),
          onPressed: () => {
            setState(() => {this.countNum++})
          },
        ),
        RaisedButton(
          child: Text("减"),
          onPressed: () => {
            setState(() => {this.countNum--})
          },
        )
      ],
    );
  }
}
