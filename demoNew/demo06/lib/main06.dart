/*
 * @Description: Expanded
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-23 14:59:27
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-23 20:33:57
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
    return Container(
      color: Colors.pink,
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: IconContainer(
                Icons.home,
                color: Colors.blue,
              )),
          IconContainer(Icons.select_all, color: Colors.yellow)
        ],
      ),
    );
  }
}

// IconContainer
class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: Colors.white,
        ),
      ),
    );
  }
}
