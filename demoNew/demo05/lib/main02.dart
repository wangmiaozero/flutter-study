/*
 * @Description: Flutter GridView 组件 以及动态 GridView
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-22 22:03:38
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-22 22:52:50
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('FlutterDemo'),
          ),
          body: LayoutDemo(),
        ));
  }
}

class LayoutDemo extends StatelessWidget {
  List<Widget> _getListData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        color: Colors.blue,
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    //可以通过 GridView.count 实现网格布局
    return GridView.count(
      crossAxisCount: 2, //一行的 Widget 数量
      children: this._getListData(),
      crossAxisSpacing: 20.0, //水平子 Widget 之间间距
      mainAxisSpacing: 20.0, //垂直子 Widget 之间间距
      padding: EdgeInsets.all(10),
      childAspectRatio: 0.7, //宽度和高度的比例
    );
  }
}
