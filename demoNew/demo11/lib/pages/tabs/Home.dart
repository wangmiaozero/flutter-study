/*
 * @Description: HomePage 首页
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-19 22:42:56
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-19 23:13:50
 */

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Text("我是首页组件");
  }
}
