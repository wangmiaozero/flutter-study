/*
 * @Description: Flutter 页面布局 Stack 层叠组件 Stack 与 Align Stack 与 Positioned 实 现定位布局
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-23 23:21:28
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-23 23:59:16
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
            title: Text('flutterDemo'),
          ),
          body: LayoutDemo(),
        ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      //  Stack 表示堆的意思，我们可以用 Stack 或者 Stack 结合 Align 或者 Stack 结合 Positiond 来实 现页面的定位布局
      child: Stack(
        alignment: Alignment(1, 0.3), // 配置所有子元素的显示位置
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Text('我是一个文本', style: TextStyle(fontSize: 20, color: Colors.white))
        ],
      ),
    );
  }
}
