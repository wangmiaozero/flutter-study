/*
 * @Description: Flutter GridView 组件 以及动态 GridView
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-22 22:03:38
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-22 23:14:59
 */
import 'package:flutter/material.dart';
import 'data/listData.dart';

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
            title: Text('FlutterDemo'),
          ),
          body: LayoutDemo(),
        ));
  }
}

class LayoutDemo extends StatelessWidget {
  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(
              height: 12,
            ),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    //可以通过 GridView.count 实现网格布局
    return GridView.count(
      crossAxisCount: 2, //一行的 Widget 数量
      children: this._getListData(),
      crossAxisSpacing: 20.0, //水平子 Widget 之间间距
      mainAxisSpacing: 20.0, //垂直子 Widget 之间间距
      padding: EdgeInsets.all(10),
    );
  }
}
