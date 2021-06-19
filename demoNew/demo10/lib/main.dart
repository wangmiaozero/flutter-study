/*
 * @Description: Flutter StatefulWidget 有状态组件 、 页面上绑定数据、改变页面数据
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-19 17:57:18
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-19 19:43:53
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Flutter Demo')),
            body: HomePageFulWidget()));
  }
}

//自定义有状态组件  StatefulWidget
class HomePageFulWidget extends StatefulWidget {
  HomePageFulWidget({Key? key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageFulWidget> {
  int countNum = 0;
  List list = [];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: this.list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("添加"),
          onPressed: () {
            this.countNum++;
            setState(() {
              this.list.add("新增数据${this.countNum}");
            });
          },
        )
      ],
    );
  }
}
