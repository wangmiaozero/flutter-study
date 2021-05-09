/*
 * @Description: ListView
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-09 22:12:07
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-09 23:50:54
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
    // TODO: implement build
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,
            color: Colors.red,
          ),
          Container(
            width: 180.0,
            color: Colors.orange,
            child: ListView(
              children: <Widget>[
                Image.network(
                    "https://oss.wangmiaozero.cn/img/background/1.jpg"),
                Text('我是一个文本')
              ],
            ),
          ),
          Container(
            width: 180.0,
            color: Colors.blue,
          ),
          Container(
            width: 180.0,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180.0,
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
  }
}
