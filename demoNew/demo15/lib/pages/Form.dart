/*
 * @Description: 
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-20 23:27:08
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-21 00:22:39
 */
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  final String title;
  FormPage({this.title = "表单"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          )
        ],
      ),
    );
  }
}
