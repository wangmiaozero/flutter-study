/*
 * @Description: Flutter AspectRatio、Card 卡片组件
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-31 23:14:53
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-31 23:27:20
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: LayoutDemo(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      // 宽高比，最终可能不会根据这个值去布局， 具体则要看综合因素，外层是否允许按照这 种比率进行布局，这只是一个参考值
      child: AspectRatio(
        aspectRatio: 2.0 / 1.0,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
