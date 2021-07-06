/*
 * @Description: 
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-07-05 23:50:15
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-07-06 22:17:28
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第一步-输入手机号码")),
      body: Column(children: <Widget>[
        SizedBox(height: 5),
        Text("这是注册的第一步,请输入您的手机号 然后点击下一步"),
        SizedBox(height: 5),
        RaisedButton(
            child: Text("下一步"),
            onPressed: () {
              Navigator.pushNamed(context, '/registerSecond');
            })
      ]),
    );
  }
}
