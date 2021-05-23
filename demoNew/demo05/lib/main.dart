/*
 * @Description: Flutter GridView 组件 以及动态 GridView
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-22 22:03:38
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-23 00:46:29
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
  Widget _getListData(context, index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(
            height: 12,
          ),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    //通过 GridView.builder 实现网格布局
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //一行的 Widget 数量
        crossAxisSpacing: 20.0, //水平子 Widget 之间间距
        mainAxisSpacing: 20.0, //垂直子 Widget 之间间距
      ),
      itemCount: listData.length,
      itemBuilder: this._getListData,
      padding: EdgeInsets.all(10),
    );
  }
}
