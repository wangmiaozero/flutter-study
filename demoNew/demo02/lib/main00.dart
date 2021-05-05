/*
 * @Description: 本地引入图片
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-05 19:37:48
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-05 19:52:35
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: HomeContent(),
    ));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      child: Image.asset(
        'images/a.jpeg',
        fit: BoxFit.cover,
      ),
      height: 300,
      width: 300,
    ));
  }
}
