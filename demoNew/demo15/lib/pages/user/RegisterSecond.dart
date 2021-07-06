/*
 * @Description: 
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-07-06 22:18:20
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-07-06 22:46:10
 */
import 'package:flutter/material.dart';

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二步-验证码"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Text("输入验证吗完成注册"),
          SizedBox(
            height: 5,
          ),
          RaisedButton(
            child: Text("下一步"),
            onPressed: () {
              Navigator.pushNamed(context, '/registerThird');
              //替换路由
              //Navigator.of(context).pushReplacementNamed('/registerThird');
            },
          )
        ],
      ),
    );
  }
}
