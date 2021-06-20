/*
 * @Description: 普通路由、普通路由传值
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-20 00:53:58
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-20 22:02:24
 */
import 'package:flutter/material.dart';

import 'pages/Tabs.dart';
import 'pages/Form.dart';
import 'pages/Search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      routes: {
        '/form': (context) => FormPage(),
        '/search': (context) => SearchPage()
      },
    );
  }
}
