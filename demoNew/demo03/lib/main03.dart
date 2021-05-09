/*
 * @Description: ListView
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-09 22:12:07
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-09 23:36:21
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
        ListTile(
          leading: Image.network(
              "https://oss.wangmiaozero.cn/img/background/21.jpg"),
          title: Text(
            'Node.js 获取电脑CPU/内存/网卡等信息',
            style: TextStyle(fontSize: 24),
          ),
          subtitle: Text('Node.js 获取电脑CPU/内存/网卡等信息Node.js 获取电脑CPU/内存/网卡等信息'),
          trailing:
              Image.network("https://oss.wangmiaozero.cn/img/background/1.jpg"),
        ),
        ListTile(
          leading: Image.network(
              "https://oss.wangmiaozero.cn/img/background/20.jpg"),
          title: Text(
            'JavaScript 复杂判断的更优雅写法',
            style: TextStyle(fontSize: 24),
          ),
          subtitle: Text('JavaScript 复杂判断的更优雅写法JavaScript 复杂判断的更优雅写法'),
          trailing: Image.network(
              "https://oss.wangmiaozero.cn/img/background/12.jpg"),
        ),
        ListTile(
          leading: Image.network(
              "https://oss.wangmiaozero.cn/img/background/19.jpg"),
          title: Text(
            'Flutter Container 组件、Text 组件详解',
            style: TextStyle(fontSize: 24),
          ),
          subtitle: Text(
              'Flutter Container 组件、Text 组件详解Flutter Container 组件、Text 组件详解Flutter Container 组件、Text 组件详解'),
        ),
        ListTile(
          leading: Image.network(
              "https://oss.wangmiaozero.cn/img/background/18.jpg"),
          title: Text(
            '画小米的新Logo只用border-radius可不行！',
            style: TextStyle(fontSize: 24),
          ),
          subtitle: Text(
              '大家都知道，昨晚的春季新品发布会上，小米正式发布了新Logo。据官方介绍，新Logo由日本国际著名设计师原研哉操刀设计共同打造，将小米品牌视觉融入东方哲学的思考，从“科技与生命的关系”出发，提出全新的设计理念。'),
        ),
        ListTile(
          leading: Image.network(
              "https://oss.wangmiaozero.cn/img/background/17.jpg"),
          title: Text(
            '这套前端可视化框架，让数据栩栩如生！',
            style: TextStyle(fontSize: 24),
          ),
          subtitle: Text('这套前端可视化框架，让数据栩栩如生！这套前端可视化框架，让数据栩栩如生！'),
        )
      ],
    );
  }
}
