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
      title: 'Flutter 组件创建',
      // 自定义主体样本
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: BottomNavgationWidget(),
    );
  }
}
