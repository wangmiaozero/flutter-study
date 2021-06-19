/*
 * @Description: Setting 设置
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-19 22:42:56
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-19 23:13:59
 */
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
        )
      ],
    );
  }
}
