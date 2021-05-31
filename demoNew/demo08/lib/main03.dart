/*
 * @Description: Flutter AspectRatio、Card 卡片组件
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-31 23:14:53
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-31 23:47:21
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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "甘雨",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("高级秘书"),
              ),
              ListTile(
                title: Text("电话：110"),
              ),
              ListTile(
                title: Text("生    日：12月2日"),
              ),
              ListTile(
                title: Text("命之座：仙麟座"),
              ),
              ListTile(
                title: Text("地址：月海亭"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "优菈·劳伦斯",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("浪花骑士"),
              ),
              ListTile(
                title: Text("电话：120"),
              ),
              ListTile(
                title: Text("生    日：10月25日"),
              ),
              ListTile(
                title: Text("命之座：浪沫座"),
              ),
              ListTile(
                title: Text("地址：西风骑士团"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "刻晴",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("七星之玉衡、变革之星、霆霓快雨"),
              ),
              ListTile(
                title: Text("电话：119"),
              ),
              ListTile(
                title: Text("生    日：11月20日"),
              ),
              ListTile(
                title: Text("命之座：金紫定垂座"),
              ),
              ListTile(
                title: Text("地址：璃月七星之玉衡星"),
              )
            ],
          ),
        )
      ],
    );
  }
}
