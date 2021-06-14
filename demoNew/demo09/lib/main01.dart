/*
 * @Description: RaisedButton
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-01 23:26:52
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-14 22:45:26
 */
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui' as ui;

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
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Demo'),
          ),
          body: LayoutDemo(),
        ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text('女装'),
        textColor: Theme.of(context).accentColor,
        onPressed: () => {print('触发RaisedButton')});
  }
}
