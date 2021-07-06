/*
 * @Description: 
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-20 23:27:08
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-07-05 23:48:58
 */
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key? key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("我是一个文本"),
        ),
        ListTile(
          title: Text("我是一个文本"),
        ),
        ListTile(
          title: Text("我是一个文本"),
        ),
        ListTile(
          title: Text("我是一个文本"),
        ),
        RaisedButton(
          child: Text("跳转到登录页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        RaisedButton(
          child: Text("跳转到注册页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/registerFirst');
          },
        ),
      ],
    );
  }
}
