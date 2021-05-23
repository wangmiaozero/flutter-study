/*
 * @Description: Flutter 页面布局 Stack 层叠组件 Stack 与 Align Stack 与 Positioned 实 现定位布局
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-23 23:21:28
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-24 00:13:28
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
      //Stack 组件中结合 Positioned 组件也可以控制每个子元素的显示位置
      child: Stack(
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 100,
                  child: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Icon(
                    Icons.settings_applications,
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
