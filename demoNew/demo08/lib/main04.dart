/*
 * @Description: Flutter AspectRatio、Card 卡片组件
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-31 23:14:53
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-01 00:45:06
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
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  "https://oss.wangmiaozero.cn/img/44A95A20-9530-4B0C-9197-73433A27FFCF.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://oss.wangmiaozero.cn/img/44A95A20-9530-4B0C-9197-73433A27FFCF.png",
                    fit: BoxFit.cover,
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
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
              AspectRatio(
                aspectRatio: 20 / 50,
                child: Image.network(
                  "https://oss.wangmiaozero.cn/userPicList/20210530/3c48ebb0-c0a9-11eb-a2fa-996d8e7fcbf2.JPG",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://oss.wangmiaozero.cn/userPicList/20210530/3c48ebb0-c0a9-11eb-a2fa-996d8e7fcbf2.JPG",
                    fit: BoxFit.cover,
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
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
              AspectRatio(
                aspectRatio: 20 / 50,
                child: Image.network(
                  "https://oss.wangmiaozero.cn/img/77453B29-95CF-4B4F-9C57-F3F1FA6A97BE.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://oss.wangmiaozero.cn/img/77453B29-95CF-4B4F-9C57-F3F1FA6A97BE.png",
                    fit: BoxFit.cover,
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
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
