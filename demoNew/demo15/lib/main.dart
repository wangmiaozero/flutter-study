/*
 * @Description: 命名路由、命名路由传值
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-20 23:27:08
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-21 00:18:25
 */
import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home:Tabs(),
        initialRoute: '/', //初始化的时候加载的路由
        onGenerateRoute: onGenerateRoute);
  }
}
