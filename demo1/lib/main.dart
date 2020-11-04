/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wangmiao
 * @Date: 2020-11-04 14:57:56
 * @LastEditors: wangmiao
 * @LastEditTime: 2020-11-04 17:02:19
 */
import 'package:flutter/material.dart';
import 'bottom_navigation_widget.dart';
void main() {
  runApp(MyApp());
}
//自定义组件 StatelessWidget(无状态组件)
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 组件创建引入',
      theme: ThemeData.light(),
      home: BottomNavgationWidget(),
    );
  }
}
