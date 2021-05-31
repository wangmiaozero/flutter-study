/*
 * @Description: Flutter AspectRatio、Card 卡片组件
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-31 23:14:53
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-01 00:42:53
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
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: LayoutDemo(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listData.map((value) {
      return Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 20 / 9,
              child: Image.network(
                value["imageUrl"],
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(value["imageUrl"]),
              ),
              title: Text(value["title"]),
              subtitle: Text(value["description"],
                  maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
      );
    }).toList());
  }
}
