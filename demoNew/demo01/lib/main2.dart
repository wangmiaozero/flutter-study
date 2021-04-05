/*
 * @Description: 
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-29 22:19:47
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-30 21:42:42
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo')),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

//
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Text(
      '你好Flutter 111',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 40.0,
        color: Colors.yellow,
        // color: Color.fromRGBO(244, 233, 121, 0.5),
      ),
    ));
  }
}
