/*
 * @Description: tabs 切换
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-19 20:42:05
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-19 23:15:15
 */

import 'package:flutter/material.dart';
import 'pages/Tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Tabs());
  }
}
