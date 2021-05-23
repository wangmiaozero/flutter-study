/*
 * @Description: Flutter GridView 组件 以及动态 GridView
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-22 22:03:38
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-22 22:23:51
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
  @override
  Widget build(BuildContext context) {
    //可以通过 GridView.count 实现网格布局
    return GridView.count(
      crossAxisCount: 2, //一行的 Widget 数量
      children: <Widget>[
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
        Text('这是文本'),
      ],
    );
  }
}
