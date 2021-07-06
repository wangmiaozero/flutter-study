/*
 * @Description: 
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-07-06 22:29:34
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-07-06 23:11:14
 */
import 'package:flutter/material.dart';

//引入tabs
import '../Tabs.dart';

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("第三步-完成注册")),
        body: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Text("输入密码完成注册"),
            SizedBox(height: 40),
            RaisedButton(
              child: Text('确定'),
              onPressed: () {
                // Navigator.of(context).pop();
                //返回根
                Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(
                        // 0 首页 1 分类 2 设置
                        builder: (context) => new Tabs(index: 1)),
                    (route) => route == null);
              },
            )
          ],
        ));
  }
}
