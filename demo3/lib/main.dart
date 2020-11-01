import 'package:flutter/material.dart';
import 'first_pages.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 路由动画',
      // 自定义主体样本
      theme: ThemeData(
          primarySwatch: Colors.pink
      ),
      home: FirstPage(),
    );
  }
}
