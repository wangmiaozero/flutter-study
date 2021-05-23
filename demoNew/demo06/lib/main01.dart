/*
 * @Description: flutter 页面布局 Paddiing Row Column Expanded 组件详解
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-23 14:59:27
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-23 15:31:35
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(title: Text('FlutterDemo')),
          body: LayoutDemo(),
        ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.7,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://oss.wangmiaozero.cn/userPicList/20210522/3eb6ace0-bb02-11eb-a2fa-996d8e7fcbf2.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://oss.wangmiaozero.cn/userPicList/20210522/5fa52800-bb02-11eb-a2fa-996d8e7fcbf2.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://oss.wangmiaozero.cn/userPicList/20210522/8fd34b10-bb02-11eb-8ed9-85db6b05a7c2.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://oss.wangmiaozero.cn/userPicList/20210522/b96d9f70-bb02-11eb-a2fa-996d8e7fcbf2.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://oss.wangmiaozero.cn/userPicList/20210522/1c79c350-bb03-11eb-8ed9-85db6b05a7c2.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://oss.wangmiaozero.cn/userPicList/20210522/39116770-bb03-11eb-a2fa-996d8e7fcbf2.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://oss.wangmiaozero.cn/userPicList/20210522/c34d6f60-bb03-11eb-8ed9-85db6b05a7c2.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
