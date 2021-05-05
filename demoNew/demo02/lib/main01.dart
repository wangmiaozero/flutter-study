/*
 * @Description: 网络引入图片
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-05 19:37:48
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-05 20:12:32
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
        child: Image.network("https://oss.wangmiaozero.cn/blogs/wechat.jpg"),
        height: 258,
        width: 258,
        decoration: BoxDecoration(color: Colors.yellow),
      ),
    );
  }
}
