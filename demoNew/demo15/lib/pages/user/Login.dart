/*
 * @Description: 
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-07-05 23:08:56
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-07-05 23:21:39
 */
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("登录")),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Text('这是一个登录页面,点击登录会执行登录操作'),
            RaisedButton(
              child: Text("立即登录"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
