import 'package:flutter/material.dart';
import 'bottom_navigation_widget.dart';
void main() {
  runApp(MyApp());
}

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
