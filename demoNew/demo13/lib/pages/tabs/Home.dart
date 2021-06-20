/*
 * @Description: 首页
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-20 13:38:34
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-20 21:56:40
 */
import 'package:flutter/material.dart';
import '../Search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
