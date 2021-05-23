/*
 * @Description: SizedBox
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-23 14:59:27
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-23 21:37:47
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(title: Text('FlutterDemo')),
          body: LayoutDemo(),
        ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                  height: 180,
                  color: Colors.black,
                  child: Text(
                    'hello Flutter',
                    style: TextStyle(
                      color: Color(0xFFFF00FF),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFF334433),
                      decorationStyle: TextDecorationStyle.double,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      textBaseline: TextBaseline.alphabetic,
                      fontSize: 50,
                      letterSpacing: 2,
                      wordSpacing: 10,
                      height: 1.2,
                    ),
                  ))),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network(
                    'https://oss.wangmiaozero.cn/images/flutter/1.png',
                    fit: BoxFit.cover),
              )),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 180,
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 85,
                    child: Image.network(
                      'https://oss.wangmiaozero.cn/images/flutter/2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 85,
                    child: Image.network(
                      'https://oss.wangmiaozero.cn/images/flutter/3.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    ]);
  }
}
