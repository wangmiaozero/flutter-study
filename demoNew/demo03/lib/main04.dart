/*
 * @Description: ListView
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-09 22:12:07
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-09 23:50:47
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
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('ListView'),
          ),
          body: HomeContent(),
        ));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Image.network("https://oss.wangmiaozero.cn/img/background/21.jpg"),
        Container(
          child: Text(
            "我是标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          height: 60.0,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://oss.wangmiaozero.cn/img/background/1.jpg"),
        Container(
          child: Text(
            "我是标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          height: 60.0,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://oss.wangmiaozero.cn/img/background/2.jpg"),
        Container(
          child: Text(
            "我是标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          height: 60.0,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://oss.wangmiaozero.cn/img/background/3.jpg"),
        Container(
          child: Text(
            "我是标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          height: 60.0,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        )
      ],
    );
  }
}
